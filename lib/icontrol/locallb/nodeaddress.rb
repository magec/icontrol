module IControl::LocalLB
  ##
  # The NodeAddress interface enables you to work with the states, statistics, limits,
  # availability, ratios, application response deltas, and monitors of a local load balancer's
  # node address.
  class NodeAddress < IControl::Base
    class MonitorAssociation < IControl::Base::Struct; end
    class MonitorAssociationRemoval < IControl::Base::Struct; end
    class NodeAddressStatisticEntry < IControl::Base::Struct; end
    class NodeAddressStatistics < IControl::Base::Struct; end    ## A sequence of MonitorAssociationRemoval's.
    class MonitorAssociationRemovalSequence < IControl::Base::Sequence ; end## A sequence of monitor associations.
    class MonitorAssociationSequence < IControl::Base::Sequence ; end## A sequence of Node address statistics.
    class NodeAddressStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes a node address's monitor association.
    class MonitorAssociation < IControl::Base::Struct
      # The node address information with which the monitor rule is associated with.
      icontrol_attribute :node_address, IControl::LocalLB::MonitorIP
      # The monitor rule used in the monitor association.
      icontrol_attribute :monitor_rule, IControl::LocalLB::MonitorRule
    end

    ##
    # A struct that describes a node address's monitor association to be removed.
    class MonitorAssociationRemoval < IControl::Base::Struct
      # The node address information whose monitor association will be removed.
      icontrol_attribute :node_address, IControl::LocalLB::MonitorIP
      # The rule indicating how the monitor association will be removed.
      icontrol_attribute :removal_rule, IControl::LocalLB::MonitorAssociationRemovalRule
    end

    ##
    # A struct that describes statistics for a particular node address.
    class NodeAddressStatisticEntry < IControl::Base::Struct
      # The node address.
      icontrol_attribute :node_address, String
      # The statistics for the node address.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes Node address statistics and timestamp.
    class NodeAddressStatistics < IControl::Base::Struct
      # The statistics for a sequence of node addresses.
      icontrol_attribute :statistics, IControl::LocalLB::NodeAddress::NodeAddressStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified node addresses.
    # :method: create
    # :call-seq:
    # create(node_addresses ,limits)
    #
    # Parameters:
    # - node_addresses String[] The node addresses.
    # - limits long[] The connection limits.

    ##
    # Deletes all node addresses.
    # :method: delete_all_node_addresses

    ##
    # Deletes the specified node addresses.
    # :method: delete_node_address
    # :call-seq:
    # delete_node_address(node_addresses)
    #
    # Parameters:
    # - node_addresses String[] The node addresses.

    ##
    # Gets the statistics for all the node addresses.
    # :method: get_all_statistics

    ##
    # Gets the connection limits for the specified node addresses.
    # :method: get_connection_limit
    # :call-seq:
    # get_connection_limit(node_addresses)
    #
    # Parameters:
    # - node_addresses String[] The list of node addresses.

    ##
    # Gets the dynamic ratios of a node addresses.
    # :method: get_dynamic_ratio
    # :call-seq:
    # get_dynamic_ratio(node_addresses)
    #
    # Parameters:
    # - node_addresses String[] The node addresses.

    ##
    # Gets a list of all node addresses.
    # :method: get_list

    ##
    # Gets the monitor associations used by the specified node addresses, i.e. the monitor
    # rules used by the node addresses.
    # :method: get_monitor_association
    # :call-seq:
    # get_monitor_association(addresses)
    #
    # Parameters:
    # - addresses MonitorIP[] The node addresses.

    ##
    # Gets the monitor instance information for the specified node addresses.
    # :method: get_monitor_instance
    # :call-seq:
    # get_monitor_instance(addresses)
    #
    # Parameters:
    # - addresses MonitorIP[] The node addresses.

    ##
    # Gets the current availability status of the specified node addresses.
    # :method: get_monitor_status
    # :call-seq:
    # get_monitor_status(node_addresses)
    #
    # Parameters:
    # - node_addresses String[] The list of node addresses.

    ##
    # Gets the statuses of the specified node addresses.
    # :method: get_object_status
    # :call-seq:
    # get_object_status(node_addresses)
    #
    # Parameters:
    # - node_addresses String[] The list of node addresses.

    ##
    # Gets the ratios for the specified node addresses.
    # :method: get_ratio
    # :call-seq:
    # get_ratio(node_addresses)
    #
    # Parameters:
    # - node_addresses String[] The list of node addresses to get ratios for.

    ##
    # Gets the screen names for the specified node addresses.
    # :method: get_screen_name
    # :call-seq:
    # get_screen_name(node_addresses)
    #
    # Parameters:
    # - node_addresses String[] The node addresses.

    ##
    # Note: This function has been deprecated. Please use get_session_status. Gets the
    # states that allows new sessions to be established for the specified node addresses.
    # :method: get_session_enabled_state
    # :call-seq:
    # get_session_enabled_state(node_addresses)
    #
    # Parameters:
    # - node_addresses String[] The node addresses.

    ##
    # Gets the current session statuses of the specified node addresses.
    # :method: get_session_status
    # :call-seq:
    # get_session_status(node_addresses)
    #
    # Parameters:
    # - node_addresses String[] The node addresses.

    ##
    # Gets the statistics for the specified node.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(node_addresses)
    #
    # Parameters:
    # - node_addresses String[] The node addresses to get the statistics from.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Removes the monitor associations for the specified node addresses. This basically
    # deletes the monitor associations between a node address and a monitor rule, i.e.
    # the specified node address will no longer be monitored.
    # :method: remove_monitor_association
    # :call-seq:
    # remove_monitor_association(monitor_associations)
    #
    # Parameters:
    # - monitor_associations MonitorAssociationRemoval[] The monitor association removal rules that will be used to remove the monitor associations			 for the specified node addresses.

    ##
    # Resets the statistics for the specified node addresses.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(node_addresses)
    #
    # Parameters:
    # - node_addresses String[] The list of node addresses.

    ##
    # Sets the connection limits for a sequence of node addresses.
    # :method: set_connection_limit
    # :call-seq:
    # set_connection_limit(node_addresses ,limits)
    #
    # Parameters:
    # - node_addresses String[] The list of node addresses.
    # - limits ULong64[] The limits for the specified node addresses.

    ##
    # Sets the dynamic ratios for the specified node addresses
    # :method: set_dynamic_ratio
    # :call-seq:
    # set_dynamic_ratio(node_addresses ,dynamic_ratios)
    #
    # Parameters:
    # - node_addresses String[] The node addresses.
    # - dynamic_ratios short[] The dynamic ratios for the specified node addresses.

    ##
    # Sets/creates the monitor associations for the specified node addresses. This basically
    # creates the monitor associations between a node address and a monitor rule.
    # :method: set_monitor_association
    # :call-seq:
    # set_monitor_association(monitor_associations)
    #
    # Parameters:
    # - monitor_associations MonitorAssociation[] The monitor associations that will be used to evaluate the specified node addresses.

    ##
    # Sets the availability states for a sequence of node addresses, either enabled/disabled
    # or up/down.
    # :method: set_monitor_state
    # :call-seq:
    # set_monitor_state(node_addresses ,states)
    #
    # Parameters:
    # - node_addresses String[] The list of node addresses.
    # - states EnabledState[] The availability states of the specified node addresses.

    ##
    # Sets the ratios for the specified node addresses.
    # :method: set_ratio
    # :call-seq:
    # set_ratio(node_addresses ,ratios)
    #
    # Parameters:
    # - node_addresses String[] The node addresses.
    # - ratios long[] The ratios to be set.

    ##
    # Sets the screen names for the specified node addresses.
    # :method: set_screen_name
    # :call-seq:
    # set_screen_name(node_addresses ,names)
    #
    # Parameters:
    # - node_addresses String[] The node addresses.
    # - names String[] The screen names to be set.

    ##
    # Sets the states that allows new sessions to be established for the specified node
    # addresses.
    # :method: set_session_enabled_state
    # :call-seq:
    # set_session_enabled_state(node_addresses ,states)
    #
    # Parameters:
    # - node_addresses String[] The list of node addresses.
    # - states EnabledState[] The new session enabled states of the specified node addresses.


  end
end
