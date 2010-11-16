module IControl::GlobalLB
  ##
  # The WideIP interface enables you to work with wide IPs, as well as with the pools
  # and the virtual servers that make them up. For example, use the WideIP interface
  # to get a list of wide IPs, to add a wide IP, or to remove a wide IP.
  class WideIP < IControl::Base
    class WideIPPool < IControl::Base::Struct; end
    class WideIPRule < IControl::Base::Struct; end
    class WideIPStatisticEntry < IControl::Base::Struct; end
    class WideIPStatistics < IControl::Base::Struct; end    ## A sequence of wide IP's pools.
    class WideIPPoolSequence < IControl::Base::Sequence ; end## An alias for a sequence of wide IP's pools.
    class WideIPPoolSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of wide IP's rules.
    class WideIPRuleSequence < IControl::Base::Sequence ; end## An alias for a sequence of wide IP's rules.
    class WideIPRuleSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of WideIP statistics.
    class WideIPStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes a wide IP's pool.
    class WideIPPool < IControl::Base::Struct
      # The pool name.
      icontrol_attribute :pool_name, String
      # The order given to the specified pool.
      icontrol_attribute :order, Numeric
      # The ratio given to the specified pool.
      icontrol_attribute :ratio, Numeric
    end

    ##
    # A struct that describes a wide IP's rule.
    class WideIPRule < IControl::Base::Struct
      # The rule name.
      icontrol_attribute :rule_name, String
      # The priority value of this rule, used to indicate the order of rule evaluation.
      icontrol_attribute :priority, Numeric
    end

    ##
    # A struct that describes statistics for a particular wide IP.
    class WideIPStatisticEntry < IControl::Base::Struct
      # The wide IP name.
      icontrol_attribute :wide_ip, String
      # The statistics for the wide IP.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes wide IP statistics and timestamp.
    class WideIPStatistics < IControl::Base::Struct
      # The statistics for a sequence of wide IPs .
      icontrol_attribute :statistics, IControl::GlobalLB::WideIP::WideIPStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Adds/associates aliases to the specified wide IPs. A given wide IP can have more
    # than one alias.
    # :method: add_alias
    # :call-seq:
    # add_alias(wide_ips ,aliases)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .
    # - aliases String[][] The aliases to add to the wide IPs .

    ##
    # Adds/associates wide IP pools to the specified wide IPs.
    # :method: add_wideip_pool
    # :call-seq:
    # add_wideip_pool(wide_ips ,wideip_pools)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .
    # - wideip_pools WideIPPool[][] The wide IP pools to add to the wide IPs .

    ##
    # Adds/associates wide IP rules to the specified wide IPs.
    # :method: add_wideip_rule
    # :call-seq:
    # add_wideip_rule(wide_ips ,wideip_rules)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .
    # - wideip_rules WideIPRule[][] The wide IP rules to add to the wide IPs .

    ##
    # Creates the specified wide IPs with some basic attributes.
    # :method: create
    # :call-seq:
    # create(wide_ips ,lb_methods ,wideip_pools ,wideip_rules)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .
    # - lb_methods LBMethod[] The load-balancing methods used when picking a pool to use when		 responding to a DNS request.
    # - wideip_pools WideIPPool[][] The list of wide IP pools.
    # - wideip_rules WideIPRule[][] The list of wide IP rules.

    ##
    # Deletes all wide IPs.
    # :method: delete_all_wideips

    ##
    # Deletes the specified wide IPs.
    # :method: delete_wideip
    # :call-seq:
    # delete_wideip(wide_ips)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .

    ##
    # Gets the lists of aliases the specified wide IPs are associated with. A given wide
    # IP can have more than one alias.
    # :method: get_alias
    # :call-seq:
    # get_alias(wide_ips)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .

    ##
    # Gets the statistics for all the wide IPs.
    # :method: get_all_statistics

    ##
    # Gets the names of the applications for the specified wide IPs.
    # :method: get_application
    # :call-seq:
    # get_application(wide_ips)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .

    ##
    # Gets the enabled states for the specified wide IPs.
    # :method: get_enabled_state
    # :call-seq:
    # get_enabled_state(wide_ips)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .

    ##
    # Gets the names of the last resort pools for the specified wide IPs.
    # :method: get_last_resort_pool
    # :call-seq:
    # get_last_resort_pool(wide_ips)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .

    ##
    # Gets the load balancing methods for the specified wide IPs.
    # :method: get_lb_method
    # :call-seq:
    # get_lb_method(wide_ips)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .

    ##
    # Gets a list of wide IPs.
    # :method: get_list

    ##
    # Gets the statuses of the specified wide IPs.
    # :method: get_object_status
    # :call-seq:
    # get_object_status(wide_ips)
    #
    # Parameters:
    # - wide_ips String[] The wide IPs .

    ##
    # Gets the states indicating whether to maintain a connection between an LDNS and a
    # particular virtual server.
    # :method: get_persistence_state
    # :call-seq:
    # get_persistence_state(wide_ips)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .

    ##
    # Gets the persistence TTL values of the specified wide IPs. These values (in seconds)
    # indicate the time to maintain a connection between an LDNS and a particular virtual
    # server.
    # :method: get_persistence_ttl
    # :call-seq:
    # get_persistence_ttl(wide_ips)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .

    ##
    # Gets the statistics for the specified wide IPs.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(wide_ips)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Gets the lists of wide IPs associated with the specified aliases. Each alias maps
    # to exactly one wide IP.
    # :method: get_wideip
    # :call-seq:
    # get_wideip(aliases)
    #
    # Parameters:
    # - aliases String[] The list of aliases.

    ##
    # Gets the lists of wide IP pools the specified wide IPs are associated with.
    # :method: get_wideip_pool
    # :call-seq:
    # get_wideip_pool(wide_ips)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .

    ##
    # Gets the lists of wide IP rules the specified wide IPs are associated with.
    # :method: get_wideip_rule
    # :call-seq:
    # get_wideip_rule(wide_ips)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .

    ##
    # Removes aliases from the specified wide IPs. A given wide IP can have more than one
    # alias.
    # :method: remove_alias
    # :call-seq:
    # remove_alias(wide_ips ,aliases)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .
    # - aliases String[][] The aliases to remove from the wide IPs .

    ##
    # Removes all aliases from the specified wide IPs.
    # :method: remove_all_aliases
    # :call-seq:
    # remove_all_aliases(wide_ips)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .

    ##
    # Removes all wide IP pools from the specified wide IPs.
    # :method: remove_all_wideip_pools
    # :call-seq:
    # remove_all_wideip_pools(wide_ips)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .

    ##
    # Removes all wide IP rules from the specified wide IPs.
    # :method: remove_all_wideip_rules
    # :call-seq:
    # remove_all_wideip_rules(wide_ips)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .

    ##
    # Removes wide IP pools from the specified wide IPs.
    # :method: remove_wideip_pool
    # :call-seq:
    # remove_wideip_pool(wide_ips ,wideip_pools)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .
    # - wideip_pools WideIPPool[][] The wide IP pools to remove from the wide IPs .

    ##
    # Removes wide IP rules from the specified wide IPs.
    # :method: remove_wideip_rule
    # :call-seq:
    # remove_wideip_rule(wide_ips ,wideip_rules)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .
    # - wideip_rules WideIPRule[][] The wide IP rules to remove from the wide IPs .

    ##
    # Resets the names of the applications for the specified wide IPs (i.e., sets them
    # to nothing). This function disassociates each wide IP given from any application.
    # :method: reset_application
    # :call-seq:
    # reset_application(wide_ips)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .

    ##
    # Resets the statistics for the specified wide IPs.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(wide_ips)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .

    ##
    # Sets the names of the applications for the specified wide IPs.
    # :method: set_application
    # :call-seq:
    # set_application(wide_ips ,applications)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .
    # - applications String[] The names of the applications for the specified wide IPs .

    ##
    # Sets the enabled states for the specified wide IPs.
    # :method: set_enabled_state
    # :call-seq:
    # set_enabled_state(wide_ips ,states)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .
    # - states EnabledState[] The states to set for the wide IPs .

    ##
    # Sets the names of the last resort pools for the specified wide IPs.
    # :method: set_last_resort_pool
    # :call-seq:
    # set_last_resort_pool(wide_ips ,pool_names)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .
    # - pool_names String[] The names of the last resort pools for the specified wide IPs .

    ##
    # Sets the load balancing methods for the specified wide IPs. This is used by the wide
    # IPs when picking a pool to use when responding to a DNS request.
    # :method: set_lb_method
    # :call-seq:
    # set_lb_method(wide_ips ,lb_methods)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .
    # - lb_methods LBMethod[] The load balancing methods to use for the wide IPs .

    ##
    # Sets the states indicating whether to maintain a connection between an LDNS and a
    # particular virtual server.
    # :method: set_persistence_state
    # :call-seq:
    # set_persistence_state(wide_ips ,states)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .
    # - states EnabledState[] The states to set for the wide IPs .

    ##
    # Sets the persistence TTL values of the specified wide IPs. These values (in seconds)
    # indicate the time to maintain a connection between an LDNS and a particular virtual
    # server.
    # :method: set_persistence_ttl
    # :call-seq:
    # set_persistence_ttl(wide_ips ,values)
    #
    # Parameters:
    # - wide_ips String[] The list of wide IPs .
    # - values long[] The persistence TTLs of the specified wide IPs .


  end
end
