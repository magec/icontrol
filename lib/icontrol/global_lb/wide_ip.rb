module IControl::GlobalLB
  ##
  # The WideIP interface enables you to work with wide IPs, as well as with the pools and the virtual servers that make them up. For example, use the WideIP interface to get a list of wide IPs, to add a wide IP, or to remove a wide IP.
  class WideIP < IControl::Base

    set_id_name "wide_ips"

    class WideIPPool < IControl::Base::Struct; end
    class WideIPRule < IControl::Base::Struct; end
    class WideIPStatisticEntry < IControl::Base::Struct; end
    class WideIPStatistics < IControl::Base::Struct; end    ##
    # Adds/associates aliases to this wide IPs. A given wide IP can have more than one alias.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :aliases The aliases to add to the wide IPs .
    def add_alias(opts)
      check_params(opts,[:aliases])
      super
    end

    ##
    # Adds/associates wide IP pools to this wide IPs.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::WideIP::WideIPPool[]] :wideip_pools The wide IP pools to add to the wide IPs .
    def add_wideip_pool(opts)
      check_params(opts,[:wideip_pools])
      super
    end

    ##
    # Adds/associates wide IP rules to this wide IPs.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::WideIP::WideIPRule[]] :wideip_rules The wide IP rules to add to the wide IPs .
    def add_wideip_rule(opts)
      check_params(opts,[:wideip_rules])
      super
    end

    ##
    # Creates this wide IPs with some basic attributes.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::LBMethod] :lb_methods The load-balancing methods used when picking a pool to use when		 responding to a DNS request.
    # @option opts [IControl::GlobalLB::WideIP::WideIPPool[]] :wideip_pools The list of wide IP pools.
    # @option opts [IControl::GlobalLB::WideIP::WideIPRule[]] :wideip_rules The list of wide IP rules.
    def create(opts)
      check_params(opts,[:lb_methods,:wideip_pools,:wideip_rules])
      super
    end

    ##
    # Deletes all wide IPs.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_wideips
      super
    end

    ##
    # Deletes this wide IPs.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_wideip
      super
    end

    ##
    # Gets the lists of aliases this wide IPs are associated with. A given wide IP can have more than one alias.
    # @return [String[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def alias
      super
    end

    ##
    # Gets the statistics for all the wide IPs.
    # @return [WideIPStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the names of the applications for this wide IPs.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def application
      super
    end

    ##
    # Gets the enabled states for this wide IPs.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def enabled_state
      super
    end

    ##
    # Gets the names of the last resort pools for this wide IPs.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def last_resort_pool
      super
    end

    ##
    # Gets the load balancing methods for this wide IPs.
    # @return [LBMethod]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def lb_method
      super
    end

    ##
    # Gets a list of wide IPs.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the statuses of this wide IPs.
    # @return [ObjectStatus]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def object_status
      super
    end

    ##
    # Gets the states indicating whether to maintain a connection between an LDNS and a particular virtual server.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def persistence_state
      super
    end

    ##
    # Gets the persistence TTL values of this wide IPs. These values (in seconds) indicate the time to maintain a connection between an LDNS and a particular virtual server.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def persistence_ttl
      super
    end

    ##
    # Gets the statistics for this wide IPs.
    # @return [WideIPStatistics]
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
    # Gets the lists of wide IPs associated with this aliases. Each alias maps to exactly one wide IP.
    # @return [String[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :aliases The list of aliases.
    def wideip(opts)
      check_params(opts,[:aliases])
      super
    end

    ##
    # Gets the lists of wide IP pools this wide IPs are associated with.
    # @return [WideIPPool[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def wideip_pool
      super
    end

    ##
    # Gets the lists of wide IP rules this wide IPs are associated with.
    # @return [WideIPRule[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def wideip_rule
      super
    end

    ##
    # Removes aliases from this wide IPs. A given wide IP can have more than one alias.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :aliases The aliases to remove from the wide IPs .
    def remove_alias(opts)
      check_params(opts,[:aliases])
      super
    end

    ##
    # Removes all aliases from this wide IPs.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_aliases
      super
    end

    ##
    # Removes all wide IP pools from this wide IPs.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_wideip_pools
      super
    end

    ##
    # Removes all wide IP rules from this wide IPs.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_wideip_rules
      super
    end

    ##
    # Removes wide IP pools from this wide IPs.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::WideIP::WideIPPool[]] :wideip_pools The wide IP pools to remove from the wide IPs .
    def remove_wideip_pool(opts)
      check_params(opts,[:wideip_pools])
      super
    end

    ##
    # Removes wide IP rules from this wide IPs.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::WideIP::WideIPRule[]] :wideip_rules The wide IP rules to remove from the wide IPs .
    def remove_wideip_rule(opts)
      check_params(opts,[:wideip_rules])
      super
    end

    ##
    # Resets the names of the applications for this wide IPs (i.e., sets them to nothing). This function disassociates each wide IP given from any application.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_application
      super
    end

    ##
    # Resets the statistics for this wide IPs.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the names of the applications for this wide IPs.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :applications The names of the applications for the specified wide IPs .
    def set_application(opts)
      check_params(opts,[:applications])
      super
    end

    ##
    # Sets the enabled states for this wide IPs.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set for the wide IPs .
    def set_enabled_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the names of the last resort pools for this wide IPs.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :pool_names The names of the last resort pools for the specified wide IPs .
    def set_last_resort_pool(opts)
      check_params(opts,[:pool_names])
      super
    end

    ##
    # Sets the load balancing methods for this wide IPs. This is used by the wide IPs when picking a pool to use when responding to a DNS request.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::LBMethod] :lb_methods The load balancing methods to use for the wide IPs .
    def set_lb_method(opts)
      check_params(opts,[:lb_methods])
      super
    end

    ##
    # Sets the states indicating whether to maintain a connection between an LDNS and a particular virtual server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set for the wide IPs .
    def set_persistence_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the persistence TTL values of this wide IPs. These values (in seconds) indicate the time to maintain a connection between an LDNS and a particular virtual server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :values The persistence TTLs of the specified wide IPs .
    def set_persistence_ttl(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # A struct that describes a wide IP's pool.
    # @attr [String] pool_name The pool name.
    # @attr [Numeric] order The order given to the specified pool.
    # @attr [Numeric] ratio The ratio given to the specified pool.
    class WideIPPool < IControl::Base::Struct
      icontrol_attribute :pool_name, String
      icontrol_attribute :order, Numeric
      icontrol_attribute :ratio, Numeric
    end

    ##
    # A struct that describes a wide IP's rule.
    # @attr [String] rule_name The rule name.
    # @attr [Numeric] priority The priority value of this rule, used to indicate the order of rule evaluation.
    class WideIPRule < IControl::Base::Struct
      icontrol_attribute :rule_name, String
      icontrol_attribute :priority, Numeric
    end

    ##
    # A struct that describes statistics for a particular wide IP.
    # @attr [String] wide_ip The wide IP name.
    # @attr [IControl::Common::Statistic] statistics The statistics for the wide IP.
    class WideIPStatisticEntry < IControl::Base::Struct
      icontrol_attribute :wide_ip, String
      icontrol_attribute :statistics, IControl::Common::Statistic
    end

    ##
    # A struct that describes wide IP statistics and timestamp.
    # @attr [IControl::GlobalLB::WideIP::WideIPStatisticEntry] statistics The statistics for a sequence of wide IPs .
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class WideIPStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::GlobalLB::WideIP::WideIPStatisticEntry
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of wide IP's pools.
    class WideIPPoolSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of wide IP's pools.
    class WideIPPoolSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of wide IP's rules.
    class WideIPRuleSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of wide IP's rules.
    class WideIPRuleSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of WideIP statistics.
    class WideIPStatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
