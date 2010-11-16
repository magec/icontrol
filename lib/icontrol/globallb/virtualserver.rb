module IControl::GlobalLB
  ##
  # The VirtualServer interface enables you to work with virtual servers associated with
  # a server.
  class VirtualServer < IControl::Base
    class MonitorAssociation < IControl::Base::Struct; end
    class VirtualServerMetricLimit < IControl::Base::Struct; end
    class VirtualServerStatisticEntry < IControl::Base::Struct; end
    class VirtualServerStatistics < IControl::Base::Struct; end    ## A sequence of monitor associations.
    class MonitorAssociationSequence < IControl::Base::Sequence ; end## A sequence of VirtualServerMetricLimit's.
    class VirtualServerMetricLimitSequence < IControl::Base::Sequence ; end## A sequence of VirtualServer statistics.
    class VirtualServerStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes a virtual server's monitor association.
    class MonitorAssociation < IControl::Base::Struct
      # The virtual server.
      icontrol_attribute :virtual_server, IControl::GlobalLB::VirtualServerDefinition
      # The monitor rule used in the monitor association.
      icontrol_attribute :monitor_rule, IControl::GlobalLB::MonitorRule
    end

    ##
    # A struct that contains metric limits for a virtual server.
    class VirtualServerMetricLimit < IControl::Base::Struct
      # The virtual server.
      icontrol_attribute :virtual_server, IControl::GlobalLB::VirtualServerDefinition
      # Metric limits of the virtual server.
      icontrol_attribute :metric_limits, IControl::GlobalLB::MetricLimitSequence
    end

    ##
    # A struct that describes statistics for a particular virtual server.
    class VirtualServerStatisticEntry < IControl::Base::Struct
      # The virtual server.
      icontrol_attribute :virtual_server, IControl::GlobalLB::VirtualServerDefinition
      # The statistics for the virtual server.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes virtual server statistics and timestamp.
    class VirtualServerStatistics < IControl::Base::Struct
      # The statistics for a sequence of virtual servers.
      icontrol_attribute :statistics, IControl::GlobalLB::VirtualServer::VirtualServerStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Adds the virtual servers to the dependency list that the specified virtual servers
    # depend on.
    # :method: add_dependency
    # :call-seq:
    # add_dependency(virtual_servers ,dependencies)
    #
    # Parameters:
    # - virtual_servers VirtualServerDefinition[] The list of virtual servers that has dependencies on "dependencies".
    # - dependencies VirtualServerDefinition[][] The dependency list of VSes that the specified virtual servers depend on.

    ##
    # Creates the specified virtual server.
    # :method: create
    # :call-seq:
    # create(virtual_servers ,servers)
    #
    # Parameters:
    # - virtual_servers VirtualServerDefinition[] The list of virtual servers.
    # - servers String[] The servers that the virtual servers belong to.

    ##
    # Deletes all virtual servers.
    # :method: delete_all_virtual_servers

    ##
    # Deletes the specified virtual servers.
    # :method: delete_virtual_server
    # :call-seq:
    # delete_virtual_server(virtual_servers)
    #
    # Parameters:
    # - virtual_servers VirtualServerDefinition[] The list of virtual servers.

    ##
    # Gets the statistics for all the virtual servers.
    # :method: get_all_statistics

    ##
    # Gets the list of virtual servers that the specified virtual servers depend on.
    # :method: get_dependency
    # :call-seq:
    # get_dependency(virtual_servers)
    #
    # Parameters:
    # - virtual_servers VirtualServerDefinition[] The list of virtual servers to query for dependency.

    ##
    # Gets the enabled states for the specified virtual servers.
    # :method: get_enabled_state
    # :call-seq:
    # get_enabled_state(virtual_servers)
    #
    # Parameters:
    # - virtual_servers VirtualServerDefinition[] The list of virtual servers.

    ##
    # Gets all metrics limits for a sequence of virtual servers.
    # :method: get_limit
    # :call-seq:
    # get_limit(virtual_servers)
    #
    # Parameters:
    # - virtual_servers VirtualServerDefinition[] The list of virtual servers.

    ##
    # Gets a list of virtual servers.
    # :method: get_list

    ##
    # Gets the monitor associations for the specified virtual servers, i.e. the monitor
    # rules used by the virtual servers.
    # :method: get_monitor_association
    # :call-seq:
    # get_monitor_association(virtual_servers)
    #
    # Parameters:
    # - virtual_servers VirtualServerDefinition[] The virtual server definitions.

    ##
    # Gets the statuses of the specified virtual servers.
    # :method: get_object_status
    # :call-seq:
    # get_object_status(virtual_servers)
    #
    # Parameters:
    # - virtual_servers VirtualServerDefinition[] The list of virtual servers.

    ##
    # Gets a parent links the specified virtual servers belong to.
    # :method: get_parent_link
    # :call-seq:
    # get_parent_link(virtual_servers)
    #
    # Parameters:
    # - virtual_servers VirtualServerDefinition[] The virtual server definitions.

    ##
    # Gets a list of servers the specified virtual servers belong to.
    # :method: get_server
    # :call-seq:
    # get_server(virtual_servers)
    #
    # Parameters:
    # - virtual_servers VirtualServerDefinition[] The virtual server definitions.

    ##
    # Gets the statistics for the specified virtual servers.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(virtual_servers)
    #
    # Parameters:
    # - virtual_servers VirtualServerDefinition[] The list of virtual servers.

    ##
    # Gets the translation IP addresses and ports for the specified virtual servers.
    # :method: get_translation
    # :call-seq:
    # get_translation(virtual_servers)
    #
    # Parameters:
    # - virtual_servers VirtualServerDefinition[] The list of virtual servers.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Removes any and all dependencies of the specified virtual servers.
    # :method: remove_all_dependencies
    # :call-seq:
    # remove_all_dependencies(virtual_servers)
    #
    # Parameters:
    # - virtual_servers VirtualServerDefinition[] The list of virtual servers to from which to remove the dependencies.			 These virtual servers will no longer have any dependency on any other			 virtual servers.

    ##
    # Removes the virtual servers from the dependency list that the specified virtual servers
    # depend on.
    # :method: remove_dependency
    # :call-seq:
    # remove_dependency(virtual_servers ,dependencies)
    #
    # Parameters:
    # - virtual_servers VirtualServerDefinition[] The list of virtual servers that has dependencies on "dependencies".
    # - dependencies VirtualServerDefinition[][] The dependency list of VSes that the specified virtual servers depend on.

    ##
    # Removes the monitor associations for the specified virtual servers. This basically
    # deletes the monitor associations between a virtual server and a monitor rule, i.e.
    # the specified virtual servers will no longer be monitored.
    # :method: remove_monitor_association
    # :call-seq:
    # remove_monitor_association(virtual_servers)
    #
    # Parameters:
    # - virtual_servers VirtualServerDefinition[] The virtual server definitions.

    ##
    # Resets the statistics for the specified virtual servers.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(virtual_servers)
    #
    # Parameters:
    # - virtual_servers VirtualServerDefinition[] The list of virtual servers.

    ##
    # Sets the enabled states for the specified virtual servers.
    # :method: set_enabled_state
    # :call-seq:
    # set_enabled_state(virtual_servers ,states)
    #
    # Parameters:
    # - virtual_servers VirtualServerDefinition[] The list of virtual servers.
    # - states EnabledState[] The states to set.

    ##
    # Sets the limits for virtual server metrics.
    # :method: set_limit
    # :call-seq:
    # set_limit(limits)
    #
    # Parameters:
    # - limits VirtualServerMetricLimit[] The virtual servers' metric limits.

    ##
    # Sets/creates the monitor associations for the specified virtual servers. This basically
    # creates the monitor associations between a virtual server and a monitor rule.
    # :method: set_monitor_association
    # :call-seq:
    # set_monitor_association(monitor_associations)
    #
    # Parameters:
    # - monitor_associations MonitorAssociation[] The monitor associations that will be used to evaluate the specified virtual servers.

    ##
    # Sets the servers the specified virtual servers belong to.
    # :method: set_server
    # :call-seq:
    # set_server(virtual_servers ,servers)
    #
    # Parameters:
    # - virtual_servers VirtualServerDefinition[] The virtual server definitions.
    # - servers String[] The servers that the virtual servers belong to.

    ##
    # Sets the translation IP addresses and ports for the specified virtual servers.
    # :method: set_translation
    # :call-seq:
    # set_translation(virtual_servers ,translations)
    #
    # Parameters:
    # - virtual_servers VirtualServerDefinition[] The list of virtual servers.
    # - translations IPPortDefinition[] The translation IP addresses and ports.


  end
end
