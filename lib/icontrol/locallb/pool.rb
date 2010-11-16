module IControl::LocalLB
  ##
  # The Pool interface enables you to work with attributes, and statistics for pools.
  # You can also use this interface to create pools, add members to a pool, delete members
  # from a pool, find out the load balancing mode for a pool, and set the load balancing
  # mode for a pool.
  class Pool < IControl::Base
    class MonitorAssociation < IControl::Base::Struct; end
    class PoolStatisticEntry < IControl::Base::Struct; end
    class PoolStatistics < IControl::Base::Struct; end    ## A sequence of monitor associations.
    class MonitorAssociationSequence < IControl::Base::Sequence ; end## A sequence of Pool statistics.
    class PoolStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes a pool's monitor association.
    class MonitorAssociation < IControl::Base::Struct
      # The pool with which the monitor rule is associated with.
      icontrol_attribute :pool_name, String
      # The monitor rule used in the monitor association.
      icontrol_attribute :monitor_rule, IControl::LocalLB::MonitorRule
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
      icontrol_attribute :statistics, IControl::LocalLB::Pool::PoolStatisticEntrySequence
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
    # - members IPPortDefinition[][] The members to add to the pools.

    ##
    # Creates a new pool.
    # :method: create
    # :call-seq:
    # create(pool_names ,lb_methods ,members)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - lb_methods LBMethod[] The load balancing methods to use for the pools.
    # - members IPPortDefinition[][] The lists of initial members of the pools.

    ##
    # Deletes all pools.
    # :method: delete_all_pools

    ##
    # Deletes the persistence records based on the specified persistent modes for the specified
    # pools.
    # :method: delete_persistence_record
    # :call-seq:
    # delete_persistence_record(pool_names ,persistence_modes)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - persistence_modes PersistenceMode[] The persistence modes from which we delete the persistence records.			 If the specified persistence mode is PERSIST_MODE_NONE, then all persistence			 records regardless of persistence mode will be deleted for that pool.

    ##
    # Deletes the specified pools.
    # :method: delete_pool
    # :call-seq:
    # delete_pool(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the action to take when the node goes down for the specified pools.
    # :method: get_action_on_service_down
    # :call-seq:
    # get_action_on_service_down(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the current active member counts for the specified pools.
    # :method: get_active_member_count
    # :call-seq:
    # get_active_member_count(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the aggregate dynamic ratio values from all the members of the pools.
    # :method: get_aggregate_dynamic_ratio
    # :call-seq:
    # get_aggregate_dynamic_ratio(pool_names)
    #
    # Parameters:
    # - pool_names String[] The pool names from which to get the dynamic ratios.

    ##
    # Gets the statistics for all the pools.
    # :method: get_all_statistics

    ##
    # Gets the states indicating whether NATs are allowed for the specified pools.
    # :method: get_allow_nat_state
    # :call-seq:
    # get_allow_nat_state(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the states indicating whether SNATs are allowed for the specified pools.
    # :method: get_allow_snat_state
    # :call-seq:
    # get_allow_snat_state(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the IP ToS values for client traffic for the specified pools.
    # :method: get_client_ip_tos
    # :call-seq:
    # get_client_ip_tos(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the link QoS values for client traffic for the specified pools.
    # :method: get_client_link_qos
    # :call-seq:
    # get_client_link_qos(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the gateway failsafe unit IDs for the specified pools.
    # :method: get_gateway_failsafe_unit_id
    # :call-seq:
    # get_gateway_failsafe_unit_id(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the load balancing methods for the specified pools.
    # :method: get_lb_method
    # :call-seq:
    # get_lb_method(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets a list of all pools.
    # :method: get_list

    ##
    # Gets a list of pool members.
    # :method: get_member
    # :call-seq:
    # get_member(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the minimum active member counts for the specified pools.
    # :method: get_minimum_active_member
    # :call-seq:
    # get_minimum_active_member(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the minimum member counts that are required to be UP for the specified pools.
    # :method: get_minimum_up_member
    # :call-seq:
    # get_minimum_up_member(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the actions to be taken if the minimum number of members required to be UP for
    # the specified pools is not met.
    # :method: get_minimum_up_member_action
    # :call-seq:
    # get_minimum_up_member_action(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the states indicating that the feature that requires a minimum number of members
    # to be UP is enabled/disabled for the specified pools.
    # :method: get_minimum_up_member_enabled_state
    # :call-seq:
    # get_minimum_up_member_enabled_state(pool_names)
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
    # Gets the monitor instance information for the specified pools, i.e. the monitor instance
    # information for the pool members of the specified pools.
    # :method: get_monitor_instance
    # :call-seq:
    # get_monitor_instance(pool_names)
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
    # - pool_names String[] The names of the pools.

    ##
    # Gets the persistence records based on the specified persistent modes for the specified
    # pools.
    # :method: get_persistence_record
    # :call-seq:
    # get_persistence_record(pool_names ,persistence_modes)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - persistence_modes PersistenceMode[] The persistence modes from which we retrieve the persistence records.			 If the specified persistence mode is PERSIST_MODE_NONE, then all persistence			 records regardless of persistence mode will be returned for that pool.

    ##
    # Gets the IP ToS values for server traffic for the specified pools.
    # :method: get_server_ip_tos
    # :call-seq:
    # get_server_ip_tos(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the link QoS values for server traffic for the specified pools.
    # :method: get_server_link_qos
    # :call-seq:
    # get_server_link_qos(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the simple timeouts for the specified pools.
    # :method: get_simple_timeout
    # :call-seq:
    # get_simple_timeout(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the ramp-up time (in seconds) to gradually ramp up the load on newly added or
    # freshly detected UP pool members.
    # :method: get_slow_ramp_time
    # :call-seq:
    # get_slow_ramp_time(pool_names)
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
    # - pool_names String[] The pools to get the statistics from.

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
    # Sets the action to take when the node goes down for the specified pools.
    # :method: set_action_on_service_down
    # :call-seq:
    # set_action_on_service_down(pool_names ,actions)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - actions ServiceDownAction[] The action to take when the node goes down for the specified pools.

    ##
    # Sets the states indicating whether NATs are allowed for the specified pools.
    # :method: set_allow_nat_state
    # :call-seq:
    # set_allow_nat_state(pool_names ,states)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - states EnabledState[] The NAT allow/disallow states of the specified pools.

    ##
    # Sets the states indicating whether SNATs are allowed for the specified pools.
    # :method: set_allow_snat_state
    # :call-seq:
    # set_allow_snat_state(pool_names ,states)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - states EnabledState[] The SNAT allow/disallow states of the specified pools.

    ##
    # Sets the IP ToS values for client traffic for the specified pools.
    # :method: set_client_ip_tos
    # :call-seq:
    # set_client_ip_tos(pool_names ,values)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - values long[] The client IP ToS values.

    ##
    # Sets the link QoS values for client traffic for the specified pools.
    # :method: set_client_link_qos
    # :call-seq:
    # set_client_link_qos(pool_names ,values)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - values long[] The client-side link QoS values.

    ##
    # Sets the gateway failsafe unit IDs for the specified pools.
    # :method: set_gateway_failsafe_unit_id
    # :call-seq:
    # set_gateway_failsafe_unit_id(pool_names ,unit_ids)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - unit_ids long[] The gateway failsafe unit IDs of the specified pools.

    ##
    # Sets the load balancing methods for the specified pools.
    # :method: set_lb_method
    # :call-seq:
    # set_lb_method(pool_names ,lb_methods)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - lb_methods LBMethod[] The load balancing methods to use for the pools.

    ##
    # Sets the minimum active member counts for the specified pools.
    # :method: set_minimum_active_member
    # :call-seq:
    # set_minimum_active_member(pool_names ,values)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - values long[] The minimum active member counts of the specified pools.

    ##
    # Sets the minimum member counts that are required to be UP for the specified pools.
    # :method: set_minimum_up_member
    # :call-seq:
    # set_minimum_up_member(pool_names ,values)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - values long[] The minimum UP member counts of the specified pools.

    ##
    # Sets the actions to be taken if the minimum number of members required to be UP for
    # the specified pools is not met.
    # :method: set_minimum_up_member_action
    # :call-seq:
    # set_minimum_up_member_action(pool_names ,actions)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - actions HAAction[] The actions to be taken if the minimum number of members required		 to be UP for the specified pools is not met.

    ##
    # Sets the states indicating that the feature that requires a minimum number of members
    # to be UP is enabled/disabled for the specified pools.
    # :method: set_minimum_up_member_enabled_state
    # :call-seq:
    # set_minimum_up_member_enabled_state(pool_names ,states)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - states EnabledState[] The minimum UP member states of the specified pools.

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
    # Sets the IP ToS values for server traffic for the specified pools.
    # :method: set_server_ip_tos
    # :call-seq:
    # set_server_ip_tos(pool_names ,values)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - values long[] The server IP ToS values.

    ##
    # Sets the link QoS values for server traffic for the specified pools.
    # :method: set_server_link_qos
    # :call-seq:
    # set_server_link_qos(pool_names ,values)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - values long[] The server link QoS values.

    ##
    # Sets the simple timeouts for the specified pools.
    # :method: set_simple_timeout
    # :call-seq:
    # set_simple_timeout(pool_names ,simple_timeouts)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - simple_timeouts long[] The simple timeouts.

    ##
    # Sets the ramp-up time (in seconds) to gradually ramp up the load on newly added or
    # freshly detected UP pool members.
    # :method: set_slow_ramp_time
    # :call-seq:
    # set_slow_ramp_time(pool_names ,values)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.
    # - values long[] The ramp-up times.


  end
end
