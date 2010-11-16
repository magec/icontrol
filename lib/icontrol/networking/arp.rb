module IControl::Networking
  ##
  # The ARP interface enables you to work with the ARP table and entries.
  class ARP < IControl::Base
    class NDPState < IControl::Base::Enumeration; end
    class ARPEntry < IControl::Base::Struct; end
    class ARPStatistics < IControl::Base::Struct; end
    class NDPEntry < IControl::Base::Struct; end
    class NDPStatistics < IControl::Base::Struct; end
    class StaticEntry < IControl::Base::Struct; end    ## A sequence of ARP table entries.
    class ARPEntrySequence < IControl::Base::Sequence ; end## A sequence of NDP entries.
    class NDPEntrySequence < IControl::Base::Sequence ; end## A sequence of NDP states.
    class NDPStateSequence < IControl::Base::Sequence ; end## A sequence of static ARP/NDP entries.
    class StaticEntrySequence < IControl::Base::Sequence ; end##
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

    ##
    # A struct that describes an dynamic ARP entry/statistics.
    class ARPEntry < IControl::Base::Struct
      # The ARP entry's IP address.
      icontrol_attribute :arp_address, String
      # The netmask of the destination.
      icontrol_attribute :mac_address, String
      # The VLAN name for the destination.
      icontrol_attribute :vlan, String
      # The MTU to destination.
      icontrol_attribute :expiration, Numeric
      # The flag indicating whether this entry is "down". "Down" entries continue		 to exist
      # for a period of time after they are marked down, in order to		 immediately propagate
      # the ERR_REJECT code to subsequent callers of arp_resolve().
      icontrol_attribute :is_down, Object
      # The flag indicating whether this is a dynamic entry.
      icontrol_attribute :is_dynamic, Object
      # The flag indicating whether this entry has a valid IPv4->MAC binding.
      icontrol_attribute :is_resolved, Object
      # The flag indicating whether the dynamic entry will automatically attempt			to refresh
      # itself during normal use.
      icontrol_attribute :is_keepalive, Object
    end

    ##
    # A struct that describes ARP statistics and timestamp.
    class ARPStatistics < IControl::Base::Struct
      # The statistics for a sequence of ARP entries.
      icontrol_attribute :statistics, IControl::Networking::ARP::ARPEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes an dynamic NDP entry/statistics.
    class NDPEntry < IControl::Base::Struct
      # The NDP entry's IP address.
      icontrol_attribute :ndp_address, String
      # The netmask of the destination.
      icontrol_attribute :mac_address, String
      # The VLAN name for the destination.
      icontrol_attribute :vlan, String
      # The MTU to destination.
      icontrol_attribute :expiration, Numeric
      # The flag indicating whether this entry is acting as a router.
      icontrol_attribute :is_router, Object
      # The flag indicating the state of this entry.
      icontrol_attribute :state, IControl::Networking::ARP::NDPState
    end

    ##
    # A struct that describes NDP statistics and timestamp.
    class NDPStatistics < IControl::Base::Struct
      # The statistics for a sequence of NDP entries.
      icontrol_attribute :statistics, IControl::Networking::ARP::NDPEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes an ARP or NDP entry.
    class StaticEntry < IControl::Base::Struct
      # The ARP/NDP entry's IP address.
      icontrol_attribute :address, String
      # The MAC address.
      icontrol_attribute :mac_address, String
    end

    ##
    # Creates/adds the specified static ARP/NDP entries to the ARP/NDP table.
    # :method: add_static_entry
    # :call-seq:
    # add_static_entry(entries)
    #
    # Parameters:
    # - entries StaticEntry[] The static ARP/NDP entries to add.

    ##
    # Deletes all dynamic ARP entries from the ARP table.
    # :method: delete_all_dynamic_arps

    ##
    # Deletes all dynamic NDP entries from the NDP table.
    # :method: delete_all_dynamic_ndps

    ##
    # Deletes all static ARP/NDP entries from the ARP/NDP table.
    # :method: delete_all_static_entries

    ##
    # Deletes the specified static ARP/NDP entries from the ARP/NDP table.
    # :method: delete_static_entry
    # :call-seq:
    # delete_static_entry(entries)
    #
    # Parameters:
    # - entries StaticEntry[] The ARP/NDP entries to delete.

    ##
    # Gets the dynamic ARP statistics for the specified ARP addresses.
    # :method: get_dynamic_arp
    # :call-seq:
    # get_dynamic_arp(arp_addresses)
    #
    # Parameters:
    # - arp_addresses String[] The ARP IP addresses.

    ##
    # Gets the dynamic NDP statistics for the specified NDP addresses.
    # :method: get_dynamic_ndp
    # :call-seq:
    # get_dynamic_ndp(ndp_addresses)
    #
    # Parameters:
    # - ndp_addresses String[] The NDP IP addresses.

    ##
    # Gets a list of all static ARP/NDP entries.
    # :method: get_static_entry

    ##
    # Gets the version information for this interface.
    # :method: get_version


  end
end
