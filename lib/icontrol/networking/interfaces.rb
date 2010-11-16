module IControl::Networking
  ##
  # The Interface interface enables you to work with the definitions and attributes contained
  # in a device's interface.
  class Interfaces < IControl::Base
    class MediaType < IControl::Base::Enumeration; end
    class InterfaceMediaOption < IControl::Base::Struct; end
    class InterfaceStatisticEntry < IControl::Base::Struct; end
    class InterfaceStatistics < IControl::Base::Struct; end    ## A sequence of interface media options.
    class InterfaceMediaOptionSequence < IControl::Base::Sequence ; end## A sequence of network interface statistics.
    class InterfaceStatisticEntrySequence < IControl::Base::Sequence ; end## A sequence of interface media types.
    class MediaTypeSequence < IControl::Base::Sequence ; end## A alias for sequence of interface media types.
    class MediaTypeSequenceSequence < IControl::Base::SequenceSequence ; end##
    # A list of interface media types.
    class MediaType < IControl::Base::Enumeration
      # Deselect all media.
      MT_NONE = :MT_NONE
      # Auto-select best media.
      MT_AUTO = :MT_AUTO
      # Loopback mode.
      MT_LOOP = :MT_LOOP
      # No PHY mode.
      MT_NO_PHY = :MT_NO_PHY
      # 10BaseT ( RJ45 ) half duplex.
      MT_10T_HALF = :MT_10T_HALF
      # 10BaseT ( RJ45 ) full duplex.
      MT_10T_FULL = :MT_10T_FULL
      # 100BaseTX ( RJ45 ) half duplex.
      MT_100TX_HALF = :MT_100TX_HALF
      # 100BaseTX ( RJ45 ) full duplex.
      MT_100TX_FULL = :MT_100TX_FULL
      # 1000BaseTX ( RJ45 ) half duplex.
      MT_1000TX_HALF = :MT_1000TX_HALF
      # 1000BaseTX ( RJ45 ) full duplex.
      MT_1000TX_FULL = :MT_1000TX_FULL
      # 1000BaseFX (Fiber) half duplex.
      MT_1000FX_HALF = :MT_1000FX_HALF
      # 1000BaseFX (Fiber) full duplex.
      MT_1000FX_FULL = :MT_1000FX_FULL
      # 10000BaseTX ( RJ45 ) half duplex.
      MT_10000TX_HALF = :MT_10000TX_HALF
      # 10000BaseTX ( RJ45 ) full duplex.
      MT_10000TX_FULL = :MT_10000TX_FULL
      # 10000BaseFX (Fiber) half duplex.
      MT_10000FX_HALF = :MT_10000FX_HALF
      # 10000BaseFX (Fiber) full duplex.
      MT_10000FX_FULL = :MT_10000FX_FULL
      # 1000BaseSX (Fiber) half duplex.
      MT_1000SX_HALF = :MT_1000SX_HALF
      # 1000BaseSX (Fiber) full duplex.
      MT_1000SX_FULL = :MT_1000SX_FULL
      # 1000BaseLX (Fiber) half duplex.
      MT_1000LX_HALF = :MT_1000LX_HALF
      # 1000BaseLX (Fiber) full duplex.
      MT_1000LX_FULL = :MT_1000LX_FULL
      # 1000BaseT ( RJ45 ) half duplex.
      MT_1000T_HALF = :MT_1000T_HALF
      # 1000BaseT ( RJ45 ) full duplex.
      MT_1000T_FULL = :MT_1000T_FULL
      # 10GBaseT (Copper) full duplex.
      MT_10000T_FULL = :MT_10000T_FULL
      # 10GBaseSR (Fiber) full duplex.
      MT_10000SR_FULL = :MT_10000SR_FULL
      # 10GBaseLR (Fiber) full duplex.
      MT_10000LR_FULL = :MT_10000LR_FULL
      # 10GBaseER (Fiber) full duplex.
      MT_10000ER_FULL = :MT_10000ER_FULL
    end

    ##
    # A struct that describes an interface's media options.
    class InterfaceMediaOption < IControl::Base::Struct
      # The interface name.
      icontrol_attribute :interface_name, String
      # The media options for this interface.
      icontrol_attribute :media_options, IControl::Networking::Interfaces::MediaTypeSequence
    end

    ##
    # A struct that describes an interface's general statistics.
    class InterfaceStatisticEntry < IControl::Base::Struct
      # The interface name.
      icontrol_attribute :interface_name, String
      # The statistics.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes network interface statistics and timestamp.
    class InterfaceStatistics < IControl::Base::Struct
      # The statistics for a sequence of network interfaces.
      icontrol_attribute :statistics, IControl::Networking::Interfaces::InterfaceStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Gets the active media types of the specified interface names.
    # :method: get_active_media
    # :call-seq:
    # get_active_media(interfaces)
    #
    # Parameters:
    # - interfaces String[] The names of the specified interfaces.

    ##
    # Gets the actual/effective flow control types for the specified interfaces.
    # :method: get_actual_flow_control
    # :call-seq:
    # get_actual_flow_control(interfaces)
    #
    # Parameters:
    # - interfaces String[] The interface names.

    ##
    # Gets the statistics of all interfaces.
    # :method: get_all_statistics

    ##
    # Gets the states indicating whether the interface is a dual media port supporting
    # both fixed copper and SFP.
    # :method: get_dual_media_state
    # :call-seq:
    # get_dual_media_state(interfaces)
    #
    # Parameters:
    # - interfaces String[] The names of the specified interfaces.

    ##
    # Gets the states of the specified interface names.
    # :method: get_enabled_state
    # :call-seq:
    # get_enabled_state(interfaces)
    #
    # Parameters:
    # - interfaces String[] The names of the specified interfaces.

    ##
    # Gets the configured learning modes of the specified interfaces.
    # :method: get_learning_mode
    # :call-seq:
    # get_learning_mode(interfaces)
    #
    # Parameters:
    # - interfaces String[] The names of the specified interfaces.

    ##
    # Gets a list of all interfaces on this device.
    # :method: get_list

    ##
    # Gets the MAC addresses of the specified interface names.
    # :method: get_mac_address
    # :call-seq:
    # get_mac_address(interfaces)
    #
    # Parameters:
    # - interfaces String[] The names of the specified interfaces.

    ##
    # Gets the configured media types of the specified interface names (settings for fixed,
    # non-pluggable interfaces).
    # :method: get_media
    # :call-seq:
    # get_media(interfaces)
    #
    # Parameters:
    # - interfaces String[] The names of the specified interfaces.

    ##
    # Gets the media options for the specified interfaces.
    # :method: get_media_option
    # :call-seq:
    # get_media_option(interfaces)
    #
    # Parameters:
    # - interfaces String[] The list of the interfaces.

    ##
    # Gets the SFP media options for the specified interfaces.
    # :method: get_media_option_sfp
    # :call-seq:
    # get_media_option_sfp(interfaces)
    #
    # Parameters:
    # - interfaces String[] The list of the interfaces.

    ##
    # Gets the configured SFP media types of the specified interface names.
    # :method: get_media_sfp
    # :call-seq:
    # get_media_sfp(interfaces)
    #
    # Parameters:
    # - interfaces String[] The names of the specified interfaces.

    ##
    # Gets the media speeds of the specified interface names. Unit = Mbps.
    # :method: get_media_speed
    # :call-seq:
    # get_media_speed(interfaces)
    #
    # Parameters:
    # - interfaces String[] The names of the specified interfaces.

    ##
    # Gets the media status of the specified interface names.
    # :method: get_media_status
    # :call-seq:
    # get_media_status(interfaces)
    #
    # Parameters:
    # - interfaces String[] The names of the specified interfaces.

    ##
    # Gets the MTUs of the specified interface names.
    # :method: get_mtu
    # :call-seq:
    # get_mtu(interfaces)
    #
    # Parameters:
    # - interfaces String[] The names of the specified interfaces.

    ##
    # Gets the configured SFP media types of the specified interface names.
    # :method: get_phy_master_slave_mode
    # :call-seq:
    # get_phy_master_slave_mode(interfaces)
    #
    # Parameters:
    # - interfaces String[] The names of the specified interfaces.

    ##
    # Gets the states indicating that SFP is the preferred media. Only used for dual media
    # ports.
    # :method: get_prefer_sfp_state
    # :call-seq:
    # get_prefer_sfp_state(interfaces)
    #
    # Parameters:
    # - interfaces String[] The names of the specified interfaces.

    ##
    # Gets the configured/requested flow control types for the specified interfaces.
    # :method: get_requested_flow_control
    # :call-seq:
    # get_requested_flow_control(interfaces)
    #
    # Parameters:
    # - interfaces String[] The interface names.

    ##
    # Gets the states indicating whether the interface supports SFP media.
    # :method: get_sfp_media_state
    # :call-seq:
    # get_sfp_media_state(interfaces)
    #
    # Parameters:
    # - interfaces String[] The names of the specified interfaces.

    ##
    # Gets the statistics of the specified interfaces.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(interfaces)
    #
    # Parameters:
    # - interfaces String[] The list of the interfaces.

    ##
    # Gets the active states indicating whether the specified interfaces are edge ports
    # or not. The spanning tree algorithms include important optimizations that can only
    # be used on so-called edge ports, i.e. interfaces that connect to end stations rather
    # than to other bridges. Note: This active state is reported by STP daemon.
    # :method: get_stp_active_edge_port_state
    # :call-seq:
    # get_stp_active_edge_port_state(interfaces)
    #
    # Parameters:
    # - interfaces String[] The interface names.

    ##
    # Gets the states indicating whether automatic detection of edge port status for the
    # specified interfaces. When automatic edge port detection is enabled on an interface,
    # the BIG-IP monitors the interface for incoming STP, RSTP, or MSTP packets. If no
    # such packets are received for a sufficient period of time (about 3 seconds), the
    # interface is automatically given edge port status. When automatic edge port detection
    # is disabled on an interface, the BIG-IP never gives the interface edge port status
    # automatically. By default, automatic edge port detection is enabled on all interfaces.
    # :method: get_stp_auto_edge_port_detection_state
    # :call-seq:
    # get_stp_auto_edge_port_detection_state(interfaces)
    #
    # Parameters:
    # - interfaces String[] The interface names.

    ##
    # Gets the states indicating whether the specified interfaces are edge ports or not.
    # The spanning tree algorithms include important optimizations that can only be used
    # on so-called edge ports, i.e. interfaces that connect to end stations rather than
    # to other bridges.
    # :method: get_stp_edge_port_state
    # :call-seq:
    # get_stp_edge_port_state(interfaces)
    #
    # Parameters:
    # - interfaces String[] The interface names.

    ##
    # Gets the states indicating whether the specified interfaces will participate in the
    # spanning tree protocol. Disabling spanning tree protocol on an interface enables
    # learning and forwarding on it. The spanning tree algorithm then behaves as if the
    # interface did not exist. No STP, RSTP, or MSTP packets are transmitted or received
    # on the interface, and the spanning tree algorithm exerts no control over forwarding
    # or learning on the port. NOTE: Disabling spanning tree protocol on an interface which
    # is a configured member of a trunk disables spanning tree protocol on the trunk as
    # a whole. For a trunk to participate in spanning tree protocol, the protocol must
    # be enabled on all of its configured member interfaces.
    # :method: get_stp_enabled_state
    # :call-seq:
    # get_stp_enabled_state(interfaces)
    #
    # Parameters:
    # - interfaces String[] The interface names.

    ##
    # Gets the STP link types for the specified interfaces.
    # :method: get_stp_link_type
    # :call-seq:
    # get_stp_link_type(interfaces)
    #
    # Parameters:
    # - interfaces String[] The interface names.

    ##
    # Gets the states indicating whether RSTP or MSTP BPDUs (depending on the current STP
    # mode) to be sent on the specified interfaces, until such time as a legacy STP bridge
    # is detected again on those interfaces. Note: This method is only applicable when
    # the current STP mode is RSTP or MSTP.
    # :method: get_stp_protocol_detection_reset_state
    # :call-seq:
    # get_stp_protocol_detection_reset_state(interfaces)
    #
    # Parameters:
    # - interfaces String[] The interface names.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Resets the statistics of the specified interfaces.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(interfaces)
    #
    # Parameters:
    # - interfaces String[] The list of the interfaces.

    ##
    # Sets the states of the specified interface names.
    # :method: set_enabled_state
    # :call-seq:
    # set_enabled_state(interfaces ,states)
    #
    # Parameters:
    # - interfaces String[] The names of the specified interfaces.
    # - states EnabledState[] The states to set for the specified interfaces.

    ##
    # Sets the learning modes for the specified interfaces.
    # :method: set_learning_mode
    # :call-seq:
    # set_learning_mode(interfaces ,modes)
    #
    # Parameters:
    # - interfaces String[] The names of the specified interfaces.
    # - modes LearningMode[] The learning modes to set for the specified interfaces.

    ##
    # Sets the media types of the specified interface names. (settings for fixed, non-pluggable
    # interfaces). See set_media_fixed_or_sfp for a method you can use to set media type
    # and not have to choose whether to affect settings for fixed or sfp media.
    # :method: set_media
    # :call-seq:
    # set_media(interfaces ,media_types)
    #
    # Parameters:
    # - interfaces String[] The names of the specified interfaces.
    # - media_types MediaType[] The media types to set for the specified interfaces (e.g. auto, 100baseTX, 10baseT).

    ##
    # Set the media types of the specified interface names, conveniently choosing fixed
    # or SFP media automatically. When you set the media type using this method, the system
    # automatically affects the correct media based on whether the interface is a small
    # form factor pluggable (SFP) interface, or for combo ports (see get_dual_media_state
    # method) whether SFP is the preferred port. (When you get the setting you'll still
    # need to use the correct method, get_media or get_media_sfp.) You may manually affect
    # the interface settings more directly by using the set_media or set_media_sfp methods.
    # :method: set_media_fixed_or_sfp
    # :call-seq:
    # set_media_fixed_or_sfp(interfaces ,media_types)
    #
    # Parameters:
    # - interfaces String[] The names of the specified interfaces.
    # - media_types MediaType[] The media types to set for the specified interfaces (e.g. auto, 100baseTX, 10baseT).

    ##
    # Sets the SFP media types of the specified interface names.
    # :method: set_media_sfp
    # :call-seq:
    # set_media_sfp(interfaces ,media_types)
    #
    # Parameters:
    # - interfaces String[] The names of the specified interfaces.
    # - media_types MediaType[] The SFP media types to set for the specified interfaces (e.g. auto, 100baseTX, 10baseT).

    ##
    # Sets the SFP media types of the specified interface names.
    # :method: set_phy_master_slave_mode
    # :call-seq:
    # set_phy_master_slave_mode(interfaces ,modes)
    #
    # Parameters:
    # - interfaces String[] The names of the specified interfaces.
    # - modes PhyMasterSlaveMode[] The PHY master/slave modes to set for the specified interfaces.

    ##
    # Sets the states indicating that SFP is the preferred media. Only used for dual media
    # ports.
    # :method: set_prefer_sfp_state
    # :call-seq:
    # set_prefer_sfp_state(interfaces ,states)
    #
    # Parameters:
    # - interfaces String[] The names of the specified interfaces.
    # - states EnabledState[] The states to set for the specified interfaces.

    ##
    # Sets the configured/requested flow control types for the specified interfaces.
    # :method: set_requested_flow_control
    # :call-seq:
    # set_requested_flow_control(interfaces ,flow_controls)
    #
    # Parameters:
    # - interfaces String[] The interface names.
    # - flow_controls FlowControlType[] The configured/requested flow control types to set for the specified interface names.

    ##
    # Sets the states indicating whether automatic detection of edge port status for the
    # specified interfaces. When automatic edge port detection is enabled on an interface,
    # the BIG-IP monitors the interface for incoming STP, RSTP, or MSTP packets. If no
    # such packets are received for a sufficient period of time (about 3 seconds), the
    # interface is automatically given edge port status. When automatic edge port detection
    # is disabled on an interface, the BIG-IP never gives the interface edge port status
    # automatically. By default, automatic edge port detection is enabled on all interfaces.
    # :method: set_stp_auto_edge_port_detection_state
    # :call-seq:
    # set_stp_auto_edge_port_detection_state(interfaces ,states)
    #
    # Parameters:
    # - interfaces String[] The interface names.
    # - states EnabledState[] The auto edge-port detection states to set for the specified interface names.

    ##
    # Sets the states indicating whether the specified interfaces are edge ports or not.
    # The spanning tree algorithms include important optimizations that can only be used
    # on so-called edge ports, i.e. interfaces that connect to end stations rather than
    # to other bridges.
    # :method: set_stp_edge_port_state
    # :call-seq:
    # set_stp_edge_port_state(interfaces ,states)
    #
    # Parameters:
    # - interfaces String[] The interface names.
    # - states EnabledState[] The edge-port states to set for the specified interface names.

    ##
    # Sets the states indicating whether the specified interfaces will participate in the
    # spanning tree protocol. Disabling spanning tree protocol on an interface enables
    # learning and forwarding on it. The spanning tree algorithm then behaves as if the
    # interface did not exist. No STP, RSTP, or MSTP packets are transmitted or received
    # on the interface, and the spanning tree algorithm exerts no control over forwarding
    # or learning on the port. NOTE: Disabling spanning tree protocol on an interface which
    # is a configured member of a trunk disables spanning tree protocol on the trunk as
    # a whole. For a trunk to participate in spanning tree protocol, the protocol must
    # be enabled on all of its configured member interfaces.
    # :method: set_stp_enabled_state
    # :call-seq:
    # set_stp_enabled_state(interfaces ,states)
    #
    # Parameters:
    # - interfaces String[] The interface names.
    # - states EnabledState[] The STP enabled states to set for the specified interface names.

    ##
    # Sets the STP link types for the specified interfaces.
    # :method: set_stp_link_type
    # :call-seq:
    # set_stp_link_type(interfaces ,link_types)
    #
    # Parameters:
    # - interfaces String[] The interface names.
    # - link_types STPLinkType[] The STP link types to set for the specified interface names.

    ##
    # Sets the states indicating whether RSTP or MSTP BPDUs (depending on the current STP
    # mode) to be sent on the specified interfaces, until such time as a legacy STP bridge
    # is detected again on those interfaces. Note: This method is only applicable when
    # the current STP mode is RSTP or MSTP.
    # :method: set_stp_protocol_detection_reset_state
    # :call-seq:
    # set_stp_protocol_detection_reset_state(interfaces ,states)
    #
    # Parameters:
    # - interfaces String[] The interface names.
    # - states EnabledState[] The STP protocol detection reset states to set for the specified interface names.


  end
end
