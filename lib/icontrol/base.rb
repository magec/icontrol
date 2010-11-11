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


Savon.log = false
HTTPI::Adapter.use = :net_http


# The idea is to create an object proxy to the web service client with the same structure
# than the IControl stuff

module IControl #:nodoc:

  class NotConfiguredException < Exception # :nodoc:
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
    :base_url => "",                # base url for the web-service (https://example.com/)
    :test_mode => false,           # When test mode is set, the soap responses are saved (this is done to ease the testing fixtures generation)
    :test_path => File.join(File.dirname(__FILE__),"..","..","spec","fixtures"),
    :test_file_prefix => ""
  }

  def self.save_test_info(request,response,wsdl,class_name,method_name)

    request_md5 = Digest::MD5.hexdigest(request)
    request_file_name  = request_raw_file_name = File.join(IControl.config[:test_path],"soap","xml","#{class_name}.#{method_name}_#{request_md5}_request")
    response_file_name = response_raw_file_name = File.join(IControl.config[:test_path],"soap","xml","#{class_name}.#{method_name}_#{request_md5}_response")

    timestamp = Time.now.strftime("%Y%m%d%m%S") + Time.now.usec.to_s 

    while File.exists?(response_file_name + ".xml") || File.exists?(request_file_name + ".xml")
      response_file_name = response_raw_file_name + "." + timestamp
      request_file_name = request_raw_file_name + "." + timestamp
    end

    File.open(response_file_name + ".xml","w") { |file| file << response.to_xml }
    File.open(request_file_name + ".xml","w") { |file| file << request }
    
    wsdl_file_name = File.join(IControl.config[:test_path],"wsdl","xml","#{class_name}.xml")
    unless File.exists?(wsdl_file_name) 
      File.open(wsdl_file_name,"w") do |file|
        file << wsdl
      end
    end
  end
  
  class Base # :nodoc:
    
    include IControl::Base::Attributable
        
    class << self
      
      def class_name
        name.split("::").last
      end

      def parent_module_name
        name.split("::")[-2]
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

      # Generic type mapping
      def map_response(response)
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
              
      # This is done this way cause I need access to name and class_name
      # metaprogramming to cross the scope, don't really like it actually.
      # TODO: Make use of the delegation patern much more clean I think
              
      def method_missing(method_name,*args,&block)
        raise IControl::NotConfiguredException unless IControl.configured?
        if self.client 
          if self.client.wsdl.operations.keys.include?(method_name)  
            # When calling a soap method we transparently add the ns (I'd rather say we obscurely)
            request = ""
            response = self.client.request(method_name.to_s) do |soap|
              soap.namespaces["xmlns:wsdl"] = "urn:iControl:#{name}/#{class_name}"
              soap.body = args.first if args.first && args.first.is_a?(Hash)
              block.call(soap) if block
              request = soap.to_xml
            end
            # In case we save test fixtures
            IControl.save_test_info(request,response, client.wsdl ,"IControl.#{name}.#{class_name}#{IControl.config[:test_file_prefix]}",method_name) if IControl.config[:test]
            return self.map_response(response.to_hash)
          else
            self.client.request(method_name.to_s) do |soap|
              block.call(soap) if block
            end
          end
        else
          super(method_name,*args,&block)
        end 
      end

      def id_name
        self.name.split("::").last.to_s.downcase + "_name"
      end

    end

    def default_body
      { self.class.id_name.to_s + "s" =>  {:value => [@attributes[:id]] } }
    end
    
    def getters
      self.class.client.wsdl.operations.keys.select{|i| i =~ /^get_/ }.map{ |i| i[4..(-1)].to_sym }
    end

    def methods      
      super + getters + self.class.client.wsdl.operations.keys
    end

    def method_missing(method_name,*args,&block)
      # When calling an instance method we first check whether there is an argument with
      # that name and return it. If that is not the case we fallback in the class default method but adding the instance as
      # argument (the id), cause thats the way the api works, passing the id

      return super if @attributes.has_key? method_name 
      method_name = "get_#{method_name}"
      args[0]= default_body.merge( args[0] || {} )

      return self.class.send(method_name,*args,&block)

    end

  end
  
end
