module IControl::GlobalLB
  ##
  # The Server interface enables you to work with servers within a data center.
  class Server < IControl::Base

    set_id_name "servers"

    class MonitorAssociation < IControl::Base::Struct; end
    class ServerIPDefinition < IControl::Base::Struct; end
    class ServerIPsForUnitID < IControl::Base::Struct; end
    class ServerMetricLimit < IControl::Base::Struct; end
    class ServerStatisticEntry < IControl::Base::Struct; end
    class ServerStatistics < IControl::Base::Struct; end
    class MonitorAssociationSequence < IControl::Base::Sequence ; end
    class ServerIPSequence < IControl::Base::Sequence ; end
    class ServerIPsForUnitIDSequence < IControl::Base::Sequence ; end
    class ServerMetricLimitSequence < IControl::Base::Sequence ; end
    class ServerStatisticEntrySequence < IControl::Base::Sequence ; end    ##
    # Adds the IP addresses to this server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Server::ServerIPDefinition] :ips The IP addresses to add to the servers.
    def add_ip(opts)
      opts = check_params(opts,[:ips])
      super(opts)
    end

    ##
    # Creates this server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::ServerType] :types The server types.
    # @option opts [String] :data_centers The data centers associated with the servers.
    def create(opts)
      opts = check_params(opts,[:types,:data_centers])
      super(opts)
    end

    ##
    # Deletes all server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_servers
      super
    end

    ##
    # Deletes this server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_server
      super
    end

    ##
    # Gets the statistics for all the server.
    # @rspec_example
    # @return [ServerStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the states indicating whether path information gathering is allowed for this
    # server.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def allow_path_state
      super
    end

    ##
    # Gets the states indicating whether service check is allowed for this server.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def allow_service_check_state
      super
    end

    ##
    # Gets the states indicating whether SNMP information gathering is allowed for this
    # server.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def allow_snmp_state
      super
    end

    ##
    # Gets the states indicating whether autoconfig is enabled/disabled. If enabled, GTM
    # will attempt to gather all virtual server based on this server.
    # @rspec_example
    # @return [AutoConfigurationState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def auto_configuration_state
      super
    end

    ##
    # Gets the data centers that this server belong to.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def data_center
      super
    end

    ##
    # Gets the enabled states for this server.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def enabled_state
      super
    end

    ##
    # Gets the IP addresses that belong to this server.
    # @rspec_example
    # @return [ServerIPDefinition]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ip
      super
    end

    ##
    # Gets all metrics limits for a sequence of server.
    # @rspec_example
    # @return [ServerMetricLimit]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def limit
      super
    end

    ##
    # Gets the states indicating whether autoconfig is enabled/disabled. If enabled, GTM
    # will attempt to look up the links's default gateways.
    # @rspec_example
    # @return [AutoConfigurationState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def link_auto_configuration_state
      super
    end

    ##
    # Gets a list of server.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the monitor associations for this server, i.e. the monitor rules used by the
    # server.
    # @rspec_example
    # @return [MonitorAssociation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :server_names The names of the servers.
    def monitor_association(opts)
      opts = check_params(opts,[:server_names])
      super(opts)
    end

    ##
    # Gets the statuses of this server.
    # @rspec_example
    # @return [ObjectStatus]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def object_status
      super
    end

    ##
    # Gets the prober addresses for this server.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def prober_address
      super
    end

    ##
    # Gets the server types of this server.
    # @rspec_example
    # @return [ServerType]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def server_type
      super
    end

    ##
    # Gets the statistics for this server.
    # @rspec_example
    # @return [ServerStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :server_names The names of the servers.
    def statistics(opts)
      opts = check_params(opts,[:server_names])
      super(opts)
    end

    ##
    # Gets the version information for this interface.
    # @rspec_example
    # @return [String]
    def version
      super
    end

    ##
    # Removes the IP addresses from this server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Server::ServerIPDefinition] :ips The IP addresses to remove from the servers.
    def remove_ip(opts)
      opts = check_params(opts,[:ips])
      super(opts)
    end

    ##
    # Removes the monitor associations for this server. This basically deletes the monitor
    # associations between a server and a monitor rule, i.e. this server will no longer
    # be monitored.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :server_names The names of the servers.
    def remove_monitor_association(opts)
      opts = check_params(opts,[:server_names])
      super(opts)
    end

    ##
    # Resets the statistics for this server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :server_names The names of the servers.
    def reset_statistics(opts)
      opts = check_params(opts,[:server_names])
      super(opts)
    end

    ##
    # Sets the states indicating whether path information gathering is allowed for this
    # server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set.
    def set_allow_path_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the states indicating whether service check is allowed for this server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set.
    def set_allow_service_check_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the states indicating whether SNMP information gathering is allowed for this
    # server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set.
    def set_allow_snmp_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the states indicating whether autoconfig is enabled/disabled. If enabled, GTM
    # will attempt to gather all virtual server based on this server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::AutoConfigurationState] :states The states to set.
    def set_auto_configuration_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Moves this server to the new data centers.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :data_centers The names of the new data centers.
    def set_data_center(opts)
      opts = check_params(opts,[:data_centers])
      super(opts)
    end

    ##
    # Sets the enabled states for this server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set.
    def set_enabled_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the limits for server metrics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Server::ServerMetricLimit] :limits The servers' metric limits.
    def set_limit(opts)
      opts = check_params(opts,[:limits])
      super(opts)
    end

    ##
    # Sets the states indicating whether autoconfig is enabled/disabled for the server'
    # links. If enabled, GTM will attempt to look up the links's default gateways.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::AutoConfigurationState] :states The states to set.
    def set_link_auto_configuration_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets/creates the monitor associations for this server. This basically creates the
    # monitor associations between a server and a monitor rule.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Server::MonitorAssociation] :monitor_associations The monitor associations that will be used to evaluate the specified servers.
    def set_monitor_association(opts)
      opts = check_params(opts,[:monitor_associations])
      super(opts)
    end

    ##
    # Sets the prober addresses for this server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :addresses The prober addresses
    def set_prober_address(opts)
      opts = check_params(opts,[:addresses])
      super(opts)
    end

    ##
    # Sets the server types of this server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::ServerType] :types The server types to set.
    def set_server_type(opts)
      opts = check_params(opts,[:types])
      super(opts)
    end

    ##
    # A struct that describes a server's monitor association.
    # @attr [String] server_name The name that identifies a server.
    # @attr [IControl::GlobalLB::MonitorRule] monitor_rule The monitor rule used in the monitor association.
    class MonitorAssociation < IControl::Base::Struct
      icontrol_attribute :server_name, String
      icontrol_attribute :monitor_rule, IControl::GlobalLB::MonitorRule
    end

    ##
    # A struct that contains definition for the server and the associated IP addresses.
    # @attr [String] server The server name.
    # @attr [IControl::GlobalLB::Server::ServerIPsForUnitIDSequence] addresses The IP addresses associated with this instance of the server.
    class ServerIPDefinition < IControl::Base::Struct
      icontrol_attribute :server, String
      icontrol_attribute :addresses, IControl::GlobalLB::Server::ServerIPsForUnitIDSequence
    end

    ##
    # A struct that contains definition for the server.
    # @attr [Numeric] unit_id The unit ID of the server.
    # @attr [StringSequence] addresses_on_unit The IP addresses associated with the server's unit ID.
    class ServerIPsForUnitID < IControl::Base::Struct
      icontrol_attribute :unit_id, Numeric
      icontrol_attribute :addresses_on_unit, StringSequence
    end

    ##
    # A struct that contains metric limits for a server.
    # @attr [String] server_name The name that identifies a server.
    # @attr [IControl::GlobalLB::MetricLimitSequence] metric_limits Metric limits of the server.
    class ServerMetricLimit < IControl::Base::Struct
      icontrol_attribute :server_name, String
      icontrol_attribute :metric_limits, IControl::GlobalLB::MetricLimitSequence
    end

    ##
    # A struct that describes statistics for a particular server.
    # @attr [String] server_name The server name.
    # @attr [IControl::Common::StatisticSequence] statistics The statistics for the server.
    class ServerStatisticEntry < IControl::Base::Struct
      icontrol_attribute :server_name, String
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes server statistics and timestamp.
    # @attr [IControl::GlobalLB::Server::ServerStatisticEntrySequence] statistics The statistics for a sequence of servers.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class ServerStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::GlobalLB::Server::ServerStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of monitor associations.
    class MonitorAssociationSequence < IControl::Base::Sequence ; end
    ## A sequence of ServerIPDefinition's.
    class ServerIPSequence < IControl::Base::Sequence ; end
    ## A sequence of ServerIPsForUnitID's.
    class ServerIPsForUnitIDSequence < IControl::Base::Sequence ; end
    ## A sequence of ServerMetricLimit's.
    class ServerMetricLimitSequence < IControl::Base::Sequence ; end
    ## A sequence of Server statistics.
    class ServerStatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
