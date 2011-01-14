require File.expand_path(File.join(File.dirname(__FILE__),"..","..",'/spec_helper'))

describe IControl::LocalLB::VirtualServer do

  use_vcr_cassette "IControl::LocalLB::VirtualServer", :record => :all, :match_requests_on => [:uri, :method, :body] # Change :record => :new_episodes when done

  before(:each) do
    # Here you should provide an implementation of the creation of the object that is going to
    # be used to test the name will be test_virtual_server
    @test_virtual_server_name = "test_virtual_server"
    IControl::LocalLB::VirtualServer.create(:definition => {
                                              :address => "192.168.99.99",
                                              :name => @test_virtual_server_name,
                                              :port => "4",
                                              :protocol => IControl::Common::ProtocolType::PROTOCOL_TCP
                                            },
                                            :wildmask => "255.255.255.255",
                                            :resource => {
                                              :type => IControl::LocalLB::VirtualServer::VirtualServerType::RESOURCE_TYPE_POOL,
                                              :default_pool_name => ""
                                            },
                                            :profiles => [])
    @virtual_server = IControl::LocalLB::VirtualServer.find(@test_virtual_server_name)
  end

  after(:each) do
    @virtual_server.delete_virtual_server
  end

  describe "#add_authentication_profile" do
    
    before(:each) do 
      @virtual_server.add_profile(:profiles => [{:profile_name => "http",:profile_context => IControl::LocalLB::ProfileContextType::PROFILE_CONTEXT_TYPE_ALL}])
    end
    
    it "Adds/associates authentication profiles to the specified virtual servers." do
      @virtual_server.authentication_profile.should be_nil
      @virtual_server.add_authentication_profile(:profiles => [{:profile_name => "ldap",:priority => 1}] )
      @virtual_server.authentication_profile.first.profile_name.should == "ldap"
    end

    it "works this way" do
      @virtual_server.add_authentication_profile(:profiles => [{:profile_name => "ldap",:priority => 1}] )
    end
  end

  describe "#add_clone_pool" do
    
    before(:each) do
      @test_pool_name="test_pool"
      IControl::LocalLB::Pool.create(:pool_name => @test_pool_name,
                                     :lb_method => IControl::LocalLB::LBMethod::LB_METHOD_ROUND_ROBIN,
                                     :members => [{:address => "192.168.50.1",:port => "80"},
                                                  {:address => "192.168.50.2",:port => "80"}
                                                 ])
      @test_pool =  IControl::LocalLB::Pool.find(@test_pool_name)
    end

    after(:each) do 
      @virtual_server.remove_all_clone_pools
      @test_pool.delete_pool
    end

    it "Adds/associates clone pools to the specified virtual servers." do
      @virtual_server.clone_pool.should be_nil
      @virtual_server.add_clone_pool(:clone_pools => [{:pool_name => @test_pool_name,:type => IControl::LocalLB::ClonePoolType::CLONE_POOL_TYPE_CLIENTSIDE}] )
      @virtual_server.clone_pool.first.pool_name.should == @test_pool_name
    end

    it "works this way" do
      @virtual_server.add_clone_pool(:clone_pools => [{:pool_name => @test_pool_name,:type => IControl::LocalLB::ClonePoolType::CLONE_POOL_TYPE_CLIENTSIDE}] )
    end
  end

  describe "#add_httpclass_profile" do

    before(:each) do
      @profile_http_class_name = "test_profile_http_class"
      IControl::LocalLB::ProfileHttpClass.create(:profile_name => @profile_http_class_name)
      @profile_http_class = IControl::LocalLB::ProfileHttpClass.find("test_profile_http_class")
    end

    after(:each) do 
      @virtual_server.remove_all_httpclass_profiles
      @profile_http_class.delete_profile
    end

    it "Adds/associates HTTP class profiles to the specified virtual servers." do
      @virtual_server.add_profile(:profiles => [{:profile_name => "http",:profile_context => IControl::LocalLB::ProfileContextType::PROFILE_CONTEXT_TYPE_ALL}])
      @virtual_server.httpclass_profile.should be_nil
      @virtual_server.add_httpclass_profile(:profiles => [{:profile_name => @profile_http_class_name,:priority => 1}])
      @virtual_server.httpclass_profile.first.profile_name.should == @profile_http_class_name
    end

    it "works this way" do
      @virtual_server.add_profile(:profiles => [{:profile_name => "http",:profile_context => IControl::LocalLB::ProfileContextType::PROFILE_CONTEXT_TYPE_ALL}])
      # ^ First we have to set it as an http virtual_server
      @virtual_server.add_httpclass_profile(:profiles => [{:profile_name => @profile_http_class_name,:priority => 1}])
      # And then we add the profile, note that this rewrites the current information to the array passed
    end
  end

  describe "#add_persistence_profile" do
    it "Adds/associates persistence profiles to the specified virtual servers." do
      @virtual_server.persistence_profile.should be_nil
      @virtual_server.add_persistence_profile(:profiles => [{:profile_name => "dest_addr",:default_profile => false}] )
      @virtual_server.persistence_profile.should_not be_nil
      @virtual_server.persistence_profile.first.profile_name.should == "dest_addr"
    end

    it "works this way" do
      @virtual_server.add_persistence_profile(:profiles => [{:profile_name => "dest_addr",:default_profile => false}] )
    end
  end

  describe "#add_profile" do
    it "Adds/associates profiles to the specified virtual servers." do
      before = @virtual_server.profile.length
      @virtual_server.add_profile(:profiles => [{:profile_name => "http",:profile_context => IControl::LocalLB::ProfileContextType::PROFILE_CONTEXT_TYPE_ALL}])
      @virtual_server.profile.length.should_not == before
      @virtual_server.profile.first.profile_context.should == IControl::LocalLB::ProfileContextType::PROFILE_CONTEXT_TYPE_ALL
    end

    it "works this way" do
      @virtual_server.add_profile(:profiles => [{:profile_name => "http",:profile_context => IControl::LocalLB::ProfileContextType::PROFILE_CONTEXT_TYPE_ALL}])
      # This works for any kind of profile if possible
    end
  end

  describe "#add_rule" do

    before(:each) do
      @rule_name = "test_rule"
      IControl::LocalLB::Rule.create(:rule => {:rule_name => @rule_name,:rule_definition => ""})
    end

    after(:each) do
      @virtual_server.remove_all_rules
      IControl::LocalLB::Rule.find(@rule_name).delete_rule
    end

    it "Adds/associates rules to the specified virtual servers." do
      @virtual_server.rule.should be_nil
      @virtual_server.add_rule(:rules => [{:rule_name => @rule_name ,:priority => 1}])
      @virtual_server.rule.should_not be_nil
    end

    it "works this way" do
      @virtual_server.add_rule(:rules => [{:rule_name => @rule_name ,:priority => 1}])
    end
  end

  describe "#create" do

    after(:each) do
      IControl::LocalLB::VirtualServer.find("test_creation").delete_virtual_server
    end

    it "Creates or updates virtual servers from the specified resources. Takes additional, optional parameters that enable you to override the default optional values." do
      IControl::LocalLB::VirtualServer.create(:definition => {
                                              :address => "192.168.99.99",
                                              :name => "test_creation",
                                              :port => "5",
                                              :protocol => IControl::Common::ProtocolType::PROTOCOL_TCP
                                            },
                                            :wildmask => "255.255.255.255",
                                            :resource => {
                                              :type => IControl::LocalLB::VirtualServer::VirtualServerType::RESOURCE_TYPE_POOL,
                                              :default_pool_name => ""
                                            },
                                            :profiles => [])
      IControl::LocalLB::VirtualServer.find("test_creation").should_not be_nil
    end

    it "works this way" do      
      IControl::LocalLB::VirtualServer.create(:definition => {
                                              :address => "192.168.99.99",
                                              :name => "test_creation",
                                              :port => "5",
                                              :protocol => IControl::Common::ProtocolType::PROTOCOL_TCP
                                            },
                                            :wildmask => "255.255.255.255",
                                            :resource => {
                                              :type => IControl::LocalLB::VirtualServer::VirtualServerType::RESOURCE_TYPE_POOL,
                                              :default_pool_name => ""
                                            },
                                            :profiles => [])
      # This is just an example, note that in the profiles an initial collection of profile can be specified for the virtual_server
    end
  end

  describe "#delete_persistence_record" do
    it "Deletes the persistence records based on the specified persistent modes for the specified virtual servers." do
      @virtual_server.delete_persistence_record(:persistence_mode => IControl::LocalLB::PersistenceMode::PERSISTENCE_MODE_COOKIE)
    end

    it "works this way" do
      @virtual_server.delete_persistence_record(:persistence_mode => IControl::LocalLB::PersistenceMode::PERSISTENCE_MODE_COOKIE)
    end
  end

  describe "#delete_virtual_server" do
    it "Deletes the specified virtual servers." do
      # It is already tested everytime we call after
    end

    it "works this way" do
      # @virtual_server.delete_virtual_server
    end
  end

  describe "#actual_hardware_acceleration" do
    it "should return without raising any exception" do
      lambda { @virtual_server.actual_hardware_acceleration }.should_not raise_exception
    end

    it "Gets the actual hardware acceleration modes for the specified virtual servers." do
      @virtual_server.actual_hardware_acceleration.should_not be_nil
    end

    it "works this way" do
      @virtual_server.actual_hardware_acceleration
      # => :HW_ACCELERATION_MODE_NONE      
    end

    it "returns an instance of HardwareAccelerationMode" do
      IControl::LocalLB::HardwareAccelerationMode.constants.should include(@virtual_server.actual_hardware_acceleration)
    end
  end

  describe "#all_statistics" do
    it "should return without raising any exception" do
      lambda { @virtual_server.all_statistics }.should_not raise_exception
    end

    it "Gets the statistics for all the virtual servers." do
      @virtual_server.all_statistics.should_not be_nil
    end

    it "returns an instance of VirtualServerStatistics" do
      @virtual_server.all_statistics.class.should == IControl::LocalLB::VirtualServer::VirtualServerStatistics
    end
  end

  describe "#authentication_profile" do
    it "should return without raising any exception" do
      lambda { @virtual_server.authentication_profile }.should_not raise_exception
    end

    it "Gets the lists of authentication profiles the specified virtual servers are associated with." do
      @virtual_server.authentication_profile.should be_nil # It's tested in the the setter method
    end
  end

  describe "#clone_pool" do
    it "should return without raising any exception" do
      lambda { @virtual_server.clone_pool }.should_not raise_exception
    end

    it "Gets the lists of clone pools the specified virtual servers are associated with." do
      @virtual_server.clone_pool.should be_nil # It's tested in the the setter method
    end
  end

  describe "#cmp_enable_mode" do
    it "should return without raising any exception" do
      lambda { @virtual_server.cmp_enable_mode }.should_not raise_exception
    end

    it "Gets the CMP enable modes from the specified virtual servers. This is read-only, as the modes are set according to the system and configuration, and influenced by the desired CMP enabled state." do
      @virtual_server.cmp_enable_mode.should_not be_nil
    end

    it "works this way" do
      @virtual_server.cmp_enable_mode
      # => :RESOURCE_TYPE_CMP_ENABLE_ALL
    end

    it "returns an instance of VirtualServerCMPEnableMode" do
      IControl::LocalLB::VirtualServer::VirtualServerCMPEnableMode.constants.should include(@virtual_server.cmp_enable_mode)
    end
  end

  describe "#cmp_enabled_state" do
    it "should return without raising any exception" do
      lambda { @virtual_server.cmp_enabled_state }.should_not raise_exception
    end

    it "Gets the CMP enabled states for the specified virtual servers. Enables or disables CMP. Note that this setting can influence the CMP enable mode set automatically by the system and configuration. You can not always enable CMP, but you can always disable it." do
      @virtual_server.cmp_enabled_state.should_not be_nil
    end

    it "works this way" do
      @virtual_server.cmp_enabled_state
      # => :STATE_ENABLED
    end

    it "returns an instance of EnabledState" do
      IControl::Common::EnabledState.constants.should include( @virtual_server.cmp_enabled_state)
    end
  end

  describe "#connection_limit" do
    it "should return without raising any exception" do
      lambda { @virtual_server.connection_limit }.should_not raise_exception
    end

    it "Gets the connection limits for the specified virtual servers." do
      @virtual_server.connection_limit.should_not be_nil
    end

    it "works this way" do
      @virtual_server.connection_limit
      # => #<IControl::Common::ULong64:0xb53bfdc @attributes={:high=>0, :low=>0}>
    end

    it "returns an instance of ULong64" do
      @virtual_server.connection_limit.class.should == IControl::Common::ULong64
    end
  end

  describe "#connection_mirror_state" do
    it "should return without raising any exception" do
      lambda { @virtual_server.connection_mirror_state }.should_not raise_exception
    end

    it "Gets the mirror connection states for the specified virtual servers." do
      @virtual_server.connection_mirror_state.should_not be_nil
    end

    it "works this way" do
      @virtual_server.connection_mirror_state
      # => :STATE_DISABLED
    end

    it "returns an instance of EnabledState" do
      IControl::Common::EnabledState.constants.should include(@virtual_server.connection_mirror_state)
    end
  end

  describe "#default_pool_name" do
    it "should return without raising any exception" do
      lambda { @virtual_server.default_pool_name }.should_not raise_exception
    end

    it "Gets the default pool names for the specified virtual servers." do
      @virtual_server.default_pool_name.should be_nil
    end

    it "works this way" do
      @virtual_server.default_pool_name
      # =>  "test_pool"
    end

  end

  describe "#destination" do
    it "should return without raising any exception" do
      lambda { @virtual_server.destination }.should_not raise_exception
    end

    it "Gets the destination IP and port of the specified virtual servers." do
      @virtual_server.destination.should_not be_nil
    end

    it "works this way" do
      @virtual_server.destination
      # => #<IControl::Common::IPPortDefinition:0xa7a6a34 @attributes={:address=>"213.73.35.199", :port=>3}>
    end

    it "returns an instance of IPPortDefinition" do
      @virtual_server.destination.class.should == IControl::Common::IPPortDefinition
    end
  end

  describe "#enabled_state" do
    it "should return without raising any exception" do
      lambda { @virtual_server.enabled_state }.should_not raise_exception
    end

    it "Gets the enabled state of the specified virtual server." do
      @virtual_server.enabled_state.should_not be_nil
    end

    it "works this way" do
      @virtual_server.enabled_state
      # => :STATE_DISABLED
    end

    it "returns an instance of EnabledState" do
      IControl::Common::EnabledState.constants.should include(@virtual_server.enabled_state)
    end
  end

  describe "#fallback_persistence_profile" do
    it "should return without raising any exception" do
      lambda { @virtual_server.fallback_persistence_profile }.should_not raise_exception
    end

    it "Gets the persistence profiles to use for fallback persistence for the specified virtual servers." do
      @virtual_server.fallback_persistence_profile.should be_nil
    end

    it "works this way" do
      @virtual_server.fallback_persistence_profile
      # => nil if none is set or the name 
    end

  end

  describe "#gtm_score" do
    it "should return without raising any exception" do
      lambda { @virtual_server.gtm_score }.should_not raise_exception
    end

    it "Returns the gtm scores for the specified virtual servers." do
      @virtual_server.gtm_score.should_not be_nil
    end

    it "works this way" do
      @virtual_server.gtm_score
      # => #<IControl::Common::ULong64:0x97502c0 @attributes={:high=>0, :low=>0}>
    end

    it "returns an instance of ULong64" do
      @virtual_server.gtm_score
    end
  end

  describe "#httpclass_profile" do
    it "should return without raising any exception" do
      lambda { @virtual_server.httpclass_profile }.should_not raise_exception
    end

    it "Gets the lists of HTTP class profiles the specified virtual servers are associated with. If a specified virtual server is not associated with any HTTP class profile, then the list of HTTP class profiles for that virtual server will be empty." do
      @virtual_server.httpclass_profile.should be_nil
    end

    it "works this way" do
      @virtual_server.httpclass_profile
      # => 
    end

    it "returns an instance of VirtualServerHttpClass[]" do
      @virtual_server.httpclass_profile
    end
  end

  describe "#last_hop_pool" do
    it "should return without raising any exception" do
      lambda { @virtual_server.last_hop_pool }.should_not raise_exception
    end

    it "Gets the last hop pools for the specified virtual servers." do
      @virtual_server.last_hop_pool.should be_nil
    end

    it "works this way" do
      @virtual_server.last_hop_pool
    end

  end

  describe "#module_score" do
    it "should return without raising any exception" do
      lambda { @virtual_server.module_score }.should_not raise_exception
    end

    it "Returns the module scores for the specified virtual servers." do
      @virtual_server.module_score.should be_nil
    end

    it "works this way" do
      @virtual_server.module_score
      # => 
    end

  end

  describe "#object_status" do
    it "should return without raising any exception" do
      lambda { @virtual_server.object_status }.should_not raise_exception
    end

    it "Gets the status of each of the specified virtual servers." do
      @virtual_server.object_status.should_not be_nil
    end

    it "works this way" do
      @virtual_server.object_status
      # => #<IControl::LocalLB::ObjectStatus:0x9e46598 @attributes={:availability_status=>:AVAILABILITY_STATUS_BLUE, 
      #                 :enabled_status=>:ENABLED_STATUS_ENABLED, 
      #                 :status_description=>"The children pool member(s) either don't..}>

    end

    it "returns an instance of ObjectStatus" do
      @virtual_server.object_status
    end
  end

  describe "#persistence_profile" do
    it "should return without raising any exception" do
      lambda { @virtual_server.persistence_profile }.should_not raise_exception
    end

    it "Gets the lists of persistence profiles the specified virtual servers are associated with." do
      @virtual_server.persistence_profile.should be_nil
    end

    it "works this way" do
      @virtual_server.persistence_profile
      # => 
    end

  end

  describe "#persistence_record" do
    it "should return without raising any exception" do
      lambda { @virtual_server.persistence_record(:persistence_mode => IControl::LocalLB::PersistenceMode::PERSISTENCE_MODE_NONE) }.should_not raise_exception
    end

    it "Gets the persistence records based on the specified persistent modes for the specified virtual servers." do
      @virtual_server.persistence_record(:persistence_mode => IControl::LocalLB::PersistenceMode::PERSISTENCE_MODE_NONE).should be_nil
    end

    it "works this way" do
      @virtual_server.persistence_record(:persistence_mode => IControl::LocalLB::PersistenceMode::PERSISTENCE_MODE_NONE)
      # => 
    end

  end

  describe "#profile" do
    it "should return without raising any exception" do
      lambda { @virtual_server.profile }.should_not raise_exception
    end

    it "Gets the lists of profiles the specified virtual servers are associated with." do
      @virtual_server.profile.should_not be_nil
    end

    it "works this way" do
      @virtual_server.profile
      # => [#<IControl::LocalLB::VirtualServer::VirtualServerProfileAttribute:0x97d1e74 @attributes={:profile_type=>:PROFILE_TYPE_TCP, :profile_context=>:PROFILE_CONTEXT_TYPE_ALL, :profile_name=>"tcp"}>]
    end

    it "returns an instance of VirtualServerProfileAttribute[]" do
      IControl::LocalLB::VirtualServer::VirtualServerProfileAttribute.should == @virtual_server.profile.first.class
    end
  end

  describe "#protocol" do
    it "should return without raising any exception" do
      lambda { @virtual_server.protocol }.should_not raise_exception
    end

    it "Gets the protocols supported by the specified virtual servers." do
      @virtual_server.protocol.should_not be_nil
    end

    it "works this way" do
      @virtual_server.protocol
      # => :PROTOCOL_TCP
    end

    it "returns an instance of ProtocolType" do
      IControl::Common::ProtocolType.constants.should include(@virtual_server.protocol)
    end
  end

  describe "#rate_class" do
    it "should return without raising any exception" do
      lambda { @virtual_server.rate_class }.should_not raise_exception
    end

    it "Gets the rate classes that will be used to rate limit the traffic." do
      @virtual_server.rate_class.should be_nil
    end

  end

  describe "#rule" do
    it "should return without raising any exception" do
      lambda { @virtual_server.rule }.should_not raise_exception
    end

    it "Gets the lists of rules the specified virtual servers are associated with. If a specified virtual server is not associated with any rule, then the list of rules for that virtual server will be empty." do
      @virtual_server.rule.should be_nil
    end
  end

  describe "#snat_pool" do
    it "should return without raising any exception" do
      lambda { @virtual_server.snat_pool }.should_not raise_exception
    end

    it "Gets the SNAT pools to be used in iSNAT configurations for the specified virtual servers." do
      @virtual_server.snat_pool.should be_nil
    end
  end

  describe "#snat_type" do
    it "should return without raising any exception" do
      lambda { @virtual_server.snat_type }.should_not raise_exception
    end

    it "Gets the SNAT type for the specified virtual servers." do
      @virtual_server.snat_type.should_not be_nil
    end

    it "works this way" do
      @virtual_server.snat_type
      # => :SNAT_TYPE_NONE
    end

    it "returns an instance of SnatType" do
      IControl::LocalLB::SnatType.constants.should include(@virtual_server.snat_type)
    end
  end

  describe "#source_port_behavior" do
    it "should return without raising any exception" do
      lambda { @virtual_server.source_port_behavior }.should_not raise_exception
    end

    it "Gets the source port behavior for the specified virtual servers." do
      @virtual_server.source_port_behavior.should_not be_nil
    end

    it "works this way" do
      @virtual_server.source_port_behavior
      # => :SOURCE_PORT_PRESERVE
    end

    it "returns an instance of SourcePortBehavior" do
      IControl::Common::SourcePortBehavior.constants.should include(@virtual_server.source_port_behavior)
    end
  end

  describe "#statistics" do
    it "should return without raising any exception" do
      lambda { @virtual_server.statistics }.should_not raise_exception
    end

    it "Gets the statistics for the specified virtual servers." do
      @virtual_server.statistics.should_not be_nil
    end

    it "works this way" do
      @virtual_server.statistics
      # => #<IControl::LocalLB::VirtualServer::VirtualServerStatistics:0xb68eca4 @attributes={:statistics=>#<IControl::LocalLB::Virtu...
    end

    it "returns an instance of VirtualServerStatistics" do
      IControl::LocalLB::VirtualServer::VirtualServerStatistics.should == @virtual_server.statistics.class
    end
  end

  describe "#translate_address_state" do
    it "should return without raising any exception" do
      lambda { @virtual_server.translate_address_state }.should_not raise_exception
    end

    it "Gets the address translation states for the specified virtual servers. Enables or disables address translation." do
      @virtual_server.translate_address_state.should_not be_nil
    end

    it "works this way" do
      @virtual_server.translate_address_state
      # => :STATE_ENABLED
    end

    it "returns an instance of EnabledState" do
      IControl::Common::EnabledState.constants.should include(@virtual_server.translate_address_state)
    end
  end

  describe "#translate_port_state" do
    it "should return without raising any exception" do
      lambda { @virtual_server.translate_port_state }.should_not raise_exception
    end

    it "Gets the port translation states for the specified virtual servers. Enables or disables port translation." do
      @virtual_server.translate_port_state.should_not be_nil
    end

    it "works this way" do
      @virtual_server.translate_port_state
      # => :STATE_ENABLED
    end

    it "returns an instance of EnabledState" do
       IControl::Common::EnabledState.constants.should include(@virtual_server.translate_port_state)
    end
  end

  describe "#type" do
    it "should return without raising any exception" do
      lambda { @virtual_server.type }.should_not raise_exception
    end

    it "Gets the types of the specified virtual servers." do
      @virtual_server.type.should_not be_nil
    end

    it "works this way" do
      @virtual_server.type
      # => >:RESOURCE_TYPE_POOL
    end

    it "returns an instance of VirtualServerType" do
      IControl::LocalLB::VirtualServer::VirtualServerType.constants.should include(@virtual_server.type)
    end
  end

  describe "#version" do
    it "should return without raising any exception" do
      lambda { @virtual_server.version }.should_not raise_exception
    end

    it "Gets the version information for this interface." do
      @virtual_server.version.should_not be_nil
    end

    it "works this way" do
      @virtual_server.version
      # => BIG-IP_v10.0.1
    end
  end

  describe "#vlan" do
    it "should return without raising any exception" do
      lambda { @virtual_server.vlan }.should_not raise_exception
    end

    it "Gets the lists of VLANs on which access to the specified Virtual Servers are enabled/disabled." do
      @virtual_server.vlan.should_not be_nil
    end

    it "works this way" do
      @virtual_server.vlan
      # => #<IControl::Common::VLANFilterList:0xa476904 @attributes={:state=>:STATE_ENABLED, :vlans=>["test_vlan1", "test_vlan2"]}>
    end
  end

  describe "#wildmask" do
    it "should return without raising any exception" do
      lambda { @virtual_server.wildmask }.should_not raise_exception
    end

    it "Gets the wildmasks for the specified virtual servers." do
      @virtual_server.wildmask.should_not be_nil
    end

    it "works this way" do
      @virtual_server.wildmask
      # => "255.255.255.255"
    end
  end

  describe "#reset_statistics" do
    it "Resets the statistics for the specified virtual servers." do
      lambda { @virtual_server.reset_statistics }.should_not raise_exception
    end
  end

  describe "#set_cmp_enabled_state" do
    it "Sets the CMP enabled states for the specified virtual servers. Enables or disables CMP. Note that this setting can influence the CMP enable mode set automatically by the system and configuration. You can not always enable CMP, but you can always disable it." do
      cmp_enabled_state_before = @virtual_server.cmp_enabled_state
      @virtual_server.set_cmp_enabled_state(:state => IControl::Common::EnabledState::STATE_DISABLED)
      @virtual_server.cmp_enabled_state.should_not == cmp_enabled_state_before
    end

    it "works this way" do
      @virtual_server.set_cmp_enabled_state(:state => IControl::Common::EnabledState::STATE_DISABLED)
    end
  end

  describe "#set_connection_limit" do
    it "Sets the connection limits of the specified virtual servers." do
      connection_limit_before = @virtual_server.connection_limit
      @virtual_server.set_connection_limit(:limit => {:high => 1,:low => 0})
      @virtual_server.connection_limit.should_not == connection_limit_before
    end

    it "works this way" do
      @virtual_server.set_connection_limit(:limit => {:high => 1,:low => 0})
    end
  end

  describe "#set_connection_mirror_state" do
    it "Sets the mirror connection states for the specified virtual servers." do
      connection_mirror_state_before = @virtual_server.connection_mirror_state
      @virtual_server.set_connection_mirror_state(:state => IControl::Common::EnabledState::STATE_DISABLED)
      @virtual_server.connection_mirror_state.should_not == connection_mirror_state_before
    end

    it "works this way" do
      @virtual_server.set_connection_mirror_state(:state => IControl::Common::EnabledState::STATE_DISABLED)
    end
  end

  describe "#set_default_pool_name" do
    before(:each) do
      @test_pool_name="test_pool"
      IControl::LocalLB::Pool.create(:pool_name => @test_pool_name,
                                     :lb_method => IControl::LocalLB::LBMethod::LB_METHOD_ROUND_ROBIN,
                                     :members => [{:address => "192.168.50.1",:port => "80"},
                                                  {:address => "192.168.50.2",:port => "80"}
                                                 ])
      @test_pool =  IControl::LocalLB::Pool.find(@test_pool_name)
    end

    after(:each) do 
      @virtual_server.set_default_pool_name(:default_pool => "")
      @test_pool.delete_pool
    end


    it "Sets the default pool names for the specified virtual servers." do
      default_pool_before =  @virtual_server.default_pool_name
      @virtual_server.set_default_pool_name(:default_pool => @test_pool_name)
    end

    it "works this way" do
      @virtual_server.set_default_pool_name(:default_pool => @test_pool_name)
      # To set it 
      @virtual_server.set_default_pool_name(:default_pool => "") 
      # To unset it
    end
  end

  describe "#set_destination" do
    it "Sets the destination IP and port for the specified virtual servers." do
      destination_before = @virtual_server.destination
      @virtual_server.set_destination(:destination => {:address => "192.168.99.99" ,:port => 7})
      @virtual_server.destination.should_not == destination_before
    end

    it "works this way" do
      @virtual_server.set_destination(:destination => {:address => "192.168.99.99" ,:port => 7})
    end
  end

  describe "#set_enabled_state" do
    it "Sets the enabled state of the specified virtual servers." do
      enabled_state_before = @virtual_server.enabled_state
      @virtual_server.set_enabled_state(:state => IControl::Common::EnabledState::STATE_DISABLED)
      @virtual_server.enabled_state.should_not == enabled_state_before
    end

    it "works this way" do
      @virtual_server.set_enabled_state(:state => IControl::Common::EnabledState::STATE_DISABLED)
    end
  end

  describe "#set_fallback_persistence_profile" do

    before(:each) do
      @virtual_server.add_persistence_profile(:profiles => [{:profile_name => "source_addr",:default_profile => false}] )
    end

    it "Sets the persistence profiles to use for fallback persistence for the specified virtual servers." do
      fallback_persistence_profile_before = @virtual_server.fallback_persistence_profile
      @virtual_server.set_fallback_persistence_profile(:profile_name => "dest_addr")
      @virtual_server.fallback_persistence_profile.should_not == fallback_persistence_profile_before
    end

    it "works this way" do
      @virtual_server.set_fallback_persistence_profile(:profile_name => "dest_addr")
    end
  end

  describe "#set_gtm_score" do
    it "Sets the gtm score for the specified virtual servers." do
      gtm_score_before = @virtual_server.gtm_score
      @virtual_server.set_gtm_score(:score => {:high => 1,:low => 0})
      @virtual_server.gtm_score.should_not == gtm_score_before
    end

    it "works this way" do
      @virtual_server.set_gtm_score(:score => {:high => 1,:low => 0})
    end
  end

  describe "#set_last_hop_pool" do

    before(:each) do
      @test_pool_name="test_pool"
      IControl::LocalLB::Pool.create(:pool_name => @test_pool_name,
                                     :lb_method => IControl::LocalLB::LBMethod::LB_METHOD_ROUND_ROBIN,
                                     :members => [{:address => "192.168.50.1",:port => "80"},
                                                  {:address => "192.168.50.2",:port => "80"}
                                                 ])
      @test_pool =  IControl::LocalLB::Pool.find(@test_pool_name)
    end

    after(:each) do 
      @virtual_server.set_last_hop_pool(:last_hop_pool =>"")
      @test_pool.delete_pool
    end


    it "Sets the last hop pools for the specified virtual servers." do
      last_hop_pool_before = @virtual_server.last_hop_pool
      @virtual_server.set_last_hop_pool(:last_hop_pool => @test_pool_name)
      @virtual_server.last_hop_pool.should_not == last_hop_pool_before
    end

    it "works this way" do
      # To set it
      @virtual_server.set_last_hop_pool(:last_hop_pool => @test_pool_name)
      # To unset it
      @virtual_server.set_last_hop_pool(:last_hop_pool =>"")
    end
  end

  describe "#set_protocol" do
    it "Sets the protocols supported by the specified virtual servers, one of IP, TCP or UDP." do
      protocol_before = @virtual_server.protocol
      @virtual_server.set_protocol(:protocol => IControl::Common::ProtocolType::PROTOCOL_TCP)
      @virtual_server.protocol.should == protocol_before
    end

    it "works this way" do
      @virtual_server.set_protocol(:protocol => IControl::Common::ProtocolType::PROTOCOL_TCP)
    end
  end

  describe "#set_rate_class" do

    before(:each) do
      @rate_class_name = "test_rate_class"
      IControl::LocalLB::RateClass.create(:rate_class => @rate_class_name,:base_rates => {:rate => 1,:unit => IControl::LocalLB::RateClass::UnitType::UNIT_BPS})
      @rate_class = IControl::LocalLB::RateClass.find(@rate_class_name)
    end

    after(:each) do
      @virtual_server.set_rate_class(:rate_class => "")
      @rate_class.delete_rate_class
    end

    it "Sets the rate classes that will be used to rate limit the traffic." do
      rate_class_before = @virtual_server.rate_class
      @virtual_server.set_rate_class(:rate_class => @rate_class_name)
      @virtual_server.rate_class.should_not == rate_class_before
    end

    it "works this way" do
      # To set the rate_class
      @virtual_server.set_rate_class(:rate_class => @rate_class_name)
      # To unset the rate class
      @virtual_server.set_rate_class(:rate_class => "")
    end
  end

  describe "#set_snat_automap" do
    it "Sets the SNAT automap state for the specified virtual servers." do
      @virtual_server.snat_type.should == IControl::LocalLB::SnatType::SNAT_TYPE_NONE
      @virtual_server.set_snat_automap
      @virtual_server.snat_type.should == IControl::LocalLB::SnatType::SNAT_TYPE_AUTOMAP
    end

  end

  describe "#set_snat_none" do
    it "Sets the state to use no SNATs for the specified virtual servers." do
      @virtual_server.snat_type.should == IControl::LocalLB::SnatType::SNAT_TYPE_NONE
      @virtual_server.set_snat_automap
      @virtual_server.snat_type.should == IControl::LocalLB::SnatType::SNAT_TYPE_AUTOMAP
      @virtual_server.set_snat_none
      @virtual_server.snat_type.should == IControl::LocalLB::SnatType::SNAT_TYPE_NONE
    end

  end

  describe "#set_snat_pool" do

    before(:each) do 
      @snat_pool_name = "test_snat_pool"
      IControl::LocalLB::SNATPool.create(:snat_pool => @snat_pool_name,:translation_addresses => ["192.168.99.98"])
    end
    
    after(:each) do
      @virtual_server.set_snat_none
      IControl::LocalLB::SNATPool.find(@snat_pool_name).delete_snat_pool
    end

    it "Sets the SNAT pools to be used in iSNAT configurations for the specified virtual servers." do
      @virtual_server.snat_type.should == IControl::LocalLB::SnatType::SNAT_TYPE_NONE
      @virtual_server.set_snat_pool(:snatpool => @snat_pool_name)
      @virtual_server.snat_type.should == IControl::LocalLB::SnatType::SNAT_TYPE_SNATPOOL
    end

    it "works this way" do
      @virtual_server.set_snat_pool(:snatpool => @snat_pool_name)
    end

  end

  describe "#set_source_port_behavior" do
    it "Sets the source port behavior for the specified virtual servers." do
      source_port_behavior_before = @virtual_server.source_port_behavior
      @virtual_server.set_source_port_behavior(:source_port_behavior => IControl::Common::SourcePortBehavior::SOURCE_PORT_CHANGE)
      @virtual_server.source_port_behavior.should_not == source_port_behavior_before
    end

    it "works this way" do
      @virtual_server.set_source_port_behavior(:source_port_behavior => IControl::Common::SourcePortBehavior::SOURCE_PORT_CHANGE)
    end
  end

  describe "#set_translate_address_state" do
    it "Sets the address translation states for the specified virtual servers. Enables or disables address translation." do
      translate_address_state_before = @virtual_server.translate_address_state
      @virtual_server.set_translate_address_state(:state => IControl::Common::EnabledState::STATE_DISABLED)
      @virtual_server.translate_address_state.should_not == translate_address_state_before
    end

    it "works this way" do
      @virtual_server.set_translate_address_state(:state => IControl::Common::EnabledState::STATE_DISABLED)
    end
  end

  describe "#set_translate_port_state" do
    it "Sets the port translation states for the specified virtual servers. Enables or disables port translation." do
      translate_port_state_before = @virtual_server.translate_port_state
      @virtual_server.set_translate_port_state(:state => IControl::Common::EnabledState::STATE_DISABLED)
      @virtual_server.translate_port_state.should_not == translate_port_state_before
    end

    it "works this way" do
      @virtual_server.set_translate_port_state(:state => IControl::Common::EnabledState::STATE_DISABLED)
    end
  end

  describe "#set_type" do
    it "Sets the types for the specified virtual servers." do
      type_before = @virtual_server.type
      @virtual_server.set_type(:type => IControl::LocalLB::VirtualServer::VirtualServerType::RESOURCE_TYPE_REJECT)
      @virtual_server.type.should_not == type_before
    end

    it "works this way" do
      @virtual_server.set_type(:type => IControl::LocalLB::VirtualServer::VirtualServerType::RESOURCE_TYPE_REJECT)
    end
  end

  describe "#set_vlan" do

    before(:each) do 
      @vlan_name = "vlan_test"
      IControl::Networking::VLAN.create(:vlan => @vlan_name, 
                                        :vlan_ids => 199,
                                        :members => [],
                                        :timeout => 20,
                                        :mac_masquerade_address => "",
                                        :failsafe_states => IControl::Common::EnabledState::STATE_DISABLED)
      @vlan = IControl::Networking::VLAN.find(@vlan_name)
    end
    
    after(:each) do
      @virtual_server.set_vlan(:vlan => {:vlans => [],:state => IControl::Common::EnabledState::STATE_ENABLED})
      @vlan.delete_vlan
    end
    
    it "Sets VLANs to the list of VLANs on which access to the specified Virtual Servers are enabled/disabled." do
      @virtual_server.vlan.vlans.should be_nil
      @virtual_server.set_vlan(:vlan => {:vlans => [@vlan_name],:state => IControl::Common::EnabledState::STATE_ENABLED})
      @virtual_server.vlan.vlans.should_not be_nil
      @virtual_server.vlan.vlans.should include(@vlan_name)
    end

    it "works this way" do
      @virtual_server.set_vlan(:vlan => {:vlans => ["vlan_test"],:state => IControl::Common::EnabledState::STATE_ENABLED})
    end
  end

  describe "#set_wildmask" do
    it "Sets the wildmasks for the specified virtual servers." do
      wildmask_before = @virtual_server.wildmask
      @virtual_server.set_wildmask(:wildmask => "255.255.255.255")
      @virtual_server.wildmask.should == wildmask_before
    end

    it "works this way" do
      @virtual_server.set_wildmask(:wildmask => "255.255.255.255")
    end
  end

  describe "#remove_all_authentication_profiles" do
    it "Removes all authentication profiles from the specified virtual servers." do
      lambda { @virtual_server.remove_all_authentication_profiles }.should_not raise_exception
    end
  end

  describe "#remove_all_clone_pools" do
    it "Removes all clone pools from the specified virtual servers." do
      lambda { @virtual_server.remove_all_clone_pools }.should_not raise_exception
    end
  end

  describe "#remove_all_httpclass_profiles" do
    it "Removes all HTTP class profiles from the specified virtual servers." do
      lambda { @virtual_server.remove_all_httpclass_profiles }.should_not raise_exception
    end
  end

  describe "#remove_all_persistence_profiles" do
    it "Removes all persistence profiles from the specified virtual servers." do
      lambda { @virtual_server.remove_all_persistence_profiles }.should_not raise_exception
    end
  end

  describe "#remove_all_profiles" do
    it "Removes all profiles from the specified virtual servers." do
      lambda { @virtual_server.remove_all_profiles }.should_not raise_exception
    end
  end

  describe "#remove_all_rules" do
    it "Removes all rules from the specified virtual servers." do
      lambda { @virtual_server.remove_all_rules }.should_not raise_exception
    end
  end

  describe "#remove_authentication_profile" do
    
    before(:each) do 
      @virtual_server.add_profile(:profiles => [{:profile_name => "http",:profile_context => IControl::LocalLB::ProfileContextType::PROFILE_CONTEXT_TYPE_ALL}])
    end
    
    it "Removes authentication profiles to the specified virtual servers." do
      @virtual_server.authentication_profile.should be_nil
      @virtual_server.add_authentication_profile(:profiles => [{:profile_name => "ldap",:priority => 1}] )
      @virtual_server.authentication_profile.first.profile_name.should == "ldap"
      @virtual_server.remove_authentication_profile(:profiles => [{:profile_name => "ldap",:priority => 1}] )
      @virtual_server.authentication_profile.should be_nil
    end

    it "works this way" do
      @virtual_server.add_authentication_profile(:profiles => [{:profile_name => "ldap",:priority => 1}] )
      @virtual_server.remove_authentication_profile(:profiles => [{:profile_name => "ldap",:priority => 1}] )
    end
  end

  describe "#remove_clone_pool" do
    
    before(:each) do
      @test_pool_name="test_pool"
      IControl::LocalLB::Pool.create(:pool_name => @test_pool_name,
                                     :lb_method => IControl::LocalLB::LBMethod::LB_METHOD_ROUND_ROBIN,
                                     :members => [{:address => "192.168.50.1",:port => "80"},
                                                  {:address => "192.168.50.2",:port => "80"}
                                                 ])
      @test_pool =  IControl::LocalLB::Pool.find(@test_pool_name)
    end

    after(:each) do 
      @virtual_server.remove_all_clone_pools
      @test_pool.delete_pool
    end

    it " Removes clone pools to the specified virtual servers." do
      @virtual_server.clone_pool.should be_nil
      @virtual_server.add_clone_pool(:clone_pools => [{:pool_name => @test_pool_name,:type => IControl::LocalLB::ClonePoolType::CLONE_POOL_TYPE_CLIENTSIDE}])
      @virtual_server.clone_pool.first.pool_name.should == @test_pool_name
      @virtual_server.remove_clone_pool(:clone_pools => [{:pool_name => @test_pool_name,
                                                           :type => IControl::LocalLB::ClonePoolType::CLONE_POOL_TYPE_CLIENTSIDE}])
      @virtual_server.clone_pool.should be_nil      
    end

    it "works this way" do
      @virtual_server.add_clone_pool(:clone_pools => [{:pool_name => @test_pool_name,:type => IControl::LocalLB::ClonePoolType::CLONE_POOL_TYPE_CLIENTSIDE}] )
      @virtual_server.remove_clone_pool(:clone_pools => [{:pool_name => @test_pool_name,
                                                           :type => IControl::LocalLB::ClonePoolType::CLONE_POOL_TYPE_CLIENTSIDE}])      
    end
  end

  describe "#remove_httpclass_profile" do

    before(:each) do
      @profile_http_class_name = "test_profile_http_class"
      IControl::LocalLB::ProfileHttpClass.create(:profile_name => @profile_http_class_name)
      @profile_http_class = IControl::LocalLB::ProfileHttpClass.find("test_profile_http_class")
    end

    after(:each) do 
      @virtual_server.remove_all_httpclass_profiles
      @profile_http_class.delete_profile
    end

    it "Removes HTTP class profiles to the specified virtual servers." do
      @virtual_server.add_profile(:profiles => [{:profile_name => "http",:profile_context => IControl::LocalLB::ProfileContextType::PROFILE_CONTEXT_TYPE_ALL}])
      @virtual_server.httpclass_profile.should be_nil
      @virtual_server.add_httpclass_profile(:profiles => [{:profile_name => @profile_http_class_name,:priority => 1}])
      @virtual_server.httpclass_profile.first.profile_name.should == @profile_http_class_name
      @virtual_server.remove_httpclass_profile(:profiles => [{:profile_name => @profile_http_class_name,:priority => 1}])
      @virtual_server.httpclass_profile.should be_nil
    end

    it "works this way" do
      @virtual_server.add_profile(:profiles => [{:profile_name => "http",:profile_context => IControl::LocalLB::ProfileContextType::PROFILE_CONTEXT_TYPE_ALL}])
      @virtual_server.add_httpclass_profile(:profiles => [{:profile_name => @profile_http_class_name,:priority => 1}])
      @virtual_server.remove_httpclass_profile(:profiles => [{:profile_name => @profile_http_class_name,:priority => 1}])
    end
  end

  describe "#remove_persistence_profile" do
    it "Removes persistence profiles to the specified virtual servers." do
      @virtual_server.persistence_profile.should be_nil
      @virtual_server.add_persistence_profile(:profiles => [{:profile_name => "dest_addr",:default_profile => false}] )
      @virtual_server.persistence_profile.should_not be_nil
      @virtual_server.persistence_profile.first.profile_name.should == "dest_addr"
      @virtual_server.remove_persistence_profile(:profiles => [{:profile_name => "dest_addr",:default_profile => false}] )
      @virtual_server.persistence_profile.should be_nil
    end

    it "works this way" do
      @virtual_server.add_persistence_profile(:profiles => [{:profile_name => "dest_addr",:default_profile => false}] )
    end
  end

  describe "#remove_profile" do
    it "Removes profiles to the specified virtual servers." do
      before = @virtual_server.profile.length
      @virtual_server.add_profile(:profiles => [{:profile_name => "http",:profile_context => IControl::LocalLB::ProfileContextType::PROFILE_CONTEXT_TYPE_ALL}])
      @virtual_server.profile.length.should_not == before
      @virtual_server.profile.first.profile_context.should == IControl::LocalLB::ProfileContextType::PROFILE_CONTEXT_TYPE_ALL
      @virtual_server.remove_profile(:profiles => [{:profile_name => "http",:profile_context => IControl::LocalLB::ProfileContextType::PROFILE_CONTEXT_TYPE_ALL}])
      @virtual_server.profile.length.should == before
    end

    it "works this way" do
      @virtual_server.add_profile(:profiles => [{:profile_name => "http",:profile_context => IControl::LocalLB::ProfileContextType::PROFILE_CONTEXT_TYPE_ALL}])
      @virtual_server.remove_profile(:profiles => [{:profile_name => "http",:profile_context => IControl::LocalLB::ProfileContextType::PROFILE_CONTEXT_TYPE_ALL}])
    end
  end

  describe "#remove_rule" do

    before(:each) do
      @rule_name = "test_rule"
      IControl::LocalLB::Rule.create(:rule => {:rule_name => @rule_name,:rule_definition => ""})
    end

    after(:each) do
      @virtual_server.remove_all_rules
      IControl::LocalLB::Rule.find(@rule_name).delete_rule
    end

    it "Removes/associates rules to the specified virtual servers." do
      @virtual_server.rule.should be_nil
      @virtual_server.add_rule(:rules => [{:rule_name => @rule_name ,:priority => 1}])
      @virtual_server.rule.should_not be_nil
      @virtual_server.remove_rule(:rules => [{:rule_name => @rule_name ,:priority => 1}])
      @virtual_server.rule.should be_nil
    end

    it "works this way" do
      @virtual_server.add_rule(:rules => [{:rule_name => @rule_name ,:priority => 1}])
      @virtual_server.remove_rule(:rules => [{:rule_name => @rule_name ,:priority => 1}])
    end
  end


end
