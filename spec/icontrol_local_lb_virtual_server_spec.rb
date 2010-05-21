require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe IControl::LocalLB::VirtualServer,"find method" do

  spec_method_config("IControl::LocalLB::VirtualServer","get_list")
    
  it "should have a find class method called find" do
    IControl::LocalLB::VirtualServer.methods.should include(:find)
  end

  it "should have retreive an object when find is call with id or nil it the object does not exists" do
    IControl::LocalLB::VirtualServer.find("test_virtual_server").class.should be(IControl::LocalLB::VirtualServer)
    IControl::LocalLB::VirtualServer.find("unknown_virtual_server").class.should_not be(IControl::LocalLB::VirtualServer)
    IControl::LocalLB::VirtualServer.find("unknown_virtual_server").should be(nil)
  end

end


describe IControl::LocalLB::VirtualServer,"defaul_pool method" do

  it "should have method called default_pool" do 

    http_method_calling("IControl::LocalLB::VirtualServer","get_list") do 
      @virtual_server = IControl::LocalLB::VirtualServer.find("test_virtual_server")
    end    
    
    http_method_calling("IControl::LocalLB::Pool","get_list") do 
      http_method_calling("IControl::LocalLB::VirtualServer","get_default_pool_name") do 
        default_pool = @virtual_server.default_pool
        default_pool.should_not be(nil)
        default_pool.class.should be(IControl::LocalLB::Pool)
      end
    end
  end
  
end


describe IControl::LocalLB::VirtualServer,"profiles" do

  it "should have method called profiles" do 

    http_method_calling("IControl::LocalLB::VirtualServer","get_list") do 
      @virtual_server = IControl::LocalLB::VirtualServer.find("test_virtual_server")
    end    
    
    http_method_calling("IControl::LocalLB::Pool","get_list") do 
      http_method_calling("IControl::LocalLB::VirtualServer","get_profile") do 
        profiles = @virtual_server.profiles
        profiles.should_not be(nil)
        profiles.class.should be(Array)
        profiles.first.class.should be(IControl::LocalLB::VirtualServer::VirtualServerProfileAttribute)
      end
    end
  end
  
end


describe IControl::LocalLB::VirtualServer,"http_class_profiles method" do

  it "should exist" do 
    @virtual_server = nil
    
    http_method_calling("IControl::LocalLB::VirtualServer","get_list") do 
      @virtual_server = IControl::LocalLB::VirtualServer.find("test_virtual_server")
      @virtual_server.class.should be(IControl::LocalLB::VirtualServer)
    end    
    
    http_method_calling("IControl::LocalLB::Pool","get_list") do 
      http_method_calling("IControl::LocalLB::VirtualServer","get_httpclass_profile") do 
        
        http_class_profiles = @virtual_server.http_class_profiles
        http_class_profiles.should_not be(nil)
        http_class_profiles.class.should be(Array)
        http_class_profiles.first.class.should be(IControl::LocalLB::ProfileHttpClass)
        http_class_profiles.first.id.should_not be(nil)
      end
    end
  end  
end
