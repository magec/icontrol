module IControl::Networking
  ##
  # The Trunk interface enables you to work with the definitions and attributes contained
  # in a device's trunk.
  class Trunk < IControl::Base

    set_id_name "trunks"

    class TrunkStatisticEntry < IControl::Base::Struct; end
    class TrunkStatistics < IControl::Base::Struct; end
    class DistributionHashOptionSequence < IControl::Base::Sequence ; end
    class LACPTimeoutOptionSequence < IControl::Base::Sequence ; end
    class LinkSelectionPolicySequence < IControl::Base::Sequence ; end
    class TrunkStatisticEntrySequence < IControl::Base::Sequence ; end
    # A list of frame distribution hashing options used to select which link to send the
    # frame on, to maintain packet order.
    class DistributionHashOption < IControl::Base::Enumeration; end
    # A list of LACP timeout options.
    class LACPTimeoutOption < IControl::Base::Enumeration; end
    # A list of link selection policies.
    class LinkSelectionPolicy < IControl::Base::Enumeration; end    ##
    # Adds the lists of interfaces to this trunk.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :interfaces The lists of interfaces to add to the specified trunks.
    def add_interface(opts)
      opts = check_params(opts,[:interfaces])
      super(opts)
    end

    ##
    # Creates this trunk.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [boolean] :lacp_states The LACP enabled states associated with the specified trunks.
    # @option opts [String[]] :interfaces The interfaces associated with the specified trunks.
    def create(opts)
      opts = check_params(opts,[:lacp_states,:interfaces])
      super(opts)
    end

    ##
    # Deletes all trunk.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_trunks
      super
    end

    ##
    # Deletes this trunk.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_trunk
      super
    end

    ##
    # Gets the states indicating whether LACP is operating in active or passive mode. When
    # operating in passive mode, LACP will not send LACP frames out LACP-enabled interfaces
    # or LACP-enabled trunk unless an LACP frame is first received on that interface or
    # trunk. When operating in active mode, LACP immediately begins sending LACP frames
    # from LACP-enabled interfaces and trunk.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def active_lacp_state
      super
    end

    ##
    # Gets the statistics of all trunk.
    # @rspec_example
    # @return [TrunkStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the number of configured links of this trunk.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def configured_member_count
      super
    end

    ##
    # Gets the frame distribution hashing option used by this trunk.
    # @rspec_example
    # @return [DistributionHashOption]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def distribution_hash_option
      super
    end

    ##
    # Gets the list of interfaces associated with this trunk.
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def interface
      super
    end

    ##
    # Gets the states indicating whether LACP is enabled/disabled for this trunk.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def lacp_enabled_state
      super
    end

    ##
    # Gets LACP timeout options for this trunk.
    # @rspec_example
    # @return [LACPTimeoutOption]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def lacp_timeout_option
      super
    end

    ##
    # Gets the link selection policies used by this trunk.
    # @rspec_example
    # @return [LinkSelectionPolicy]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def link_selection_policy
      super
    end

    ##
    # Gets a list of all trunk on this device.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the current operational media speeds of this trunk. Unit = Mbps. This will be
    # equivalent to the sum of the speeds of all operational links in a particular trunk.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def media_speed
      super
    end

    ##
    # Gets the media status of this trunk.
    # @rspec_example
    # @return [MediaStatus]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def media_status
      super
    end

    ##
    # Gets the current number of operational links of this trunk.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def operational_member_count
      super
    end

    ##
    # Gets the statistics of this trunk.
    # @rspec_example
    # @return [TrunkStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Gets the states indicating whether this trunk will participate in the spanning tree
    # protocol. Disabling spanning tree protocol on a trunk enables learning and forwarding
    # on it. The spanning tree algorithm then behaves as if the trunk did not exist. No
    # STP, RSTP, or MSTP packets are transmitted or received on the trunk, and the spanning
    # tree algorithm exerts no control over forwarding or learning on the port. NOTE: For
    # a trunk to participate in spanning tree protocol, the protocol must be enabled on
    # all of its configured member interfaces.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def stp_enabled_state
      super
    end

    ##
    # Gets the states indicating whether RSTP or MSTP BPDUs (depending on the current STP
    # mode) to be sent on this trunk, until such time as a legacy STP bridge is detected
    # again on those trunk. Note: This method is only applicable when the current STP mode
    # is RSTP or MSTP.
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
    # Removes all interfaces from this trunk.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_interfaces
      super
    end

    ##
    # Removes the lists of interfaces from this trunk.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :interfaces The lists of interfaces to remove from the specified trunks.
    def remove_interface(opts)
      opts = check_params(opts,[:interfaces])
      super(opts)
    end

    ##
    # Resets the statistics of this trunk.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Gets the states indicating whether LACP is operating in active or passive mode. When
    # operating in passive mode, LACP will not send LACP frames out LACP-enabled interfaces
    # or LACP-enabled trunk unless an LACP frame is first received on that interface or
    # trunk. When operating in active mode, LACP immediately begins sending LACP frames
    # from LACP-enabled interfaces and trunk.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states indicating whether active LACP is enabled/disabled.
    def set_active_lacp_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the frame distribution hashing option used by this trunk.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::Trunk::DistributionHashOption] :hashing_options The frame distribution hashing option used by the specified trunks..
    def set_distribution_hash_option(opts)
      opts = check_params(opts,[:hashing_options])
      super(opts)
    end

    ##
    # Sets the states indicating whether LACP is enabled/disabled for this trunk.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states indicating whether LACP is enabled/disabled for the specified trunks.
    def set_lacp_enabled_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Gets LACP timeout options for this trunk.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::Trunk::LACPTimeoutOption] :timeout_options The LACP timeout options for the specified trunks.
    def set_lacp_timeout_option(opts)
      opts = check_params(opts,[:timeout_options])
      super(opts)
    end

    ##
    # Sets the link selection policies used by this trunk.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::Trunk::LinkSelectionPolicy] :policies The link selection policies used by the specified trunks.
    def set_link_selection_policy(opts)
      opts = check_params(opts,[:policies])
      super(opts)
    end

    ##
    # Sets the states indicating whether this trunk will participate in the spanning tree
    # protocol. Disabling spanning tree protocol on a trunk enables learning and forwarding
    # on it. The spanning tree algorithm then behaves as if the trunk did not exist. No
    # STP, RSTP, or MSTP packets are transmitted or received on the trunk, and the spanning
    # tree algorithm exerts no control over forwarding or learning on the port. NOTE: For
    # a trunk to participate in spanning tree protocol, the protocol must be enabled on
    # all of its configured member interfaces.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The STP enabled states to set for the specified interface names.
    def set_stp_enabled_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the states indicating whether RSTP or MSTP BPDUs (depending on the current STP
    # mode) to be sent on this trunk, until such time as a legacy STP bridge is detected
    # again on those trunk. Note: This method is only applicable when the current STP mode
    # is RSTP or MSTP.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The STP protocol detection reset states to set for the specified interface names.
    def set_stp_protocol_detection_reset_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # A struct that describes a trunk's general statistics.
    # @attr [String] trunk_name The trunk name.
    # @attr [IControl::Common::StatisticSequence] statistics The statistics.
    class TrunkStatisticEntry < IControl::Base::Struct
      icontrol_attribute :trunk_name, String
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes trunk statistics and timestamp.
    # @attr [IControl::Networking::Trunk::TrunkStatisticEntrySequence] statistics The statistics for a sequence of trunks.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class TrunkStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::Networking::Trunk::TrunkStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of hashing options.
    class DistributionHashOptionSequence < IControl::Base::Sequence ; end
    ## A sequence of LACP timeout options.
    class LACPTimeoutOptionSequence < IControl::Base::Sequence ; end
    ## A sequence of link selection policies.
    class LinkSelectionPolicySequence < IControl::Base::Sequence ; end
    ## A sequence of trunk statistics.
    class TrunkStatisticEntrySequence < IControl::Base::Sequence ; end
    # A list of frame distribution hashing options used to select which link to send the
    # frame on, to maintain packet order.
    class DistributionHashOption < IControl::Base::Enumeration
      # Hash on the destination MAC address.
      DISTRIBUTION_HASH_OPTION_DST_MAC = :DISTRIBUTION_HASH_OPTION_DST_MAC
      # Hash on the source and destination MAC addresses.
      DISTRIBUTION_HASH_OPTION_SRC_DST_MAC = :DISTRIBUTION_HASH_OPTION_SRC_DST_MAC
      # Hash on the source, destination MAC and IP addresses.
      DISTRIBUTION_HASH_OPTION_SRC_DST_MAC_IP = :DISTRIBUTION_HASH_OPTION_SRC_DST_MAC_IP
    end


    # A list of LACP timeout options.
    class LACPTimeoutOption < IControl::Base::Enumeration
      # LACP long timeout
      LACP_TIMEOUT_LONG = :LACP_TIMEOUT_LONG
      # LACP short timeout.
      LACP_TIMEOUT_SHORT = :LACP_TIMEOUT_SHORT
    end


    # A list of link selection policies.
    class LinkSelectionPolicy < IControl::Base::Enumeration
      # Link selection is based on link members having the same media			 speeds, using full duplex, and other factors.
      LINK_SELECTION_AUTO = :LINK_SELECTION_AUTO
      # Link selection is based on maximum bandwidth.
      LINK_SELECTION_MAXIMUM_BANDWIDTH = :LINK_SELECTION_MAXIMUM_BANDWIDTH
    end


  end
end
