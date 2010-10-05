require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe IControl::Networking::Interfaces do 			  

  before do
    @interface = IControl::Networking::Interfaces.find("1.1")
  end		
            
  describe "list" do 
    it "exists" do
      @interface.methods.should include(:list)
    end

    it "should return without raise any exception" do
      lambda { @interface.list }.should_not raise_exception
    end

  end
                
  describe "enabled_state" do 
    it "exists" do
      @interface.methods.should include(:enabled_state)
    end

    it "should return without raise any exception" do
      lambda { @interface.enabled_state }.should_not raise_exception
    end

  end
                      
  describe "dual_media_state" do 
    it "exists" do
      @interface.methods.should include(:dual_media_state)
    end

    it "should return without raise any exception" do
      lambda { @interface.dual_media_state }.should_not raise_exception
    end

  end
                
  describe "sfp_media_state" do 
    it "exists" do
      @interface.methods.should include(:sfp_media_state)
    end

    it "should return without raise any exception" do
      lambda { @interface.sfp_media_state }.should_not raise_exception
    end

  end
                
  describe "prefer_sfp_state" do 
    it "exists" do
      @interface.methods.should include(:prefer_sfp_state)
    end

    it "should return without raise any exception" do
      lambda { @interface.prefer_sfp_state }.should_not raise_exception
    end

  end
                      
  describe "media_status" do 
    it "exists" do
      @interface.methods.should include(:media_status)
    end

    it "should return without raise any exception" do
      lambda { @interface.media_status }.should_not raise_exception
    end

  end
                
  describe "media_speed" do 
    it "exists" do
      @interface.methods.should include(:media_speed)
    end

    it "should return without raise any exception" do
@interface.media_speed
      lambda { @interface.media_speed }.should_not raise_exception
    end

  end
                
  describe "active_media" do 
    it "exists" do
      @interface.methods.should include(:active_media)
    end

    it "should return without raise any exception" do
      lambda { @interface.active_media }.should_not raise_exception
    end

  end
                
  describe "media" do 
    it "exists" do
      @interface.methods.should include(:media)
    end

    it "should return without raise any exception" do
      lambda { @interface.media }.should_not raise_exception
    end

  end
                      
  describe "media_sfp" do 
    it "exists" do
      @interface.methods.should include(:media_sfp)
    end

    it "should return without raise any exception" do
      lambda { @interface.media_sfp }.should_not raise_exception
    end

  end
                            
  describe "phy_master_slave_mode" do 
    it "exists" do
      @interface.methods.should include(:phy_master_slave_mode)
    end

    it "should return without raise any exception" do
      lambda { @interface.phy_master_slave_mode }.should_not raise_exception
    end

  end
                      
  describe "mac_address" do 
    it "exists" do
      @interface.methods.should include(:mac_address)
    end

    it "should return without raise any exception" do
      lambda { @interface.mac_address }.should_not raise_exception
    end

  end
                
  describe "mtu" do 
    it "exists" do
      @interface.methods.should include(:mtu)
    end

    it "should return without raise any exception" do
      lambda { @interface.mtu }.should_not raise_exception
    end

  end
                
  describe "learning_mode" do 
    it "exists" do
      @interface.methods.should include(:learning_mode)
    end

    it "should return without raise any exception" do
      lambda { @interface.learning_mode }.should_not raise_exception
    end

  end
                      
  describe "actual_flow_control" do 
    it "exists" do
      @interface.methods.should include(:actual_flow_control)
    end

    it "should return without raise any exception" do
      lambda { @interface.actual_flow_control }.should_not raise_exception
    end

  end
                
  describe "requested_flow_control" do 
    it "exists" do
      @interface.methods.should include(:requested_flow_control)
    end

    it "should return without raise any exception" do
      lambda { @interface.requested_flow_control }.should_not raise_exception
    end

  end
                      
  describe "stp_link_type" do 
    it "exists" do
      @interface.methods.should include(:stp_link_type)
    end

    it "should return without raise any exception" do
      lambda { @interface.stp_link_type }.should_not raise_exception
    end

  end
                      
  describe "stp_active_edge_port_state" do 
    it "exists" do
      @interface.methods.should include(:stp_active_edge_port_state)
    end

    it "should return without raise any exception" do
      lambda { @interface.stp_active_edge_port_state }.should_not raise_exception
    end

  end
                
  describe "stp_edge_port_state" do 
    it "exists" do
      @interface.methods.should include(:stp_edge_port_state)
    end

    it "should return without raise any exception" do
      lambda { @interface.stp_edge_port_state }.should_not raise_exception
    end

  end
                      
  describe "stp_auto_edge_port_detection_state" do 
    it "exists" do
      @interface.methods.should include(:stp_auto_edge_port_detection_state)
    end

    it "should return without raise any exception" do
      lambda { @interface.stp_auto_edge_port_detection_state }.should_not raise_exception
    end

  end
                      
  describe "stp_enabled_state" do 
    it "exists" do
      @interface.methods.should include(:stp_enabled_state)
    end

    it "should return without raise any exception" do
      lambda { @interface.stp_enabled_state }.should_not raise_exception
    end

  end
                      
  describe "stp_protocol_detection_reset_state" do 
    it "exists" do
      @interface.methods.should include(:stp_protocol_detection_reset_state)
    end

    it "should return without raise any exception" do
      lambda { @interface.stp_protocol_detection_reset_state }.should_not raise_exception
    end

  end
                      
  describe "media_option" do 
    it "exists" do
      @interface.methods.should include(:media_option)
    end

    it "should return without raise any exception" do
      lambda { @interface.media_option }.should_not raise_exception
    end

  end
                
  describe "media_option_sfp" do 
    it "exists" do
      @interface.methods.should include(:media_option_sfp)
    end

    it "should return without raise any exception" do
      lambda { @interface.media_option_sfp }.should_not raise_exception
    end

  end
                
  describe "all_statistics" do 
    it "exists" do
      @interface.methods.should include(:all_statistics)
    end

    it "should return without raise any exception" do
      lambda { @interface.all_statistics }.should_not raise_exception
    end

  end
                
  describe "statistics" do 
    it "exists" do
      @interface.methods.should include(:statistics)
    end

    it "should return without raise any exception" do
      lambda { @interface.statistics }.should_not raise_exception
    end

  end
                      
  describe "version" do 
    it "exists" do
      @interface.methods.should include(:version)
    end

    it "should return without raise any exception" do
      lambda { @interface.version }.should_not raise_exception
    end

  end
      
end
