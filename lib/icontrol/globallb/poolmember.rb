module IControl::GlobalLB
  ##
  # The PoolMember interface enables you to work with the pool members and their settings,
  # and statistics.
  class PoolMember < IControl::Base
    class MemberDependency < IControl::Base::Struct; end
    class MemberEnabledState < IControl::Base::Struct; end
    class MemberMetricLimit < IControl::Base::Struct; end
    class MemberMonitorAssociation < IControl::Base::Struct; end
    class MemberMonitorAssociationRemoval < IControl::Base::Struct; end
    class MemberObjectStatus < IControl::Base::Struct; end
    class MemberOrder < IControl::Base::Struct; end
    class MemberRatio < IControl::Base::Struct; end
    class MemberStatisticEntry < IControl::Base::Struct; end
    class MemberStatistics < IControl::Base::Struct; end    ## A sequence of pool member dependency definitions.
    class MemberDependencySequence < IControl::Base::Sequence ; end## An alias for a sequence of pool member dependency definitions.
    class MemberDependencySequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of pool member states.
    class MemberEnabledStateSequence < IControl::Base::Sequence ; end## An alias for a sequence of member states.
    class MemberEnabledStateSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of MemberMetricLimit's.
    class MemberMetricLimitSequence < IControl::Base::Sequence ; end## An alias for a sequence of MemberMetricLimit's.
    class MemberMetricLimitSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of MemberMonitorAssociationRemoval's.
    class MemberMonitorAssociationRemovalSequence < IControl::Base::Sequence ; end## An alias for a sequence of member MemberMonitorAssociationRemoval's.
    class MemberMonitorAssociationRemovalSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of monitor associations.
    class MemberMonitorAssociationSequence < IControl::Base::Sequence ; end## An alias for a sequence of member monitor associations.
    class MemberMonitorAssociationSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of pool member states.
    class MemberObjectStatusSequence < IControl::Base::Sequence ; end## An alias for a sequence of member statuses.
    class MemberObjectStatusSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of pool member orders.
    class MemberOrderSequence < IControl::Base::Sequence ; end## An alias for a sequence of member orders.
    class MemberOrderSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of pool member ratios.
    class MemberRatioSequence < IControl::Base::Sequence ; end## An alias for a sequence of member ratios.
    class MemberRatioSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of pool member statistics.
    class MemberStatisticEntrySequence < IControl::Base::Sequence ; end## An alias for a sequence of pool member statistics.
    class MemberStatisticsSequence < IControl::Base::Sequence ; end##
    # A struct that describes a pool member's dependencies on other virtual servers.
    class MemberDependency < IControl::Base::Struct
      # The IP address and port of the pool member.
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      # The list of virtual servers that this member depends on.
      icontrol_attribute :dependencies, IControl::GlobalLB::VirtualServerDefinitionSequence
    end

    ##
    # A struct that describes a pool member state.
    class MemberEnabledState < IControl::Base::Struct
      # The IP address and port of the pool member.
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      # The state of the specified pool member.
      icontrol_attribute :state, IControl::Common::EnabledState
    end

    ##
    # A struct that contains metric limits for a pool member.
    class MemberMetricLimit < IControl::Base::Struct
      # The IP address and port of the pool member.
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      # Metric limits of the pool.
      icontrol_attribute :metric_limits, IControl::GlobalLB::MetricLimitSequence
    end

    ##
    # A struct that describes a pool member's monitor association.
    class MemberMonitorAssociation < IControl::Base::Struct
      # The pool member definition with which the monitor rule is associated with.
      icontrol_attribute :member, IControl::GlobalLB::MonitorIPPort
      # The monitor rule used in the monitor association.
      icontrol_attribute :monitor_rule, IControl::GlobalLB::MonitorRule
    end

    ##
    # A struct that describes a pool member's monitor association to be removed.
    class MemberMonitorAssociationRemoval < IControl::Base::Struct
      # The pool member definition whose monitor association will be removed.
      icontrol_attribute :member, IControl::GlobalLB::MonitorIPPort
      # The rule indicating how the monitor association will be removed.
      icontrol_attribute :removal_rule, IControl::GlobalLB::MonitorAssociationRemovalRule
    end

    ##
    # A struct that describes a pool member status.
    class MemberObjectStatus < IControl::Base::Struct
      # The IP address and port of the pool member.
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      # The status of the specified pool member.
      icontrol_attribute :status, IControl::Common::ObjectStatus
    end

    ##
    # A struct that describes a pool member order.
    class MemberOrder < IControl::Base::Struct
      # The IP address and port of the pool member.
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      # The order given to the specified pool member.
      icontrol_attribute :order, Numeric
    end

    ##
    # A struct that describes a pool member ratio.
    class MemberRatio < IControl::Base::Struct
      # The IP address and port of the pool member.
      icontrol_attribute :member, IControl::Common::IPPortDefinition
      # The ratio given to the specified pool member.
      icontrol_attribute :ratio, Numeric
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
      icontrol_attribute :statistics, IControl::GlobalLB::PoolMember::MemberStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Adds the virtual servers to the dependency list that the specified pool members depend
    # on.
    # :method: add_dependency
    # :call-seq:
    # add_dependency(pool_names ,dependencies)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.
    # - dependencies MemberDependency[][] The dependency list of VSes that the specified pool members depend on.

    ##
    # Gets the statistics for all pool members of the specified pools.
    # :method: get_all_statistics
    # :call-seq:
    # get_all_statistics(pool_names)
    #
    # Parameters:
    # - pool_names String[] The pools to get the statistics from.

    ##
    # Gets the list of virtual servers that the specified pool members depend on.
    # :method: get_dependency
    # :call-seq:
    # get_dependency(pool_names ,members)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.
    # - members IPPortDefinition[][] The pool members.

    ##
    # Gets the enabled states for the specified members in the specified pools.
    # :method: get_enabled_state
    # :call-seq:
    # get_enabled_state(pool_names ,members)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.
    # - members IPPortDefinition[][] The pool members.

    ##
    # Gets the metric limits for the specified members of the specified pools.
    # :method: get_limit
    # :call-seq:
    # get_limit(pool_names ,members)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.
    # - members IPPortDefinition[][] The pool members.

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
    # Gets the statuses for the specified members in the specified pools.
    # :method: get_object_status
    # :call-seq:
    # get_object_status(pool_names ,members)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.
    # - members IPPortDefinition[][] The pool members.

    ##
    # Gets the orders for the specified members in the specified pools.
    # :method: get_order
    # :call-seq:
    # get_order(pool_names ,members)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.
    # - members IPPortDefinition[][] The pool members.

    ##
    # Gets the ratios for the specified members in the specified pools.
    # :method: get_ratio
    # :call-seq:
    # get_ratio(pool_names ,members)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.
    # - members IPPortDefinition[][] The pool members.

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
    # Removes any and all dependencies of the specified pool members.
    # :method: remove_all_dependencies
    # :call-seq:
    # remove_all_dependencies(pool_names ,members)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.
    # - members IPPortDefinition[][] The pool members to remove the dependencies from.		 These pool members will no longer have any dependency on any other		 virtual servers.

    ##
    # Removes the virtual servers from the dependency list that the specified pool members
    # depend on.
    # :method: remove_dependency
    # :call-seq:
    # remove_dependency(pool_names ,dependencies)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.
    # - dependencies MemberDependency[][] The dependency list of VSes that the specified pool members depend on.

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
    # Sets the enabled states for the specified pool members in the specified pools.
    # :method: set_enabled_state
    # :call-seq:
    # set_enabled_state(pool_names ,states)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.
    # - states MemberEnabledState[][] The members and the states to be set.

    ##
    # Sets the metric limits for the specified members of the specified pools.
    # :method: set_limit
    # :call-seq:
    # set_limit(pool_names ,limits)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.
    # - limits MemberMetricLimit[][] The pool members' metric limits.

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
    # Sets the orders for the specified pool members.
    # :method: set_order
    # :call-seq:
    # set_order(pool_names ,orders)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.
    # - orders MemberOrder[][] The members and the orders to be set.

    ##
    # Sets the ratios for the specified pool members.
    # :method: set_ratio
    # :call-seq:
    # set_ratio(pool_names ,ratios)
    #
    # Parameters:
    # - pool_names String[] The pool names to which the specified members belong.
    # - ratios MemberRatio[][] The members and the ratios to be set.


  end
end
