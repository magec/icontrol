require File.expand_path(File.dirname(__FILE__) + '/spec_helper')


describe IControl::LocalLB::Pool do
  it "has an initializer that the attributes" do
    pool = IControl::LocalLB::Pool.new(:id => "testing1")
    pool.class.should be(IControl::LocalLB::Pool)
  end
end

describe IControl::LocalLB::Pool,"find method" do

  spec_method_config("IControl::LocalLB::Pool","get_list")
  
  describe "when pool is not found" do 
    
    it "should return nil" do       
      "p".should == "p"
      
      IControl::LocalLB::Pool.find("none").should be(nil)
    end
  end
  
  describe "when pool is found" do
    before { @pool = IControl::LocalLB::Pool.find("pool_test1") }

    it "has to return a Pool Object" do
      @pool.class.should be(IControl::LocalLB::Pool)
    end
  end

end


describe IControl::LocalLB::Pool, "creation" do 
  
  it "has a create method that returns a the created object if the creation was successful" do
    http_method_calling("IControl::LocalLB::Pool","get_list") do 
      @pools = IControl::LocalLB::Pool.find(:all)
    end    
    @pools.map(&:id).include?("new_test_pool").should be(false)
    http_method_calling("IControl::LocalLB::Pool","create") do 
      new_created = IControl::LocalLB::Pool.create(
                                   :id => "new_test_pool",
                                   :lb_method => "LB_METHOD_ROUND_ROBIN",
                                   :members =>  [IControl::Common::IPPortDefinition.new(:address => "192.168.6.122",:port=>"4036")]
                                   )

      new_created.id.should == "new_test_pool"
      new_created.lb_method.should  == "LB_METHOD_ROUND_ROBIN"
      new_created.members.class.should be(Array)
      new_created.members[0].class.should be(IControl::Common::IPPortDefinition)
    end

    http_method_calling("IControl::LocalLB::Pool","get_list_after_new_test_pool") do 
      @pools = IControl::LocalLB::Pool.find(:all)
    end    
    @pools.map(&:id).include?("new_test_pool").should be(true)
  end


  it "should raise an exception when trying to create a pool that already existed" do
    http_method_calling("IControl::LocalLB::Pool","create_after_create") do 
      lambda{
        IControl::LocalLB::Pool.create(
                                       :id => "new_test_pool",
                                       :lb_method => "LB_METHOD_ROUND_ROBIN",
                                       :members =>  [IControl::Common::IPPortDefinition.new(:address => "192.168.6.122",:port=>"4036")]
                                       )
      }.should raise_exception

    end    
  end
  
end

describe IControl::LocalLB::Pool,"member method" do 

  before do 
    http_method_calling("IControl::LocalLB::Pool","get_list") do 
      @pool = IControl::LocalLB::Pool.find("pool_test1")
    end
  end
  
  it "should have a member method" do    
    http_method_calling("IControl::LocalLB::Pool","get_member") do
      @pool.member.should_not be(nil)
    end
  end

  it "should return an array of PoolMembers" do
    http_method_calling("IControl::LocalLB::Pool","get_member") do
      @pool.member.class.should be(Array)
      @pool.member.first.class.should be(IControl::Common::IPPortDefinition)
    end
  end
end
