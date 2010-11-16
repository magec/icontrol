require File.expand_path(File.join(File.dirname(__FILE__),"..","..","..",'/spec_helper'))
require 'ruby-debug'
describe IControl::LocalLB::Pool do				  

   use_vcr_cassette "IControl::LocalLB::Pool", :record => :new_episodes, :match_requests_on => [:uri, :method, :body]
  
   before(:each) do
      @test_server = IControl::LocalLB::Pool.find("test_pool")
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

      
          
  describe "monitor_association" do 
    it "exists" do

      @test_server.methods.should include(:monitor_association)
    end

    it "should return without raise any exception" do
            Debugger.start

      lambda { @test_server.monitor_association }.should_not raise_exception
      puts @test_server.monitor_association.inspect
    end

  end

      
      
      
          
  describe "member" do 
    it "exists" do

      @test_server.methods.should include(:member)
    end

    it "should return without raise any exception" do
      lambda { @test_server.member }.should_not raise_exception
      puts @test_server.member.inspect
    end

  end

      
      
      
          
  describe "allow_snat_state" do 
    it "exists" do

      @test_server.methods.should include(:allow_snat_state)
    end

    it "should return without raise any exception" do
      lambda { @test_server.allow_snat_state }.should_not raise_exception
      puts @test_server.allow_snat_state.inspect
    end

  end

      
          
  describe "minimum_up_member" do 
    it "exists" do

      @test_server.methods.should include(:minimum_up_member)
    end

    it "should return without raise any exception" do
#      lambda { @test_server.minimum_up_member }.should_not raise_exception
      puts @test_server.minimum_up_member.inspect
    end

  end

      
      
          
  describe "client_ip_tos" do 
    it "exists" do

      @test_server.methods.should include(:client_ip_tos)
    end

    it "should return without raise any exception" do
      lambda { @test_server.client_ip_tos }.should_not raise_exception
      puts @test_server.client_ip_tos.inspect
    end

  end

      
          
  describe "minimum_active_member" do 
    it "exists" do

      @test_server.methods.should include(:minimum_active_member)
    end

    it "should return without raise any exception" do
      lambda { @test_server.minimum_active_member }.should_not raise_exception
      puts @test_server.minimum_active_member.inspect
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

      
          
  describe "server_link_qos" do 
    it "exists" do

      @test_server.methods.should include(:server_link_qos)
    end

    it "should return without raise any exception" do
      lambda { @test_server.server_link_qos }.should_not raise_exception
      puts @test_server.server_link_qos.inspect
    end

  end

      
      
      
          
  describe "monitor_instance" do 
    it "exists" do

      @test_server.methods.should include(:monitor_instance)
    end

    it "should return without raise any exception" do
      lambda { @test_server.monitor_instance }.should_not raise_exception
      puts @test_server.monitor_instance.inspect
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

      
      
          
  describe "allow_nat_state" do 
    it "exists" do

      @test_server.methods.should include(:allow_nat_state)
    end

    it "should return without raise any exception" do
      lambda { @test_server.allow_nat_state }.should_not raise_exception
      puts @test_server.allow_nat_state.inspect
    end

  end

      
          
  describe "minimum_up_member_enabled_state" do 
    it "exists" do

      @test_server.methods.should include(:minimum_up_member_enabled_state)
    end

    it "should return without raise any exception" do
      lambda { @test_server.minimum_up_member_enabled_state }.should_not raise_exception
      puts @test_server.minimum_up_member_enabled_state.inspect
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

      
          
  describe "aggregate_dynamic_ratio" do 
    it "exists" do

      @test_server.methods.should include(:aggregate_dynamic_ratio)
    end

    it "should return without raise any exception" do
      lambda { @test_server.aggregate_dynamic_ratio }.should_not raise_exception
      puts @test_server.aggregate_dynamic_ratio.inspect
    end

  end

      
          
  describe "server_ip_tos" do 
    it "exists" do

      @test_server.methods.should include(:server_ip_tos)
    end

    it "should return without raise any exception" do
      lambda { @test_server.server_ip_tos }.should_not raise_exception
      puts @test_server.server_ip_tos.inspect
    end

  end

      
          
  describe "gateway_failsafe_unit_id" do 
    it "exists" do

      @test_server.methods.should include(:gateway_failsafe_unit_id)
    end

    it "should return without raise any exception" do
      lambda { @test_server.gateway_failsafe_unit_id }.should_not raise_exception
      puts @test_server.gateway_failsafe_unit_id.inspect
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

      
          
  describe "slow_ramp_time" do 
    it "exists" do

      @test_server.methods.should include(:slow_ramp_time)
    end

    it "should return without raise any exception" do
      lambda { @test_server.slow_ramp_time }.should_not raise_exception
      puts @test_server.slow_ramp_time.inspect
    end

  end

      
      
      
      
      
      
          
  describe "active_member_count" do 
    it "exists" do

      @test_server.methods.should include(:active_member_count)
    end

    it "should return without raise any exception" do
      lambda { @test_server.active_member_count }.should_not raise_exception
      puts @test_server.active_member_count.inspect
    end

  end

      
          
  describe "lb_method" do 
    it "exists" do

      @test_server.methods.should include(:lb_method)
    end

    it "should return without raise any exception" do
      lambda { @test_server.lb_method }.should_not raise_exception
      puts @test_server.lb_method.inspect
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

      
      
      
          
  describe "simple_timeout" do 
    it "exists" do

      @test_server.methods.should include(:simple_timeout)
    end

    it "should return without raise any exception" do
      lambda { @test_server.simple_timeout }.should_not raise_exception
      puts @test_server.simple_timeout.inspect
    end

  end

      
          
  describe "minimum_up_member_action" do 
    it "exists" do

      @test_server.methods.should include(:minimum_up_member_action)
    end

    it "should return without raise any exception" do
      lambda { @test_server.minimum_up_member_action }.should_not raise_exception
      puts @test_server.minimum_up_member_action.inspect
    end

  end

      
      
          
  describe "action_on_service_down" do 
    it "exists" do

      @test_server.methods.should include(:action_on_service_down)
    end

    it "should return without raise any exception" do
      lambda { @test_server.action_on_service_down }.should_not raise_exception
      puts @test_server.action_on_service_down.inspect
    end

  end

      
          
  describe "client_link_qos" do 
    it "exists" do

      @test_server.methods.should include(:client_link_qos)
    end

    it "should return without raise any exception" do
      lambda { @test_server.client_link_qos }.should_not raise_exception
      puts @test_server.client_link_qos.inspect
    end

  end

      
      
      
end
