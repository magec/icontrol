require File.expand_path(File.join(File.dirname(__FILE__),"..","..",'/spec_helper'))

TEST_POOL_NAME = "test_pool"

describe IControl::LocalLB::PoolMember do

  use_vcr_cassette "IControl::LocalLB::PoolMember", :record => :all, :match_requests_on => [:uri, :method, :body] # Change :record => :new_episodes when done
  before(:each) do
    IControl::LocalLB::Pool.create(:pool_name => TEST_POOL_NAME,
                                   :lb_method => IControl::LocalLB::LBMethod::LB_METHOD_ROUND_ROBIN,
                                   :members => [{:address => "192.168.50.1",:port => "80"},
                                                {:address => "192.168.50.2",:port => "80"},
                                                {:address => "192.168.50.3",:port => "80"},
                                                {:address => "192.168.50.4",:port => "80"},
                                                {:address => "192.168.50.5",:port => "80"},
                                                {:address => "192.168.50.6",:port => "80"}
                                               ])
    @pool = IControl::LocalLB::Pool.find(TEST_POOL_NAME)
    @members = @pool.members
  end

  after(:each) do
    @pool.delete_pool
  end
  
  describe "#all_statistics" do
    it "should return without raising any exception" do
      lambda { @members.all_statistics }.should_not raise_exception
    end
    
    it "Gets the statistics for all pool members of the specified pools." do
      @members.all_statistics.should_not be_nil
    end
  
    it "works this way" do
      statistics = @members.all_statistics
      # => <IControl::LocalLB::PoolMember::MemberStatistics:0x9c4cd78 ... >
      statistics.statistics.first.statistics.first.type
      # => :STATISTIC_SERVER_SIDE_BYTES_IN
      statistics.statistics.first.member.address
      # => 192.168.50.1
    end

    it "returns an instance of IControl::LocalLB::PoolMember::MemberStatistics" do
      @members.all_statistics.class.should == IControl::LocalLB::PoolMember::MemberStatistics
    end
  end

  describe "#connection_limit" do
    it "should return without raising any exception" do
      lambda { @members.connection_limit }.should_not raise_exception
    end

    it "Gets the connection limits for all members in the specified pools." do
      @members.connection_limit.should_not be_nil
    end

    it "works this way" do
      connection_limits = @members.connection_limit
      # => [<IControl::LocalLB::PoolMember::MemberConnectionLimit  ... >,...]
      connection_limits.first.member.address
      # => 192.168.50.1
      connection_limits.first.connection_limit
      # => 0
    end

    it "returns an instance of MemberConnectionLimit[]" do
      @members.connection_limit.first.class.should == IControl::LocalLB::PoolMember::MemberConnectionLimit 
    end
  end

  describe "#dynamic_ratio" do
    it "should return without raising any exception" do
      lambda { @members.dynamic_ratio }.should_not raise_exception
    end

    it "Gets the dynamic ratios for all members of the specified pools." do
      @members.dynamic_ratio.should_not be_nil
    end

    it "works this way" do
      dynamic_ratios = @members.dynamic_ratio
      # => [#<IControl::LocalLB::PoolMember::MemberDynamicRatio:0xa11f210 ... >,...] 
      dynamic_ratios.first.member.address
      # => 192.168.50.1
      dynamic_ratios.first.dynamic_ratio
      # => 1
    end

    it "returns an instance of MemberDynamicRatio[]" do
      @members.dynamic_ratio.first.class.should ==  IControl::LocalLB::PoolMember::MemberDynamicRatio
    end
  end

  describe "#monitor_association" do
    it "should return without raising any exception" do
      lambda { @members.monitor_association }.should_not raise_exception
    end

    it "Gets the monitor associations used by the specified pool members, i.e. the monitor rules used by the pool members." do
      @members.monitor_association.should_not be_nil
    end

    it "works this way" do
      monitor_associations = @members.monitor_association
      # => [#<IControl::LocalLB::PoolMember::MemberMonitorAssociation:0x9a31070..>,...] 
      monitor_associations.first.member.ipport.address
      # => 192.168.50.1
      monitor_associations.first.monitor_rule.type
      # => :MONITOR_RULE_TYPE_UNDEFINED
      monitor_associations.first.monitor_rule.quorum
      # => 0
    end

    it "returns an instance of IControl::LocalLB::PoolMember::MemberMonitorAssociation[]" do
      @members.monitor_association.first.class.should == IControl::LocalLB::PoolMember::MemberMonitorAssociation
    end
  end

  describe "#monitor_instance" do

    before(:each) do
      IControl::LocalLB::Pool.set_monitor_association(:monitor_association => {:pool_name => TEST_POOL_NAME,:monitor_rule => {:type => IControl::LocalLB::MonitorRuleType::MONITOR_RULE_TYPE_SINGLE,:monitor_templates => ["tcp"],:quorum => 0} })
    end

    it "should return without raising any exception" do
      lambda { @members.monitor_instance }.should_not raise_exception
    end

    it "Gets the monitor instance information for the pool members in the specified pools." do
      @members.monitor_instance.should_not be_nil
    end

    it "works this way" do
      monitor_instances = @members.monitor_instance
      # => [#<IControl::LocalLB::PoolMember::MemberMonitorInstanceState:0xa067f34...>,...]
      monitor_instances.first.member.address 
      # => 192.168.50.1
      monitor_instances.first.monitor_instances
      # => #<IControl::LocalLB::MonitorInstanceState:0xaafa76c @attributes={:instance=>#<IControl::LocalLB::MonitorInstance:0xaafa924 
      # @attributes={:template_name=>"tcp", :instance_definition=>#<IControl::LocalLB::MonitorIPPort:0xaafa960 
      # @attributes={:address_type=>:ATYPE_EXPLICIT_ADDRESS_EXPLICIT_PORT, :ipport=>#<IControl::Common::IPPortDefinition:0xaafa99c
      # @attributes={:address=>"192.168.50.1", :port=>"80", :id=>nil}>, :id=>nil}>, :id=>nil}>, :instance_state=>:INSTANCE_STATE_CHECKING, 
      # :enabled_state=:STATE_ENABLED...
    end

    it "returns an instance of IControl::LocalLB::PoolMember::MemberMonitorInstanceState[]" do
      @members.monitor_instance.first.class.should == IControl::LocalLB::PoolMember::MemberMonitorInstanceState
    end
  end

  describe "#monitor_status" do
    
    before(:each) do
      IControl::LocalLB::Pool.set_monitor_association(:monitor_association => {:pool_name => TEST_POOL_NAME,:monitor_rule => {:type => IControl::LocalLB::MonitorRuleType::MONITOR_RULE_TYPE_SINGLE,:monitor_templates => ["tcp"],:quorum => 0} })
    end
    
    it "should return without raising any exception" do
      lambda { @members.monitor_status }.should_not raise_exception
    end

    it "Gets the monitor/availability status for all members of the specified pools." do
      @members.monitor_status.should_not be_nil
    end

    it "works this way" do
      statuses =  @members.monitor_status
      # => [#<IControl::LocalLB::PoolMember::MemberMonitorStatus:0xae9433c...>,...] 
      statuses.first.member.address 
      # => 192.168.50.1
      statuses.first.monitor_status 
      # => MONITOR_STATUS_ADDRESS_DOWN
    end

    it "returns an instance of IControl::LocalLB::PoolMember::MemberMonitorStatus[]" do
      @members.monitor_status.first.class.should == IControl::LocalLB::PoolMember::MemberMonitorStatus
    end
  end

  describe "#object_status" do
    it "should return without raising any exception" do
      lambda { @members.object_status }.should_not raise_exception
    end

    it "Gets the object statuses for all members of the specified pools." do
      @members.object_status.should_not be_nil
    end

    it "works this way" do
      object_statuses = @members.object_status
      # =>  [#<IControl::LocalLB::PoolMember::MemberObjectStatus:0xa0d06b0 ...>,...]
      object_statuses.first.member.address 
      # => 192.168.50.1
      object_statuses.first.object_status
      # => #<IControl::LocalLB::ObjectStatus:0xa0d06ec @attributes={:availability_status=>:AVAILABILITY_STATUS_RED, 
      # :enabled_status=>:ENABLED_STATUS_ENABLED, :status_description=>"Parent down", :id=>nil}>
    end

    it "returns an instance of IControl::LocalLB::PoolMember::MemberObjectStatus[]" do
      @members.object_status.first.class.should == IControl::LocalLB::PoolMember::MemberObjectStatus
    end
  end

  describe "#priority" do
    it "should return without raising any exception" do
      lambda { @members.priority }.should_not raise_exception
    end

    it "Gets the priorities for all members in the specified pools." do
      @members.priority.should_not be_nil
    end

    it "works this way" do
      priorities = @members.priority
      # => [#<IControl::LocalLB::PoolMember::MemberPriority:0xa37148c...>,...]
      priorities.first.member.address
      # => 192.168.50.1
      priorities.first.priority
      # => 1
    end

    it "returns an instance of IControl::LocalLB::PoolMember::MemberPriority[]" do
      @members.priority.first.class == IControl::LocalLB::PoolMember::MemberPriority
    end
  end

  describe "#ratio" do
    it "should return without raising any exception" do
      lambda { @members.ratio }.should_not raise_exception
    end

    it "Gets the ratios for all members in the specified pools." do
      @members.ratio.should_not be_nil
    end

    it "works this way" do
      ratios = @members.ratio
      # => [#<IControl::LocalLB::PoolMember::MemberRatio:0xb27ea4c ...>,...]
      ratios.first.member.address
      # => 192.168.50.1
      ratios.first.ratio
      # => 1
    end

    it "returns an instance of IControl::LocalLB::PoolMember::MemberRatio[]" do
      @members.ratio.first.class.should == IControl::LocalLB::PoolMember::MemberRatio
    end
  end

  describe "#session_enabled_state" do
    it "should return without raising any exception" do
      lambda { @members.session_enabled_state }.should_not raise_exception
    end

    it "Note: This function has been deprecated. Please use get_session_status. Gets the session states for all members of the specified pools." do
      @members.session_enabled_state.should_not be_nil

    end

    it "works this way" do
      @members.session_enabled_state.first.session_state
      # => :STATE_ENABLED
    end

    it "returns an instance of IControl::LocalLB::PoolMember::MemberSessionState[]" do
      @members.session_enabled_state.first.class.should == IControl::LocalLB::PoolMember::MemberSessionState
    end
  end

  describe "#session_status" do
    it "should return without raising any exception" do
      lambda { @members.session_status }.should_not raise_exception
    end

    it "Gets the session status for all members of the specified pools." do
      @members.session_status.should_not be_nil
    end

    it "works this way" do
      @members.session_status.first.session_status
      # => :SESSION_STATUS_ENABLED
    end

    it "returns an instance of MemberSessionStatus[]" do
      @members.session_status.first.class.should == IControl::LocalLB::PoolMember::MemberSessionStatus
    end
  end

  describe "#statistics" do
    it "should return without raising any exception" do
      lambda { @members.statistics(:members => [{:address => "192.168.50.1",:port => 80}] )}.should_not raise_exception
    end

    it "Gets the statistics for the specified set of pool members." do
      @members.statistics(:members => [{:address => "192.168.50.1",:port => 80}] ).should_not be_nil
    end

    it "works this way" do
      statistics = @members.statistics(:members => [{:address => "192.168.50.1",:port => 80}] ).statistics.statistics
      # => [#<IControl::Common::Statistic:0xb783434 @attributes={:type=>:STATISTIC_SERVER_SIDE_BYTES_IN, :value=>#<IControl::Common::ULong64:0xb783484 @attributes={:high=>"0", :low=>"0"}>,...
    end

    it "returns an instance of MemberStatistics" do
      @members.statistics(:members => [{:address => "192.168.50.1",:port => 80}] ).class.should == IControl::LocalLB::PoolMember::MemberStatistics
    end
  end

  describe "#version" do
    it "should return without raising any exception" do
      lambda { @members.version }.should_not raise_exception
    end

    it "Gets the version information for this interface." do
      @members.version.should_not be_nil
    end

    it "works this way" do
      @members.version
      # => BIG-IP_v10.0.1
    end

    it "returns an instance of String" do
      @members.version
    end
  end

  describe "#remove_monitor_association" do

    before(:each) do
      IControl::LocalLB::Pool.set_monitor_association(:monitor_association => {
                                                        :pool_name => TEST_POOL_NAME,
                                                        :monitor_rule => {:type => IControl::LocalLB::MonitorRuleType::MONITOR_RULE_TYPE_SINGLE,
                                                          :monitor_templates => ["tcp"],
                                                          :quorum => 0
                                                        }
                                                      })
    end



    it "Removes the monitor associations for the specified pool members. Depending on the monitor association removal rule specified, this basically deletes any explicit monitor associations between a pool member and a monitor rule and thus causing the pool member to use the default monitor association of its parent pool, or this will delete any monitor association for the pool members altogether, i.e. the specified pool members will no longer be monitored." do
      previous_value = @members.monitor_association.first.monitor_rule.type
      @members.remove_monitor_association(:monitor_associations => [{:member => {
                                                                        :address_type => IControl::LocalLB::AddressType::ATYPE_EXPLICIT_ADDRESS_EXPLICIT_PORT,
                                                                        :ipport => {:address => "192.168.50.1",:port => 80}},
                                                                      :removal_rule => IControl::LocalLB::MonitorAssociationRemovalRule::REMOVE_ALL_MONITOR_ASSOCIATION}])

      @members.monitor_association.first.monitor_rule.type.should_not == previous_value
      @members.monitor_association.first.monitor_rule.type.should == IControl::LocalLB::MonitorRuleType::MONITOR_RULE_TYPE_NONE
    end

    it "works this way" do
      previous_value = @members.monitor_association.first.monitor_rule.type
      # => ...IControl::LocalLB::MonitorRuleType::MONITOR_RULE_TYPE_SINGLE...
      @members.remove_monitor_association(:monitor_associations => [{:member => {
                                                                        :address_type => IControl::LocalLB::AddressType::ATYPE_EXPLICIT_ADDRESS_EXPLICIT_PORT,
                                                                        :ipport => {:address => "192.168.50.1",:port => 80}},
                                                                      :removal_rule => IControl::LocalLB::MonitorAssociationRemovalRule::REMOVE_ALL_MONITOR_ASSOCIATION}])
      @members.monitor_association.first.monitor_rule.type
      # => IControl::LocalLB::MonitorRuleType::MONITOR_RULE_TYPE_NONE
    end
  end

  describe "#reset_statistics" do
    it "Resets the statistics for the specified set of pool members." do
      lambda { @members.reset_statistics(:members => [{:address => "192.168.1.50",:port => 80}])  }.should_not raise_exception
    end

    it "works this way" do
      @members.reset_statistics(:members => [{:address => "192.168.1.50",:port => 80}])
    end
  end

  describe "#set_connection_limit" do
    it "Sets the connection limits for the specified pool members." do
      previous_value =  @members.connection_limit.first.connection_limit
      lambda { @members.set_connection_limit(:limits => [{:member => {:address => "192.168.50.1",:port => 80},
                                                           :connection_limit => 10}]) }.should_not raise_exception
      @members.connection_limit.first.connection_limit.should_not == previous_value
      @members.connection_limit.first.connection_limit.should == 10
    end

    it "works this way" do
      @members.set_connection_limit(:limits => [{
                                                  :member => {:address => "192.168.50.1",:port => 80},
                                                  :connection_limit => 10}
                                               ])
      # => Sets the connection limit if no exception is thrown
    end
  end

  describe "#set_dynamic_ratio" do
    it "Sets the dynamic ratios for the specified pool members." do
      previous_value =  @members.dynamic_ratio.first.dynamic_ratio
      lambda { @members.set_dynamic_ratio(:dynamic_ratios => [{:member => {:address => "192.168.50.1",:port => 80},
                                                                :dynamic_ratio => 10}]) }.should_not raise_exception
      @members.dynamic_ratio.first.dynamic_ratio.should_not == previous_value
      @members.dynamic_ratio.first.dynamic_ratio.should == 10
    end

    it "works this way" do
      lambda { @members.set_dynamic_ratio(:dynamic_ratios => [{:member => {:address => "192.168.50.1",:port => 80},
                                                                :dynamic_ratio => 10}]) }.should_not raise_exception
      # => Sets the dynamic ratio is no exception is thrown
    end
  end

  describe "#set_monitor_association" do
    it "Sets/creates the monitor associations for the specified pool members. This basically creates the monitor associations between a pool member and a monitor rule." do
      @members.monitor_instance.first.monitor_instances.should be_nil
      @members.set_monitor_association(:monitor_associations => [{:member => {
                                                                     :address_type => IControl::LocalLB::AddressType::ATYPE_EXPLICIT_ADDRESS_EXPLICIT_PORT,
                                                                     :ipport => {:address => "192.168.50.1",:port => 80}},
                                                                   :monitor_rule => {
                                                                     :type => IControl::LocalLB::MonitorRuleType::MONITOR_RULE_TYPE_SINGLE,
                                                                     :monitor_templates => ["tcp"],
                                                                     :quorum => 0 }
                                                                 }])
      @members.monitor_instance.first.monitor_instances.should_not be_nil
    end

    it "works this way" do
      @members.set_monitor_association(:monitor_associations => [{:member => {
                                                                     :address_type => IControl::LocalLB::AddressType::ATYPE_EXPLICIT_ADDRESS_EXPLICIT_PORT,
                                                                     :ipport => {:address => "192.168.50.1",:port => 80}},
                                                                   :monitor_rule => {
                                                                     :type => IControl::LocalLB::MonitorRuleType::MONITOR_RULE_TYPE_SINGLE,
                                                                     :monitor_templates => ["tcp"],
                                                                     :quorum => 0 }
                                                                 }])
    end
  end

  describe "#set_monitor_state" do
    it "Sets the monitor/availability states for the specified pool members." do
      previous_value =  @members.object_status.first.object_status.status_description
      lambda { @members.set_monitor_state(:monitor_states => [{:member => {:address => "192.168.50.1",:port => 80},
                                                                :monitor_state => IControl::Common::EnabledState::STATE_DISABLED}]) }.should_not raise_exception
      @members.object_status.first.object_status.status_description.should_not == previous_value
      @members.object_status.first.object_status.status_description.should == "Forced down"
    end

    it "works this way" do
      @members.set_monitor_state(:monitor_states => [{:member => {:address => "192.168.50.1",:port => 80},
                                                                :monitor_state => IControl::Common::EnabledState::STATE_DISABLED}])
    end
  end

  describe "#set_priority" do
    it "Sets the priorities for the specified pool members." do
      previous_value =  @members.priority.first.priority
      lambda { @members.set_priority(:priorities => [{:member => {:address => "192.168.50.1",:port => 80},
                                                       :priority => 10}]) }.should_not raise_exception
      @members.priority.first.priority.should_not == previous_value
      @members.priority.first.priority.should == 10
    end

    it "works this way" do
      @members.set_priority(:priorities => [{:member => {:address => "192.168.50.1",:port => 80},
                                              :priority => 10}]) 
    end
  end

  describe "#set_ratio" do
    it "Sets the ratios for the specified pool members." do
      previous_value =  @members.ratio.first.ratio
      lambda { @members.set_ratio(:ratios => [{:member => {:address => "192.168.50.1",:port => 80},
                                                :ratio => 10}]) }.should_not raise_exception
      @members.ratio.first.ratio.should_not == previous_value
      @members.ratio.first.ratio.should == 10
    end

    it "works this way" do
      @members.set_ratio(:ratios => [{:member => {:address => "192.168.50.1",:port => 80},
                                       :ratio => 10}]) 
      # Sets the ratio for a member
    end
  end

  describe "#set_session_enabled_state" do
    it "Sets the session states for the specified pool members. If session state is enabled or true, this means that new sessions will be allowed to be established with the pool members." do
      previous_value =  @members.object_status.first.object_status.enabled_status
      lambda { @members.set_session_enabled_state(:session_states => [{:member => {:address => "192.168.50.1",:port => 80},
                                                                                :session_state => IControl::Common::EnabledState::STATE_DISABLED}]) }.should_not raise_exception
      @members.object_status.first.object_status.enabled_status.should_not == previous_value
      @members.object_status.first.object_status.enabled_status.should == IControl::Common::EnabledStatus::ENABLED_STATUS_DISABLED
    end

    it "works this way" do
      @members.set_session_enabled_state(:session_states => [{:member => {:address => "192.168.50.1",:port => 80},
                                                               :session_state => IControl::Common::EnabledState::STATE_DISABLED}])
      # => This disables the member monitor
    end
  end
end
