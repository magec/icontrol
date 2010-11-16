module IControl::GlobalLB
  ##
  # The Pool interface enables you to work with pools and their attributes.
  class Pool < IControl::Base
    class MonitorAssociation < IControl::Base::Struct; end
    class PoolMemberDefinition < IControl::Base::Struct; end
    class PoolMetricLimit < IControl::Base::Struct; end
    class PoolStatisticEntry < IControl::Base::Struct; end
    class PoolStatistics < IControl::Base::Struct; end    ## A sequence of monitor associations.
    class MonitorAssociationSequence < IControl::Base::Sequence ; end## A sequence of PoolMemberDefinition's.
    class PoolMemberDefinitionSequence < IControl::Base::Sequence ; end## An alias for a sequence of PoolMemberDefinition's.
    class PoolMemberDefinitionSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of PoolMetricLimit's.
    class PoolMetricLimitSequence < IControl::Base::Sequence ; end## A sequence of Pool statistics.
    class PoolStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes a pool's monitor association.
    class MonitorAssociation < IControl::Base::Struct
      # The pool with which the monitor rule is associated with.
      icontrol_attribute :pool_name, String
      # The monitor rule used in the monitor association.
      icontrol_attribute :monitor_rule, IControl::GlobalLB::MonitorRule
    end

    ##
    # A struct that contains a definition for a pool member.
    class PoolMemberDefinition < IControl::Base::Struct
      # The pool member.
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      # The order of this pool member in the pool.
      icontrol_attribute :order, Numeric
    end

    ##
    # A struct that contains metric limits for a pool.
    class PoolMetricLimit < IControl::Base::Struct
      # The pool name.
      icontrol_attribute :pool_name, String
      # Metric limits of the pool.
      icontrol_attribute :metric_limits, IControl::GlobalLB::MetricLimitSequence
    end

    ##
    # A struct that describes statistics for a particular pool.
    class PoolStatisticEntry < IControl::Base::Struct
      # The pool name.
      icontrol_attribute :pool_name, String
      # The statistics for the pool.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes pool statistics and timestamp.
    class PoolStatistics < IControl::Base::Struct
      # The statistics for a sequence of pools.
      icontrol_attribute :statistics, IControl::GlobalLB::Pool::PoolStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Adds members to the specified pools.
    # :method: add_member
    # :call-seq:
    # add_member(pool_names ,members)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - members PoolMemberDefinition[][] The members to add to the pools.

    ##
    # Creates the specified pools.
    # :method: create
    # :call-seq:
    # create(pool_names ,lb_methods ,members)
    #
    # Parameters:
    # - pool_names String[] The pool names.
    # - lb_methods LBMethod[] The load balancing methods to use for the pools.
    # - members PoolMemberDefinition[][] The lists of initial members of the pools.

    ##
    # Deletes all pools.
    # :method: delete_all_pools

    ##
    # Deletes the specified pools.
    # :method: delete_pool
    # :call-seq:
    # delete_pool(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the statistics for all the pools.
    # :method: get_all_statistics

    ##
    # Gets the alternate load balancing methods for the specified pools.
    # :method: get_alternate_lb_method
    # :call-seq:
    # get_alternate_lb_method(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the number of answers to return for the specified pools.
    # :method: get_answers_to_return
    # :call-seq:
    # get_answers_to_return(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the CNAMEs for the specified pools.
    # :method: get_cname
    # :call-seq:
    # get_cname(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the states to indicate whether to use dynamic ratio to modify the behavior of
    # QOS.
    # :method: get_dynamic_ratio_state
    # :call-seq:
    # get_dynamic_ratio_state(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the enabled state of the specified pools.
    # :method: get_enabled_state
    # :call-seq:
    # get_enabled_state(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the fallback/emergency failure IP for the specified pools.
    # :method: get_fallback_ip
    # :call-seq:
    # get_fallback_ip(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the fallback load balancing methods for the specified pools.
    # :method: get_fallback_lb_method
    # :call-seq:
    # get_fallback_lb_method(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets all metrics limits for a sequence of pools.
    # :method: get_limit
    # :call-seq:
    # get_limit(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets a list of pools.
    # :method: get_list

    ##
    # Gets the states indicating whether to disable pool members when pool member status
    # goes from Green to Red.
    # :method: get_manual_resume_state
    # :call-seq:
    # get_manual_resume_state(pool_names)
    #
    # Parameters:
    # - pool_names String[] The list of pools.

    ##
    # Gets a list of pool members.
    # :method: get_member
    # :call-seq:
    # get_member(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the monitor associations for the specified pools, i.e. the monitor rules used
    # by the pools.
    # :method: get_monitor_association
    # :call-seq:
    # get_monitor_association(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the statuses of the specified pools.
    # :method: get_object_status
    # :call-seq:
    # get_object_status(pool_names)
    #
    # Parameters:
    # - pool_names String[] The pool names.

    ##
    # Gets the preferred load balancing methods for the specified pools.
    # :method: get_preferred_lb_method
    # :call-seq:
    # get_preferred_lb_method(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the relative weight for bits per second when the load balancing mode is set
    # to LB_METHOD_QOS.
    # :method: get_qos_coefficient_bps
    # :call-seq:
    # get_qos_coefficient_bps(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the relative weight for connection rate when the load balancing mode is set
    # to LB_METHOD_QOS. This function is deprecated and new applications should use vs_score.
    # :method: get_qos_coefficient_connection_rate
    # :call-seq:
    # get_qos_coefficient_connection_rate(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the relative weight for ping packet completion rate when the load balancing
    # mode is set to LB_METHOD_QOS.
    # :method: get_qos_coefficient_hit_ratio
    # :call-seq:
    # get_qos_coefficient_hit_ratio(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the relative weight for hops when the load balancing mode is set to LB_METHOD_QOS.
    # :method: get_qos_coefficient_hops
    # :call-seq:
    # get_qos_coefficient_hops(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the relative weight for link capacity when the load balancing mode is set to
    # LB_METHOD_QOS.
    # :method: get_qos_coefficient_lcs
    # :call-seq:
    # get_qos_coefficient_lcs(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the relative weight for packet rate when the load balancing mode is set to LB_METHOD_QOS.
    # :method: get_qos_coefficient_packet_rate
    # :call-seq:
    # get_qos_coefficient_packet_rate(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the relative weight for round-trip time when the load balancing mode is set
    # to LB_METHOD_QOS.
    # :method: get_qos_coefficient_rtt
    # :call-seq:
    # get_qos_coefficient_rtt(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the relative weight for topology when the load balancing mode is set to LB_METHOD_QOS.
    # :method: get_qos_coefficient_topology
    # :call-seq:
    # get_qos_coefficient_topology(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the relative weight for virtual server capacity when the load balancing mode
    # is set to LB_METHOD_QOS.
    # :method: get_qos_coefficient_vs_capacity
    # :call-seq:
    # get_qos_coefficient_vs_capacity(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the relative weight for virtual server (VS) score when the load balancing mode
    # is set to LB_METHOD_QOS.
    # :method: get_qos_coefficient_vs_score
    # :call-seq:
    # get_qos_coefficient_vs_score(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the statistics for the specified pools.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the TTL values for the specified pools.
    # :method: get_ttl
    # :call-seq:
    # get_ttl(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the states to indicate whether to check the availability of pool member availability
    # before using them.
    # :method: get_verify_member_availability_state
    # :call-seq:
    # get_verify_member_availability_state(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Removes members from the specified pools.
    # :method: remove_member
    # :call-seq:
    # remove_member(pool_names ,members)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - members IPPortDefinition[][] The members to delete from the pools.

    ##
    # Removes the monitor associations for the specified pools. This basically deletes
    # the monitor associations between a pool and a monitor rule, i.e. the specified pools
    # will no longer be monitored.
    # :method: remove_monitor_association
    # :call-seq:
    # remove_monitor_association(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Resets the statistics for the specified pools.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Sets the alternate load balancing methods for the specified pools.
    # :method: set_alternate_lb_method
    # :call-seq:
    # set_alternate_lb_method(pool_names ,lb_methods)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - lb_methods LBMethod[] The alternate load balancing methods to use for the pools.

    ##
    # Sets the number of answers to return for the specified pools.
    # :method: set_answers_to_return
    # :call-seq:
    # set_answers_to_return(pool_names ,answers)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - answers long[] The Round Robin LDNS limits to set for the pools.

    ##
    # Sets the CNAMEs for the specified pools.
    # :method: set_cname
    # :call-seq:
    # set_cname(pool_names ,cnames)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - cnames String[] The CNAMEs for the specified pools.

    ##
    # Sets the states to indicate whether to use dynamic ratio to modify the behavior of
    # QOS.
    # :method: set_dynamic_ratio_state
    # :call-seq:
    # set_dynamic_ratio_state(pool_names ,states)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - states EnabledState[] The states to set for the pools.

    ##
    # Sets the enabled state of the specified pools.
    # :method: set_enabled_state
    # :call-seq:
    # set_enabled_state(pool_names ,states)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - states EnabledState[] The enabled states to set.

    ##
    # Sets the fallback/emergency failure IP for the specified pools.
    # :method: set_fallback_ip
    # :call-seq:
    # set_fallback_ip(pool_names ,ips)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - ips String[] The fallback IP addresses for the specified pools.

    ##
    # Sets the fallback load balancing methods for the specified pools.
    # :method: set_fallback_lb_method
    # :call-seq:
    # set_fallback_lb_method(pool_names ,lb_methods)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - lb_methods LBMethod[] The fallback load balancing methods to use for the pools.

    ##
    # Sets the limits for pool metrics.
    # :method: set_limit
    # :call-seq:
    # set_limit(limits)
    #
    # Parameters:
    # - limits PoolMetricLimit[] The pools' metric limits.

    ##
    # Sets the states indicating whether to disable pool members when pool member status
    # goes from Green to Red.
    # :method: set_manual_resume_state
    # :call-seq:
    # set_manual_resume_state(pool_names ,states)
    #
    # Parameters:
    # - pool_names String[] The list of pools.
    # - states EnabledState[] The states to set for the pools.

    ##
    # Sets/creates the monitor associations for the specified pools. This basically creates
    # the monitor associations between a pool and a monitor rule.
    # :method: set_monitor_association
    # :call-seq:
    # set_monitor_association(monitor_associations)
    #
    # Parameters:
    # - monitor_associations MonitorAssociation[] The monitor associations that will be used to evaluate the specified pools.

    ##
    # Sets the preferred load balancing methods for the specified pools.
    # :method: set_preferred_lb_method
    # :call-seq:
    # set_preferred_lb_method(pool_names ,lb_methods)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - lb_methods LBMethod[] The preferred load balancing methods to use for the pools.

    ##
    # Sets the relative weight for bits per second when the load balancing mode is set
    # to LB_METHOD_QOS.
    # :method: set_qos_coefficient_bps
    # :call-seq:
    # set_qos_coefficient_bps(pool_names ,values)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - values long[] The bits per second QoS coefficients of the specified pools.

    ##
    # Sets the relative weight for connection rate when the load balancing mode is set
    # to LB_METHOD_QOS. This function is deprecated and new applications should use vs_score.
    # :method: set_qos_coefficient_connection_rate
    # :call-seq:
    # set_qos_coefficient_connection_rate(pool_names ,values)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - values long[] The connection rate QoS coefficients of the specified pools.

    ##
    # Sets the relative weight for ping packet completion rate when the load balancing
    # mode is set to LB_METHOD_QOS.
    # :method: set_qos_coefficient_hit_ratio
    # :call-seq:
    # set_qos_coefficient_hit_ratio(pool_names ,values)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - values long[] The ping packet completion rate QoS coefficients of the specified pools.

    ##
    # Sets the relative weight for hops when the load balancing mode is set to LB_METHOD_QOS.
    # :method: set_qos_coefficient_hops
    # :call-seq:
    # set_qos_coefficient_hops(pool_names ,values)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - values long[] The hops QoS coefficients of the specified pools.

    ##
    # Sets the relative weight for link capacity when the load balancing mode is set to
    # LB_METHOD_QOS.
    # :method: set_qos_coefficient_lcs
    # :call-seq:
    # set_qos_coefficient_lcs(pool_names ,values)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - values long[] The link capacity QoS coefficients of the specified pools.

    ##
    # Sets the relative weight for packet rate when the load balancing mode is set to LB_METHOD_QOS.
    # :method: set_qos_coefficient_packet_rate
    # :call-seq:
    # set_qos_coefficient_packet_rate(pool_names ,values)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - values long[] The packet rate QoS coefficients of the specified pools.

    ##
    # Sets the relative weight for round-trip time when the load balancing mode is set
    # to LB_METHOD_QOS.
    # :method: set_qos_coefficient_rtt
    # :call-seq:
    # set_qos_coefficient_rtt(pool_names ,values)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - values long[] The RTT QoS coefficients of the specified pools.

    ##
    # Sets the relative weight for topology when the load balancing mode is set to LB_METHOD_QOS.
    # :method: set_qos_coefficient_topology
    # :call-seq:
    # set_qos_coefficient_topology(pool_names ,values)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - values long[] The topology QoS coefficients of the specified pools.

    ##
    # Sets the relative weight for virtual server capacity when the load balancing mode
    # is set to LB_METHOD_QOS.
    # :method: set_qos_coefficient_vs_capacity
    # :call-seq:
    # set_qos_coefficient_vs_capacity(pool_names ,values)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - values long[] The virtual server capacity QoS coefficients of the specified pools.

    ##
    # Sets the relative weight for virtual server (VS) score when the load balancing mode
    # is set to LB_METHOD_QOS.
    # :method: set_qos_coefficient_vs_score
    # :call-seq:
    # set_qos_coefficient_vs_score(pool_names ,values)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - values long[] The VS score QoS coefficients of the specified pools.

    ##
    # Sets the TTL values for the specified pools.
    # :method: set_ttl
    # :call-seq:
    # set_ttl(pool_names ,values)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - values long[] The TTLs of the specified pools.

    ##
    # Sets the states to indicate whether to check the availability of pool member availability
    # before using them.
    # :method: set_verify_member_availability_state
    # :call-seq:
    # set_verify_member_availability_state(pool_names ,states)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - states EnabledState[] The states to set for the pools.


  end
end
