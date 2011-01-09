module IControl::Networking
  ##
  # The ARP interface enables you to work with the ARP table and entries.
  class ARP < IControl::Base

    set_id_name "entries"

    class ARPEntry < IControl::Base::Struct; end
    class ARPStatistics < IControl::Base::Struct; end
    class NDPEntry < IControl::Base::Struct; end
    class NDPStatistics < IControl::Base::Struct; end
    class StaticEntry < IControl::Base::Struct; end
    class ARPEntrySequence < IControl::Base::Sequence ; end
    class NDPEntrySequence < IControl::Base::Sequence ; end
    class NDPStateSequence < IControl::Base::Sequence ; end
    class StaticEntrySequence < IControl::Base::Sequence ; end
    # A list of NDP (Neighbor Discovery Protocol) states.
    class NDPState < IControl::Base::Enumeration; end    ##
    # Creates/adds this static ARP/NDP entrie to the ARP/NDP table.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def add_static_entry
      super
    end

    ##
    # Deletes all dynamic ARP entrie from the ARP table.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_dynamic_arps
      super
    end

    ##
    # Deletes all dynamic NDP entrie from the NDP table.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_dynamic_ndps
      super
    end

    ##
    # Deletes all static ARP/NDP entrie from the ARP/NDP table.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_static_entries
      super
    end

    ##
    # Deletes this static ARP/NDP entrie from the ARP/NDP table.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_static_entry
      super
    end

    ##
    # Gets the dynamic ARP statistics for this ARP addresses.
    # @rspec_example
    # @return [ARPStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :arp_addresses The ARP IP addresses.
    def dynamic_arp(opts)
      check_params(opts,[:arp_addresses])
      super
    end

    ##
    # Gets the dynamic NDP statistics for this NDP addresses.
    # @rspec_example
    # @return [NDPStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :ndp_addresses The NDP IP addresses.
    def dynamic_ndp(opts)
      check_params(opts,[:ndp_addresses])
      super
    end

    ##
    # Gets a list of all static ARP/NDP entrie.
    # @rspec_example
    # @return [StaticEntry]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def static_entry
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
    # A struct that describes an dynamic ARP entry/statistics.
    # @attr [String] arp_address The ARP entry's IP address.
    # @attr [String] mac_address The netmask of the destination.
    # @attr [String] vlan The VLAN name for the destination.
    # @attr [Numeric] expiration The MTU to destination.
    # @attr [Object] is_down The flag indicating whether this entry is "down". "Down" entries continue		 to exist for a period of time after they are marked down, in order to		 immediately propagate the ERR_REJECT code to subsequent callers of arp_resolve().
    # @attr [Object] is_dynamic The flag indicating whether this is a dynamic entry.
    # @attr [Object] is_resolved The flag indicating whether this entry has a valid IPv4->MAC binding.
    # @attr [Object] is_keepalive The flag indicating whether the dynamic entry will automatically attempt			to refresh itself during normal use.
    class ARPEntry < IControl::Base::Struct
      icontrol_attribute :arp_address, String
      icontrol_attribute :mac_address, String
      icontrol_attribute :vlan, String
      icontrol_attribute :expiration, Numeric
      icontrol_attribute :is_down, Object
      icontrol_attribute :is_dynamic, Object
      icontrol_attribute :is_resolved, Object
      icontrol_attribute :is_keepalive, Object
    end

    ##
    # A struct that describes ARP statistics and timestamp.
    # @attr [IControl::Networking::ARP::ARPEntrySequence] statistics The statistics for a sequence of ARP entries.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class ARPStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::Networking::ARP::ARPEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes an dynamic NDP entry/statistics.
    # @attr [String] ndp_address The NDP entry's IP address.
    # @attr [String] mac_address The netmask of the destination.
    # @attr [String] vlan The VLAN name for the destination.
    # @attr [Numeric] expiration The MTU to destination.
    # @attr [Object] is_router The flag indicating whether this entry is acting as a router.
    # @attr [IControl::Networking::ARP::NDPState] state The flag indicating the state of this entry.
    class NDPEntry < IControl::Base::Struct
      icontrol_attribute :ndp_address, String
      icontrol_attribute :mac_address, String
      icontrol_attribute :vlan, String
      icontrol_attribute :expiration, Numeric
      icontrol_attribute :is_router, Object
      icontrol_attribute :state, IControl::Networking::ARP::NDPState
    end

    ##
    # A struct that describes NDP statistics and timestamp.
    # @attr [IControl::Networking::ARP::NDPEntrySequence] statistics The statistics for a sequence of NDP entries.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class NDPStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::Networking::ARP::NDPEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes an ARP or NDP entry.
    # @attr [String] address The ARP/NDP entry's IP address.
    # @attr [String] mac_address The MAC address.
    class StaticEntry < IControl::Base::Struct
      icontrol_attribute :address, String
      icontrol_attribute :mac_address, String
    end


    ## A sequence of ARP table entries.
    class ARPEntrySequence < IControl::Base::Sequence ; end
    ## A sequence of NDP entries.
    class NDPEntrySequence < IControl::Base::Sequence ; end
    ## A sequence of NDP states.
    class NDPStateSequence < IControl::Base::Sequence ; end
    ## A sequence of static ARP/NDP entries.
    class StaticEntrySequence < IControl::Base::Sequence ; end
    # A list of NDP (Neighbor Discovery Protocol) states.
    class NDPState < IControl::Base::Enumeration
      # The incomplete state.
      NDP_STATE_INCOMPLETE = :NDP_STATE_INCOMPLETE
      # The reachable state.
      NDP_STATE_REACHABLE = :NDP_STATE_REACHABLE
      # The stale state.
      NDP_STATE_STALE = :NDP_STATE_STALE
      # The delay state.
      NDP_STATE_DELAY = :NDP_STATE_DELAY
      # The probe state.
      NDP_STATE_PROBE = :NDP_STATE_PROBE
      # The permanent state.
      NDP_STATE_PERMANENT = :NDP_STATE_PERMANENT
    end


  end
end
