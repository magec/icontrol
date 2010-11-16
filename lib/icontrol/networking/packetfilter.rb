module IControl::Networking
  ##
  # The PacketFilter interface enables you to work with the definitions and attributes
  # of packet filter rules. The goal of the packet filter is to provide a flexible and
  # integrated perimeter security mechanism to explicitly block as well as accept traffic
  # using complex expressions similar to those used by libpcap (e.g. tcpdump).
  class PacketFilter < IControl::Base
    class PacketFilterStatisticEntry < IControl::Base::Struct; end
    class PacketFilterStatistics < IControl::Base::Struct; end    ## A sequence of packet filter rule statistics.
    class PacketFilterStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a particular packet filter rule.
    class PacketFilterStatisticEntry < IControl::Base::Struct
      # The packet filter rule name.
      icontrol_attribute :filter, String
      # The statistics for the filter.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes packet filter rule statistics and timestamp.
    class PacketFilterStatistics < IControl::Base::Struct
      # The statistics for a sequence of packet filter rules.
      icontrol_attribute :statistics, IControl::Networking::PacketFilter::PacketFilterStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified packet filter rules.
    # :method: create
    # :call-seq:
    # create(filters ,sort_orders ,actions ,expressions)
    #
    # Parameters:
    # - filters String[] The names of the packet filter rules to create.
    # - sort_orders long[] The sort-order part of the rule is an integer value used to assign a relative "weight" to the rule.		 The sort-order may be any number between 0 and 999, but no two rules may have the same value. The		 specific value of the sort-order is not important, only its position relative to the other rules'		 sort-orders. Rule evaluation order is determined by starting with the lowest numbered rule and		 moving up through to the highest.
    # - actions FilterAction[] The list of action of what to do with the traffic should it match each rule.
    # - expressions String[] The expressions that make up the rules, used to match the ingress traffic. The legal expressions		 for the filters are determined by the version of the pcap library linked into the rule compiler.		 If empty, the associated filters match all packets.

    ##
    # Deletes all packet filters.
    # :method: delete_all_packet_filters

    ##
    # Deletes the specified packet filter rules.
    # :method: delete_packet_filter
    # :call-seq:
    # delete_packet_filter(filters)
    #
    # Parameters:
    # - filters String[] The names of the packet filter rules to delete.

    ##
    # Gets the actions of what to do if the ingress traffic matches the filter rules.
    # :method: get_action
    # :call-seq:
    # get_action(filters)
    #
    # Parameters:
    # - filters String[] The names of the packet filter rules.

    ##
    # Gets the statistics for all the packet filter rules.
    # :method: get_all_statistics

    ##
    # Gets the expressions used to match ingress traffic. Each expression is defined by
    # the pcap library, which is used to implement tcpdump, and is compiled into a Berkeley
    # Packet Filter program. The man page for tcpdump describes the format and valid syntax
    # of the filter rule expression.
    # :method: get_expression
    # :call-seq:
    # get_expression(filters)
    #
    # Parameters:
    # - filters String[] The names of the packet filter rules.

    ##
    # Gets a list of all packet filter rules.
    # :method: get_list

    ##
    # Gets the states that specify whether an entry will be created in the system log each
    # time the rule is matched.
    # :method: get_log_state
    # :call-seq:
    # get_log_state(filters)
    #
    # Parameters:
    # - filters String[] The names of the packet filter rules.

    ##
    # Gets the rate classes that will be used to rate limit the traffic. If the rule has
    # an associated Rate Class name, then any traffic allowed by the rule will also be
    # rate limited according to the behavior of the specified rate class. It is meaningless
    # to associate a rate class with a rule that has a discard or reject action. Likewise,
    # the rate class will only take effect when the traffic actually leaves the system.
    # If the traffic does not leave the system, the rate class has no effect.
    # :method: get_rate_class
    # :call-seq:
    # get_rate_class(filters)
    #
    # Parameters:
    # - filters String[] The names of the packet filter rules.

    ##
    # Gets the sort orders of the specified filter rules.
    # :method: get_sort_order
    # :call-seq:
    # get_sort_order(filters)
    #
    # Parameters:
    # - filters String[] The names of the packet filter rules.

    ##
    # Gets the statistics for the specified packet filters.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(filters)
    #
    # Parameters:
    # - filters String[] The names of the packet filter rules.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Gets the optional ingress VLANs to match on.
    # :method: get_vlan
    # :call-seq:
    # get_vlan(filters)
    #
    # Parameters:
    # - filters String[] The names of the packet filter rules.

    ##
    # Resets the statistics for the specified pools.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(filters)
    #
    # Parameters:
    # - filters String[] The names of the packet filter rules.

    ##
    # Sets the actions of what to do if the ingress traffic matches the filter rules.
    # :method: set_action
    # :call-seq:
    # set_action(filters ,actions)
    #
    # Parameters:
    # - filters String[] The names of the packet filter rules.
    # - actions FilterAction[] The action of what the filter should do when there is a match.

    ##
    # Sets the expressions used to match ingress traffic. Each expression is defined by
    # the pcap library, which is used to implement tcpdump, and is compiled into a Berkeley
    # Packet Filter program. The man page for tcpdump describes the format and valid syntax
    # of the filter rule expression.
    # :method: set_expression
    # :call-seq:
    # set_expression(filters ,expressions)
    #
    # Parameters:
    # - filters String[] The names of the packet filter rules.
    # - expressions String[] The expressions used to match ingress traffic.

    ##
    # Sets the states that specify whether an entry will be created in the system log each
    # time the rule is matched.
    # :method: set_log_state
    # :call-seq:
    # set_log_state(filters ,states)
    #
    # Parameters:
    # - filters String[] The names of the packet filter rules.
    # - states EnabledState[] The logging states.

    ##
    # Sets the rate classes that will be used to rate limit the traffic. If the rule has
    # an associated Rate Class name, then any traffic allowed by the rule will also be
    # rate limited according to the behavior of the specified rate class. It is meaningless
    # to associate a rate class with a rule that has a discard or reject action. Likewise,
    # the rate class will only take effect when the traffic actually leaves the system.
    # If the traffic does not leave the system, the rate class has no effect.
    # :method: set_rate_class
    # :call-seq:
    # set_rate_class(filters ,rate_classes)
    #
    # Parameters:
    # - filters String[] The names of the packet filter rules.
    # - rate_classes String[] The rate classes used to rate limit the traffic.

    ##
    # Sets the sort orders of the specified filter rules.
    # :method: set_sort_order
    # :call-seq:
    # set_sort_order(filters ,orders)
    #
    # Parameters:
    # - filters String[] The names of the packet filter rules.
    # - orders long[] The sort order values of the associated filter rules. Legal values for sort-order are		 all integers between 0 and 999, inclusive. No two rules may have the same sort-order value.

    ##
    # Sets the optional ingress VLANs to match on.
    # :method: set_vlan
    # :call-seq:
    # set_vlan(filters ,vlan_names)
    #
    # Parameters:
    # - filters String[] The names of the packet filter rules.
    # - vlan_names String[] The ingress VLANs to match on. If present, each entry must be a specific		 VLAN name currently in existence. If omitted, the rule matches all VLANs .


  end
end
