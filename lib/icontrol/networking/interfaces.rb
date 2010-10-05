# -*- coding: utf-8 -*-
IControl::Networking::Interfaces
module IControl # :nodoc:
  module Networking # :nodoc:
    # = Interfaces
    # 
    #  The Interface interface enables you to work with the definitions and attributes contained in a device's interface. 
    #
    class Interfaces 

      set_id_name :interface 

      ##
      # :method: active_media
      # Gets the active media types of the specified interface names.

      ##
      # :method: actual_flow_control
      # Gets the actual/effective flow control types for the specified interfaces.

      ##
      # :method: all_statistics
      # Gets the statistics of all interfaces.

      ##
      # :method: dual_media_state
      # Gets the states indicating whether the interface is a dual media port supporting both fixed copper and SFP.

      ##
      # :method: enabled_state
      # Gets the states of the specified interface names.

      ##
      # :method: learning_mode
      # Gets the configured learning modes of the specified interfaces.

      ##
      # :method: list
      # Gets a list of all interfaces on this device.

      ##
      # :method: mac_address
      # Gets the MAC addresses of the specified interface names.

      ##
      # :method: media
      # Gets the configured media types of the specified interface names (settings for fixed, non-pluggable interfaces).

      ##
      # :method: media_option
      # Gets the media options for the specified interfaces.

      ##
      # :method: media_speed
      # Gets the media speeds of the specified interface names. Unit = Mbps.

      ##
      # :method: media_status
      # Gets the media status of the specified interface names.

      ##
      # :method: mtu
      # Gets the MTUs of the specified interface names.

      ##
      # :method: phy_master_slave_mode
      # Gets the configured SFP media types of the specified interface names.

      ##
      # :method: prefer_sfp_state
      # Gets the states indicating that SFP is the preferred media. Only used for dual media ports.

      ##
      # :method: requested_flow_control
      # Gets the configured/requested flow control types for the specified interfaces.

      ##
      # :method: sfp_media_state
      # Gets the states indicating whether the interface supports SFP media.

      ##
      # :method: statistics
      # Gets the statistics of the specified interfaces.

      ##
      # :method: stp_active_edge_port_state
      # Gets the active states indicating whether the specified interfaces are edge ports or not. The spanning tree algorithms include important optimizations that can only be used on so-called edge ports, i.e. interfaces that connect to end stations rather than to other bridges. Note: This active state is reported by STP daemon.

      ##
      # :method: stp_auto_edge_port_detection_state
      # Gets the states indicating whether automatic detection of edge port status for the specified interfaces. When automatic edge port detection is enabled on an interface, the BIG-IP monitors the interface for incoming STP, RSTP, or MSTP packets. If no such packets are received for a sufficient period of time (about 3 seconds), the interface is automatically given edge port status. When automatic edge port detection is disabled on an interface, the BIG-IP never gives the interface edge port status automatically. By default, automatic edge port detection is enabled on all interfaces.

      ##
      # :method: stp_edge_port_state
      # Gets the states indicating whether the specified interfaces are edge ports or not. The spanning tree algorithms include important optimizations that can only be used on so-called edge ports, i.e. interfaces that connect to end stations rather than to other bridges.

      ##
      # :method: stp_enabled_state
      # Gets the states indicating whether the specified interfaces will participate in the spanning tree protocol. Disabling spanning tree protocol on an interface enables learning and forwarding on it. The spanning tree algorithm then behaves as if the interface did not exist. No STP, RSTP, or MSTP packets are transmitted or received on the interface, and the spanning tree algorithm exerts no control over forwarding or learning on the port. NOTE: Disabling spanning tree protocol on an interface which is a configured member of a trunk disables spanning tree protocol on the trunk as a whole. For a trunk to participate in spanning tree protocol, the protocol must be enabled on all of its configured member interfaces.

      ##
      # :method: stp_link_type 
      # Gets the STP link types for the specified interfaces.

      ##
      # :method: stp_protocol_detection_reset_state 
      # Gets the states indicating whether RSTP or MSTP BPDUs (depending on the current STP mode) to be sent on the specified interfaces, until such time as a legacy STP bridge is detected again on those interfaces. Note: This method is only applicable when the current STP mode is RSTP or MSTP.

      ##
      # :method: version
      # Gets the version information for this interface.
      ##

      # Resets the statistics of the specified interfaces.
      def reset_statistics
      end
      # Sets the states of the specified interface names.
      def set_enabled_state
      end
      # Sets the learning modes for the specified interfaces.
      def set_learning_mode
      end
      # Sets the media types of the specified interface names. (settings for fixed, non-pluggable interfaces). See set_media_fixed_or_sfp for a method you can use to set media type and not have to choose whether to affect settings for fixed or sfp media.
      def set_media
      end
      # Set the media types of the specified interface names, conveniently choosing fixed or SFP media automatically. When you set the media type using this method, the system automatically affects the correct media based on whether the interface is a small form factor pluggable (SFP) interface, or for combo ports (see get_dual_media_state method) whether SFP is the preferred port. (When you get the setting you'll still need to use the correct method, get_media or get_media_sfp.) You may manually affect the interface settings more directly by using the set_media or set_media_sfp methods.
      def set_media_fixed_or_sfp
      end
      # Sets the SFP media types of the specified interface names.
      def set_media_sfp
      end
      # Sets the SFP media types of the specified interface names.
      def set_phy_master_slave_mode
      end
      # Sets the states indicating that SFP is the preferred media. Only used for dual media ports.
      def set_prefer_sfp_state
      end
      # Sets the configured/requested flow control types for the specified interfaces.
      def set_requested_flow_control
      end
      # Sets the states indicating whether automatic detection of edge port status for the specified interfaces. When automatic edge port detection is enabled on an interface, the BIG-IP monitors the interface for incoming STP, RSTP, or MSTP packets. If no such packets are received for a sufficient period of time (about 3 seconds), the interface is automatically given edge port status. When automatic edge port detection is disabled on an interface, the BIG-IP never gives the interface edge port status automatically. By default, automatic edge port detection is enabled on all interfaces.
      def set_stp_auto_edge_port_detection_state
      end
      # Sets the states indicating whether the specified interfaces are edge ports or not. The spanning tree algorithms include important optimizations that can only be used on so-called edge ports, i.e. interfaces that connect to end stations rather than to other bridges.
      def set_stp_edge_port_state
      end
      # Sets the states indicating whether the specified interfaces will participate in the spanning tree protocol. Disabling spanning tree protocol on an interface enables learning and forwarding on it. The spanning tree algorithm then behaves as if the interface did not exist. No STP, RSTP, or MSTP packets are transmitted or received on the interface, and the spanning tree algorithm exerts no control over forwarding or learning on the port. NOTE: Disabling spanning tree protocol on an interface which is a configured member of a trunk disables spanning tree protocol on the trunk as a whole. For a trunk to participate in spanning tree protocol, the protocol must be enabled on all of its configured member interfaces.
      def set_stp_enabled_state
      end
      # Sets the STP link types for the specified interfaces.
      def set_stp_link_type
      end
      # Sets the states indicating whether RSTP or MSTP BPDUs (depending on the current STP mode) to be sent on the specified interfaces, until such time as a legacy STP bridge is detected again on those interfaces. Note: This method is only applicable when the current STP mode is RSTP or MSTP. 
      def set_stp_protocol_detection_reset_state
      end

      class MediaType
        
        class << self; include ConstGetter end

        # Deselect All Media.
        Mt_None =:Mt_None
        # Auto-Select Best Media.
        Mt_Auto =:Mt_Auto
        # Loopback Mode.
        Mt_Loop =:Mt_Loop
        # No Phy Mode.
        Mt_No_Phy =:Mt_No_Phy
        # 10BaseT (RJ45) half duplex.
        Mt_10T_HALF =:Mt_10T_HALF
        # 10BaseT (RJ45) full duplex.
        MT_10T_FULL =:MT_10T_FULL
        # 100BaseTX (RJ45) half duplex.
        MT_100TX_HALF =:MT_100TX_HALF
        # 100BaseTX (RJ45) full duplex.
        MT_100TX_FULL =:MT_100TX_FULL
        # 1000BaseTX (RJ45) half duplex.
        MT_1000TX_HALF =:MT_1000TX_HALF
        # 1000BaseTX (RJ45) full duplex.
        MT_1000TX_FULL =:MT_1000TX_FULL
        # 1000BaseFX (Fiber) half duplex.
        MT_1000FX_HALF =:MT_1000FX_HALF
        # 1000BaseFX (Fiber) full duplex.
        MT_1000FX_FULL =:MT_1000FX_FULL
        # 10000BaseTX (RJ45) half duplex.
        MT_10000TX_HALF =:MT_10000TX_HALF
        # 10000BaseTX (RJ45) full duplex.
        MT_10000TX_FULL =:MT_10000TX_FULL
        # 10000BaseFX (Fiber) half duplex.
        MT_10000FX_HALF =:MT_10000FX_HALF
        # 10000BaseFX (Fiber) full duplex.
        MT_10000FX_FULL =:MT_10000FX_FULL
        # 1000BaseSX (Fiber) half duplex.
        MT_1000SX_HALF =:MT_1000SX_HALF
        # 1000BaseSX (Fiber) full duplex.
        MT_1000SX_FULL =:MT_1000SX_FULL
        # 1000BaseLX (Fiber) half duplex.
        MT_1000LX_HALF =:MT_1000LX_HALF
        # 1000BaseLX (Fiber) full duplex.
        MT_1000LX_FULL =:MT_1000LX_FULL
        # 1000BaseT (RJ45) half duplex.
        MT_1000T_HALF =:MT_1000T_HALF
        # 1000BaseT (RJ45) full duplex.
        MT_1000T_FULL =:MT_1000T_FULL
        # 10GBaseT (Copper) full duplex.
        MT_10000T_FULL =:MT_10000T_FULL
        # 10GBaseSR (Fiber) full duplex.
        MT_10000SR_FULL =:MT_10000SR_FULL
        # 10GBaseLR (Fiber) full duplex.
        MT_10000LR_FULL =:MT_10000LR_FULL
        # 10GBaseER (Fiber) full duplex. 
        MT_10000ER_FULL =:MT_10000ER_FULL
      end
    end 
  end
end
      
