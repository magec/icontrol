require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
describe IControl::LocalLB::Pool do 

  before do 
    @pool = IControl::LocalLB::Pool.find("pool_test1")
  end

  describe "constructor" do
    it "has an initializer that the attributes" do
      pool = IControl::LocalLB::Pool.new(:id => "pool_test1")
      pool.class.should be(IControl::LocalLB::Pool)
    end
  end

  describe "find method" do

    describe "when pool is not found" do 
      it "should return nil" do       
        IControl::LocalLB::Pool.find("none").should be(nil)
      end
    end
    
    describe "when pool is found" do
      it "has to return a Pool Object" do
        @pool.class.should be(IControl::LocalLB::Pool)
      end
    end

  end


  describe "create method" do 
    
    it "should return the created object if the creation was successful" do
      @pools = IControl::LocalLB::Pool.find(:all)
      @pools.map(&:id).include?("new_test_pool").should be(false)
      new_created = IControl::LocalLB::Pool.create(
                                                   :id => "new_test_pool",
                                                   :lb_method => "LB_METHOD_ROUND_ROBIN",
                                                   :members =>  [
                                                                 IControl::Common::IPPortDefinition.new(:address => "192.168.6.122",:port=>"4036"),
                                                                 IControl::Common::IPPortDefinition.new(:address => "192.168.6.123",:port=>"4036")
                                                                ]
                                                   )
      
      new_created.id.should == "new_test_pool"
      new_created.lb_method.should  == "LB_METHOD_ROUND_ROBIN"
      new_created.members.class.should be(Array)
      new_created.members[0].class.should be(IControl::Common::IPPortDefinition)
#      @pools = IControl::LocalLB::Pool.find(:all)
#      @pools.map(&:id).include?("new_test_pool").should be(true)
    end


    it "should raise an exception when the pool already existed" do
      lambda{
        IControl::LocalLB::Pool.create(
                                       :id => "new_test_pool",
                                       :lb_method => "LB_METHOD_ROUND_ROBIN",
                                       :members =>  [IControl::Common::IPPortDefinition.new(:address => "192.168.6.122",:port=>"4036")]
                                       )
      }.should raise_exception

    end
    
  end

  describe "status_for method" do 
    it "should return the status of a given pool member given its address and port" do
      status = @pool.status_for IControl::LocalLB::PoolMember.new(:address => "192.168.6.3",:port => "5050")
      status.class.should be(Hash)
    end

    it "should return nil if the member is not found in the pool" do
      status = @pool.status_for IControl::LocalLB::PoolMember.new(:address => "112.168.6.111",:port => "5050")
      status.should be(nil)
    end

  end

  
  describe "monitor_rule method" do
    it "should return an instance of MonitorRule" do
      monitor_rule = @pool.monitor_rule
      monitor_rule.class.should be(IControl::LocalLB::MonitorRule)
    end
  end


  describe "monitor_rule= method" do
    it "should allow the assignment of a monitor rule to a pool" do
      @monitor_rule_before = @pool.monitor_rule
      monitor_rule = IControl::LocalLB::MonitorRule.new(:monitor_templates => ["tcp"])
      @pool.monitor_rule = monitor_rule
      @monitor_rule_after = @pool.monitor_rule
      # A state should exists in the mock in order to make these tests
      #      @monitor_rule_after.monitor_templates.should_not == @monitor_rule_before.monitor_templates
    end
  end


  describe "member method" do 

    it "should exists" do    
      @pool.member.should_not be(nil)
    end

    it "should return an array of PoolMembers" do
      @pool.member.class.should be(Array)
      @pool.member.first.class.should be(IControl::LocalLB::PoolMember)
    end
  end
  
  describe "lb_method method" do
    it "should return a String with a valid lb_method constant" do
      @pool.lb_method.class.should be(String)
    end
  end
end
