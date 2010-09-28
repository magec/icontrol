$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'icontrol'
require "rake"
require 'spec'
require 'spec/autorun'
require 'fakeweb'
require 'ap'
Savon::Request.log = false
FakeWeb.allow_net_connect = false

FileList["spec/fixtures/**/*.rb"].each { |fixture| require fixture }


def register_conversation(conversation)
  response_file_names = []
  file_name = ""
  conversation.each do |op|
    file_name = FileList["spec/fixtures/soap/xml/*#{op}_*request*"].first
    response_file_names << file_name.gsub("request","response")
  end
  

  FakeWeb.register_uri :post, EndpointHelper.soap_endpoint, File.read(file_name), response_file_names.map{ |i| {:body => File.read(i)}}
 
end

# Mapping of the wsdl's
def register_wsdls
  puts "Registering wsdls"
  FileList["spec/fixtures/wsdl/xml/*"].each do |file_name|
    klass = file_name.split("/").last.gsub(".xml","").to_s.gsub(".","::").to_s
    FakeWeb.register_uri :get, EndpointHelper.wsdl_endpoint(klass), :body => File.read(file_name)
  end
end

# Mapping of the soap conversations
def register_fixtures
  FileList["spec/fixtures/soap/xml/*request*"].each do |file_name|
    next if file_name =~ /after/ 
    response_file_name = file_name.gsub("request","response")
    request_body = File.read(file_name)
    FakeWeb.register_uri :post, EndpointHelper.soap_endpoint, File.read(file_name), :body => File.read(response_file_name) unless response_file_name =~ /after/
  end
end

Spec::Runner.configure do |config|
  IControl.config[:base_url] = "https://localhost:443"
  IControl.config[:user] = "test_user"
  IControl.config[:password] = "secret"

  register_wsdls
  register_fixtures
#  FakeWeb::Registry.instance.uri_map.each {|k,v| ap k; v.each {|i,j| ap j.keys }}
end
