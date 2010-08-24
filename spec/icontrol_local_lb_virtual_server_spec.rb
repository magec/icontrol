require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe IControl::LocalLB::VirtualServer do 

  before do 
    @virtual_server = IControl::LocalLB::VirtualServer.find("test_virtual_server")
    @virtual_server_nil = IControl::LocalLB::VirtualServer.find("test_virtual_server_nil")
  end

  describe "find method" do

    it "should have a find class method called find" do
      IControl::LocalLB::VirtualServer.methods.should include(:find)
    end

    it "should have retreive an object when find is call with id or nil it the object does not exists" do
      IControl::LocalLB::VirtualServer.find("test_virtual_server").class.should be(IControl::LocalLB::VirtualServer)
      IControl::LocalLB::VirtualServer.find("unknown_virtual_server").class.should_not be(IControl::LocalLB::VirtualServer)
      IControl::LocalLB::VirtualServer.find("unknown_virtual_server").should be(nil)
    end
  end


  describe "defaul_pool method" do

    it "should exist" do
      default_pool = @virtual_server.default_pool
      default_pool.should_not be(nil)
      default_pool.class.should be(IControl::LocalLB::Pool)
    end
    
  end

  describe "default_pool= method" do
    it "should have method called default_pool=" do 
      register_conversation(["IControl.LocalLB.VirtualServer.get_default_pool_name_before_pool_change","IControl.LocalLB.VirtualServer.get_default_pool_name_after_change"])

      @virtual_server.default_pool.id.should ==("test_pool1")
      @virtual_server.default_pool = IControl::LocalLB::Pool.find("pool_test2")
      @virtual_server.default_pool.id.should ==("pool_test2")

    end
  end

  describe "destroy method" do 
    it "should delete the virtual server" do
      register_conversation(["IControl.LocalLB.VirtualServer.get_list_before_delete","IControl.LocalLB.VirtualServer.get_list_after_delete"])
      virtual_server = IControl::LocalLB::VirtualServer.find("test_virtual_server2")
      virtual_server.id.should == "test_virtual_server2"
      lambda { virtual_server.destroy }.should_not raise_exception
      IControl::LocalLB::VirtualServer.find("test_virtual_server2").should be_nil
    end
  end

  describe "profiles method" do
    
    it "should have method called profiles" do 
      profiles = @virtual_server.profiles
      profiles.should_not be(nil)
      profiles.class.should be(Array)
      profiles.first.class.should be(IControl::LocalLB::VirtualServer::ProfileAttribute)
    end
    
  end

  describe "httpclass_profiles method" do

    it "should exist" do 
      @virtual_server.class.should be(IControl::LocalLB::VirtualServer)
     
      httpclass_profiles = @virtual_server.httpclass_profiles
      httpclass_profiles.should_not be(nil)
      httpclass_profiles.class.should be(IControl::LocalLB::VirtualServer::HttpClassProfileEnumerator)
      httpclass_profiles.first.class.should be(IControl::LocalLB::ProfileHttpClass)
      httpclass_profiles.first.id.should_not be(nil)
    end  
  end

  describe "wildmask method" do 
    it "should exists" do
      @virtual_server.wildmask.class.should be(String)
    end
  end

  describe "type method" do 

    it "should exists" do 
      lambda { @virtual_server.type }.should_not raise_exception(NoMethodError)
    end

    it "should return a constant child of VirtualServerType" do
      vs_type = @virtual_server.type
      vs_type.should_not be(nil)
      IControl::LocalLB::VirtualServer::Type.constants.should include(vs_type.name.split("::").last.to_sym)
    end
  end

  describe "type= method" do
    it "should change the type of the virtual server" do
      register_conversation(["IControl.LocalLB.VirtualServer.get_type_before_type_change","IControl.LocalLB.VirtualServer.get_type_after_type_change"])
      @virtual_server_nil.type.should be(IControl::LocalLB::VirtualServer::Type::RESOURCE_TYPE_POOL)
      lambda { @virtual_server_nil.type = IControl::LocalLB::VirtualServer::Type::RESOURCE_TYPE_IP_FORWARDING }.should raise_exception(Savon::SOAPFault)
      @virtual_server_nil.type = IControl::LocalLB::VirtualServer::Type::RESOURCE_TYPE_REJECT
      @virtual_server_nil.type.should be(IControl::LocalLB::VirtualServer::Type::RESOURCE_TYPE_REJECT)
    end
  end

  describe "cmp_enable_mode method" do 

    it "should exists" do 
      lambda { @virtual_server.cmp_enable_mode }.should_not raise_exception(NoMethodError)
    end

    it "should return a constant telling the cmp_enable_mode of the virtual server" do
      cmp_enable = @virtual_server.cmp_enable_mode
      cmp_enable.should_not be(nil)
      IControl::LocalLB::VirtualServer::CMPEnableMode.constants.should include(cmp_enable.name.split("::").last.to_sym)
    end
  end

  describe "destination method" do 
    it "should exists" do
      lambda { @virtual_server.destination }.should_not raise_exception(NoMethodError)
    end

    it "should return an IPPortDefinition instance" do 
      @virtual_server.destination.class.should be(IControl::Common::IPPortDefinition)
    end
  end

  describe "destination= method" do 
    it "should exists" do
      @virtual_server.methods.should include(:destination=)
    end

    it "should change the destination of the virtual server" do 
      register_conversation(["IControl.LocalLB.VirtualServer.get_destination_before_change","IControl.LocalLB.VirtualServer.get_destination_after_change"])
      destination = @virtual_server_nil.destination
      destination.port.should == "100"
      destination.port = 101
      @virtual_server_nil.destination= destination
      @virtual_server_nil.destination.port.should =="101"
    end
  end

  describe "protocol method" do 
    it "should exists" do
      lambda { @virtual_server.protocol }.should_not raise_exception(NoMethodError)
    end
    
    it "should return an IControl::Common::ProtocolType constant" do 
      IControl::Common::ProtocolType.constants.should include @virtual_server.protocol.name.split("::").last.to_sym
    end
  end

  describe "enabled_state method" do
    it "should exists" do
      lambda { @virtual_server.enabled_state }.should_not raise_exception(NoMethodError)
    end

    it "should return an IControl::Common::EnabledState constant" do 
      IControl::Common::EnabledState.constants.should include @virtual_server.enabled_state.name.split("::").last.to_sym
    end    
  end

  describe "enabled_state= method" do
    it "should exist" do
      @virtual_server.methods.should include(:enabled_state=)
    end

    it "should allow the assingment of an enabled state" do
      lambda{ @virtual_server_nil.enabled_state = @virtual_server.enabled_state }.should_not raise_exception
    end
  end
  

  describe "connection_limit" do
    it "should exists" do
      lambda { @virtual_server.connection_limit }.should_not raise_exception(NoMethodError)
    end

    it "should return an IControl::Common::ULong64 instance" do 
      @virtual_server.connection_limit.class.should be(IControl::Common::ULong64)
    end    
  end

  describe "connection_limit= method" do
    it "should exists" do
       @virtual_server.methods.should include(:connection_limit=)
    end
    it "should allow the assignment of a connection limit" do
      lambda { @virtual_server.connection_limit= 4194967294 }.should_not raise_exception
    end

    it "should allow the assignment of a connection limit using an ULong64 instance" do 
      lambda { @virtual_server.connection_limit= IControl::Common::ULong64.new(:high => 0,:low => 4194967294) }.should_not raise_exception
    end
  end

  describe "rate_class method" do
    it "should exists" do      
      lambda { @virtual_server.rate_class }.should_not raise_exception(NoMethodError)
    end

    it "should return an IControl::LocalLB::RateClass instance" do
      @virtual_server.rate_class.class.should be(IControl::LocalLB::RateClass)
    end    

    it "should return nil if there is not a rate class associated with the virtual_server" do 
      @virtual_server_nil.rate_class.should be(nil)
    end
  end

  describe "rate_class= method" do
    it "should exists" do
       @virtual_server.methods.should include(:rate_class=)
    end
    it "should allow the assignment of a rate_class" do
      lambda { @virtual_server_nil.rate_class= "rate_class_test" }.should_not raise_exception
    end

  end

  describe "connection_mirror_state method" do
    it "should exists" do
      lambda { @virtual_server.connection_mirror_state }.should_not raise_exception(NoMethodError)
    end

    it "should return an IControl::Common::EnabledState constant" do
      IControl::Common::EnabledState.constants.should include(@virtual_server.connection_mirror_state.name.split("::").last.to_sym)
    end    
  end

  describe "connection_mirror_state= method" do
    it "should exists" do
       @virtual_server.methods.should include(:connection_mirror_state=)
    end
    it "should allow the assignment of a rate_class" do
      lambda { @virtual_server_nil.connection_mirror_state= IControl::Common::EnabledState::STATE_DISABLED }.should_not raise_exception
    end

  end

  describe "translate_port_state method" do
    it "should exists" do
      lambda { @virtual_server.translate_port_state }.should_not raise_exception(NoMethodError)
    end

    it "should return an IControl::Common::EnabledState constant" do
      IControl::Common::EnabledState.constants.should include(@virtual_server.translate_port_state.name.split("::").last.to_sym)
    end    
  end

  describe "translate_address_state method" do
    it "should exists" do
      lambda { @virtual_server.translate_address_state }.should_not raise_exception(NoMethodError)
    end

    it "should return an IControl::Common::EnabledState constant" do
      IControl::Common::EnabledState.constants.should include(@virtual_server.translate_address_state.name.split("::").last.to_sym)
    end    
  end

  describe "enable_address_translation! method" do
    it "should exist" do
      @virtual_server.methods.should include(:enable_address_translation!)
    end

    it "should do something" do
      lambda { @virtual_server.enable_address_translation! }.should_not raise_exception
    end
  end

  describe "disable_address_translation! method" do
    it "should exist" do
      @virtual_server.methods.should include(:disable_address_translation!)
    end

    it "should do something" do
      lambda { @virtual_server.disable_address_translation! }.should_not raise_exception
    end
  end

  describe "sorce_port_behavior method" do
    it "should exists" do
      lambda { @virtual_server.source_port_behavior }.should_not raise_exception(NoMethodError)
    end

    it "should return an IControl::Common::SourcePortBehavior constant" do
      IControl::Common::SourcePortBehavior.constants.should include(@virtual_server.source_port_behavior.name.split("::").last.to_sym)
    end    
  end

  describe "last_hop_pool method" do
    it "should exists" do
      lambda { @virtual_server.last_hop_pool }.should_not raise_exception(NoMethodError)
    end

    it "should return an IControl::LocalLB::Pool instance" do
      @virtual_server.last_hop_pool.class.should be(IControl::LocalLB::Pool)
    end    
  end

  describe "actual_hardware_acceleration method" do
    it "should exists" do
      lambda { @virtual_server.actual_hardware_acceleration }.should_not raise_exception(NoMethodError)
    end

    it "should return an IControl::LocalLB::HardwareAccelerationMode instance" do
      IControl::LocalLB::HardwareAccelerationMode.constants.should include(@virtual_server.actual_hardware_acceleration.name.split("::").last.to_sym)
    end    

  end

  describe "snat_type method" do
    it "should exists" do
      lambda { @virtual_server.snat_type }.should_not raise_exception(NoMethodError)
    end

    it "should return an IControl::LocalLB::SnatType constant" do
      IControl::LocalLB::SnatType.constants.should include (@virtual_server.snat_type.name.split("::").last.to_sym)
    end    
  end


  describe "snat_type= method" do 
    it "should exists" do 
      @virtual_server.methods.should include(:snat_type=)
    end
    
    it "should change the state of the snat_type of an object to automap if IControl::LocalLB::SnatType::SNAT_TYPE_AUTOMAP is specified" do
      @virtual_server.methods.should include(:snat_type=)
      register_conversation ["IControl.LocalLB.VirtualServer.get_snat_type_before_automap_change",
                             "IControl.LocalLB.VirtualServer.get_snat_type_after_automap_change"]
      
      @virtual_server_nil.snat_type.should == IControl::LocalLB::SnatType::SNAT_TYPE_NONE
      @virtual_server_nil.snat_type= IControl::LocalLB::SnatType::SNAT_TYPE_AUTOMAP
      @virtual_server_nil.snat_type.should ==IControl::LocalLB::SnatType::SNAT_TYPE_AUTOMAP
    end

    it "should change the state of the snat_type of an object to none if IControl::LocalLB::SnatType::SNAT_TYPE_NONE is specified" do
#      @virtual_server.snat_type = IControl::LocalLB::SnatType::SNAT_TYPE_NONE
#      @virtual_server.snat_type.should ==IControl::LocalLB::SnatType::SNAT_TYPE_NONE
    end
  end

  describe "snat_pool method" do
    it "should exists" do
      lambda { @virtual_server.snat_pool }.should_not raise_exception(NoMethodError)
    end

    it "should return nil if none is specified" do
      @virtual_server_nil.snat_pool.should be nil
    end    

    it "should return a SnatPool" do
      @virtual_server.snat_pool.class.should be(IControl::LocalLB::SNATPool)
    end
  end
  
  describe "fallback_persistence_profile method" do
    it "should exists" do
      lambda { @virtual_server.fallback_persistence_profile }.should_not raise_exception(NoMethodError)
    end

    it "should return an FallBackPersistenceProfile instance" do
      @virtual_server.fallback_persistence_profile.class.should be(String)
    end    

    it "should return an nil if none is specified" do
      @virtual_server_nil.fallback_persistence_profile.should be(nil)
    end    
  end

  describe "persistence_profile method" do
    it "should exists" do
      lambda { @virtual_server.persistence_profile }.should_not raise_exception(NoMethodError)
    end

    it "should return an VirtualServerPersistence instance" do
      @virtual_server.persistence_profile.class.should be(IControl::LocalLB::VirtualServer::Persistence)
    end    

    it "should return an nil if none is specified" do
      @virtual_server_nil.persistence_profile.should be(nil)
    end    
  end

  describe "rules method" do

    it "should exists" do
      lambda { @virtual_server.rules }.should_not raise_exception(NoMethodError)
    end

    it "should return an list of Rules" do
      @virtual_server.rules.should_not be_empty
      @virtual_server.rules.first.class.should be(IControl::LocalLB::VirtualServerRule)
    end    

    it "should return an empty list if no rule is associated with the virtual server" do
      @virtual_server_nil.rules.should be_empty
    end    

  end

  describe "clone_pool method" do
    it "should exists" do
      lambda { @virtual_server.clone_pool }.should_not raise_exception(NoMethodError)
    end

    it "should return a list of VirtualServerClonePool" do
      @virtual_server.clone_pool.should_not be_empty
      @virtual_server.clone_pool.first.class.should be(IControl::LocalLB::VirtualServer::ClonePool)
    end    

    it "should return an empty list if no clone_pool is associated with the virtual server" do
      @virtual_server_nil.clone_pool.should be_empty
    end    
  end

  describe "statistics method" do
    it "should exists" do
      lambda { @virtual_server.statistics }.should_not raise_exception(NoMethodError)
    end

    it "should return a VirtualServerStatisticEntry" do
      @virtual_server.statistics.should_not be_empty
    end    

    it "should return a hash of statistics" do
      @virtual_server.statistics.class.should be(Hash)
      IControl::Common::StatisticType.constants.should include(@virtual_server.statistics.first[0].name.split("::").last.to_sym)
    end    
  end

  describe "version method" do
    it "should exists" do
      lambda { @virtual_server.version }.should_not raise_exception(NoMethodError)
    end

    it "should return a String" do
      @virtual_server.version.class.should be(String)
      @virtual_server.version.should_not be_empty
    end    
  end

  describe "gtp_score method" do
    it "should exists" do
      lambda { @virtual_server.gtm_score }.should_not raise_exception(NoMethodError)
    end

    it "should return a ULong64" do
      @virtual_server.gtm_score.class.should be(IControl::Common::ULong64)
    end    
  end

  describe "vlan method" do
    it "should exists" do
      lambda { @virtual_server.vlan }.should_not raise_exception(NoMethodError)
    end

    it "should return an instance of a VLANFilterList" do
      vlan = @virtual_server.vlan
      vlan.class.should be(IControl::Common::VLANFilterList)
      @virtual_server_nil.vlan.vlans.class.should be(Array)
      vlan.vlans.should_not be_empty
      vlan.vlans.class.should be(Array)
    end
  end

  describe "vlan= method" do 
    it "should exists" do
       @virtual_server.methods.should include(:vlan=)
    end
    it "should allow the assignment of a VLAN" do
      register_conversation(["IControl.LocalLB.VirtualServer_before_vlan_change.get_vlan",
                             "IControl.LocalLB.VirtualServer_after_vlan_change.get_vlan"])
      source_vlan = @virtual_server.vlan
      @virtual_server_nil.vlan.vlans.should be_empty
      @virtual_server_nil.vlan = source_vlan
      @virtual_server_nil.vlan.vlans.should_not be_empty
    end
  end


  describe "create method" do
    it "should create a new virtual_server when correctly called" do
      virtual_server = 
        IControl::LocalLB::VirtualServer.create(:address => "192.168.145.7",
                                                :port => 99,
                                                :name => "test_virtual_server",
                                                :default_pool => IControl::LocalLB::Pool.find("pool_test1"),
                                                :profiles => [{"profile_context" => IControl::LocalLB::ProfileContextType::PROFILE_CONTEXT_TYPE_ALL }])
      virtual_server.id.should == "test_virtual_server"
    end    

    it "should raise an exception if no pool is specified" do 
      lambda do 
        virtual_server = 
          IControl::LocalLB::VirtualServer.create(:address => "192.168.145.7",
                                                  :port => 99,
                                                  :name => "test_virtual_server",
                                                  :default_pool => nil,
                                                  :profiles => [{"profile_context" => IControl::LocalLB::ProfileContextType::PROFILE_CONTEXT_TYPE_ALL,"profile" => IControl::LocalLB::ProfileHttpClass.find("test_profile1")}])
        virtual_server.id.should == "test_virtual_server"
      end.should raise_exception(IControl::NoSuchPoolException)
    end
  end

  describe "add_httpclass_profile" do
    it "should exist" do 
      @virtual_server.methods.should include(:add_httpclass_profile)
    end
    
    it "should allow the addition of a new http class profile by means of a << operator using strings" do
      @virtual_server_nil.httpclass_profiles.class.should be(IControl::LocalLB::VirtualServer::HttpClassProfileEnumerator)
      @virtual_server_nil.httpclass_profiles.length.should be 0
      @virtual_server_nil.httpclass_profiles << IControl::LocalLB::ProfileHttpClass.find("test_profile1")
      @virtual_server_nil.httpclass_profiles.length.should be 1
    end
    
    it "should allow the use of array operator on the httpclass_profile output object" do
    end
    
  end

  describe "add_rule" do
    it "should exist" do 
      @virtual_server.methods.should include(:add_rule)
    end
    
    it "should allow the addition of a new rule profile by means of a << operator using rules" do
      @virtual_server_nil.rules.class.should be(IControl::LocalLB::VirtualServer::RuleEnumerator)
      @virtual_server_nil.rules.length.should be 0
      @virtual_server_nil.rules << IControl::LocalLB::Rule.find("irule_test")
      @virtual_server_nil.rules.length.should be 1
    end
    
    it "should allow the use of array operator on the httpclass_profile output object" do
    end    
  end

  describe "object_status method" do
    it "should exist" do
      @virtual_server.methods.should include(:object_status)
    end

    it "should return the status of the virtual server" do
      @virtual_server.object_status.class.should be(Hash)
    end
  end

  describe "authentication_profiles method" do
    it "should exist" do
      @virtual_server.methods.should include(:authentication_profiles)
    end

    it "return an array of authentication_profiles" do
      @virtual_server.authentication_profiles.class.should be(IControl::LocalLB::VirtualServer::AuthProfileEnumerator)
      @virtual_server.authentication_profiles.first.class.should be(IControl::LocalLB::ProfileAuth)
      
    end

    it "should allow the adding of a new profile by means of the << operator" do
      @virtual_server_nil.authentication_profiles.class.should be(IControl::LocalLB::VirtualServer::AuthProfileEnumerator)
      @virtual_server_nil.authentication_profiles.length.should be 0
      @virtual_server_nil.authentication_profiles << IControl::LocalLB::ProfileAuth.find("ldap")
      @virtual_server_nil.authentication_profiles.length.should be 1
    end
  end

  describe "self.all_statistics method" do
    it "should exist" do
      @virtual_server.class.methods.should include(:all_statistics)
    end

    it "should return an array with every statistic of the virtual servers" do
      IControl::LocalLB::VirtualServer.get_all_statistics.class.should be(Array)
      IControl::LocalLB::VirtualServer.get_all_statistics.first.class.should be(IControl::LocalLB::VirtualServer::StatisticEntry)
    end
  end

  describe "persistence_record method" do

    it "should exist" do
      @virtual_server.methods.should include(:persistence_record)
    end

  end
  
  describe "version method" do
    it "should exist" do
      @virtual_server.methods.should include(:version)
    end

    it "should return the version of the system" do
      @virtual_server.version.class.should be(String)
      @virtual_server.version.length.should > 0
    end
  end

  describe "module_score method" do
    it "should exist" do
      @virtual_server.methods.should include(:module_score)
    end

    it "should return nil is none exist" do
      @virtual_server.module_score.should be_nil
    end
  end

  describe "protocol= method" do
    
    it "should exist" do
      @virtual_server.methods.should include(:protocol=)
    end

    it "should change the current protocol value" do

    end
  end

  describe "enable_fallback_persistence_profile! method" do
    it "should exist" do
      @virtual_server.methods.should include(:enable_fallback_persistence_profile!)
    end

    it "should enable the fallback_persistence profile" do
      lambda { @virtual_server.enable_fallback_persistence_profile! }.should_not raise_exception
    end
  end

  describe "disable_fallback_persistence_profile! method" do
    it "should exist" do
      @virtual_server.methods.should include(:disable_fallback_persistence_profile!)
    end

    it "should disable the fallback_persistence profile" do
      lambda { @virtual_server.disable_fallback_persistence_profile! }.should_not raise_exception
    end
  end

  describe "enable_cmp!" do
    it "should exist" do
      @virtual_server.methods.should include(:enable_cmp!)
    end

    it "should enable the cmp" do
      lambda { @virtual_server.enable_cmp! }.should_not raise_exception
    end
  end

  describe "disable_cmp! method" do
    it "should exist" do
      @virtual_server.methods.should include(:disable_cmp!)
    end

    it "should disable the cmp" do
      lambda { @virtual_server.disable_cmp! }.should_not raise_exception
    end
  end

  describe "snat_pool= method" do

    it "should exist" do
      @virtual_server.methods.should include(:snat_pool=)
    end

    it "assign a new snat pool" do
      register_conversation(["IControl.LocalLB.VirtualServer.get_snat_pool_before_snat_pool",
                             "IControl.LocalLB.VirtualServer.get_snat_pool_after_snat_pool"])

      @virtual_server_nil.snat_pool.should be_nil
      @virtual_server_nil.snat_pool = IControl::LocalLB::SNATPool.find("test_snat")
      after_snat = @virtual_server_nil.snat_pool
      after_snat.class.should be(IControl::LocalLB::SNATPool)
      after_snat.id.should ==("test_snat")
    end

  end

end
