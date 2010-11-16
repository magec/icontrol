module IControl::Networking
  ##
  # The Trunk interface enables you to work with the definitions and attributes contained
  # in a device's trunk.
  class Trunk < IControl::Base
    class DistributionHashOption < IControl::Base::Enumeration; end
    class LACPTimeoutOption < IControl::Base::Enumeration; end
    class LinkSelectionPolicy < IControl::Base::Enumeration; end
    class TrunkStatisticEntry < IControl::Base::Struct; end
    class TrunkStatistics < IControl::Base::Struct; end    ## A sequence of hashing options.
    class DistributionHashOptionSequence < IControl::Base::Sequence ; end## A sequence of LACP timeout options.
    class LACPTimeoutOptionSequence < IControl::Base::Sequence ; end## A sequence of link selection policies.
    class LinkSelectionPolicySequence < IControl::Base::Sequence ; end## A sequence of trunk statistics.
    class TrunkStatisticEntrySequence < IControl::Base::Sequence ; end##
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

    ##
    # A list of LACP timeout options.
    class LACPTimeoutOption < IControl::Base::Enumeration
      # LACP long timeout
      LACP_TIMEOUT_LONG = :LACP_TIMEOUT_LONG
      # LACP short timeout.
      LACP_TIMEOUT_SHORT = :LACP_TIMEOUT_SHORT
    end

    ##
    # A list of link selection policies.
    class LinkSelectionPolicy < IControl::Base::Enumeration
      # Link selection is based on link members having the same media			 speeds, using full duplex, and other factors.
      LINK_SELECTION_AUTO = :LINK_SELECTION_AUTO
      # Link selection is based on maximum bandwidth.
      LINK_SELECTION_MAXIMUM_BANDWIDTH = :LINK_SELECTION_MAXIMUM_BANDWIDTH
    end

    ##
    # A struct that describes a trunk's general statistics.
    class TrunkStatisticEntry < IControl::Base::Struct
      # The trunk name.
      icontrol_attribute :trunk_name, String
      # The statistics.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes trunk statistics and timestamp.
    class TrunkStatistics < IControl::Base::Struct
      # The statistics for a sequence of trunks.
      icontrol_attribute :statistics, IControl::Networking::Trunk::TrunkStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Adds the lists of interfaces to the specified trunks.
    # :method: add_interface
    # :call-seq:
    # add_interface(trunks ,interfaces)
    #
    # Parameters:
    # - trunks String[] The trunk names.
    # - interfaces String[][] The lists of interfaces to add to the specified trunks.

    ##
    # Creates the specified trunks.
    # :method: create
    # :call-seq:
    # create(trunks ,lacp_states ,interfaces)
    #
    # Parameters:
    # - trunks String[] The trunk names.
    # - lacp_states boolean[] The LACP enabled states associated with the specified trunks.
    # - interfaces String[][] The interfaces associated with the specified trunks.

    ##
    # Deletes all trunks.
    # :method: delete_all_trunks

    ##
    # Deletes the specified trunks.
    # :method: delete_trunk
    # :call-seq:
    # delete_trunk(trunks)
    #
    # Parameters:
    # - trunks String[] The trunk names.

    ##
    # Gets the states indicating whether LACP is operating in active or passive mode. When
    # operating in passive mode, LACP will not send LACP frames out LACP-enabled interfaces
    # or LACP-enabled trunks unless an LACP frame is first received on that interface or
    # trunk. When operating in active mode, LACP immediately begins sending LACP frames
    # from LACP-enabled interfaces and trunks.
    # :method: get_active_lacp_state
    # :call-seq:
    # get_active_lacp_state(trunks)
    #
    # Parameters:
    # - trunks String[] The trunk names.

    ##
    # Gets the statistics of all trunks.
    # :method: get_all_statistics

    ##
    # Gets the number of configured links of the specified trunks.
    # :method: get_configured_member_count
    # :call-seq:
    # get_configured_member_count(trunks)
    #
    # Parameters:
    # - trunks String[] The trunk names.

    ##
    # Gets the frame distribution hashing option used by the specified trunks.
    # :method: get_distribution_hash_option
    # :call-seq:
    # get_distribution_hash_option(trunks)
    #
    # Parameters:
    # - trunks String[] The trunk names.

    ##
    # Gets the list of interfaces associated with the specified trunks.
    # :method: get_interface
    # :call-seq:
    # get_interface(trunks)
    #
    # Parameters:
    # - trunks String[] The trunk names.

    ##
    # Gets the states indicating whether LACP is enabled/disabled for the specified trunks.
    # :method: get_lacp_enabled_state
    # :call-seq:
    # get_lacp_enabled_state(trunks)
    #
    # Parameters:
    # - trunks String[] The trunk names.

    ##
    # Gets LACP timeout options for the specified trunks.
    # :method: get_lacp_timeout_option
    # :call-seq:
    # get_lacp_timeout_option(trunks)
    #
    # Parameters:
    # - trunks String[] The trunk names.

    ##
    # Gets the link selection policies used by the specified trunks.
    # :method: get_link_selection_policy
    # :call-seq:
    # get_link_selection_policy(trunks)
    #
    # Parameters:
    # - trunks String[] The trunk names.

    ##
    # Gets a list of all trunks on this device.
    # :method: get_list

    ##
    # Gets the current operational media speeds of the specified trunks. Unit = Mbps. This
    # will be equivalent to the sum of the speeds of all operational links in a particular
    # trunk.
    # :method: get_media_speed
    # :call-seq:
    # get_media_speed(trunks)
    #
    # Parameters:
    # - trunks String[] The trunk names.

    ##
    # Gets the media status of the specified trunks.
    # :method: get_media_status
    # :call-seq:
    # get_media_status(trunks)
    #
    # Parameters:
    # - trunks String[] The trunk names.

    ##
    # Gets the current number of operational links of the specified trunks.
    # :method: get_operational_member_count
    # :call-seq:
    # get_operational_member_count(trunks)
    #
    # Parameters:
    # - trunks String[] The trunk names.

    ##
    # Gets the statistics of the specified trunks.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(trunks)
    #
    # Parameters:
    # - trunks String[] The list of the trunks to query statistics.

    ##
    # Gets the states indicating whether the specified trunks will participate in the spanning
    # tree protocol. Disabling spanning tree protocol on a trunk enables learning and forwarding
    # on it. The spanning tree algorithm then behaves as if the trunk did not exist. No
    # STP, RSTP, or MSTP packets are transmitted or received on the trunk, and the spanning
    # tree algorithm exerts no control over forwarding or learning on the port. NOTE: For
    # a trunk to participate in spanning tree protocol, the protocol must be enabled on
    # all of its configured member interfaces.
    # :method: get_stp_enabled_state
    # :call-seq:
    # get_stp_enabled_state(trunks)
    #
    # Parameters:
    # - trunks String[] The trunk names.

    ##
    # Gets the states indicating whether RSTP or MSTP BPDUs (depending on the current STP
    # mode) to be sent on the specified trunks, until such time as a legacy STP bridge
    # is detected again on those trunks. Note: This method is only applicable when the
    # current STP mode is RSTP or MSTP.
    # :method: get_stp_protocol_detection_reset_state
    # :call-seq:
    # get_stp_protocol_detection_reset_state(trunks)
    #
    # Parameters:
    # - trunks String[] The trunk names.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Removes all interfaces from the specified trunks.
    # :method: remove_all_interfaces
    # :call-seq:
    # remove_all_interfaces(trunks)
    #
    # Parameters:
    # - trunks String[] The trunk names.

    ##
    # Removes the lists of interfaces from the specified trunks.
    # :method: remove_interface
    # :call-seq:
    # remove_interface(trunks ,interfaces)
    #
    # Parameters:
    # - trunks String[] The trunk names.
    # - interfaces String[][] The lists of interfaces to remove from the specified trunks.

    ##
    # Resets the statistics of the specified trunks.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(trunks)
    #
    # Parameters:
    # - trunks String[] The list of the trunks whose statistics will be reset.

    ##
    # Gets the states indicating whether LACP is operating in active or passive mode. When
    # operating in passive mode, LACP will not send LACP frames out LACP-enabled interfaces
    # or LACP-enabled trunks unless an LACP frame is first received on that interface or
    # trunk. When operating in active mode, LACP immediately begins sending LACP frames
    # from LACP-enabled interfaces and trunks.
    # :method: set_active_lacp_state
    # :call-seq:
    # set_active_lacp_state(trunks ,states)
    #
    # Parameters:
    # - trunks String[] The trunk names.
    # - states EnabledState[] The states indicating whether active LACP is enabled/disabled.

    ##
    # Sets the frame distribution hashing option used by the specified trunks.
    # :method: set_distribution_hash_option
    # :call-seq:
    # set_distribution_hash_option(trunks ,hashing_options)
    #
    # Parameters:
    # - trunks String[] The trunk names.
    # - hashing_options DistributionHashOption[] The frame distribution hashing option used by the specified trunks..

    ##
    # Sets the states indicating whether LACP is enabled/disabled for the specified trunks.
    # :method: set_lacp_enabled_state
    # :call-seq:
    # set_lacp_enabled_state(trunks ,states)
    #
    # Parameters:
    # - trunks String[] The trunk names.
    # - states EnabledState[] The states indicating whether LACP is enabled/disabled for the specified trunks.

    ##
    # Gets LACP timeout options for the specified trunks.
    # :method: set_lacp_timeout_option
    # :call-seq:
    # set_lacp_timeout_option(trunks ,timeout_options)
    #
    # Parameters:
    # - trunks String[] The trunk names.
    # - timeout_options LACPTimeoutOption[] The LACP timeout options for the specified trunks.

    ##
    # Sets the link selection policies used by the specified trunks.
    # :method: set_link_selection_policy
    # :call-seq:
    # set_link_selection_policy(trunks ,policies)
    #
    # Parameters:
    # - trunks String[] The trunk names.
    # - policies LinkSelectionPolicy[] The link selection policies used by the specified trunks.

    ##
    # Sets the states indicating whether the specified trunks will participate in the spanning
    # tree protocol. Disabling spanning tree protocol on a trunk enables learning and forwarding
    # on it. The spanning tree algorithm then behaves as if the trunk did not exist. No
    # STP, RSTP, or MSTP packets are transmitted or received on the trunk, and the spanning
    # tree algorithm exerts no control over forwarding or learning on the port. NOTE: For
    # a trunk to participate in spanning tree protocol, the protocol must be enabled on
    # all of its configured member interfaces.
    # :method: set_stp_enabled_state
    # :call-seq:
    # set_stp_enabled_state(trunks ,states)
    #
    # Parameters:
    # - trunks String[] The trunk names.
    # - states EnabledState[] The STP enabled states to set for the specified interface names.

    ##
    # Sets the states indicating whether RSTP or MSTP BPDUs (depending on the current STP
    # mode) to be sent on the specified trunks, until such time as a legacy STP bridge
    # is detected again on those trunks. Note: This method is only applicable when the
    # current STP mode is RSTP or MSTP.
    # :method: set_stp_protocol_detection_reset_state
    # :call-seq:
    # set_stp_protocol_detection_reset_state(trunks ,states)
    #
    # Parameters:
    # - trunks String[] The trunk names.
    # - states EnabledState[] The STP protocol detection reset states to set for the specified interface names.


  end
end
