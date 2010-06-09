$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'icontrol'
require "rake"
require 'spec'
require 'spec/autorun'
require 'fakeweb'
Savon::Request.log = false
FakeWeb.allow_net_connect = false

FileList["spec/fixtures/**/*.rb"].each { |fixture| require fixture }

IControl.config[:base_url] = "https://localhost/iControl/iControlPortal.cgi"
IControl.config[:user] = "test_user"
IControl.config[:password] = "secret"


# Mapping of the wsdl's

FileList["spec/fixtures/wsdl/xml/*"].each do |file_name|
  klass = file_name.split("/").last.gsub(".xml","").to_s.gsub(".","::").to_s
  FakeWeb.register_uri :get, EndpointHelper.wsdl_endpoint(klass), :body => File.read(file_name)
end

# Mapping of the soap conversations

FileList["spec/fixtures/soap/xml/*request*"].each do |file_name|
  response_file_name = file_name.gsub("request","response")
  request_body = File.read(file_name)
  FakeWeb.register_uri :post, EndpointHelper.soap_endpoint, :body => File.read(response_file_name), :request_body => File.read(file_name)
end

Spec::Runner.configure do |config|
end



