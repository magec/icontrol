module IControl::GlobalLB
  ##
  # The WideIP interface enables you to work with wide IPs, as well as with the pools
  # and the virtual servers that make them up. For example, use the WideIP interface
  # to get a list of wide IPs, to add a wide IP, or to remove a wide IP.
  class WideIP < IControl::Base

    set_id_name "wide_ips"

    class WideIPPool < IControl::Base::Struct; end
    class WideIPRule < IControl::Base::Struct; end
    class WideIPStatisticEntry < IControl::Base::Struct; end
    class WideIPStatistics < IControl::Base::Struct; end
    class WideIPPoolSequence < IControl::Base::Sequence ; end
    class WideIPPoolSequenceSequence < IControl::Base::SequenceSequence ; end
    class WideIPRuleSequence < IControl::Base::Sequence ; end
    class WideIPRuleSequenceSequence < IControl::Base::SequenceSequence ; end
    class WideIPStatisticEntrySequence < IControl::Base::Sequence ; end    ##
    # Adds/associates aliases to this wide IPs. A given wide IP can have more than one
    # alias.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :aliases The aliases to add to the wide IPs .
    def add_alias(opts)
      check_params(opts,[:aliases])
      super
    end

    ##
    # Adds/associates wide IP pools to this wide IPs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::WideIP::WideIPPool[]] :wideip_pools The wide IP pools to add to the wide IPs .
    def add_wideip_pool(opts)
      check_params(opts,[:wideip_pools])
      super
    end

    ##
    # Adds/associates wide IP rules to this wide IPs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::WideIP::WideIPRule[]] :wideip_rules The wide IP rules to add to the wide IPs .
    def add_wideip_rule(opts)
      check_params(opts,[:wideip_rules])
      super
    end

    ##
    # Creates this wide IPs with some basic attributes.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
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
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_wideips
      super
    end

    ##
    # Deletes this wide IPs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_wideip
      super
    end

    ##
    # Gets the lists of aliases this wide IPs are associated with. A given wide IP can
    # have more than one alias.
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def alias
      super
    end

    ##
    # Gets the statistics for all the wide IPs.
    # @rspec_example
    # @return [WideIPStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the names of the applications for this wide IPs.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def application
      super
    end

    ##
    # Gets the enabled states for this wide IPs.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def enabled_state
      super
    end

    ##
    # Gets the names of the last resort pools for this wide IPs.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def last_resort_pool
      super
    end

    ##
    # Gets the load balancing methods for this wide IPs.
    # @rspec_example
    # @return [LBMethod]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def lb_method
      super
    end

    ##
    # Gets a list of wide IPs.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the statuses of this wide IPs.
    # @rspec_example
    # @return [ObjectStatus]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def object_status
      super
    end

    ##
    # Gets the states indicating whether to maintain a connection between an LDNS and a
    # particular virtual server.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def persistence_state
      super
    end

    ##
    # Gets the persistence TTL values of this wide IPs. These values (in seconds) indicate
    # the time to maintain a connection between an LDNS and a particular virtual server.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def persistence_ttl
      super
    end

    ##
    # Gets the statistics for this wide IPs.
    # @rspec_example
    # @return [WideIPStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
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
    # Gets the lists of wide IPs associated with this aliases. Each alias maps to exactly
    # one wide IP.
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :aliases The list of aliases.
    def wideip(opts)
      check_params(opts,[:aliases])
      super
    end

    ##
    # Gets the lists of wide IP pools this wide IPs are associated with.
    # @rspec_example
    # @return [WideIPPool[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def wideip_pool
      super
    end

    ##
    # Gets the lists of wide IP rules this wide IPs are associated with.
    # @rspec_example
    # @return [WideIPRule[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def wideip_rule
      super
    end

    ##
    # Removes aliases from this wide IPs. A given wide IP can have more than one alias.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :aliases The aliases to remove from the wide IPs .
    def remove_alias(opts)
      check_params(opts,[:aliases])
      super
    end

    ##
    # Removes all aliases from this wide IPs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_aliases
      super
    end

    ##
    # Removes all wide IP pools from this wide IPs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_wideip_pools
      super
    end

    ##
    # Removes all wide IP rules from this wide IPs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_wideip_rules
      super
    end

    ##
    # Removes wide IP pools from this wide IPs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::WideIP::WideIPPool[]] :wideip_pools The wide IP pools to remove from the wide IPs .
    def remove_wideip_pool(opts)
      check_params(opts,[:wideip_pools])
      super
    end

    ##
    # Removes wide IP rules from this wide IPs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::WideIP::WideIPRule[]] :wideip_rules The wide IP rules to remove from the wide IPs .
    def remove_wideip_rule(opts)
      check_params(opts,[:wideip_rules])
      super
    end

    ##
    # Resets the names of the applications for this wide IPs (i.e., sets them to nothing).
    # This function disassociates each wide IP given from any application.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_application
      super
    end

    ##
    # Resets the statistics for this wide IPs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the names of the applications for this wide IPs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :applications The names of the applications for the specified wide IPs .
    def set_application(opts)
      check_params(opts,[:applications])
      super
    end

    ##
    # Sets the enabled states for this wide IPs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set for the wide IPs .
    def set_enabled_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the names of the last resort pools for this wide IPs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :pool_names The names of the last resort pools for the specified wide IPs .
    def set_last_resort_pool(opts)
      check_params(opts,[:pool_names])
      super
    end

    ##
    # Sets the load balancing methods for this wide IPs. This is used by the wide IPs when
    # picking a pool to use when responding to a DNS request.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::LBMethod] :lb_methods The load balancing methods to use for the wide IPs .
    def set_lb_method(opts)
      check_params(opts,[:lb_methods])
      super
    end

    ##
    # Sets the states indicating whether to maintain a connection between an LDNS and a
    # particular virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set for the wide IPs .
    def set_persistence_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the persistence TTL values of this wide IPs. These values (in seconds) indicate
    # the time to maintain a connection between an LDNS and a particular virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
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
    # @attr [IControl::Common::StatisticSequence] statistics The statistics for the wide IP.
    class WideIPStatisticEntry < IControl::Base::Struct
      icontrol_attribute :wide_ip, String
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes wide IP statistics and timestamp.
    # @attr [IControl::GlobalLB::WideIP::WideIPStatisticEntrySequence] statistics The statistics for a sequence of wide IPs .
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class WideIPStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::GlobalLB::WideIP::WideIPStatisticEntrySequence
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
