module IControl::LocalLB
  ##
  # The NAT interface enables you to work with the statistics and definitions contained
  # in a local load balancer's network address translations (NAT). For example, use the
  # NAT interface to both get and set the NAT statistics and attributes of a local load
  # balancer.
  class NAT < IControl::Base
    class NATDefinition < IControl::Base::Struct; end
    class NATStatisticEntry < IControl::Base::Struct; end
    class NATStatistics < IControl::Base::Struct; end    ## A sequence of NAT definitions.
    class NATDefinitionSequence < IControl::Base::Sequence ; end## A sequence of NAT statistics.
    class NATStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes a NAT definition for translation and original IP addresses.
    class NATDefinition < IControl::Base::Struct
      # A translation IP address.
      icontrol_attribute :translation_address, String
      # An original IP address.
      icontrol_attribute :original_address, String
    end

    ##
    # A struct that describes a NAT statistic entry for a particular NAT address.
    class NATStatisticEntry < IControl::Base::Struct
      # The NAT address.
      icontrol_attribute :nat, IControl::LocalLB::NAT::NATDefinition
      # The NAT statistics.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes NAT statistics and timestamp.
    class NATStatistics < IControl::Base::Struct
      # The statistics for a sequence of NATs .
      icontrol_attribute :statistics, IControl::LocalLB::NAT::NATStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified NATs.
    # :method: create
    # :call-seq:
    # create(nat_definitions ,unit_ids ,vlans)
    #
    # Parameters:
    # - nat_definitions NATDefinition[] The NATs to create.
    # - unit_ids long[] The controller for the NATs in an active-active, redundant load balancer configuration.
    # - vlans VLANFilterList[] The list of VLANs used to filter the client connections on ingress VLAN.

    ##
    # Deletes all NATs.
    # :method: delete_all_nats

    ##
    # Deletes the specified NATs.
    # :method: delete_nat
    # :call-seq:
    # delete_nat(nat_definitions)
    #
    # Parameters:
    # - nat_definitions NATDefinition[] The sequence of NAT definitions.

    ##
    # Gets statistics for all NATs.
    # :method: get_all_statistics

    ##
    # Gets the ARP states for the specified NATs.
    # :method: get_arp_state
    # :call-seq:
    # get_arp_state(nat_definitions)
    #
    # Parameters:
    # - nat_definitions NATDefinition[] The NAT definitions.

    ##
    # Gets the states of the specified NAT addresses.
    # :method: get_enabled_state
    # :call-seq:
    # get_enabled_state(nat_definitions)
    #
    # Parameters:
    # - nat_definitions NATDefinition[] The NAT definitions.

    ##
    # Gets a sequence of all NAT definitions.
    # :method: get_list

    ##
    # Gets statistics for a sequence of NATs.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(nat_definitions)
    #
    # Parameters:
    # - nat_definitions NATDefinition[] The NAT definitions.

    ##
    # Gets the controller to which the specified NATs apply in an active-active, redundant
    # load balancer configuration.
    # :method: get_unit_id
    # :call-seq:
    # get_unit_id(nat_definitions)
    #
    # Parameters:
    # - nat_definitions NATDefinition[] The NAT definitions.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Gets the lists of VLANs on which access to the specified NATs is disabled.
    # :method: get_vlan
    # :call-seq:
    # get_vlan(nat_definitions)
    #
    # Parameters:
    # - nat_definitions NATDefinition[] The NAT definitions.

    ##
    # Resets statistics for a NAT.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(nat_definitions)
    #
    # Parameters:
    # - nat_definitions NATDefinition[] The NAT definitions.

    ##
    # Sets the ARP states for the specified NATs.
    # :method: set_arp_state
    # :call-seq:
    # set_arp_state(nat_definitions ,states)
    #
    # Parameters:
    # - nat_definitions NATDefinition[] The NAT definitions.
    # - states EnabledState[] The ARP states to set.

    ##
    # Sets the state for a list of NAT addresses.
    # :method: set_enabled_state
    # :call-seq:
    # set_enabled_state(nat_definitions ,states)
    #
    # Parameters:
    # - nat_definitions NATDefinition[] The NAT definitions.
    # - states EnabledState[] Enable or disable the specified SNAT translation addresses.

    ##
    # Sets the Unit IDs for the specified NATs.
    # :method: set_unit_id
    # :call-seq:
    # set_unit_id(nat_definitions ,unit_ids)
    #
    # Parameters:
    # - nat_definitions NATDefinition[] The NAT definitions.
    # - unit_ids long[] The Unit IDs to set.

    ##
    # Adds VLANSs to the list of VLANs on which access to the specified NATs is disabled.
    # :method: set_vlan
    # :call-seq:
    # set_vlan(nat_definitions ,vlans)
    #
    # Parameters:
    # - nat_definitions NATDefinition[] The NAT definitions.
    # - vlans VLANFilterList[] The VLAN names to add to the list of enabled/disabled VLANs .


  end
end
