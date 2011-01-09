module IControl::GlobalLB
  ##
  # The Pool interface enables you to work with pools and their attributes.
  class Pool < IControl::Base

    set_id_name "pool_names"

    class MonitorAssociation < IControl::Base::Struct; end
    class PoolMemberDefinition < IControl::Base::Struct; end
    class PoolMetricLimit < IControl::Base::Struct; end
    class PoolStatisticEntry < IControl::Base::Struct; end
    class PoolStatistics < IControl::Base::Struct; end
    class MonitorAssociationSequence < IControl::Base::Sequence ; end
    class PoolMemberDefinitionSequence < IControl::Base::Sequence ; end
    class PoolMemberDefinitionSequenceSequence < IControl::Base::SequenceSequence ; end
    class PoolMetricLimitSequence < IControl::Base::Sequence ; end
    class PoolStatisticEntrySequence < IControl::Base::Sequence ; end    ##
    # Adds members to this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Pool::PoolMemberDefinition[]] :members The members to add to the pools.
    def add_member(opts)
      check_params(opts,[:members])
      super
    end

    ##
    # Creates this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::LBMethod] :lb_methods The load balancing methods to use for the pools.
    # @option opts [IControl::GlobalLB::Pool::PoolMemberDefinition[]] :members The lists of initial members of the pools.
    def create(opts)
      check_params(opts,[:lb_methods,:members])
      super
    end

    ##
    # Deletes all pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_pools
      super
    end

    ##
    # Deletes this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_pool
      super
    end

    ##
    # Gets the statistics for all the pool.
    # @rspec_example
    # @return [PoolStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the alternate load balancing methods for this pool.
    # @rspec_example
    # @return [LBMethod]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def alternate_lb_method
      super
    end

    ##
    # Gets the number of answers to return for this pool.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def answers_to_return
      super
    end

    ##
    # Gets the CNAMEs for this pool.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def cname
      super
    end

    ##
    # Gets the states to indicate whether to use dynamic ratio to modify the behavior of
    # QOS.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def dynamic_ratio_state
      super
    end

    ##
    # Gets the enabled state of this pool.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def enabled_state
      super
    end

    ##
    # Gets the fallback/emergency failure IP for this pool.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def fallback_ip
      super
    end

    ##
    # Gets the fallback load balancing methods for this pool.
    # @rspec_example
    # @return [LBMethod]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def fallback_lb_method
      super
    end

    ##
    # Gets all metrics limits for a sequence of pool.
    # @rspec_example
    # @return [PoolMetricLimit]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def limit
      super
    end

    ##
    # Gets a list of pool.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the states indicating whether to disable pool members when pool member status
    # goes from Green to Red.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def manual_resume_state
      super
    end

    ##
    # Gets a list of pool members.
    # @rspec_example
    # @return [PoolMemberDefinition[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def member
      super
    end

    ##
    # Gets the monitor associations for this pool, i.e. the monitor rules used by the pool.
    # @rspec_example
    # @return [MonitorAssociation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def monitor_association
      super
    end

    ##
    # Gets the statuses of this pool.
    # @rspec_example
    # @return [ObjectStatus]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def object_status
      super
    end

    ##
    # Gets the preferred load balancing methods for this pool.
    # @rspec_example
    # @return [LBMethod]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def preferred_lb_method
      super
    end

    ##
    # Gets the relative weight for bits per second when the load balancing mode is set
    # to LB_METHOD_QOS.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def qos_coefficient_bps
      super
    end

    ##
    # Gets the relative weight for connection rate when the load balancing mode is set
    # to LB_METHOD_QOS. This function is deprecated and new applications should use vs_score.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def qos_coefficient_connection_rate
      super
    end

    ##
    # Gets the relative weight for ping packet completion rate when the load balancing
    # mode is set to LB_METHOD_QOS.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def qos_coefficient_hit_ratio
      super
    end

    ##
    # Gets the relative weight for hops when the load balancing mode is set to LB_METHOD_QOS.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def qos_coefficient_hops
      super
    end

    ##
    # Gets the relative weight for link capacity when the load balancing mode is set to
    # LB_METHOD_QOS.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def qos_coefficient_lcs
      super
    end

    ##
    # Gets the relative weight for packet rate when the load balancing mode is set to LB_METHOD_QOS.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def qos_coefficient_packet_rate
      super
    end

    ##
    # Gets the relative weight for round-trip time when the load balancing mode is set
    # to LB_METHOD_QOS.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def qos_coefficient_rtt
      super
    end

    ##
    # Gets the relative weight for topology when the load balancing mode is set to LB_METHOD_QOS.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def qos_coefficient_topology
      super
    end

    ##
    # Gets the relative weight for virtual server capacity when the load balancing mode
    # is set to LB_METHOD_QOS.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def qos_coefficient_vs_capacity
      super
    end

    ##
    # Gets the relative weight for virtual server (VS) score when the load balancing mode
    # is set to LB_METHOD_QOS.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def qos_coefficient_vs_score
      super
    end

    ##
    # Gets the statistics for this pool.
    # @rspec_example
    # @return [PoolStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Gets the TTL values for this pool.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ttl
      super
    end

    ##
    # Gets the states to indicate whether to check the availability of pool member availability
    # before using them.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def verify_member_availability_state
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
    # Removes members from this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::IPPortDefinition[]] :members The members to delete from the pools.
    def remove_member(opts)
      check_params(opts,[:members])
      super
    end

    ##
    # Removes the monitor associations for this pool. This basically deletes the monitor
    # associations between a pool and a monitor rule, i.e. this pool will no longer be
    # monitored.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_monitor_association
      super
    end

    ##
    # Resets the statistics for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the alternate load balancing methods for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::LBMethod] :lb_methods The alternate load balancing methods to use for the pools.
    def set_alternate_lb_method(opts)
      check_params(opts,[:lb_methods])
      super
    end

    ##
    # Sets the number of answers to return for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :answers The Round Robin LDNS limits to set for the pools.
    def set_answers_to_return(opts)
      check_params(opts,[:answers])
      super
    end

    ##
    # Sets the CNAMEs for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :cnames The CNAMEs for the specified pools.
    def set_cname(opts)
      check_params(opts,[:cnames])
      super
    end

    ##
    # Sets the states to indicate whether to use dynamic ratio to modify the behavior of
    # QOS.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set for the pools.
    def set_dynamic_ratio_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the enabled state of this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The enabled states to set.
    def set_enabled_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the fallback/emergency failure IP for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :ips The fallback IP addresses for the specified pools.
    def set_fallback_ip(opts)
      check_params(opts,[:ips])
      super
    end

    ##
    # Sets the fallback load balancing methods for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::LBMethod] :lb_methods The fallback load balancing methods to use for the pools.
    def set_fallback_lb_method(opts)
      check_params(opts,[:lb_methods])
      super
    end

    ##
    # Sets the limits for pool metrics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Pool::PoolMetricLimit] :limits The pools' metric limits.
    def set_limit(opts)
      check_params(opts,[:limits])
      super
    end

    ##
    # Sets the states indicating whether to disable pool members when pool member status
    # goes from Green to Red.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set for the pools.
    def set_manual_resume_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets/creates the monitor associations for this pool. This basically creates the monitor
    # associations between a pool and a monitor rule.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Pool::MonitorAssociation] :monitor_associations The monitor associations that will be used to evaluate the specified pools.
    def set_monitor_association(opts)
      check_params(opts,[:monitor_associations])
      super
    end

    ##
    # Sets the preferred load balancing methods for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::LBMethod] :lb_methods The preferred load balancing methods to use for the pools.
    def set_preferred_lb_method(opts)
      check_params(opts,[:lb_methods])
      super
    end

    ##
    # Sets the relative weight for bits per second when the load balancing mode is set
    # to LB_METHOD_QOS.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :values The bits per second QoS coefficients of the specified pools.
    def set_qos_coefficient_bps(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the relative weight for connection rate when the load balancing mode is set
    # to LB_METHOD_QOS. This function is deprecated and new applications should use vs_score.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :values The connection rate QoS coefficients of the specified pools.
    def set_qos_coefficient_connection_rate(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the relative weight for ping packet completion rate when the load balancing
    # mode is set to LB_METHOD_QOS.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :values The ping packet completion rate QoS coefficients of the specified pools.
    def set_qos_coefficient_hit_ratio(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the relative weight for hops when the load balancing mode is set to LB_METHOD_QOS.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :values The hops QoS coefficients of the specified pools.
    def set_qos_coefficient_hops(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the relative weight for link capacity when the load balancing mode is set to
    # LB_METHOD_QOS.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :values The link capacity QoS coefficients of the specified pools.
    def set_qos_coefficient_lcs(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the relative weight for packet rate when the load balancing mode is set to LB_METHOD_QOS.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :values The packet rate QoS coefficients of the specified pools.
    def set_qos_coefficient_packet_rate(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the relative weight for round-trip time when the load balancing mode is set
    # to LB_METHOD_QOS.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :values The RTT QoS coefficients of the specified pools.
    def set_qos_coefficient_rtt(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the relative weight for topology when the load balancing mode is set to LB_METHOD_QOS.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :values The topology QoS coefficients of the specified pools.
    def set_qos_coefficient_topology(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the relative weight for virtual server capacity when the load balancing mode
    # is set to LB_METHOD_QOS.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :values The virtual server capacity QoS coefficients of the specified pools.
    def set_qos_coefficient_vs_capacity(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the relative weight for virtual server (VS) score when the load balancing mode
    # is set to LB_METHOD_QOS.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :values The VS score QoS coefficients of the specified pools.
    def set_qos_coefficient_vs_score(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the TTL values for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :values The TTLs of the specified pools.
    def set_ttl(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the states to indicate whether to check the availability of pool member availability
    # before using them.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set for the pools.
    def set_verify_member_availability_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # A struct that describes a pool's monitor association.
    # @attr [String] pool_name The pool with which the monitor rule is associated with.
    # @attr [IControl::GlobalLB::MonitorRule] monitor_rule The monitor rule used in the monitor association.
    class MonitorAssociation < IControl::Base::Struct
      icontrol_attribute :pool_name, String
      icontrol_attribute :monitor_rule, IControl::GlobalLB::MonitorRule
    end

    ##
    # A struct that contains a definition for a pool member.
    # @attr [IControl::Common::IPPortDefinition] member The pool member.
    # @attr [Numeric] order The order of this pool member in the pool.
    class PoolMemberDefinition < IControl::Base::Struct
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      icontrol_attribute :order, Numeric
    end

    ##
    # A struct that contains metric limits for a pool.
    # @attr [String] pool_name The pool name.
    # @attr [IControl::GlobalLB::MetricLimitSequence] metric_limits Metric limits of the pool.
    class PoolMetricLimit < IControl::Base::Struct
      icontrol_attribute :pool_name, String
      icontrol_attribute :metric_limits, IControl::GlobalLB::MetricLimitSequence
    end

    ##
    # A struct that describes statistics for a particular pool.
    # @attr [String] pool_name The pool name.
    # @attr [IControl::Common::StatisticSequence] statistics The statistics for the pool.
    class PoolStatisticEntry < IControl::Base::Struct
      icontrol_attribute :pool_name, String
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes pool statistics and timestamp.
    # @attr [IControl::GlobalLB::Pool::PoolStatisticEntrySequence] statistics The statistics for a sequence of pools.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class PoolStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::GlobalLB::Pool::PoolStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of monitor associations.
    class MonitorAssociationSequence < IControl::Base::Sequence ; end
    ## A sequence of PoolMemberDefinition's.
    class PoolMemberDefinitionSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of PoolMemberDefinition's.
    class PoolMemberDefinitionSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of PoolMetricLimit's.
    class PoolMetricLimitSequence < IControl::Base::Sequence ; end
    ## A sequence of Pool statistics.
    class PoolStatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
