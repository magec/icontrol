$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'icontrol'
require 'fixtures/endpoint_helper'
require "rake"
require 'spec'
require 'spec/autorun'
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__),"..","..","fakeweb","lib"))
require 'fakeweb'
#require 'ap'

REAL_MODE=false # Extremely dangerous tests are going to be done on the device

Savon.log = false

FakeWeb.allow_net_connect = false

#FileList["spec/fixtures/**/*.rb"].each { |fixture| require fixture }


# Mapping of the wsdl's
def register_wsdls
  puts "Registering wsdls"
  FileList["spec/fixtures/wsdl/xml/*"].each do |file_name|
    klass = file_name.split("/").last.gsub(".xml","").to_s.gsub(".","::").to_s
    FakeWeb.register_uri :get, EndpointHelper.wsdl_endpoint(klass), :body => File.read(file_name)
  end
end

def normalize_body_hash(hash)
  aux = {}
  hash.each do |k,v|
    aux[k.split(":").last] = v
  end
  return aux
end

def get_matcher(f_request)
  
  return Proc.new do |request|

    request_hash = Crack::XML.parse(request)
    f_request_hash = Crack::XML.parse(f_request)
    
    request_body = normalize_body_hash(request_hash["env:Envelope"]["env:Body"])
    f_request_body = normalize_body_hash(f_request_hash["env:Envelope"]["env:Body"])

    
    request_body == f_request_body && request_hash["xmlns:wsdl"] == f_request_hash["xmlns:wsdl"]
    
  end
end

# Mapping of the soap conversations
def register_fixtures
  FileList["spec/fixtures/soap/**/*request*"].each do |file_name|
    next if file_name =~ /after/ 
    response_file_name = file_name.gsub("request.xml","response.xml")
    request_body = File.read(file_name)
    FakeWeb.register_uri :post, EndpointHelper.soap_endpoint, get_matcher(request_body), :body => File.read(response_file_name) unless response_file_name =~ /after/
  end
end

def register_conversation(conversation)
  response_file_names = []
  file_name = ""
  conversation.each do |op|
    file_name = FileList["spec/fixtures/soap/xml/**/*#{op}_*request*"].first
    response_file_names << file_name.gsub("request","response")
  end
  FakeWeb.unregister_uri :post, EndpointHelper.soap_endpoint, File.read(file_name)
  FakeWeb.register_uri :post, EndpointHelper.soap_endpoint, get_matcher(File.read(file_name)), response_file_names.map{ |i| {:body => File.read(i)}}
end



Spec::Runner.configure do |config|
  
  if !REAL_MODE

    IControl.config[:base_url] = "https://localhost:443"
    IControl.config[:user] = "test_user"
    IControl.config[:password] = "secret"
    
    register_wsdls
    register_fixtures

  else
    begin

      Savon::Request.log = true
      FakeWeb.allow_net_connect = true

      if file_contents = File.open("/etc/f5/pre.cfg").read
        IControl.config = YAML.load(file_contents)
      end

      IControl.config[:test] = true
      IControl.config[:test_path] = File.join(File.dirname(__FILE__),"fixtures")

    rescue
      puts "There was an error when opening/parsing config file"
      puts $!
    end
  end

end
