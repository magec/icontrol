module IControl::LocalLB
  ##
  # The VirtualAddress interface enables you to work with the states, statistics, limits,
  # availability, and settings of a local load balancer's virtual address.
  class VirtualAddress < IControl::Base
    class VirtualAddressStatisticEntry < IControl::Base::Struct; end
    class VirtualAddressStatistics < IControl::Base::Struct; end    ## A sequence of virtual address statistics.
    class VirtualAddressStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes a virtual address and its statistics.
    class VirtualAddressStatisticEntry < IControl::Base::Struct
      # The virtual address.
      icontrol_attribute :virtual_address, String
      # The statistics of the virtual server.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes virtual address statistics and timestamp.
    class VirtualAddressStatistics < IControl::Base::Struct
      # The statistics for a sequence of virtual addresses.
      icontrol_attribute :statistics, IControl::LocalLB::VirtualAddress::VirtualAddressStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Deletes the specified virtual addresses.
    # :method: delete_virtual_address
    # :call-seq:
    # delete_virtual_address(virtual_addresses)
    #
    # Parameters:
    # - virtual_addresses String[] The virtual addresses to delete.

    ##
    # Gets the statistics for all the virtual addresses.
    # :method: get_all_statistics

    ##
    # Gets the ARP states for the specified virtual addresses.
    # :method: get_arp_state
    # :call-seq:
    # get_arp_state(virtual_addresses)
    #
    # Parameters:
    # - virtual_addresses String[] The virtual addresses whose ARP states will be retrieved.

    ##
    # Gets the connection limits for the specified virtual addresses.
    # :method: get_connection_limit
    # :call-seq:
    # get_connection_limit(virtual_addresses)
    #
    # Parameters:
    # - virtual_addresses String[] The virtual address to get the connection limits of.

    ##
    # Gets the enabled states of the specified virtual addresses.
    # :method: get_enabled_state
    # :call-seq:
    # get_enabled_state(virtual_addresses)
    #
    # Parameters:
    # - virtual_addresses String[] The virtual addresses to get the states of.

    ##
    # Gets the the states that indicate whether these virtual addresses should be shared
    # between the redundant pair. This is typically used in one-armed Combo pair, where
    # GTM is only licensed on one of the boxes. Default is TRUE.
    # :method: get_is_floating_state
    # :call-seq:
    # get_is_floating_state(virtual_addresses)
    #
    # Parameters:
    # - virtual_addresses String[] The virtual addresses whose "floating" states will be retrieved.

    ##
    # Gets a list of virtual addresses.
    # :method: get_list

    ##
    # Gets the status of each of the specified virtual addresses.
    # :method: get_object_status
    # :call-seq:
    # get_object_status(virtual_addresses)
    #
    # Parameters:
    # - virtual_addresses String[] The list of virtual addresses.

    ##
    # Gets the route advertisement states for the specified virtual addresses.
    # :method: get_route_advertisement_state
    # :call-seq:
    # get_route_advertisement_state(virtual_addresses)
    #
    # Parameters:
    # - virtual_addresses String[] The virtual addresses whose route advertisement states will be retrieved.

    ##
    # Gets the statistics for the specified virtual addresses.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(virtual_addresses)
    #
    # Parameters:
    # - virtual_addresses String[] The virtual addresses to get statistics for.

    ##
    # Gets the status dependency scopes that are used to calculate the virtual addresses'
    # status based on the related virtual servers' status.
    # :method: get_status_dependency_scope
    # :call-seq:
    # get_status_dependency_scope(virtual_addresses)
    #
    # Parameters:
    # - virtual_addresses String[] The virtual addresses whose status dependency scopes will be retrieved.

    ##
    # Gets the list of unit IDs used by the specified virtual addresses.
    # :method: get_unit_id
    # :call-seq:
    # get_unit_id(virtual_addresses)
    #
    # Parameters:
    # - virtual_addresses String[] The virtual addresses.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Resets the statistics for the specified virtual addresses.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(virtual_addresses)
    #
    # Parameters:
    # - virtual_addresses String[] The list of virtual addresses.

    ##
    # Sets the ARP states for the specified virtual addresses.
    # :method: set_arp_state
    # :call-seq:
    # set_arp_state(virtual_addresses ,states)
    #
    # Parameters:
    # - virtual_addresses String[] The virtual addresses whose ARP states will be set.
    # - states EnabledState[] The ARP states to set.

    ##
    # Sets the connection limits of the specified virtual addresses.
    # :method: set_connection_limit
    # :call-seq:
    # set_connection_limit(virtual_addresses ,limits)
    #
    # Parameters:
    # - virtual_addresses String[] A sequence of virtual addresses to apply the connection limits to.
    # - limits ULong64[] The connection limits to set.

    ##
    # Sets the enabled states of the specified virtual addresses.
    # :method: set_enabled_state
    # :call-seq:
    # set_enabled_state(virtual_addresses ,states)
    #
    # Parameters:
    # - virtual_addresses String[] A sequence of virtual addresses to apply the specified states to.
    # - states EnabledState[] The enabled states to set.

    ##
    # Sets the states that indicate whether these virtual addresses should be shared between
    # the redundant pair. This is typically used in one-armed Combo pair, where GTM is
    # only licensed on one of the boxes. Default is TRUE.
    # :method: set_is_floating_state
    # :call-seq:
    # set_is_floating_state(virtual_addresses ,states)
    #
    # Parameters:
    # - virtual_addresses String[] The virtual addresses whose "floating" states will be set.
    # - states EnabledState[] The states to set.

    ##
    # Sets the route advertisement states for the specified virtual addresses.
    # :method: set_route_advertisement_state
    # :call-seq:
    # set_route_advertisement_state(virtual_addresses ,states)
    #
    # Parameters:
    # - virtual_addresses String[] The virtual addresses whose route advertisement states will be set.
    # - states EnabledState[] The route advertisement states to set.

    ##
    # Sets the status dependency scopes that are used to calculate the virtual addresses'
    # status based on the related virtual servers' status.
    # :method: set_status_dependency_scope
    # :call-seq:
    # set_status_dependency_scope(virtual_addresses ,scopes)
    #
    # Parameters:
    # - virtual_addresses String[] The virtual addresses whose status dependency scopes will be set.
    # - scopes VirtualAddressStatusDependency[] The status dependency scopes to set.

    ##
    # Sets the unit IDs for the specified virtual addresses.
    # :method: set_unit_id
    # :call-seq:
    # set_unit_id(virtual_addresses ,unit_ids)
    #
    # Parameters:
    # - virtual_addresses String[] The virtual addresses whose unit IDs will be set.
    # - unit_ids long[] The unit IDs to set.


  end
end
