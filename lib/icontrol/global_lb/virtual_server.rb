module IControl::GlobalLB
  ##
  # The VirtualServer interface enables you to work with virtual servers associated with a server.
  class VirtualServer < IControl::Base

    set_id_name "virtual_servers"

    class MonitorAssociation < IControl::Base::Struct; end
    class VirtualServerMetricLimit < IControl::Base::Struct; end
    class VirtualServerStatisticEntry < IControl::Base::Struct; end
    class VirtualServerStatistics < IControl::Base::Struct; end    ##
    # Adds the virtual server to the dependency list that this virtual server depend on.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::VirtualServerDefinition[]] :dependencies The dependency list of VSes that the specified virtual servers depend on.
    def add_dependency(opts)
      check_params(opts,[:dependencies])
      super
    end

    ##
    # Creates this virtual server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :servers The servers that the virtual servers belong to.
    def create(opts)
      check_params(opts,[:servers])
      super
    end

    ##
    # Deletes all virtual server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_virtual_servers
      super
    end

    ##
    # Deletes this virtual server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_virtual_server
      super
    end

    ##
    # Gets the statistics for all the virtual server.
    # @return [VirtualServerStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the list of virtual server that this virtual server depend on.
    # @return [VirtualServerDefinition[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def dependency
      super
    end

    ##
    # Gets the enabled states for this virtual server.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def enabled_state
      super
    end

    ##
    # Gets all metrics limits for a sequence of virtual server.
    # @return [VirtualServerMetricLimit]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def limit
      super
    end

    ##
    # Gets a list of virtual server.
    # @return [VirtualServerDefinition]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the monitor associations for this virtual server, i.e. the monitor rules used by the virtual server.
    # @return [MonitorAssociation]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def monitor_association
      super
    end

    ##
    # Gets the statuses of this virtual server.
    # @return [ObjectStatus]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def object_status
      super
    end

    ##
    # Gets a parent links this virtual server belong to.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def parent_link
      super
    end

    ##
    # Gets a list of servers this virtual server belong to.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def server
      super
    end

    ##
    # Gets the statistics for this virtual server.
    # @return [VirtualServerStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Gets the translation IP addresses and ports for this virtual server.
    # @return [IPPortDefinition]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def translation
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Removes any and all dependencies of this virtual server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_dependencies
      super
    end

    ##
    # Removes the virtual server from the dependency list that this virtual server depend on.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::VirtualServerDefinition[]] :dependencies The dependency list of VSes that the specified virtual servers depend on.
    def remove_dependency(opts)
      check_params(opts,[:dependencies])
      super
    end

    ##
    # Removes the monitor associations for this virtual server. This basically deletes the monitor associations between a virtual server and a monitor rule, i.e. this virtual server will no longer be monitored.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_monitor_association
      super
    end

    ##
    # Resets the statistics for this virtual server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the enabled states for this virtual server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set.
    def set_enabled_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the limits for virtual server metrics.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::VirtualServer::VirtualServerMetricLimit] :limits The virtual servers' metric limits.
    def set_limit(opts)
      check_params(opts,[:limits])
      super
    end

    ##
    # Sets/creates the monitor associations for this virtual server. This basically creates the monitor associations between a virtual server and a monitor rule.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::VirtualServer::MonitorAssociation] :monitor_associations The monitor associations that will be used to evaluate the specified virtual servers.
    def set_monitor_association(opts)
      check_params(opts,[:monitor_associations])
      super
    end

    ##
    # Sets the servers this virtual server belong to.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :servers The servers that the virtual servers belong to.
    def set_server(opts)
      check_params(opts,[:servers])
      super
    end

    ##
    # Sets the translation IP addresses and ports for this virtual server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::IPPortDefinition] :translations The translation IP addresses and ports.
    def set_translation(opts)
      check_params(opts,[:translations])
      super
    end

    ##
    # A struct that describes a virtual server's monitor association.
    # @attr [IControl::GlobalLB::VirtualServerDefinition] virtual_server The virtual server.
    # @attr [IControl::GlobalLB::MonitorRule] monitor_rule The monitor rule used in the monitor association.
    class MonitorAssociation < IControl::Base::Struct
      icontrol_attribute :virtual_server, IControl::GlobalLB::VirtualServerDefinition
      icontrol_attribute :monitor_rule, IControl::GlobalLB::MonitorRule
    end

    ##
    # A struct that contains metric limits for a virtual server.
    # @attr [IControl::GlobalLB::VirtualServerDefinition] virtual_server The virtual server.
    # @attr [IControl::GlobalLB::MetricLimit] metric_limits Metric limits of the virtual server.
    class VirtualServerMetricLimit < IControl::Base::Struct
      icontrol_attribute :virtual_server, IControl::GlobalLB::VirtualServerDefinition
      icontrol_attribute :metric_limits, IControl::GlobalLB::MetricLimit
    end

    ##
    # A struct that describes statistics for a particular virtual server.
    # @attr [IControl::GlobalLB::VirtualServerDefinition] virtual_server The virtual server.
    # @attr [IControl::Common::Statistic] statistics The statistics for the virtual server.
    class VirtualServerStatisticEntry < IControl::Base::Struct
      icontrol_attribute :virtual_server, IControl::GlobalLB::VirtualServerDefinition
      icontrol_attribute :statistics, IControl::Common::Statistic
    end

    ##
    # A struct that describes virtual server statistics and timestamp.
    # @attr [IControl::GlobalLB::VirtualServer::VirtualServerStatisticEntry] statistics The statistics for a sequence of virtual servers.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class VirtualServerStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::GlobalLB::VirtualServer::VirtualServerStatisticEntry
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of monitor associations.
    class MonitorAssociationSequence < IControl::Base::Sequence ; end
    ## A sequence of VirtualServerMetricLimit's.
    class VirtualServerMetricLimitSequence < IControl::Base::Sequence ; end
    ## A sequence of VirtualServer statistics.
    class VirtualServerStatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
