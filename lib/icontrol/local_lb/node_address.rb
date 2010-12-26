module IControl::LocalLB
  ##
  # The NodeAddress interface enables you to work with the states, statistics, limits, availability, ratios, application response deltas, and monitors of a local load balancer's node address.
  class NodeAddress < IControl::Base

    set_id_name "node_addresses"

    class MonitorAssociation < IControl::Base::Struct; end
    class MonitorAssociationRemoval < IControl::Base::Struct; end
    class NodeAddressStatisticEntry < IControl::Base::Struct; end
    class NodeAddressStatistics < IControl::Base::Struct; end    ##
    # Creates this node addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :limits The connection limits.
    def create(opts)
      check_params(opts,[:limits])
      super
    end

    ##
    # Deletes all node addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_node_addresses
      super
    end

    ##
    # Deletes this node addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_node_address
      super
    end

    ##
    # Gets the statistics for all the node addresse.
    # @return [NodeAddressStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the connection limits for this node addresse.
    # @return [ULong64]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def connection_limit
      super
    end

    ##
    # Gets the dynamic ratios of a node addresse.
    # @return [short]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def dynamic_ratio
      super
    end

    ##
    # Gets a list of all node addresse.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the monitor associations used by this node addresse, i.e. the monitor rules used by the node addresse.
    # @return [MonitorAssociation]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::MonitorIP] :addresses The node addresses.
    def monitor_association(opts)
      check_params(opts,[:addresses])
      super
    end

    ##
    # Gets the monitor instance information for this node addresse.
    # @return [MonitorInstanceState[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::MonitorIP] :addresses The node addresses.
    def monitor_instance(opts)
      check_params(opts,[:addresses])
      super
    end

    ##
    # Gets the current availability status of this node addresse.
    # @return [MonitorStatus]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def monitor_status
      super
    end

    ##
    # Gets the statuses of this node addresse.
    # @return [ObjectStatus]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def object_status
      super
    end

    ##
    # Gets the ratios for this node addresse.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def ratio
      super
    end

    ##
    # Gets the screen names for this node addresse.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def screen_name
      super
    end

    ##
    # Note: This function has been deprecated. Please use get_session_status. Gets the states that allows new sessions to be established for this node addresse.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def session_enabled_state
      super
    end

    ##
    # Gets the current session statuses of this node addresse.
    # @return [SessionStatus]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def session_status
      super
    end

    ##
    # Gets the statistics for this node.
    # @return [NodeAddressStatistics]
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
    # Removes the monitor associations for this node addresse. This basically deletes the monitor associations between a node address and a monitor rule, i.e. this node address will no longer be monitored.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::NodeAddress::MonitorAssociationRemoval] :monitor_associations The monitor association removal rules that will be used to remove the monitor associations			 for the specified node addresses.
    def remove_monitor_association(opts)
      check_params(opts,[:monitor_associations])
      super
    end

    ##
    # Resets the statistics for this node addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the connection limits for a sequence of node addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::ULong64] :limits The limits for the specified node addresses.
    def set_connection_limit(opts)
      check_params(opts,[:limits])
      super
    end

    ##
    # Sets the dynamic ratios for this node addresse
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [short] :dynamic_ratios The dynamic ratios for the specified node addresses.
    def set_dynamic_ratio(opts)
      check_params(opts,[:dynamic_ratios])
      super
    end

    ##
    # Sets/creates the monitor associations for this node addresse. This basically creates the monitor associations between a node address and a monitor rule.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::NodeAddress::MonitorAssociation] :monitor_associations The monitor associations that will be used to evaluate the specified node addresses.
    def set_monitor_association(opts)
      check_params(opts,[:monitor_associations])
      super
    end

    ##
    # Sets the availability states for a sequence of node addresse, either enabled/disabled or up/down.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The availability states of the specified node addresses.
    def set_monitor_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the ratios for this node addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :ratios The ratios to be set.
    def set_ratio(opts)
      check_params(opts,[:ratios])
      super
    end

    ##
    # Sets the screen names for this node addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :names The screen names to be set.
    def set_screen_name(opts)
      check_params(opts,[:names])
      super
    end

    ##
    # Sets the states that allows new sessions to be established for this node addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The new session enabled states of the specified node addresses.
    def set_session_enabled_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # A struct that describes a node address's monitor association.
    # @attr [IControl::LocalLB::MonitorIP] node_address The node address information with which the monitor rule is associated with.
    # @attr [IControl::LocalLB::MonitorRule] monitor_rule The monitor rule used in the monitor association.
    class MonitorAssociation < IControl::Base::Struct
      icontrol_attribute :node_address, IControl::LocalLB::MonitorIP
      icontrol_attribute :monitor_rule, IControl::LocalLB::MonitorRule
    end

    ##
    # A struct that describes a node address's monitor association to be removed.
    # @attr [IControl::LocalLB::MonitorIP] node_address The node address information whose monitor association will be removed.
    # @attr [IControl::LocalLB::MonitorAssociationRemovalRule] removal_rule The rule indicating how the monitor association will be removed.
    class MonitorAssociationRemoval < IControl::Base::Struct
      icontrol_attribute :node_address, IControl::LocalLB::MonitorIP
      icontrol_attribute :removal_rule, IControl::LocalLB::MonitorAssociationRemovalRule
    end

    ##
    # A struct that describes statistics for a particular node address.
    # @attr [String] node_address The node address.
    # @attr [IControl::Common::Statistic] statistics The statistics for the node address.
    class NodeAddressStatisticEntry < IControl::Base::Struct
      icontrol_attribute :node_address, String
      icontrol_attribute :statistics, IControl::Common::Statistic
    end

    ##
    # A struct that describes Node address statistics and timestamp.
    # @attr [IControl::LocalLB::NodeAddress::NodeAddressStatisticEntry] statistics The statistics for a sequence of node addresses.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class NodeAddressStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::NodeAddress::NodeAddressStatisticEntry
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of MonitorAssociationRemoval's.
    class MonitorAssociationRemovalSequence < IControl::Base::Sequence ; end
    ## A sequence of monitor associations.
    class MonitorAssociationSequence < IControl::Base::Sequence ; end
    ## A sequence of Node address statistics.
    class NodeAddressStatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
