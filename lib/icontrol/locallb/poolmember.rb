module IControl::LocalLB
  ##
  # The PoolMember interface enables you to work with the pool members and their settings,
  # and statistics.
  class PoolMember < IControl::Base
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
    class MemberStatistics < IControl::Base::Struct; end    ## A sequence of member connection limits.
    class MemberConnectionLimitSequence < IControl::Base::Sequence ; end## An alias for a sequence of member connection limits.
    class MemberConnectionLimitSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of member dynamic ratios.
    class MemberDynamicRatioSequence < IControl::Base::Sequence ; end## An alias for a sequence of member dynamic ratios.
    class MemberDynamicRatioSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of MemberMonitorAssociationRemoval's.
    class MemberMonitorAssociationRemovalSequence < IControl::Base::Sequence ; end## An alias for a sequence of member MemberMonitorAssociationRemoval's.
    class MemberMonitorAssociationRemovalSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of monitor associations.
    class MemberMonitorAssociationSequence < IControl::Base::Sequence ; end## An alias for a sequence of member monitor associations.
    class MemberMonitorAssociationSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of member monitor instances.
    class MemberMonitorInstanceStateSequence < IControl::Base::Sequence ; end## An alias for a sequence of member monitor instances.
    class MemberMonitorInstanceStateSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of member monitor states.
    class MemberMonitorStateSequence < IControl::Base::Sequence ; end## An alias for a sequence of member monitor states.
    class MemberMonitorStateSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of member monitor statuses.
    class MemberMonitorStatusSequence < IControl::Base::Sequence ; end## An alias for a sequence of member monitor statuses.
    class MemberMonitorStatusSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of member object statuses.
    class MemberObjectStatusSequence < IControl::Base::Sequence ; end## An alias for a sequence of member object statuses.
    class MemberObjectStatusSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of member priorities.
    class MemberPrioritySequence < IControl::Base::Sequence ; end## An alias for a sequence of member priorities.
    class MemberPrioritySequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of member ratios.
    class MemberRatioSequence < IControl::Base::Sequence ; end## An alias for a sequence of member ratios.
    class MemberRatioSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of member session states.
    class MemberSessionStateSequence < IControl::Base::Sequence ; end## An alias for a sequence of member session states.
    class MemberSessionStateSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of member monitor statuses.
    class MemberSessionStatusSequence < IControl::Base::Sequence ; end## An alias for a sequence of member monitor statuses.
    class MemberSessionStatusSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of pool member statistics.
    class MemberStatisticEntrySequence < IControl::Base::Sequence ; end## An alias for a sequence of pool member statistics.
    class MemberStatisticsSequence < IControl::Base::Sequence ; end##
    # A struct that describes a member connection limit.
    class MemberConnectionLimit < IControl::Base::Struct
      # The IP address and port for the pool member.
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      # The ratio given to the specified pool member.
      icontrol_attribute :connection_limit, Numeric
    end

    ##
    # A struct that describes a member dynamic ratio.
    class MemberDynamicRatio < IControl::Base::Struct
      # The IP address and port for the pool member.
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      # The dynamic ratio given to the specified pool member.
      icontrol_attribute :dynamic_ratio, Numeric
    end

    ##
    # A struct that describes a pool member's monitor association.
    class MemberMonitorAssociation < IControl::Base::Struct
      # The pool member definition with which the monitor rule is associated with.
      icontrol_attribute :member, IControl::LocalLB::MonitorIPPort
      # The monitor rule used in the monitor association.
      icontrol_attribute :monitor_rule, IControl::LocalLB::MonitorRule
    end

    ##
    # A struct that describes a pool member's monitor association to be removed.
    class MemberMonitorAssociationRemoval < IControl::Base::Struct
      # The pool member definition whose monitor association will be removed.
      icontrol_attribute :member, IControl::LocalLB::MonitorIPPort
      # The rule indicating how the monitor association will be removed.
      icontrol_attribute :removal_rule, IControl::LocalLB::MonitorAssociationRemovalRule
    end

    ##
    # A struct that describes a member's monitor instances.
    class MemberMonitorInstanceState < IControl::Base::Struct
      # The IP address and port for the pool member.
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      # The monitor instances of the specified pool member.
      icontrol_attribute :monitor_instances, IControl::LocalLB::MonitorInstanceStateSequence
    end

    ##
    # A struct that describes a member monitor state.
    class MemberMonitorState < IControl::Base::Struct
      # The IP address and port for the pool member.
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      # The monitor/availability state of the specified pool member.
      icontrol_attribute :monitor_state, IControl::Common::EnabledState
    end

    ##
    # A struct that describes a member's current monitor status.
    class MemberMonitorStatus < IControl::Base::Struct
      # The IP address and port for the pool member.
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      # The monitor status of the specified pool member.
      icontrol_attribute :monitor_status, IControl::LocalLB::MonitorStatus
    end

    ##
    # A struct that describes a member's current object status.
    class MemberObjectStatus < IControl::Base::Struct
      # The IP address and port for the pool member.
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      # The object status of the specified pool member.
      icontrol_attribute :object_status, IControl::LocalLB::ObjectStatus
    end

    ##
    # A struct that describes a member priority.
    class MemberPriority < IControl::Base::Struct
      # The IP address and port for the pool member.
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      # The priority given to the specified pool member.
      icontrol_attribute :priority, Numeric
    end

    ##
    # A struct that describes a member ratio.
    class MemberRatio < IControl::Base::Struct
      # The IP address and port for the pool member.
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      # The ratio given to the specified pool member.
      icontrol_attribute :ratio, Numeric
    end

    ##
    # A struct that describes a member session state, which allows new sessions to be esablished.
    class MemberSessionState < IControl::Base::Struct
      # The IP address and port for the pool member.
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      # The session state of the specified pool member. If enabled/true, new sessions will			be
      # allowed to establish with the member. If disabled/false, no new sessions will be			allowed
      # to be established.
      icontrol_attribute :session_state, IControl::Common::EnabledState
    end

    ##
    # A struct that describes a member's current session status.
    class MemberSessionStatus < IControl::Base::Struct
      # The IP address and port for the pool member.
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      # The session status of the specified pool member.
      icontrol_attribute :session_status, IControl::LocalLB::SessionStatus
    end

    ##
    # A struct that describes statistics for a particular pool member.
    class MemberStatisticEntry < IControl::Base::Struct
      # The pool member definition.
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      # The statistics for the pool member.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes pool member statistics and timestamp.
    class MemberStatistics < IControl::Base::Struct
      # The statistics for a sequence of pool members.
      icontrol_attribute :statistics, IControl::LocalLB::PoolMember::MemberStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Gets the statistics for all pool members of the specified pools.
    # :method: get_all_statistics
    # :call-seq:
    # get_all_statistics(pool_names)
    #
    # Parameters:
    # - pool_names String[] The pools to get the statistics from.

    ##
    # Gets the connection limits for all members in the specified pools.
    # :method: get_connection_limit
    # :call-seq:
    # get_connection_limit(pool_names)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.

    ##
    # Gets the dynamic ratios for all members of the specified pools.
    # :method: get_dynamic_ratio
    # :call-seq:
    # get_dynamic_ratio(pool_names)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.

    ##
    # Gets the monitor associations used by the specified pool members, i.e. the monitor
    # rules used by the pool members.
    # :method: get_monitor_association
    # :call-seq:
    # get_monitor_association(pool_names)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.

    ##
    # Gets the monitor instance information for the pool members in the specified pools.
    # :method: get_monitor_instance
    # :call-seq:
    # get_monitor_instance(pool_names)
    #
    # Parameters:
    # - pool_names String[] The names of the pools.

    ##
    # Gets the monitor/availability status for all members of the specified pools.
    # :method: get_monitor_status
    # :call-seq:
    # get_monitor_status(pool_names)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.

    ##
    # Gets the object statuses for all members of the specified pools.
    # :method: get_object_status
    # :call-seq:
    # get_object_status(pool_names)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.

    ##
    # Gets the priorities for all members in the specified pools.
    # :method: get_priority
    # :call-seq:
    # get_priority(pool_names)
    #
    # Parameters:
    # - pool_names String[] The pool name to which the specified members belong.

    ##
    # Gets the ratios for all members in the specified pools.
    # :method: get_ratio
    # :call-seq:
    # get_ratio(pool_names)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.

    ##
    # Note: This function has been deprecated. Please use get_session_status. Gets the
    # session states for all members of the specified pools.
    # :method: get_session_enabled_state
    # :call-seq:
    # get_session_enabled_state(pool_names)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.

    ##
    # Gets the session status for all members of the specified pools.
    # :method: get_session_status
    # :call-seq:
    # get_session_status(pool_names)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.

    ##
    # Gets the statistics for the specified set of pool members.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(pool_names ,members)
    #
    # Parameters:
    # - pool_names String[] The pools to get the member statistics from.
    # - members IPPortDefinition[][] The members to get statistics from.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Removes the monitor associations for the specified pool members. Depending on the
    # monitor association removal rule specified, this basically deletes any explicit monitor
    # associations between a pool member and a monitor rule and thus causing the pool member
    # to use the default monitor association of its parent pool, or this will delete any
    # monitor association for the pool members altogether, i.e. the specified pool members
    # will no longer be monitored.
    # :method: remove_monitor_association
    # :call-seq:
    # remove_monitor_association(pool_names ,monitor_associations)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.
    # - monitor_associations MemberMonitorAssociationRemoval[][] The monitor association removal rules that will be used to remove the monitor associations			 for the specified pool members.

    ##
    # Resets the statistics for the specified set of pool members.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(pool_names ,members)
    #
    # Parameters:
    # - pool_names String[] The pools to get the member statistics from.
    # - members IPPortDefinition[][] The members to get statistics from.

    ##
    # Sets the connection limits for the specified pool members.
    # :method: set_connection_limit
    # :call-seq:
    # set_connection_limit(pool_names ,limits)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.
    # - limits MemberConnectionLimit[][] The members and the connection limits to be set.

    ##
    # Sets the dynamic ratios for the specified pool members.
    # :method: set_dynamic_ratio
    # :call-seq:
    # set_dynamic_ratio(pool_names ,dynamic_ratios)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.
    # - dynamic_ratios MemberDynamicRatio[][] The members and the dynamic ratios to be set.

    ##
    # Sets/creates the monitor associations for the specified pool members. This basically
    # creates the monitor associations between a pool member and a monitor rule.
    # :method: set_monitor_association
    # :call-seq:
    # set_monitor_association(pool_names ,monitor_associations)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.
    # - monitor_associations MemberMonitorAssociation[][] The monitor associations that will be used to evaluate the specified pool members.

    ##
    # Sets the monitor/availability states for the specified pool members.
    # :method: set_monitor_state
    # :call-seq:
    # set_monitor_state(pool_names ,monitor_states)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.
    # - monitor_states MemberMonitorState[][] The members and the monitor/availability states to be set.

    ##
    # Sets the priorities for the specified pool members.
    # :method: set_priority
    # :call-seq:
    # set_priority(pool_names ,priorities)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.
    # - priorities MemberPriority[][] The members and the priorities to be set.

    ##
    # Sets the ratios for the specified pool members.
    # :method: set_ratio
    # :call-seq:
    # set_ratio(pool_names ,ratios)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.
    # - ratios MemberRatio[][] The members and the ratios to be set.

    ##
    # Sets the session states for the specified pool members. If session state is enabled
    # or true, this means that new sessions will be allowed to be established with the
    # pool members.
    # :method: set_session_enabled_state
    # :call-seq:
    # set_session_enabled_state(pool_names ,session_states)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.
    # - session_states MemberSessionState[][] The members and the session states to be set.


  end
end
