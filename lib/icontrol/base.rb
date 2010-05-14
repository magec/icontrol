# -*- coding: utf-8 -*-
require 'savon'
require 'net/https'

# The idea is to create an object proxy to the web service client with the same structure 
# than the IControl stuff
module IControl

  class << self
    attr_accessor :config
  end
  
  @config = {
    :user     => "",               # username and password
    :password => "",
    :base_url => ""                # base url for the web-service (https://example.com/iControl/iControlPortal.cgi)
  }

  def IControl.const_missing(name)
    
    # Whenever we find a new module subclassing IControl we create it
    
    modulo = Module.new do 

      # This new module has the ability to automatically create classes when subclassing from it

      (class << self; self; end).instance_eval do                 # We do it in the eigenclass
        
        define_method("const_missing") do |class_name|
          
          # Whenever we are called with a class name we create a new one based on the configuration we have
          
          klass = Class.new do
            @client = Savon::Client.new IControl.config[:base_url] + "?WSDL=#{name.to_s}.#{class_name.to_s}"
            @client.request.basic_auth IControl.config[:user],IControl.config[:password]
            @client.request.http.ssl_client_auth( :verify_mode => OpenSSL::SSL::VERIFY_NONE )
            def self.method_missing(methodname, *args)
              return @client.send(methodname,*args)
            end
          end
          self.const_set(class_name,klass)
        end
      end
    end
    self.const_set(name,modulo)
  end
end

