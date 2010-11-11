require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

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


  describe "statisics method" do
    it "should exists" do
      lambda { @pool.statistics }.should_not raise_exception(NoMethodError)
    end

    it "should return a PoolStatisticEntry" do
      @pool.statistics.statistics.should_not be_empty
    end    

    it "should return a hash of statistics" do
      @pool.statistics.statistics.first.class.should be(IControl::LocalLB::Pool::PoolStatisticEntry)


#      IControl::Common::StatisticType.constants.should include(@pool.statistics.first.statistics)
    end    
  end

  describe "member statistics" do 
    it "should allow the retrieval of statistics of its members" do 
      @pool.member.should_not be_empty
      pending
      @pool.member.each do |member|
        member.statistics.class.should be(Hash)
      end
    end
  end

  describe "add_member method" do
    
    it "should exists" do 
      @pool.methods.should include(:add_member)
    end

    it "should add a new member when an IPPortDefinition is passed" do
      register_conversation(["IControl.LocalLB.Pool_before_member_addition.get_member","IControl.LocalLB.Pool_after_member_addition.get_member"])
      before_number = @pool.member.length
      pending "Writing things"
      @pool.add_member(IControl::Common::IPPortDefinition.new(:address => "192.168.1.229",:port => "90"))
      after_number = @pool.member.length
      after_number.should ==( before_number + 1 )
    end

    it "should add a new member when Hash with address and port is passed" do
      register_conversation(["IControl.LocalLB.Pool_before_member_addition.get_member","IControl.LocalLB.Pool_after_member_addition.get_member"])
      before_number = @pool.member.length
      pending "Writing things"
      @pool.add_member(:address => "192.168.1.229",:port => "90")
      after_number = @pool.member.length
      after_number.should ==( before_number + 1 )
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
      pending "writing things"
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
      #new_created.members.class.should be(Array)
      #new_created.members[0].class.should be(IControl::Common::PoolMember)
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
      pending "Not in the original API"
      status = @pool.status_for IControl::LocalLB::PoolMember.new(IControl::Common::IPPortDefinition.new(:address => "192.168.6.3",:port => "5050"))
      status.class.should be(Hash)
    end

    it "should return nil if the member is not found in the pool" do
      pending "Not in the original API"
      status = @pool.status_for IControl::LocalLB::PoolMember.new(IControl::Common::IPPortDefinition.new(:address => "112.168.6.111",:port => "5050"))
      status.should be(nil)
    end

  end

  
  describe "monitor_rule method" do
    it "should return an instance of MonitorRule" do
      pending "Not in the original api"
      monitor_rule = @pool.monitor_rule
      monitor_rule.class.should be(IControl::LocalLB::MonitorRule)
    end
  end


  describe "monitor_rule= method" do
    it "should allow the assignment of a monitor rule to a pool" do
      pending "Not in the original API"
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
      @pool.member.first.class.should be(IControl::Common::IPPortDefinition)
    end
  end
  
  describe "lb_method method" do
    it "should return a String with a valid lb_method constant" do
      puts @pool.lb_method.inspect
      @pool.lb_method.first.class.should be(String)
    end
  end
end
