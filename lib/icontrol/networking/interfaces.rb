module IControl::Networking
  ##
  # The Interface interface enables you to work with the definitions and attributes contained
  # in a device's interface.
  class Interfaces < IControl::Base

    set_id_name "interfaces"

    class InterfaceMediaOption < IControl::Base::Struct; end
    class InterfaceStatisticEntry < IControl::Base::Struct; end
    class InterfaceStatistics < IControl::Base::Struct; end
    class InterfaceMediaOptionSequence < IControl::Base::Sequence ; end
    class InterfaceStatisticEntrySequence < IControl::Base::Sequence ; end
    class MediaTypeSequence < IControl::Base::Sequence ; end
    class MediaTypeSequenceSequence < IControl::Base::SequenceSequence ; end
    # A list of interface media types.
    class MediaType < IControl::Base::Enumeration; end    ##
    # Gets the active media types of this interface names.
    # @rspec_example
    # @return [MediaType]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def active_media
      super
    end

    ##
    # Gets the actual/effective flow control types for this interface.
    # @rspec_example
    # @return [FlowControlType]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def actual_flow_control
      super
    end

    ##
    # Gets the statistics of all interface.
    # @rspec_example
    # @return [InterfaceStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the states indicating whether the interface is a dual media port supporting
    # both fixed copper and SFP.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def dual_media_state
      super
    end

    ##
    # Gets the states of this interface names.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def enabled_state
      super
    end

    ##
    # Gets the configured learning modes of this interface.
    # @rspec_example
    # @return [LearningMode]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def learning_mode
      super
    end

    ##
    # Gets a list of all interface on this device.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the MAC addresses of this interface names.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def mac_address
      super
    end

    ##
    # Gets the configured media types of this interface names (settings for fixed, non-pluggable
    # interface).
    # @rspec_example
    # @return [MediaType]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def media
      super
    end

    ##
    # Gets the media options for this interface.
    # @rspec_example
    # @return [InterfaceMediaOption]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def media_option
      super
    end

    ##
    # Gets the SFP media options for this interface.
    # @rspec_example
    # @return [InterfaceMediaOption]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def media_option_sfp
      super
    end

    ##
    # Gets the configured SFP media types of this interface names.
    # @rspec_example
    # @return [MediaType]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def media_sfp
      super
    end

    ##
    # Gets the media speeds of this interface names. Unit = Mbps.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def media_speed
      super
    end

    ##
    # Gets the media status of this interface names.
    # @rspec_example
    # @return [MediaStatus]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def media_status
      super
    end

    ##
    # Gets the MTUs of this interface names.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def mtu
      super
    end

    ##
    # Gets the configured SFP media types of this interface names.
    # @rspec_example
    # @return [PhyMasterSlaveMode]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def phy_master_slave_mode
      super
    end

    ##
    # Gets the states indicating that SFP is the preferred media. Only used for dual media
    # ports.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def prefer_sfp_state
      super
    end

    ##
    # Gets the configured/requested flow control types for this interface.
    # @rspec_example
    # @return [FlowControlType]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def requested_flow_control
      super
    end

    ##
    # Gets the states indicating whether the interface supports SFP media.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def sfp_media_state
      super
    end

    ##
    # Gets the statistics of this interface.
    # @rspec_example
    # @return [InterfaceStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Gets the active states indicating whether this interface are edge ports or not. The
    # spanning tree algorithms include important optimizations that can only be used on
    # so-called edge ports, i.e. interface that connect to end stations rather than to
    # other bridges. Note: This active state is reported by STP daemon.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def stp_active_edge_port_state
      super
    end

    ##
    # Gets the states indicating whether automatic detection of edge port status for this
    # interface. When automatic edge port detection is enabled on an interface, the BIG-IP
    # monitors the interface for incoming STP, RSTP, or MSTP packets. If no such packets
    # are received for a sufficient period of time (about 3 seconds), the interface is
    # automatically given edge port status. When automatic edge port detection is disabled
    # on an interface, the BIG-IP never gives the interface edge port status automatically.
    # By default, automatic edge port detection is enabled on all interface.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def stp_auto_edge_port_detection_state
      super
    end

    ##
    # Gets the states indicating whether this interface are edge ports or not. The spanning
    # tree algorithms include important optimizations that can only be used on so-called
    # edge ports, i.e. interface that connect to end stations rather than to other bridges.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def stp_edge_port_state
      super
    end

    ##
    # Gets the states indicating whether this interface will participate in the spanning
    # tree protocol. Disabling spanning tree protocol on an interface enables learning
    # and forwarding on it. The spanning tree algorithm then behaves as if the interface
    # did not exist. No STP, RSTP, or MSTP packets are transmitted or received on the interface,
    # and the spanning tree algorithm exerts no control over forwarding or learning on
    # the port. NOTE: Disabling spanning tree protocol on an interface which is a configured
    # member of a trunk disables spanning tree protocol on the trunk as a whole. For a
    # trunk to participate in spanning tree protocol, the protocol must be enabled on all
    # of its configured member interface.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def stp_enabled_state
      super
    end

    ##
    # Gets the STP link types for this interface.
    # @rspec_example
    # @return [STPLinkType]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def stp_link_type
      super
    end

    ##
    # Gets the states indicating whether RSTP or MSTP BPDUs (depending on the current STP
    # mode) to be sent on this interface, until such time as a legacy STP bridge is detected
    # again on those interface. Note: This method is only applicable when the current STP
    # mode is RSTP or MSTP.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def stp_protocol_detection_reset_state
      super
    end

    ##
    # Gets the version information for this interface.
    # @rspec_example
    # @return [String]
    def version
      super
    end

    ##
    # Resets the statistics of this interface.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the states of this interface names.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set for the specified interfaces.
    def set_enabled_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the learning modes for this interface.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::LearningMode] :modes The learning modes to set for the specified interfaces.
    def set_learning_mode(opts)
      check_params(opts,[:modes])
      super
    end

    ##
    # Sets the media types of this interface names. (settings for fixed, non-pluggable
    # interface). See set_media_fixed_or_sfp for a method you can use to set media type
    # and not have to choose whether to affect settings for fixed or sfp media.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::Interfaces::MediaType] :media_types The media types to set for the specified interfaces (e.g. auto, 100baseTX, 10baseT).
    def set_media(opts)
      check_params(opts,[:media_types])
      super
    end

    ##
    # Set the media types of this interface names, conveniently choosing fixed or SFP media
    # automatically. When you set the media type using this method, the system automatically
    # affects the correct media based on whether the interface is a small form factor pluggable
    # (SFP) interface, or for combo ports (see get_dual_media_state method) whether SFP
    # is the preferred port. (When you get the setting you'll still need to use the correct
    # method, get_media or get_media_sfp.) You may manually affect the interface settings
    # more directly by using the set_media or set_media_sfp methods.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::Interfaces::MediaType] :media_types The media types to set for the specified interfaces (e.g. auto, 100baseTX, 10baseT).
    def set_media_fixed_or_sfp(opts)
      check_params(opts,[:media_types])
      super
    end

    ##
    # Sets the SFP media types of this interface names.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::Interfaces::MediaType] :media_types The SFP media types to set for the specified interfaces (e.g. auto, 100baseTX, 10baseT).
    def set_media_sfp(opts)
      check_params(opts,[:media_types])
      super
    end

    ##
    # Sets the SFP media types of this interface names.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::PhyMasterSlaveMode] :modes The PHY master/slave modes to set for the specified interfaces.
    def set_phy_master_slave_mode(opts)
      check_params(opts,[:modes])
      super
    end

    ##
    # Sets the states indicating that SFP is the preferred media. Only used for dual media
    # ports.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set for the specified interfaces.
    def set_prefer_sfp_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the configured/requested flow control types for this interface.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::FlowControlType] :flow_controls The configured/requested flow control types to set for the specified interface names.
    def set_requested_flow_control(opts)
      check_params(opts,[:flow_controls])
      super
    end

    ##
    # Sets the states indicating whether automatic detection of edge port status for this
    # interface. When automatic edge port detection is enabled on an interface, the BIG-IP
    # monitors the interface for incoming STP, RSTP, or MSTP packets. If no such packets
    # are received for a sufficient period of time (about 3 seconds), the interface is
    # automatically given edge port status. When automatic edge port detection is disabled
    # on an interface, the BIG-IP never gives the interface edge port status automatically.
    # By default, automatic edge port detection is enabled on all interface.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The auto edge-port detection states to set for the specified interface names.
    def set_stp_auto_edge_port_detection_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the states indicating whether this interface are edge ports or not. The spanning
    # tree algorithms include important optimizations that can only be used on so-called
    # edge ports, i.e. interface that connect to end stations rather than to other bridges.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The edge-port states to set for the specified interface names.
    def set_stp_edge_port_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the states indicating whether this interface will participate in the spanning
    # tree protocol. Disabling spanning tree protocol on an interface enables learning
    # and forwarding on it. The spanning tree algorithm then behaves as if the interface
    # did not exist. No STP, RSTP, or MSTP packets are transmitted or received on the interface,
    # and the spanning tree algorithm exerts no control over forwarding or learning on
    # the port. NOTE: Disabling spanning tree protocol on an interface which is a configured
    # member of a trunk disables spanning tree protocol on the trunk as a whole. For a
    # trunk to participate in spanning tree protocol, the protocol must be enabled on all
    # of its configured member interface.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The STP enabled states to set for the specified interface names.
    def set_stp_enabled_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the STP link types for this interface.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::STPLinkType] :link_types The STP link types to set for the specified interface names.
    def set_stp_link_type(opts)
      check_params(opts,[:link_types])
      super
    end

    ##
    # Sets the states indicating whether RSTP or MSTP BPDUs (depending on the current STP
    # mode) to be sent on this interface, until such time as a legacy STP bridge is detected
    # again on those interface. Note: This method is only applicable when the current STP
    # mode is RSTP or MSTP.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The STP protocol detection reset states to set for the specified interface names.
    def set_stp_protocol_detection_reset_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # A struct that describes an interface's media options.
    # @attr [String] interface_name The interface name.
    # @attr [IControl::Networking::Interfaces::MediaTypeSequence] media_options The media options for this interface.
    class InterfaceMediaOption < IControl::Base::Struct
      icontrol_attribute :interface_name, String
      icontrol_attribute :media_options, IControl::Networking::Interfaces::MediaTypeSequence
    end

    ##
    # A struct that describes an interface's general statistics.
    # @attr [String] interface_name The interface name.
    # @attr [IControl::Common::StatisticSequence] statistics The statistics.
    class InterfaceStatisticEntry < IControl::Base::Struct
      icontrol_attribute :interface_name, String
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes network interface statistics and timestamp.
    # @attr [IControl::Networking::Interfaces::InterfaceStatisticEntrySequence] statistics The statistics for a sequence of network interfaces.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class InterfaceStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::Networking::Interfaces::InterfaceStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of interface media options.
    class InterfaceMediaOptionSequence < IControl::Base::Sequence ; end
    ## A sequence of network interface statistics.
    class InterfaceStatisticEntrySequence < IControl::Base::Sequence ; end
    ## A sequence of interface media types.
    class MediaTypeSequence < IControl::Base::Sequence ; end
    ## A alias for sequence of interface media types.
    class MediaTypeSequenceSequence < IControl::Base::SequenceSequence ; end
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


  end
end
