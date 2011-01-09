module IControl::LocalLB
  ##
  # The PoolMember interface enables you to work with the pool members and their settings,
  # and statistics.
  class PoolMember < IControl::Base

    set_id_name "pool_names"

    class MemberConnectionLimit < IControl::Base::Struct; end
    class MemberDynamicRatio < IControl::Base::Struct; end
    class MemberMonitorAssociation < IControl::Base::Struct; end
    class MemberMonitorAssociationRemoval < IControl::Base::Struct; end
    class MemberMonitorInstanceState < IControl::Base::Struct; end
    class MemberMonitorState < IControl::Base::Struct; end
    class MemberMonitorStatus < IControl::Base::Struct; end
    class MemberObjectStatus < IControl::Base::Struct; end
    class MemberPriority < IControl::Base::Struct; end
    class MemberRatio < IControl::Base::Struct; end
    class MemberSessionState < IControl::Base::Struct; end
    class MemberSessionStatus < IControl::Base::Struct; end
    class MemberStatisticEntry < IControl::Base::Struct; end
    class MemberStatistics < IControl::Base::Struct; end
    class MemberConnectionLimitSequence < IControl::Base::Sequence ; end
    class MemberConnectionLimitSequenceSequence < IControl::Base::SequenceSequence ; end
    class MemberDynamicRatioSequence < IControl::Base::Sequence ; end
    class MemberDynamicRatioSequenceSequence < IControl::Base::SequenceSequence ; end
    class MemberMonitorAssociationRemovalSequence < IControl::Base::Sequence ; end
    class MemberMonitorAssociationRemovalSequenceSequence < IControl::Base::SequenceSequence ; end
    class MemberMonitorAssociationSequence < IControl::Base::Sequence ; end
    class MemberMonitorAssociationSequenceSequence < IControl::Base::SequenceSequence ; end
    class MemberMonitorInstanceStateSequence < IControl::Base::Sequence ; end
    class MemberMonitorInstanceStateSequenceSequence < IControl::Base::SequenceSequence ; end
    class MemberMonitorStateSequence < IControl::Base::Sequence ; end
    class MemberMonitorStateSequenceSequence < IControl::Base::SequenceSequence ; end
    class MemberMonitorStatusSequence < IControl::Base::Sequence ; end
    class MemberMonitorStatusSequenceSequence < IControl::Base::SequenceSequence ; end
    class MemberObjectStatusSequence < IControl::Base::Sequence ; end
    class MemberObjectStatusSequenceSequence < IControl::Base::SequenceSequence ; end
    class MemberPrioritySequence < IControl::Base::Sequence ; end
    class MemberPrioritySequenceSequence < IControl::Base::SequenceSequence ; end
    class MemberRatioSequence < IControl::Base::Sequence ; end
    class MemberRatioSequenceSequence < IControl::Base::SequenceSequence ; end
    class MemberSessionStateSequence < IControl::Base::Sequence ; end
    class MemberSessionStateSequenceSequence < IControl::Base::SequenceSequence ; end
    class MemberSessionStatusSequence < IControl::Base::Sequence ; end
    class MemberSessionStatusSequenceSequence < IControl::Base::SequenceSequence ; end
    class MemberStatisticEntrySequence < IControl::Base::Sequence ; end
    class MemberStatisticsSequence < IControl::Base::Sequence ; end    ##
    # Gets the statistics for all pool members of this pool.
    # @rspec_example
    # @return [MemberStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the connection limits for all members in this pool.
    # @rspec_example
    # @return [MemberConnectionLimit[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def connection_limit
      super
    end

    ##
    # Gets the dynamic ratios for all members of this pool.
    # @rspec_example
    # @return [MemberDynamicRatio[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def dynamic_ratio
      super
    end

    ##
    # Gets the monitor associations used by this pool members, i.e. the monitor rules used
    # by the pool members.
    # @rspec_example
    # @return [MemberMonitorAssociation[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def monitor_association
      super
    end

    ##
    # Gets the monitor instance information for the pool members in this pool.
    # @rspec_example
    # @return [MemberMonitorInstanceState[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def monitor_instance
      super
    end

    ##
    # Gets the monitor/availability status for all members of this pool.
    # @rspec_example
    # @return [MemberMonitorStatus[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def monitor_status
      super
    end

    ##
    # Gets the object statuses for all members of this pool.
    # @rspec_example
    # @return [MemberObjectStatus[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def object_status
      super
    end

    ##
    # Gets the priorities for all members in this pool.
    # @rspec_example
    # @return [MemberPriority[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def priority
      super
    end

    ##
    # Gets the ratios for all members in this pool.
    # @rspec_example
    # @return [MemberRatio[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ratio
      super
    end

    ##
    # Note: This function has been deprecated. Please use get_session_status. Gets the
    # session states for all members of this pool.
    # @rspec_example
    # @return [MemberSessionState[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def session_enabled_state
      super
    end

    ##
    # Gets the session status for all members of this pool.
    # @rspec_example
    # @return [MemberSessionStatus[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def session_status
      super
    end

    ##
    # Gets the statistics for this set of pool members.
    # @rspec_example
    # @return [MemberStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::IPPortDefinition[]] :members The members to get statistics from.
    def statistics(opts)
      check_params(opts,[:members])
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
    # Removes the monitor associations for this pool members. Depending on the monitor
    # association removal rule specified, this basically deletes any explicit monitor associations
    # between a pool member and a monitor rule and thus causing the pool member to use
    # the default monitor association of its parent pool, or this will delete any monitor
    # association for the pool members altogether, i.e. this pool members will no longer
    # be monitored.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::PoolMember::MemberMonitorAssociationRemoval[]] :monitor_associations The monitor association removal rules that will be used to remove the monitor associations			 for the specified pool members.
    def remove_monitor_association(opts)
      check_params(opts,[:monitor_associations])
      super
    end

    ##
    # Resets the statistics for this set of pool members.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::IPPortDefinition[]] :members The members to get statistics from.
    def reset_statistics(opts)
      check_params(opts,[:members])
      super
    end

    ##
    # Sets the connection limits for this pool members.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::PoolMember::MemberConnectionLimit[]] :limits The members and the connection limits to be set.
    def set_connection_limit(opts)
      check_params(opts,[:limits])
      super
    end

    ##
    # Sets the dynamic ratios for this pool members.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::PoolMember::MemberDynamicRatio[]] :dynamic_ratios The members and the dynamic ratios to be set.
    def set_dynamic_ratio(opts)
      check_params(opts,[:dynamic_ratios])
      super
    end

    ##
    # Sets/creates the monitor associations for this pool members. This basically creates
    # the monitor associations between a pool member and a monitor rule.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::PoolMember::MemberMonitorAssociation[]] :monitor_associations The monitor associations that will be used to evaluate the specified pool members.
    def set_monitor_association(opts)
      check_params(opts,[:monitor_associations])
      super
    end

    ##
    # Sets the monitor/availability states for this pool members.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::PoolMember::MemberMonitorState[]] :monitor_states The members and the monitor/availability states to be set.
    def set_monitor_state(opts)
      check_params(opts,[:monitor_states])
      super
    end

    ##
    # Sets the priorities for this pool members.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::PoolMember::MemberPriority[]] :priorities The members and the priorities to be set.
    def set_priority(opts)
      check_params(opts,[:priorities])
      super
    end

    ##
    # Sets the ratios for this pool members.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::PoolMember::MemberRatio[]] :ratios The members and the ratios to be set.
    def set_ratio(opts)
      check_params(opts,[:ratios])
      super
    end

    ##
    # Sets the session states for this pool members. If session state is enabled or true,
    # this means that new sessions will be allowed to be established with the pool members.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::PoolMember::MemberSessionState[]] :session_states The members and the session states to be set.
    def set_session_enabled_state(opts)
      check_params(opts,[:session_states])
      super
    end

    ##
    # A struct that describes a member connection limit.
    # @attr [IControl::Common::IPPortDefinition] member The IP address and port for the pool member.
    # @attr [Numeric] connection_limit The ratio given to the specified pool member.
    class MemberConnectionLimit < IControl::Base::Struct
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      icontrol_attribute :connection_limit, Numeric
    end

    ##
    # A struct that describes a member dynamic ratio.
    # @attr [IControl::Common::IPPortDefinition] member The IP address and port for the pool member.
    # @attr [Numeric] dynamic_ratio The dynamic ratio given to the specified pool member.
    class MemberDynamicRatio < IControl::Base::Struct
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      icontrol_attribute :dynamic_ratio, Numeric
    end

    ##
    # A struct that describes a pool member's monitor association.
    # @attr [IControl::LocalLB::MonitorIPPort] member The pool member definition with which the monitor rule is associated with.
    # @attr [IControl::LocalLB::MonitorRule] monitor_rule The monitor rule used in the monitor association.
    class MemberMonitorAssociation < IControl::Base::Struct
      icontrol_attribute :member, IControl::LocalLB::MonitorIPPort
      icontrol_attribute :monitor_rule, IControl::LocalLB::MonitorRule
    end

    ##
    # A struct that describes a pool member's monitor association to be removed.
    # @attr [IControl::LocalLB::MonitorIPPort] member The pool member definition whose monitor association will be removed.
    # @attr [IControl::LocalLB::MonitorAssociationRemovalRule] removal_rule The rule indicating how the monitor association will be removed.
    class MemberMonitorAssociationRemoval < IControl::Base::Struct
      icontrol_attribute :member, IControl::LocalLB::MonitorIPPort
      icontrol_attribute :removal_rule, IControl::LocalLB::MonitorAssociationRemovalRule
    end

    ##
    # A struct that describes a member's monitor instances.
    # @attr [IControl::Common::IPPortDefinition] member The IP address and port for the pool member.
    # @attr [IControl::LocalLB::MonitorInstanceStateSequence] monitor_instances The monitor instances of the specified pool member.
    class MemberMonitorInstanceState < IControl::Base::Struct
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      icontrol_attribute :monitor_instances, IControl::LocalLB::MonitorInstanceStateSequence
    end

    ##
    # A struct that describes a member monitor state.
    # @attr [IControl::Common::IPPortDefinition] member The IP address and port for the pool member.
    # @attr [IControl::Common::EnabledState] monitor_state The monitor/availability state of the specified pool member.
    class MemberMonitorState < IControl::Base::Struct
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      icontrol_attribute :monitor_state, IControl::Common::EnabledState
    end

    ##
    # A struct that describes a member's current monitor status.
    # @attr [IControl::Common::IPPortDefinition] member The IP address and port for the pool member.
    # @attr [IControl::LocalLB::MonitorStatus] monitor_status The monitor status of the specified pool member.
    class MemberMonitorStatus < IControl::Base::Struct
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      icontrol_attribute :monitor_status, IControl::LocalLB::MonitorStatus
    end

    ##
    # A struct that describes a member's current object status.
    # @attr [IControl::Common::IPPortDefinition] member The IP address and port for the pool member.
    # @attr [IControl::LocalLB::ObjectStatus] object_status The object status of the specified pool member.
    class MemberObjectStatus < IControl::Base::Struct
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      icontrol_attribute :object_status, IControl::LocalLB::ObjectStatus
    end

    ##
    # A struct that describes a member priority.
    # @attr [IControl::Common::IPPortDefinition] member The IP address and port for the pool member.
    # @attr [Numeric] priority The priority given to the specified pool member.
    class MemberPriority < IControl::Base::Struct
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      icontrol_attribute :priority, Numeric
    end

    ##
    # A struct that describes a member ratio.
    # @attr [IControl::Common::IPPortDefinition] member The IP address and port for the pool member.
    # @attr [Numeric] ratio The ratio given to the specified pool member.
    class MemberRatio < IControl::Base::Struct
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      icontrol_attribute :ratio, Numeric
    end

    ##
    # A struct that describes a member session state, which allows new sessions to be esablished.
    # @attr [IControl::Common::IPPortDefinition] member The IP address and port for the pool member.
    # @attr [IControl::Common::EnabledState] session_state The session state of the specified pool member. If enabled/true, new sessions will			be allowed to establish with the member. If disabled/false, no new sessions will be			allowed to be established.
    class MemberSessionState < IControl::Base::Struct
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      icontrol_attribute :session_state, IControl::Common::EnabledState
    end

    ##
    # A struct that describes a member's current session status.
    # @attr [IControl::Common::IPPortDefinition] member The IP address and port for the pool member.
    # @attr [IControl::LocalLB::SessionStatus] session_status The session status of the specified pool member.
    class MemberSessionStatus < IControl::Base::Struct
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      icontrol_attribute :session_status, IControl::LocalLB::SessionStatus
    end

    ##
    # A struct that describes statistics for a particular pool member.
    # @attr [IControl::Common::IPPortDefinition] member The pool member definition.
    # @attr [IControl::Common::StatisticSequence] statistics The statistics for the pool member.
    class MemberStatisticEntry < IControl::Base::Struct
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes pool member statistics and timestamp.
    # @attr [IControl::LocalLB::PoolMember::MemberStatisticEntrySequence] statistics The statistics for a sequence of pool members.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class MemberStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::PoolMember::MemberStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of member connection limits.
    class MemberConnectionLimitSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of member connection limits.
    class MemberConnectionLimitSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of member dynamic ratios.
    class MemberDynamicRatioSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of member dynamic ratios.
    class MemberDynamicRatioSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of MemberMonitorAssociationRemoval's.
    class MemberMonitorAssociationRemovalSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of member MemberMonitorAssociationRemoval's.
    class MemberMonitorAssociationRemovalSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of monitor associations.
    class MemberMonitorAssociationSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of member monitor associations.
    class MemberMonitorAssociationSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of member monitor instances.
    class MemberMonitorInstanceStateSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of member monitor instances.
    class MemberMonitorInstanceStateSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of member monitor states.
    class MemberMonitorStateSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of member monitor states.
    class MemberMonitorStateSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of member monitor statuses.
    class MemberMonitorStatusSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of member monitor statuses.
    class MemberMonitorStatusSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of member object statuses.
    class MemberObjectStatusSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of member object statuses.
    class MemberObjectStatusSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of member priorities.
    class MemberPrioritySequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of member priorities.
    class MemberPrioritySequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of member ratios.
    class MemberRatioSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of member ratios.
    class MemberRatioSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of member session states.
    class MemberSessionStateSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of member session states.
    class MemberSessionStateSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of member monitor statuses.
    class MemberSessionStatusSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of member monitor statuses.
    class MemberSessionStatusSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of pool member statistics.
    class MemberStatisticEntrySequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of pool member statistics.
    class MemberStatisticsSequence < IControl::Base::Sequence ; end
  end
end
