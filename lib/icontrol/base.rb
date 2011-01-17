# -*- coding: utf-8 -*-
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rubygems'
require 'savon'
require 'net/https'
require 'digest/md5'

require 'base/attributable'
require 'base/struct'
require 'base/enumeration'
require 'base/mappings'
require 'base/sequence'
require 'base/predeclarations'
require 'base/exception'
require 'base/icontrol_overlay'
require 'base/xml'

Savon.log = false
HTTPI::Adapter.use = :net_http

# The idea is to create an object proxy to the web service client with the same structure
# than the IControl stuff

module IControl 

  # @private NotConfiguredException 
  class NotConfiguredException < Exception
  end 

  # @private NotEnoughParams 
  class NotEnoughParams < Exception
  end

  class << self
    attr_accessor :config
    
    def configured?
      return @config[:user] != "" && @config[:password] != "" && @config[:base_url] != ""
    end
  end  
  
  @config = {
    :user     => "",               # username and password
    :password => "",
    :base_url => "",               # base url for the web-service (https://example.com/)
  }

  # @private Base
  class Base # :nodoc:

    
    include IControl::Base::Attributable
        
    class << self

      attr_accessor :id_name
      def set_id_name(name)
        @id_name = name
      end
      
      def class_name
        name.split("::").last
      end

      def parent_module_name
        name.split("::")[-2]
      end

      def parent_modules
        name.split("::")[0..-2]
      end

      def client        
        return @client if @client
        @client = nil
        if IControl.configured?
          @client = Savon::Client.new do
            wsdl.document = IControl.config[:base_url] + "/iControl/iControlPortal.cgi?WSDL=#{parent_module_name}.#{class_name}"
            http.auth.basic IControl.config[:user],IControl.config[:password]
            http.auth.ssl.verify_mode = :none
          end
        else
          raise IControl::NotConfiguredException
        end
        return @client
      end

      def symbolize(data)
        if data.is_a? Hash
          out = data.inject({}) do |hash,(key,value)|
            value = case value
                    when ::Hash then value["xsi:nil"] ? nil : symbolize(value)
                    when ::Array then value.map { |val| symbolize(val) rescue val }
                    when ::String then value
                    end

            new_key = if Savon.strip_namespaces?
                        key.strip_namespace.snakecase.to_sym
                      else
                        key.snakecase
                      end
            if hash[new_key] # key already exists, value should be added as an Array
              hash[new_key] = [hash[new_key], value].flatten
              result = hash
            else
              result = hash.merge new_key => value
            end
            result
          end
          if data.respond_to?(:empty_node?)
            out.instance_eval{ @_empty_node = data.empty_node? }
          end
          return out
        else
          return data
        end
      end


      # Generic type mapping
      def map_response(response)

        response = Crack::XML.parse(response).to_hash

        envelope = response[response.keys.first] || {}
        body_key = envelope.keys.find { |key| /.+:Body/ =~ key } rescue nil
        response = body_key ? envelope[body_key] : {}
        
        response = symbolize(response)

        response_key = response.keys.first
        if response_key
          if response[response_key].has_key? :return
            return IControl::Base::Mappings.map_object(response[response_key][:return]) 
          else
            return nil
          end
        else
          raise "Invalid Response #{response.inspect}"
        end
      end

      def find(name)
        return nil unless name
        return self.find_all if name == :all 
        if name == :first
          all = self.find_all
          return all[0] if all.length >0
        end
        if self.get_list.include?(name)
          return self.new(:id => name)
        else
          return nil
        end
      end

      def find_all
        self.get_list.map {|i| self.new(:id => i)}
      end    

      # Recursive method to convert the parameters to a soap hash
      def convert_to_soap(item)        
        if item.is_a?(Hash)
          aux = {}
          item.each do |k,v| 
            aux[k.to_s] = convert_to_soap(v) # the k.to_s is cause we want no name translation
          end
          return aux
        elsif item.is_a?(Array)
          aux = {}
          item.each_with_index do |value,i|
            aux["item#{i}"] = convert_to_soap(value)
          end
          return aux
        elsif item.respond_to?(:to_soap)
          return item.to_soap
        else
          return item
        end
      end
      
      ##
      # The F5 api is prepared to make bulk operations on each call (i.e. do the same operation to several entities). So normally, the arguments are
      # an array of the entities to change, and then an array of the options of the operations.
      #  Example:
      #  create_pool([pool_names],[lb_methods],[[members]])
      # We avoid this implementation and limit it to a 1 item per call so this is translate to this
      #  create_pool(pool_name,lb_method,[members])
      # It's more clear and object oriented, It has its pros and cons but...
      # So, the rule of conversion from this api to the F5 one (needed to place calls) is this one
      # Every argument is changed to a 1 item array containing its value
      # In the case that the argument is already an array, we left the key as it is, on the contrary we pluralize it
      # If the argument value is an array 
      def hash_to_call_args(hash)
        aux = {}
        hash.each do |k,v|
          key = ( v.is_a?(Array) || self.id_name == k.to_s ) ? k : pluralize(k)
          aux[key] = [v]
        end
        aux
      end


      def pluralize(string)
        string = string.to_s.gsub(/ss$/,"sse")
        return string if string[-1..-1] == "s"
        return "#{string}s"
      end


      # This is done this way cause I need access to name and class_name
      # metaprogramming to cross the scope, don't really like it actually.
      # TODO: Make use of the delegation patern much more clean I think
              
      def method_missing(method_name,*args,&block)
        raise IControl::NotConfiguredException unless IControl.configured?
        if self.client  && self.client.wsdl.operations.keys.include?(method_name)
          begin
            # When calling a soap method we transparently add the ns (I'd rather say we obscurely)
            request = ""
            response = self.client.request(:wsdl, method_name.to_s) do |soap|
              soap.namespaces["xmlns:wsdl"] = "urn:iControl:#{parent_modules[1..-1].join(".")}/#{class_name}"              
              soap.body = convert_to_soap(hash_to_call_args(args.first)) if args.first
              block.call(soap) if block
              request = soap.to_xml
            end
            return self.map_response(response.to_xml)
          rescue Savon::HTTP::Error, Savon::SOAP::Fault => error
            IControl::Base::ExceptionFactory.raise_from_xml(error.http.body)
          end
        else
          super(method_name,*args,&block)
        end 
      end
      
    end

    def initialize(attributes)     
      @attributes = {}
      id = attributes.delete(self.class.id_name) if attributes && attributes[self.class.id_name]
      @attributes[:id] ||= id       
      super(attributes)
    end

    def default_body
      { self.class.id_name.to_s  =>  @attributes[:id] }
    end
    
    def getters
      self.class.client.wsdl.operations.keys.select{|i| i.to_s =~ /^get_/ }.map{ |i| i.to_s[4..(-1)].to_sym }
    end

    def methods      
      super + getters + self.class.client.wsdl.operations.keys
    end
    
    ##
    # Checks whether the correct params are passed.
    # It checks just if the needed params are passed (specified in params), if more params are passed, they go straight to the SOAP call
    def check_params(options,params)
      # In this case we are being called passing a hash (or something like that), in this case 
      # we use the normal check when callong
      puts params.inspect
      if options.respond_to?(:keys)
        return options
      else
        # now we are using the one parameter form, so there is no need to use a hash (we build it)
        if params.size == 1          
          return {params.first =>  options}
        else
          raise NotEnoughParams
        end
      end
    end

    def method_missing(method_name,*args,&block)
      puts args.inspect
      # When calling an instance method we first check whether there is an argument with
      # that name and return it. If that is not the case we fallback in the class default method but adding the instance as
      # argument (the id), cause thats the way the api works, passing the id
      
      return super if @attributes.has_key? method_name 
      method_name = "get_#{method_name}" if getters.include? method_name

      call_arguments = ( args.first || {} ).merge(default_body)

      return self.class.send(method_name,call_arguments,&block)

    end

  end
  
end
