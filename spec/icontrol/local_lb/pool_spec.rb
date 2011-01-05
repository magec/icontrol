require File.expand_path(File.join(File.dirname(__FILE__),"..","..",'/spec_helper'))

describe IControl::LocalLB::Pool do

  use_vcr_cassette "IControl::LocalLB::Pool", :record => :all, :match_requests_on => [:uri, :method, :body] # Change :record => :new_episodes when done

  TEST_POOL_NAME="test_pool"

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
  end

  after(:each) do
    @pool.delete_pool
  end

  describe "#add_member" do
    it "Adds members to the specified pools." do
      lambda { @pool.add_member(:members => [{:address => "192.168.51.1",:port => "80"}]) }.should_not raise_exception
    end

    it "works this way" do
      @pool.add_member(:members => [{:address => "192.168.52.10",:port => "80"},
                                    {:address => "192.168.52.11",:port => "80"},
                                    {:address => "192.168.52.12",:port => "80"}])
    end
  end

  describe "#create" do

    it "Creates a new pool." do
      IControl::LocalLB::Pool.find("test_pool_creation").should be_nil      
      lambda { IControl::LocalLB::Pool.create(:pool_name => "test_pool_creation",
                                       :lb_method => IControl::LocalLB::LBMethod::LB_METHOD_ROUND_ROBIN,
                                       :members => [{:address => "192.168.50.1",:port => "80"}]) }.should_not raise_exception
      IControl::LocalLB::Pool.find("test_pool_creation").should_not be_nil
      IControl::LocalLB::Pool.find("test_pool_creation").delete_pool            
    end

    it "works this way" do
      IControl::LocalLB::Pool.create(:pool_name => "foo_pool",
                                       :lb_method => IControl::LocalLB::LBMethod::LB_METHOD_ROUND_ROBIN,
                                       :members => [{:address => "192.168.50.1",:port => "80"}])

      # After creation you can erase it calling #delete_pool
      
      IControl::LocalLB::Pool.find("foo_pool").delete_pool      
    end
  end

  describe "#delete_persistence_record" do
    it "Deletes the persistence records based on the specified persistent modes for the specified pools." do
      pending("poorly documented, idem")
    end
  end

  describe "#delete_pool" do
    it "Deletes the specified pools." do
      IControl::LocalLB::Pool.create(:pool_name => "to_be_deleted",
                                       :lb_method => IControl::LocalLB::LBMethod::LB_METHOD_ROUND_ROBIN,
                                       :members => [{:address => "192.168.50.1",:port => "80"}])

      @deletion_pool = IControl::LocalLB::Pool.find("to_be_deleted")
      
      lambda { @deletion_pool.delete_pool }.should_not raise_exception
      IControl::LocalLB::Pool.find("to_be_deleted").should be_nil
    end

    it "works this way" do
      IControl::LocalLB::Pool.create(:pool_name => "to_be_deleted",
                                       :lb_method => IControl::LocalLB::LBMethod::LB_METHOD_ROUND_ROBIN,
                                       :members => [{:address => "192.168.50.1",:port => "80"}])
      # Given a pool
      @my_pool = IControl::LocalLB::Pool.find("to_be_deleted")
      
      # Just calling delete_pool will erase it
      @my_pool.delete_pool
    end
  end

  describe "#action_on_service_down" do
    it "should return without raise any exception" do
      lambda { @pool.action_on_service_down }.should_not raise_exception
    end

    it "Gets the action to take when the node goes down for the specified pools." do
      @pool.action_on_service_down
    end

    it "works this way" do
      action_down = @pool.action_on_service_down
      # => :SERVICE_DOWN_ACTION_NONE
    end

    it "returns an instance of IControl::LocalLB::ServiceDownAction" do
      lambda { IControl::LocalLB::ServiceDownAction.const_get(@pool.action_on_service_down) }.should_not raise_exception
    end
  end

  describe "#active_member_count" do
    it "should return without raise any exception" do
      lambda { @pool.active_member_count }.should_not raise_exception
    end

    it "Gets the current active member counts for the specified pools." do
      @pool.active_member_count
    end

    it "works this way" do
      member_count = @pool.active_member_count
      # => 0
    end

    it "returns an instance of long" do
      @pool.active_member_count.class.ancestors.should include(Numeric)
    end
  end

  describe "#aggregate_dynamic_ratio" do
    it "should return without raise any exception" do
      lambda { @pool.aggregate_dynamic_ratio }.should_not raise_exception
    end

    it "Gets the aggregate dynamic ratio values from all the members of the pools." do
      @pool.aggregate_dynamic_ratio.should == 0
    end

    it "works this way" do
      dynamic_ratio = @pool.aggregate_dynamic_ratio
      # => 0
    end

    it "returns an instance of long" do
      @pool.aggregate_dynamic_ratio.class.ancestors.should include(Numeric)
    end
  end

  describe "#all_statistics" do
    it "should return without raising any exception" do
      lambda { @pool.all_statistics }.should_not raise_exception
    end

    it "Gets the statistics for all the pools." do
      @pool.all_statistics.should_not be_nil
    end

    it "works this way" do
      all_statistics = @pool.all_statistics

      # => #<IControl::LocalLB::Pool::PoolStatistics:0x92e4ccc@attributes={:statistics=>[#<IControl::LocalLB::Pool::PoolStatisticEntry:0x96868f8 @attributes={:pool_name=>"foo", :statistics=>[#<IControl::Common::Statistic:0x968d428 @attributes={:type=>:STATISTIC_SERVER_SIDE_BYTES_IN, :value=>#<IControl::Common::ULong64:0x968d4a0 @attributes={:high=>"0", :low=>"10674286", :id=>nil}>, :time_stamp=>"0", :id=>nil}>, #<IControl::Common::Statistic:0x968cce4 @attributes={:type=>:STATISTIC_SERVER_SIDE_BYTES_OUT, :value=>#<IControl::Common::ULong64:0x968cd70 @attributes={:high=>"0", :low=>"254145734", :id=>nil}>, :time_stamp=>"0", :id=>nil}>, #<IControl::Common::Statistic:0x968c514...

      all_statistics.statistics      
      # => [<IControl::Common::Statistic:0x..... ] An array with every statistic

      all_statistics.time_stamp.inspect
      # => #<IControl::Common::TimeStamp:0x9ddcf6c @attributes={:year=>"2011", :month=>"1", :day=>"4", :hour=>"10", :minute=>"59", :second=>"29", :id=>nil}>


      test_pool_statistics = all_statistics.statistics.find { |i| i.pool_name == TEST_POOL_NAME }
      # => #<IControl::LocalLB::Pool::PoolStatisticEntry:0xa492f8c @attributes={:pool_name=>TEST_POOL_NAME, :statistics=>["<.....   The statistics for a given pool
      test_pool_statistics.statistics
      # => [#<IControl::Common::Statistic:0xa497d34 @attributes={:type=>:STATISTIC_SERVER_SIDE_BYTES_IN, :value=>#<IControl::Common::ULong64:0xa497d98 @attributes={:high=>"0", :low=>"0", :id=>nil}>, :time_stamp=>"0", :id=>nil}>, #<IControl::Common::Statistic:0xa497780.... The actual values    

    end

    it "returns an instance of PoolStatistics" do
      @pool.all_statistics.class.should == IControl::LocalLB::Pool::PoolStatistics
    end
  end

  describe "#allow_nat_state" do
    it "should return without raising any exception" do
      lambda { @pool.allow_nat_state }.should_not raise_exception
    end

    it "Gets the states indicating whether NATs are allowed for the specified pools." do
      @pool.allow_nat_state.should_not be_nil
    end

    it "works this way" do
      @pool.allow_nat_state
      # => :STATE_ENABLED
    end

    it "returns an instance of IControl::LocalLB::EnabledState" do
      lambda { IControl::Common::EnabledState.const_get(@pool.allow_nat_state.to_s) }.should_not raise_exception
    end
  end

  describe "#allow_snat_state" do
    it "should return without raising any exception" do
      lambda { @pool.allow_snat_state }.should_not raise_exception
    end

    it "Gets the states indicating whether SNATs are allowed for the specified pools." do
      @pool.allow_snat_state.should_not be_nil
    end

    it "works this way" do
      @pool.allow_snat_state
      # => :STATE_ENABLED
    end

    it "returns an instance of EnabledState" do
      lambda { IControl::Common::EnabledState.const_get(@pool.allow_snat_state.to_s) }.should_not raise_exception
    end
  end

  describe "#client_ip_tos" do
    it "should return without raising any exception" do
      lambda { @pool.client_ip_tos }.should_not raise_exception
    end

    it "Gets the IP ToS values for client traffic for the specified pools." do
      @pool.client_ip_tos.should_not be_nil
    end

    it "works this way" do
      @pool.client_ip_tos
      # => 65535
    end

    it "returns an instance of long" do
      @pool.client_ip_tos.class.ancestors.should include(Numeric)
    end
  end

  describe "#client_link_qos" do
    it "should return without raising any exception" do
      lambda { @pool.client_link_qos }.should_not raise_exception
    end

    it "Gets the link QoS values for client traffic for the specified pools." do
      @pool.client_link_qos.should_not be_nil
    end

    it "works this way" do
      @pool.client_link_qos
      # => 65535
    end

    it "returns an instance of long" do
      @pool.client_link_qos.class.ancestors.should include(Numeric)
    end

  end

  describe "#gateway_failsafe_unit_id" do
    it "should return without raising any exception" do
      lambda { @pool.gateway_failsafe_unit_id }.should_not raise_exception
    end

    it "Gets the gateway failsafe unit IDs for the specified pools." do
      @pool.gateway_failsafe_unit_id.should_not be_nil
    end

    it "works this way" do
      @pool.gateway_failsafe_unit_id
      # => 65535
    end

    it "returns an instance of long" do
      @pool.gateway_failsafe_unit_id.class.ancestors.should include(Numeric)
    end

  end

  describe "#lb_method" do
    it "should return without raising any exception" do
      lambda { @pool.lb_method }.should_not raise_exception
    end

    it "Gets the load balancing methods for the specified pools." do
      @pool.lb_method.should_not be_nil
    end

    it "works this way" do
      @pool.lb_method.inspect
      # => :LB_METHOD_DYNAMIC_RATIO
    end

    it "returns an instance of IControl::LocalLB::LBMethod" do
      lambda { IControl::LocalLB::LBMethod.const_get(@pool.lb_method.to_s) }.should_not raise_exception
    end
  end

  describe "#list" do
    it "should return without raising any exception" do
      lambda { IControl::LocalLB::Pool.get_list }.should_not raise_exception
    end

    it "Gets a list of all pools." do
      pending("Waiting to see the rest of the examples, maybe it would be convenient to return a list of instances instead of just strings")
    end
  end

  describe "#member" do
    it "should return without raising any exception" do
      lambda { @pool.member }.should_not raise_exception
    end

    it "Gets a list of pool members." do
      @pool.member.should_not be_nil
    end

    it "works this way" do
      @pool.member.map do |member|
        member.address
      end
      # => [ "192.168.1.2","192.168.1.20",....]
    end

    it "returns an instance of IControl::Common::IPPortDefinition[]" do
      @pool.member.first.class.should == IControl::Common::IPPortDefinition
    end
  end

  describe "#minimum_active_member" do
    it "should return without raising any exception" do
      lambda { @pool.minimum_active_member }.should_not raise_exception
    end

    it "Gets the minimum active member counts for the specified pools." do
      @pool.minimum_active_member.should_not be_nil
    end

    it "works this way" do
      puts @pool.minimum_active_member.inspect
      # => 0
    end

    it "returns an instance of long" do
      @pool.minimum_active_member.class.ancestors.should include(Numeric)
    end
  end

  describe "#minimum_up_member" do
    it "should return without raising any exception" do
      lambda { @pool.minimum_up_member }.should_not raise_exception
    end

    it "Gets the minimum member counts that are required to be UP for the specified pools." do
      @pool.minimum_up_member.should_not be_nil
    end

    it "works this way" do
      @pool.minimum_up_member.inspect
      # => 0
    end

    it "returns an instance of long" do
      @pool.minimum_up_member.class.ancestors.should include(Numeric)
    end
  end

  describe "#minimum_up_member_action" do
    it "should return without raising any exception" do
      lambda { @pool.minimum_up_member_action }.should_not raise_exception
    end

    it "Gets the actions to be taken if the minimum number of members required to be UP for the specified pools is not met." do
      @pool.minimum_up_member_action.should_not be_nil
    end

    it "works this way" do
      minimum_up_member_action = @pool.minimum_up_member_action
      # => :HA_ACTION_FAILOVER
    end

    it "returns an instance of IControl::Common::HAAction" do
      lambda { IControl::Common::HAAction.const_get(@pool.minimum_up_member_action.to_s) }.should_not raise_exception
    end
  end

  describe "#minimum_up_member_enabled_state" do
    it "should return without raising any exception" do
      lambda { @pool.minimum_up_member_enabled_state }.should_not raise_exception
    end

    it "Gets the states indicating that the feature that requires a minimum number of members to be UP is enabled/disabled for the specified pools." do
      @pool.minimum_up_member_enabled_state.should_not be_nil
    end

    it "works this way" do
      minimum_up_member_enabled_state = @pool.minimum_up_member_enabled_state
      # => :STATE_DISABLED
    end

    it "returns an instance of IControl::Common::EnabledState" do
      lambda { IControl::Common::EnabledState.const_get(@pool.minimum_up_member_enabled_state.to_s) }.should_not raise_exception
    end
  end

  describe "#monitor_association" do
    it "should return without raising any exception" do
      lambda { @pool.monitor_association }.should_not raise_exception
    end

    it "Gets the monitor associations for the specified pools, i.e. the monitor rules used by the pools." do
      @pool.monitor_association.should_not be_nil
    end

    it "works this way" do
       @pool.monitor_association
    end

    it "returns an instance of IControl::LocalLB::Pool::MonitorAssociation" do
      @pool.monitor_association.class.should == IControl::LocalLB::Pool::MonitorAssociation
    end
  end

  describe "#monitor_instance" do

    before(:each) do
      IControl::LocalLB::Pool.set_monitor_association(:monitor_association => {:pool_name => TEST_POOL_NAME,:monitor_rule => {:type => IControl::LocalLB::MonitorRuleType::MONITOR_RULE_TYPE_SINGLE,:monitor_templates => ["tcp"],:quorum => 0} })
    end
    
    it "should return without raising any exception" do
      lambda { @pool.monitor_instance }.should_not raise_exception
    end

    it "Gets the monitor instance information for the specified pools, i.e. the monitor instance information for the pool members of the specified pools." do
      # for this to work a monitor have to be associated to the pool
      @pool.monitor_instance.should_not be_nil
    end

    it "works this way" do

      monitor_states = @pool.monitor_instance
      monitor_states.first.instance_state
      # => :INSTANCE_STATE_DOWN  (The actual state of the first member)
      monitor_states.first.instance.instance_definition
      # => #<IControl::LocalLB::MonitorIPPort:0x9f1c8a0 @attributes={:address_type=>:ATYPE_EXPLICIT_ADDRESS_EXPLICIT_PORT, :ipport=>#<IControl::Common::IPPortDefinition:0x9f1c918 @attributes={:address=>"192.168.52.10", :port=>"80", :id=>nil}>, :id=>nil}>
      monitor_states.first.instance.template_name
      # => tcp ( the monitor itself )
    end

    it "returns an instance of MonitorInstanceState[]" do
      @pool.monitor_instance.first.class.should == IControl::LocalLB::MonitorInstanceState
    end
  end

  describe "#object_status" do
    it "should return without raising any exception" do
      lambda { @pool.object_status }.should_not raise_exception
    end

    it "Gets the statuses of the specified pools." do
      @pool.object_status.should_not be_nil
    end

    it "works this way" do
      status = @pool.object_status
      status.availability_status
      # => :AVAILABILITY_STATUS_RED ( down )
      status.enabled_status
      # => :ENABLED_STATUS_ENABLED ( enabled ) this configuration corresponds with the red box in the GUI
      status.status_description
      # => "The children pool member(s) are down"
    end

    it "returns an instance of IControl::LocalLB::ObjectStatus" do
      @pool.object_status.class.should == IControl::LocalLB::ObjectStatus
    end
  end

  describe "#persistence_record" do

    it "Gets the persistence records based on the specified persistent modes for the specified pools." do
      pending("poorly documented, no responses are received when trying")
    end
  end

  describe "#server_ip_tos" do
    it "should return without raising any exception" do
      lambda { @pool.server_ip_tos }.should_not raise_exception
    end

    it "Gets the IP ToS values for server traffic for the specified pools." do
      @pool.server_ip_tos.should_not be_nil
    end

    it "works this way" do
      @pool.server_ip_tos
      # => 65535
    end

    it "returns an instance of long" do
      @pool.server_ip_tos.class.ancestors.should include(Numeric)
    end
  end

  describe "#server_link_qos" do
    it "should return without raising any exception" do
      lambda { @pool.server_link_qos }.should_not raise_exception
    end

    it "Gets the link QoS values for server traffic for the specified pools." do
      @pool.server_link_qos.should_not be_nil
    end

    it "works this way" do
      @pool.server_link_qos
      # => 65535
    end

    it "returns an instance of long" do
      @pool.server_link_qos.class.ancestors.should include(Numeric)
    end
  end

  describe "#simple_timeout" do
    it "should return without raising any exception" do
      lambda { @pool.simple_timeout }.should_not raise_exception
    end

    it "Gets the simple timeouts for the specified pools." do
      @pool.simple_timeout.should_not be_nil
    end

    it "works this way" do
      @pool.simple_timeout
      # => 0
    end

    it "returns an instance of long" do
      @pool.simple_timeout.class.ancestors.should include(Numeric)
    end
  end

  describe "#slow_ramp_time" do
    it "should return without raising any exception" do
      lambda { @pool.slow_ramp_time }.should_not raise_exception
    end

    it "Gets the ramp-up time (in seconds) to gradually ramp up the load on newly added or freshly detected UP pool members." do
      @pool.slow_ramp_time.should_not be_nil
    end

    it "works this way" do
      @pool.slow_ramp_time
      # => 0
    end

    it "returns an instance of long" do
      @pool.slow_ramp_time.class.ancestors.should include(Numeric)
    end
  end

  describe "#statistics" do
    it "should return without raising any exception" do
      lambda { @pool.statistics }.should_not raise_exception
    end

    it "Gets the statistics for the specified pools." do
      @pool.statistics.should_not be_nil
    end

    it "works this way" do
      statistics = @pool.statistics
      statistics.time_stamp.inspect
      # => #<IControl::Common::TimeStamp:0x7f4bdea1f5c8 @attributes={:month=>"1", :year=>"2011", :second=>"46", :hour=>"14", :day=>"4", :id=>nil, :minute=>"33"}>
      statistics.statistics.statistics.first.type
      # => :STATISTIC_SERVER_SIDE_BYTES_IN
      statistics.statistics.statistics.first.value
      # => #<IControl::Common::ULong64:0x7fc3107533b8 @attributes={:high=>"0", :low=>"0"}>
    end

    it "returns an instance of PoolStatistics" do
      @pool.statistics.class.should == IControl::LocalLB::Pool::PoolStatistics
    end
  end

  describe "#version" do
    it "should return without raising any exception" do
      lambda { @pool.version }.should_not raise_exception
    end

    it "Gets the version information for this interface." do
      @pool.version.should_not be_nil
    end

    it "works this way" do
      @pool.version.inspect
      # => "BIG-IP_v10.0.1"
    end

    it "returns an instance of String" do
      @pool.version.class.should == String
    end
  end

  describe "#remove_member" do
    it "Removes members from the specified pools." do
      before = @pool.member.length
      @pool.add_member(:members => [{:address => "192.168.52.10",:port => "80"}])
      after = @pool.member.length
      after.should == (before + 1)
      @pool.remove_member(:members => [{:address => "192.168.52.10",:port => "80"}])
      @pool.member.length.should == before
    end

    it "works this way" do
      @pool.add_member(:members => [{:address => "192.168.52.10",:port => "80"}])
      # - ^ My pool's got a new member
      @pool.remove_member(:members => [{:address => "192.168.52.10",:port => "80"}])      
      # - ^ Get the hell out! of here!
    end
  end

  describe "#set_monitor_association" do
    it "Sets/creates the monitor associations for the specified pools. This basically creates the monitor associations between a pool and a monitor rule." do
      lambda { IControl::LocalLB::Pool.set_monitor_association(:monitor_association => {:pool_name => TEST_POOL_NAME,:monitor_rule => {:type => IControl::LocalLB::MonitorRuleType::MONITOR_RULE_TYPE_SINGLE,:monitor_templates => ["tcp"],:quorum => 0} })}.should_not raise_exception
    end
    
    it "works this way" do
      IControl::LocalLB::Pool.set_monitor_association(:monitor_association => 
                                                      {:pool_name => TEST_POOL_NAME,
                                                        :monitor_rule => {
                                                          :type => IControl::LocalLB::MonitorRuleType::MONITOR_RULE_TYPE_SINGLE,
                                                          :monitor_templates => ["http"],
                                                          :quorum => 0}
                                                      }).inspect
      # Note that this does not add a new monitor association but replaces the one currently set
    end
  end

  describe "#remove_monitor_association" do
    it "Removes the monitor associations for the specified pools. This basically deletes the monitor associations between a pool and a monitor rule, i.e. the specified pools will no longer be monitored." do
      lambda { @pool.remove_monitor_association }.should_not raise_exception
    end
    
    it "works this way" do
      @pool.remove_monitor_association
      # => nil (every association was removed unless exception thrown)
    end
  end

  describe "#reset_statistics" do
    it "Resets the statistics for the specified pools." do
      lambda { @pool.reset_statistics }.should_not raise_exception
    end

    it "works this way" do
      @pool.reset_statistics
      # => Statistics reset unless exception thrown
    end
  end

  describe "#set_action_on_service_down" do
    it "Sets the action to take when the node goes down for the specified pools." do
      lambda { @pool.set_action_on_service_down(:action => IControl::LocalLB::ServiceDownAction::SERVICE_DOWN_ACTION_RESET) }.should_not raise_exception
    end

    it "works this way" do
      @pool.set_action_on_service_down(:action => IControl::LocalLB::ServiceDownAction::SERVICE_DOWN_ACTION_RESET) 
      # Available Actions are: SERVICE_DOWN_ACTION_NONE, SERVICE_DOWN_ACTION_RESET, SERVICE_DOWN_ACTION_DROP, SERVICE_DOWN_ACTION_RESELECT 
    end
  end

  describe "#set_allow_nat_state" do
    it "Sets the states indicating whether NATs are allowed for the specified pools." do
      lambda { @pool.set_allow_nat_state(:state => IControl::Common::EnabledState::STATE_DISABLED) }.should_not raise_exception
    end

    it "works this way" do
      @pool.set_allow_nat_state(:state => IControl::Common::EnabledState::STATE_DISABLED)
    end
  end

  describe "#set_allow_snat_state" do
    it "Sets the states indicating whether SNATs are allowed for the specified pools." do
      lambda { @pool.set_allow_snat_state(:state => IControl::Common::EnabledState::STATE_DISABLED) }.should_not raise_exception
    end

    it "works this way" do
      @pool.set_allow_snat_state(:state => IControl::Common::EnabledState::STATE_DISABLED)
    end
  end

  describe "#set_client_ip_tos" do
    it "Sets the IP ToS values for client traffic for the specified pools." do
      lambda { @pool.set_client_ip_tos(:value => 1) }.should_not raise_exception
    end

    it "works this way" do
      @pool.set_client_ip_tos(:value => 1)
    end
  end

  describe "#set_client_link_qos" do
    it "Sets the link QoS values for client traffic for the specified pools." do
      lambda { @pool.set_client_link_qos(:value => 1) }.should_not raise_exception
    end

    it "works this way" do
      @pool.set_client_link_qos(:value => 0)
    end
  end

  describe "#set_server_ip_tos" do
    it "Sets the IP ToS values for server traffic for the specified pools." do
      lambda { @pool.set_server_ip_tos(:value => 1) }.should_not raise_exception
    end

    it "works this way" do
      @pool.set_server_ip_tos(:value => 1)
    end
  end

  describe "#set_server_link_qos" do
    it "Sets the link QoS values for server traffic for the specified pools." do
      lambda { @pool.set_server_link_qos(:value => 1) }.should_not raise_exception
    end

    it "works this way" do
      @pool.set_server_link_qos(:value => 0)
    end
  end

  describe "#set_gateway_failsafe_unit_id" do
    it "Sets the gateway failsafe unit IDs for the specified pools." do
      lambda { @pool.set_gateway_failsafe_unit_id(:unit_id => 1) }.should_not raise_exception
    end

    it "works this way" do
      @pool.set_gateway_failsafe_unit_id(:unit_id => 1)
    end
  end

  describe "#set_lb_method" do
    it "Sets the load balancing methods for the specified pools." do
      lambda { @pool.set_lb_method(:lb_method => IControl::LocalLB::LBMethod::LB_METHOD_RATIO_MEMBER) }.should_not raise_exception
    end

    it "works this way" do
      @pool.set_lb_method(:lb_method => IControl::LocalLB::LBMethod::LB_METHOD_RATIO_MEMBER) 
       # => 
     end
   end

  describe "#set_minimum_active_member" do
    it "Sets the minimum active member counts for the specified pools." do
      lambda { @pool.set_minimum_active_member(:value => 5) }.should_not raise_exception
    end
    
    it "works this way" do
      @pool.set_minimum_active_member(:value => 5)
    end
  end

  describe "#set_minimum_up_member" do
    it "Sets the minimum member counts that are required to be UP for the specified pools." do
      lambda { @pool.set_minimum_up_member(:value => 4) }.should_not raise_exception
    end

    it "works this way" do
      @pool.set_minimum_up_member(:value => 4)
    end
  end

  describe "#set_minimum_up_member_action" do
    it "Sets the actions to be taken if the minimum number of members required to be UP for the specified pools is not met." do
#      lambda { @pool.set_minimum_up_member_action(:action => IControl::Common::HAAction::HA_ACTION_NONE) }.should_not raise_exception
      pending("poorly documented, what does failover or reset mean in this context?")
    end
  end

  describe "#set_minimum_up_member_enabled_state" do
    it "Sets the states indicating that the feature that requires a minimum number of members to be UP is enabled/disabled for the specified pools." do
      lambda { @pool.set_minimum_up_member_enabled_state(:state => IControl::Common::EnabledState::STATE_DISABLED) }.should_not raise_exception
    end

    it "works this way" do
      @pool.set_minimum_up_member_enabled_state(:state => IControl::Common::EnabledState::STATE_DISABLED)
    end
  end

  describe "#set_simple_timeout" do
    it "Sets the simple timeouts for the specified pools." do
      lambda { @pool.set_simple_timeout(:simple_timeout => 5) }.should_not raise_exception
    end

    it "works this way" do
      @pool.set_simple_timeout(:simple_timeout => 5)
    end
  end

  describe "#set_slow_ramp_time" do
    it "Sets the ramp-up time (in seconds) to gradually ramp up the load on newly added or freshly detected UP pool members." do
      lambda { @pool.set_slow_ramp_time(:value => 5) }.should_not raise_exception
    end

    it "works this way" do
      @pool.set_slow_ramp_time(:value => 5)
    end
  end
end
