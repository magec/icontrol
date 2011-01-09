module IControl::LocalLB
  ##
  # The Pool interface enables you to work with attributes, and statistics for pools.
  # You can also use this interface to create pools, add members to a pool, delete members
  # from a pool, find out the load balancing mode for a pool, and set the load balancing
  # mode for a pool.
  class Pool < IControl::Base

    set_id_name "pool_names"

    class MonitorAssociation < IControl::Base::Struct; end
    class PoolStatisticEntry < IControl::Base::Struct; end
    class PoolStatistics < IControl::Base::Struct; end
    class MonitorAssociationSequence < IControl::Base::Sequence ; end
    class PoolStatisticEntrySequence < IControl::Base::Sequence ; end    ##
    # Adds members to this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::IPPortDefinition[]] :members The members to add to the pools.
    def add_member(opts)
      check_params(opts,[:members])
      super
    end

    ##
    # Creates a new pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::LBMethod] :lb_methods The load balancing methods to use for the pools.
    # @option opts [IControl::Common::IPPortDefinition[]] :members The lists of initial members of the pools.
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
    # Deletes the persistence records based on this persistent modes for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::PersistenceMode] :persistence_modes The persistence modes from which we delete the persistence records.			 If the specified persistence mode is PERSIST_MODE_NONE, then all persistence			 records regardless of persistence mode will be deleted for that pool.
    def delete_persistence_record(opts)
      check_params(opts,[:persistence_modes])
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
    # Gets the action to take when the node goes down for this pool.
    # @rspec_example
    # @return [ServiceDownAction]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def action_on_service_down
      super
    end

    ##
    # Gets the current active member counts for this pool.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def active_member_count
      super
    end

    ##
    # Gets the aggregate dynamic ratio values from all the members of the pool.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def aggregate_dynamic_ratio
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
    # Gets the states indicating whether NATs are allowed for this pool.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def allow_nat_state
      super
    end

    ##
    # Gets the states indicating whether SNATs are allowed for this pool.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def allow_snat_state
      super
    end

    ##
    # Gets the IP ToS values for client traffic for this pool.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def client_ip_tos
      super
    end

    ##
    # Gets the link QoS values for client traffic for this pool.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def client_link_qos
      super
    end

    ##
    # Gets the gateway failsafe unit IDs for this pool.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def gateway_failsafe_unit_id
      super
    end

    ##
    # Gets the load balancing methods for this pool.
    # @rspec_example
    # @return [LBMethod]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def lb_method
      super
    end

    ##
    # Gets a list of all pool.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets a list of pool members.
    # @rspec_example
    # @return [IPPortDefinition[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def member
      super
    end

    ##
    # Gets the minimum active member counts for this pool.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def minimum_active_member
      super
    end

    ##
    # Gets the minimum member counts that are required to be UP for this pool.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def minimum_up_member
      super
    end

    ##
    # Gets the actions to be taken if the minimum number of members required to be UP for
    # this pool is not met.
    # @rspec_example
    # @return [HAAction]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def minimum_up_member_action
      super
    end

    ##
    # Gets the states indicating that the feature that requires a minimum number of members
    # to be UP is enabled/disabled for this pool.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def minimum_up_member_enabled_state
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
    # Gets the monitor instance information for this pool, i.e. the monitor instance information
    # for the pool members of this pool.
    # @rspec_example
    # @return [MonitorInstanceState[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def monitor_instance
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
    # Gets the persistence records based on this persistent modes for this pool.
    # @rspec_example
    # @return [PersistenceRecord[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::PersistenceMode] :persistence_modes The persistence modes from which we retrieve the persistence records.			 If the specified persistence mode is PERSIST_MODE_NONE, then all persistence			 records regardless of persistence mode will be returned for that pool.
    def persistence_record(opts)
      check_params(opts,[:persistence_modes])
      super
    end

    ##
    # Gets the IP ToS values for server traffic for this pool.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def server_ip_tos
      super
    end

    ##
    # Gets the link QoS values for server traffic for this pool.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def server_link_qos
      super
    end

    ##
    # Gets the simple timeouts for this pool.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def simple_timeout
      super
    end

    ##
    # Gets the ramp-up time (in seconds) to gradually ramp up the load on newly added or
    # freshly detected UP pool members.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def slow_ramp_time
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
    # Sets the action to take when the node goes down for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ServiceDownAction] :actions The action to take when the node goes down for the specified pools.
    def set_action_on_service_down(opts)
      check_params(opts,[:actions])
      super
    end

    ##
    # Sets the states indicating whether NATs are allowed for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The NAT allow/disallow states of the specified pools.
    def set_allow_nat_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the states indicating whether SNATs are allowed for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The SNAT allow/disallow states of the specified pools.
    def set_allow_snat_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the IP ToS values for client traffic for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :values The client IP ToS values.
    def set_client_ip_tos(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the link QoS values for client traffic for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :values The client-side link QoS values.
    def set_client_link_qos(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the gateway failsafe unit IDs for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :unit_ids The gateway failsafe unit IDs of the specified pools.
    def set_gateway_failsafe_unit_id(opts)
      check_params(opts,[:unit_ids])
      super
    end

    ##
    # Sets the load balancing methods for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::LBMethod] :lb_methods The load balancing methods to use for the pools.
    def set_lb_method(opts)
      check_params(opts,[:lb_methods])
      super
    end

    ##
    # Sets the minimum active member counts for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :values The minimum active member counts of the specified pools.
    def set_minimum_active_member(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the minimum member counts that are required to be UP for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :values The minimum UP member counts of the specified pools.
    def set_minimum_up_member(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the actions to be taken if the minimum number of members required to be UP for
    # this pool is not met.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::HAAction] :actions The actions to be taken if the minimum number of members required		 to be UP for the specified pools is not met.
    def set_minimum_up_member_action(opts)
      check_params(opts,[:actions])
      super
    end

    ##
    # Sets the states indicating that the feature that requires a minimum number of members
    # to be UP is enabled/disabled for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The minimum UP member states of the specified pools.
    def set_minimum_up_member_enabled_state(opts)
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
    # @option opts [IControl::LocalLB::Pool::MonitorAssociation] :monitor_associations The monitor associations that will be used to evaluate the specified pools.
    def set_monitor_association(opts)
      check_params(opts,[:monitor_associations])
      super
    end

    ##
    # Sets the IP ToS values for server traffic for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :values The server IP ToS values.
    def set_server_ip_tos(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the link QoS values for server traffic for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :values The server link QoS values.
    def set_server_link_qos(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the simple timeouts for this pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :simple_timeouts The simple timeouts.
    def set_simple_timeout(opts)
      check_params(opts,[:simple_timeouts])
      super
    end

    ##
    # Sets the ramp-up time (in seconds) to gradually ramp up the load on newly added or
    # freshly detected UP pool members.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :values The ramp-up times.
    def set_slow_ramp_time(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # A struct that describes a pool's monitor association.
    # @attr [String] pool_name The pool with which the monitor rule is associated with.
    # @attr [IControl::LocalLB::MonitorRule] monitor_rule The monitor rule used in the monitor association.
    class MonitorAssociation < IControl::Base::Struct
      icontrol_attribute :pool_name, String
      icontrol_attribute :monitor_rule, IControl::LocalLB::MonitorRule
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
    # @attr [IControl::LocalLB::Pool::PoolStatisticEntrySequence] statistics The statistics for a sequence of pools.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class PoolStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::Pool::PoolStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of monitor associations.
    class MonitorAssociationSequence < IControl::Base::Sequence ; end
    ## A sequence of Pool statistics.
    class PoolStatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
