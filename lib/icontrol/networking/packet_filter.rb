module IControl::Networking
  ##
  # The PacketFilter interface enables you to work with the definitions and attributes of packet filter rules. The goal of the packet filter is to provide a flexible and integrated perimeter security mechanism to explicitly block as well as accept traffic using complex expressions similar to those used by libpcap (e.g. tcpdump).
  class PacketFilter < IControl::Base

    set_id_name "filters"

    class PacketFilterStatisticEntry < IControl::Base::Struct; end
    class PacketFilterStatistics < IControl::Base::Struct; end    ##
    # Creates this packet filter rules.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :sort_orders The sort-order part of the rule is an integer value used to assign a relative "weight" to the rule.		 The sort-order may be any number between 0 and 999, but no two rules may have the same value. The		 specific value of the sort-order is not important, only its position relative to the other rules'		 sort-orders. Rule evaluation order is determined by starting with the lowest numbered rule and		 moving up through to the highest.
    # @option opts [IControl::Networking::FilterAction] :actions The list of action of what to do with the traffic should it match each rule.
    # @option opts [String] :expressions The expressions that make up the rules, used to match the ingress traffic. The legal expressions		 for the filters are determined by the version of the pcap library linked into the rule compiler.		 If empty, the associated filters match all packets.
    def create(opts)
      check_params(opts,[:sort_orders,:actions,:expressions])
      super
    end

    ##
    # Deletes all packet filter.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_packet_filters
      super
    end

    ##
    # Deletes this packet filter rules.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_packet_filter
      super
    end

    ##
    # Gets the actions of what to do if the ingress traffic matches the filter rules.
    # @return [FilterAction]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def action
      super
    end

    ##
    # Gets the statistics for all the packet filter rules.
    # @return [PacketFilterStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the expressions used to match ingress traffic. Each expression is defined by the pcap library, which is used to implement tcpdump, and is compiled into a Berkeley Packet Filter program. The man page for tcpdump describes the format and valid syntax of the filter rule expression.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def expression
      super
    end

    ##
    # Gets a list of all packet filter rules.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the states that specify whether an entry will be created in the system log each time the rule is matched.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def log_state
      super
    end

    ##
    # Gets the rate classes that will be used to rate limit the traffic. If the rule has an associated Rate Class name, then any traffic allowed by the rule will also be rate limited according to the behavior of this rate class. It is meaningless to associate a rate class with a rule that has a discard or reject action. Likewise, the rate class will only take effect when the traffic actually leaves the system. If the traffic does not leave the system, the rate class has no effect.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def rate_class
      super
    end

    ##
    # Gets the sort orders of this filter rules.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def sort_order
      super
    end

    ##
    # Gets the statistics for this packet filter.
    # @return [PacketFilterStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Gets the optional ingress VLANs to match on.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def vlan
      super
    end

    ##
    # Resets the statistics for this pools.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the actions of what to do if the ingress traffic matches the filter rules.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::FilterAction] :actions The action of what the filter should do when there is a match.
    def set_action(opts)
      check_params(opts,[:actions])
      super
    end

    ##
    # Sets the expressions used to match ingress traffic. Each expression is defined by the pcap library, which is used to implement tcpdump, and is compiled into a Berkeley Packet Filter program. The man page for tcpdump describes the format and valid syntax of the filter rule expression.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :expressions The expressions used to match ingress traffic.
    def set_expression(opts)
      check_params(opts,[:expressions])
      super
    end

    ##
    # Sets the states that specify whether an entry will be created in the system log each time the rule is matched.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The logging states.
    def set_log_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the rate classes that will be used to rate limit the traffic. If the rule has an associated Rate Class name, then any traffic allowed by the rule will also be rate limited according to the behavior of this rate class. It is meaningless to associate a rate class with a rule that has a discard or reject action. Likewise, the rate class will only take effect when the traffic actually leaves the system. If the traffic does not leave the system, the rate class has no effect.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :rate_classes The rate classes used to rate limit the traffic.
    def set_rate_class(opts)
      check_params(opts,[:rate_classes])
      super
    end

    ##
    # Sets the sort orders of this filter rules.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :orders The sort order values of the associated filter rules. Legal values for sort-order are		 all integers between 0 and 999, inclusive. No two rules may have the same sort-order value.
    def set_sort_order(opts)
      check_params(opts,[:orders])
      super
    end

    ##
    # Sets the optional ingress VLANs to match on.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :vlan_names The ingress VLANs to match on. If present, each entry must be a specific		 VLAN name currently in existence. If omitted, the rule matches all VLANs .
    def set_vlan(opts)
      check_params(opts,[:vlan_names])
      super
    end

    ##
    # A struct that describes statistics for a particular packet filter rule.
    # @attr [String] filter The packet filter rule name.
    # @attr [IControl::Common::Statistic] statistics The statistics for the filter.
    class PacketFilterStatisticEntry < IControl::Base::Struct
      icontrol_attribute :filter, String
      icontrol_attribute :statistics, IControl::Common::Statistic
    end

    ##
    # A struct that describes packet filter rule statistics and timestamp.
    # @attr [IControl::Networking::PacketFilter::PacketFilterStatisticEntry] statistics The statistics for a sequence of packet filter rules.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class PacketFilterStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::Networking::PacketFilter::PacketFilterStatisticEntry
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of packet filter rule statistics.
    class PacketFilterStatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
