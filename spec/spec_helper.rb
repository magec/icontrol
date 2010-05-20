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

Spec::Runner.configure do |config|

  def spec_method_config(class_name,method_name)
    before { prepare_configs_for_method(class_name,method_name) }
    after  { clean_configs }
  end

  def http_method_calling(class_name,method_name)
    prepare_configs_for_method(class_name,method_name)
    yield
    clean_configs
  end

  def clean_configs
    FakeWeb.clean_registry
    IControl.config[:base_url] = IControl.config[:user] = IControl.config[:password] = ""
  end

  def prepare_configs_for_method(class_name,method_name)    
    IControl.config[:base_url] = "https://localhost/iControl/iControlPortal.cgi"
    IControl.config[:user] = "test_user"
    IControl.config[:password] = "secret"

    class_file_name = class_name.gsub("::",".")
    FakeWeb.register_uri :get, EndpointHelper.wsdl_endpoint(class_name), :body => WSDLFixture.wsdl(class_file_name)
    FakeWeb.register_uri :post, EndpointHelper.soap_endpoint, :body => SOAPFixture.response(class_file_name + ".#{method_name}")
  end

end



