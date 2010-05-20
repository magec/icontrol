require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe IControl,"when working offline" do
  it "should be a module" do
    IControl.class.should be(Module)
  end

  it "should make the module creation on the fly and lazy declared" do
    IControl.const_defined?("MyConst").should be(false)
    IControl::MyConst.class.should be(Module)
    IControl.const_defined?("MyConst").should be(true)
  end

  it "should create new modules automatically when using :: operator" do
    IControl::NewModule.class.should be(Module)
  end

  it "should make the class creation on the fly and lazy declared" do 
    IControl::NewModule.const_defined?("NewClas").should be(false)
    IControl::NewModule::NewClas.class.should be(Class)
    IControl::NewModule.const_defined?("NewClas").should be(true)
  end

  it "should create class once it has 2 module ancestors" do 
    IControl::NewModule::NewClass.class.should be(Class)
  end

  it "should have a config variable to be able to configure its behavior and it has to be a Hash" do
    IControl.config.class.should_not be(nil)
    IControl.config.class.should be(Hash)
  end

end


describe IControl,"when connecting to an endpoint" do
  
  describe "and not yet configured" do 
    it "should raise an exception if a method is called" do
      lambda{
        IControl::GlobalLB::Rule.get_list 
      }.should raise_exception NoMethodError
    end
  end
  

  describe "and already configured" do 
    before do 
      IControl.config[:base_url] = "https://localhost/iControl/iControlPortal.cgi"
      IControl.config[:user] = "test_user"
      IControl.config[:password] = "secret"
      
      FakeWeb.register_uri :get, EndpointHelper.wsdl_endpoint("IControl::GlobalLB::Rule"), :body => WSDLFixture.wsdl("IControl.GlobalLB.Rule")
      FakeWeb.register_uri :post, EndpointHelper.soap_endpoint, :body => WSDLFixture.wsdl("IControl.GlobalLB.Rule")
    end
    
    after do 
      FakeWeb.clean_registry
      IControl.config[:base_url] = IControl.config[:user] = IControl.config[:password] = ""
    end

    it "should create a class and read its wsdl on the fly thus declaring its operations" do 
      IControl::GlobalLB::Rule.wsdl.should_not be(nil)
      IControl::GlobalLB::Rule.wsdl.operations.should_not be(nil)
    end
    
    it "should allow the pass of a block when calling server methods" do 
      lambda{
        IControl::GlobalLB::Rule.get_list do |soap|
          raise "this should be happening"
        end
      }.should raise_exception
    end

  end
   
end
