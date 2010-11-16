require File.expand_path(File.join(File.dirname(__FILE__),"..","..","..",'/spec_helper'))
describe IControl::LocalLB::VirtualServer do				  

   use_vcr_cassette "IControl::LocalLB::VirtualServer", :record => :new_episodes, :match_requests_on => [:uri, :method, :body]
  
   before(:each) do
      @test_server = IControl::LocalLB::VirtualServer.find("test_virtual_server")
    end	 		

    
      
          
  describe "actual_hardware_acceleration" do 
    it "exists" do

      @test_server.methods.should include(:actual_hardware_acceleration)
    end

    it "should return without raise any exception" do
      lambda { @test_server.actual_hardware_acceleration }.should_not raise_exception
      puts @test_server.actual_hardware_acceleration.inspect
    end

  end

      
          
  describe "protocol" do 
    it "exists" do

      @test_server.methods.should include(:protocol)
    end

    it "should return without raise any exception" do
      lambda { @test_server.protocol }.should_not raise_exception
      puts @test_server.protocol.inspect
    end

  end

      
      
          
  describe "source_port_behavior" do 
    it "exists" do

      @test_server.methods.should include(:source_port_behavior)
    end

    it "should return without raise any exception" do
      lambda { @test_server.source_port_behavior }.should_not raise_exception
      puts @test_server.source_port_behavior.inspect
    end

  end

      
          
  describe "list" do 
    it "exists" do

      @test_server.methods.should include(:list)
    end

    it "should return without raise any exception" do
      lambda { @test_server.list }.should_not raise_exception
      puts @test_server.list.inspect
    end

  end

      
          
  describe "statistics" do 
    it "exists" do

      @test_server.methods.should include(:statistics)
    end

    it "should return without raise any exception" do
      lambda { @test_server.statistics }.should_not raise_exception
      puts @test_server.statistics.inspect
    end

  end

      
      
      
      
          
  describe "clone_pool" do 
    it "exists" do

      @test_server.methods.should include(:clone_pool)
    end

    it "should return without raise any exception" do
      lambda { @test_server.clone_pool }.should_not raise_exception
      puts @test_server.clone_pool.inspect
    end

  end

      
      
          
  describe "fallback_persistence_profile" do 
    it "exists" do

      @test_server.methods.should include(:fallback_persistence_profile)
    end

    it "should return without raise any exception" do
      lambda { @test_server.fallback_persistence_profile }.should_not raise_exception
      puts @test_server.fallback_persistence_profile.inspect
    end

  end

      
      
      
      
          
  describe "connection_limit" do 
    it "exists" do

      @test_server.methods.should include(:connection_limit)
    end

    it "should return without raise any exception" do
      lambda { @test_server.connection_limit }.should_not raise_exception
      puts @test_server.connection_limit.inspect
    end

  end

      
          
  describe "httpclass_profile" do 
    it "exists" do

      @test_server.methods.should include(:httpclass_profile)
    end

    it "should return without raise any exception" do
      lambda { @test_server.httpclass_profile }.should_not raise_exception
      puts @test_server.httpclass_profile.inspect
    end

  end

      
          
  describe "last_hop_pool" do 
    it "exists" do

      @test_server.methods.should include(:last_hop_pool)
    end

    it "should return without raise any exception" do
      lambda { @test_server.last_hop_pool }.should_not raise_exception
      puts @test_server.last_hop_pool.inspect
    end

  end

      
      
      
      
          
  describe "all_statistics" do 
    it "exists" do

      @test_server.methods.should include(:all_statistics)
    end

    it "should return without raise any exception" do
      lambda { @test_server.all_statistics }.should_not raise_exception
      puts @test_server.all_statistics.inspect
    end

  end

      
          
  describe "cmp_enable_mode" do 
    it "exists" do

      @test_server.methods.should include(:cmp_enable_mode)
    end

    it "should return without raise any exception" do
      lambda { @test_server.cmp_enable_mode }.should_not raise_exception
      puts @test_server.cmp_enable_mode.inspect
    end

  end

      
      
          
  describe "connection_mirror_state" do 
    it "exists" do

      @test_server.methods.should include(:connection_mirror_state)
    end

    it "should return without raise any exception" do
      lambda { @test_server.connection_mirror_state }.should_not raise_exception
      puts @test_server.connection_mirror_state.inspect
    end

  end

      
      
          
  describe "object_status" do 
    it "exists" do

      @test_server.methods.should include(:object_status)
    end

    it "should return without raise any exception" do
      lambda { @test_server.object_status }.should_not raise_exception
      puts @test_server.object_status.inspect
    end

  end

      
      
      
          
  describe "version" do 
    it "exists" do

      @test_server.methods.should include(:version)
    end

    it "should return without raise any exception" do
      lambda { @test_server.version }.should_not raise_exception
      puts @test_server.version.inspect
    end

  end

      
      
      
      
      
          
  describe "wildmask" do 
    it "exists" do

      @test_server.methods.should include(:wildmask)
    end

    it "should return without raise any exception" do
      lambda { @test_server.wildmask }.should_not raise_exception
      puts @test_server.wildmask.inspect
    end

  end

      
      
      
          
  describe "profile" do 
    it "exists" do

      @test_server.methods.should include(:profile)
    end

    it "should return without raise any exception" do
      lambda { @test_server.profile }.should_not raise_exception
      puts @test_server.profile.inspect
    end

  end

      
          
  describe "translate_address_state" do 
    it "exists" do

      @test_server.methods.should include(:translate_address_state)
    end

    it "should return without raise any exception" do
      lambda { @test_server.translate_address_state }.should_not raise_exception
      puts @test_server.translate_address_state.inspect
    end

  end

      
      
          
  describe "type" do 
    it "exists" do

      @test_server.methods.should include(:type)
    end

    it "should return without raise any exception" do
      lambda { @test_server.type }.should_not raise_exception
      puts @test_server.type.inspect
    end

  end

      
      
      
          
  describe "default_pool_name" do 
    it "exists" do

      @test_server.methods.should include(:default_pool_name)
    end

    it "should return without raise any exception" do
      lambda { @test_server.default_pool_name }.should_not raise_exception
      puts @test_server.default_pool_name.inspect
    end

  end

      
      
          
  describe "enabled_state" do 
    it "exists" do

      @test_server.methods.should include(:enabled_state)
    end

    it "should return without raise any exception" do
      lambda { @test_server.enabled_state }.should_not raise_exception
      puts @test_server.enabled_state.inspect
    end

  end

      
      
      
          
  describe "persistence_record" do 
    it "exists" do

      @test_server.methods.should include(:persistence_record)
    end

    it "should return without raise any exception" do
      lambda { @test_server.persistence_record }.should_not raise_exception
      puts @test_server.persistence_record.inspect
    end

  end

      
      
          
  describe "persistence_profile" do 
    it "exists" do

      @test_server.methods.should include(:persistence_profile)
    end

    it "should return without raise any exception" do
      lambda { @test_server.persistence_profile }.should_not raise_exception
      puts @test_server.persistence_profile.inspect
    end

  end

      
          
  describe "cmp_enabled_state" do 
    it "exists" do

      @test_server.methods.should include(:cmp_enabled_state)
    end

    it "should return without raise any exception" do
      lambda { @test_server.cmp_enabled_state }.should_not raise_exception
      puts @test_server.cmp_enabled_state.inspect
    end

  end

      
      
      
      
      
          
  describe "module_score" do 
    it "exists" do

      @test_server.methods.should include(:module_score)
    end

    it "should return without raise any exception" do
      lambda { @test_server.module_score }.should_not raise_exception
      puts @test_server.module_score.inspect
    end

  end

      
      
          
  describe "rate_class" do 
    it "exists" do

      @test_server.methods.should include(:rate_class)
    end

    it "should return without raise any exception" do
      lambda { @test_server.rate_class }.should_not raise_exception
      puts @test_server.rate_class.inspect
    end

  end

      
      
      
          
  describe "snat_type" do 
    it "exists" do

      @test_server.methods.should include(:snat_type)
    end

    it "should return without raise any exception" do
      lambda { @test_server.snat_type }.should_not raise_exception
      puts @test_server.snat_type.inspect
    end

  end

      
      
          
  describe "authentication_profile" do 
    it "exists" do

      @test_server.methods.should include(:authentication_profile)
    end

    it "should return without raise any exception" do
      lambda { @test_server.authentication_profile }.should_not raise_exception
      puts @test_server.authentication_profile.inspect
    end

  end

      
      
          
  describe "destination" do 
    it "exists" do

      @test_server.methods.should include(:destination)
    end

    it "should return without raise any exception" do
      lambda { @test_server.destination }.should_not raise_exception
      puts @test_server.destination.inspect
    end

  end

      
      
      
      
          
  describe "vlan" do 
    it "exists" do

      @test_server.methods.should include(:vlan)
    end

    it "should return without raise any exception" do
      lambda { @test_server.vlan }.should_not raise_exception
      puts @test_server.vlan.inspect
    end

  end

      
          
  describe "translate_port_state" do 
    it "exists" do

      @test_server.methods.should include(:translate_port_state)
    end

    it "should return without raise any exception" do
      lambda { @test_server.translate_port_state }.should_not raise_exception
      puts @test_server.translate_port_state.inspect
    end

  end

      
      
          
  describe "gtm_score" do 
    it "exists" do

      @test_server.methods.should include(:gtm_score)
    end

    it "should return without raise any exception" do
      lambda { @test_server.gtm_score }.should_not raise_exception
      puts @test_server.gtm_score.inspect
    end

  end

      
          
  describe "snat_pool" do 
    it "exists" do

      @test_server.methods.should include(:snat_pool)
    end

    it "should return without raise any exception" do
      lambda { @test_server.snat_pool }.should_not raise_exception
      puts @test_server.snat_pool.inspect
    end

  end

      
      
          
  describe "rule" do 
    it "exists" do

      @test_server.methods.should include(:rule)
    end

    it "should return without raise any exception" do
      lambda { @test_server.rule }.should_not raise_exception
      puts @test_server.rule.inspect
    end

  end

      
end
