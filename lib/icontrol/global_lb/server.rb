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
    class ServerStatistics < IControl::Base::Struct; end    ##
    # Adds the IP addresses to this server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Server::ServerIPDefinition] :ips The IP addresses to add to the servers.
    def add_ip(opts)
      check_params(opts,[:ips])
      super
    end

    ##
    # Creates this server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::ServerType] :types The server types.
    # @option opts [String] :data_centers The data centers associated with the servers.
    def create(opts)
      check_params(opts,[:types,:data_centers])
      super
    end

    ##
    # Deletes all server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_servers
      super
    end

    ##
    # Deletes this server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_server
      super
    end

    ##
    # Gets the statistics for all the server.
    # @return [ServerStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the states indicating whether path information gathering is allowed for this server.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def allow_path_state
      super
    end

    ##
    # Gets the states indicating whether service check is allowed for this server.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def allow_service_check_state
      super
    end

    ##
    # Gets the states indicating whether SNMP information gathering is allowed for this server.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def allow_snmp_state
      super
    end

    ##
    # Gets the states indicating whether autoconfig is enabled/disabled. If enabled, GTM will attempt to gather all virtual server based on this server.
    # @return [AutoConfigurationState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def auto_configuration_state
      super
    end

    ##
    # Gets the data centers that this server belong to.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def data_center
      super
    end

    ##
    # Gets the enabled states for this server.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def enabled_state
      super
    end

    ##
    # Gets the IP addresses that belong to this server.
    # @return [ServerIPDefinition]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def ip
      super
    end

    ##
    # Gets all metrics limits for a sequence of server.
    # @return [ServerMetricLimit]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def limit
      super
    end

    ##
    # Gets the states indicating whether autoconfig is enabled/disabled. If enabled, GTM will attempt to look up the links's default gateways.
    # @return [AutoConfigurationState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def link_auto_configuration_state
      super
    end

    ##
    # Gets a list of server.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the monitor associations for this server, i.e. the monitor rules used by the server.
    # @return [MonitorAssociation]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :server_names The names of the servers.
    def monitor_association(opts)
      check_params(opts,[:server_names])
      super
    end

    ##
    # Gets the statuses of this server.
    # @return [ObjectStatus]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def object_status
      super
    end

    ##
    # Gets the prober addresses for this server.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def prober_address
      super
    end

    ##
    # Gets the server types of this server.
    # @return [ServerType]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def server_type
      super
    end

    ##
    # Gets the statistics for this server.
    # @return [ServerStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :server_names The names of the servers.
    def statistics(opts)
      check_params(opts,[:server_names])
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Removes the IP addresses from this server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Server::ServerIPDefinition] :ips The IP addresses to remove from the servers.
    def remove_ip(opts)
      check_params(opts,[:ips])
      super
    end

    ##
    # Removes the monitor associations for this server. This basically deletes the monitor associations between a server and a monitor rule, i.e. this server will no longer be monitored.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :server_names The names of the servers.
    def remove_monitor_association(opts)
      check_params(opts,[:server_names])
      super
    end

    ##
    # Resets the statistics for this server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :server_names The names of the servers.
    def reset_statistics(opts)
      check_params(opts,[:server_names])
      super
    end

    ##
    # Sets the states indicating whether path information gathering is allowed for this server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set.
    def set_allow_path_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the states indicating whether service check is allowed for this server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set.
    def set_allow_service_check_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the states indicating whether SNMP information gathering is allowed for this server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set.
    def set_allow_snmp_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the states indicating whether autoconfig is enabled/disabled. If enabled, GTM will attempt to gather all virtual server based on this server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::AutoConfigurationState] :states The states to set.
    def set_auto_configuration_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Moves this server to the new data centers.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :data_centers The names of the new data centers.
    def set_data_center(opts)
      check_params(opts,[:data_centers])
      super
    end

    ##
    # Sets the enabled states for this server.
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
    # Sets the limits for server metrics.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Server::ServerMetricLimit] :limits The servers' metric limits.
    def set_limit(opts)
      check_params(opts,[:limits])
      super
    end

    ##
    # Sets the states indicating whether autoconfig is enabled/disabled for the server' links. If enabled, GTM will attempt to look up the links's default gateways.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::AutoConfigurationState] :states The states to set.
    def set_link_auto_configuration_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets/creates the monitor associations for this server. This basically creates the monitor associations between a server and a monitor rule.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Server::MonitorAssociation] :monitor_associations The monitor associations that will be used to evaluate the specified servers.
    def set_monitor_association(opts)
      check_params(opts,[:monitor_associations])
      super
    end

    ##
    # Sets the prober addresses for this server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :addresses The prober addresses
    def set_prober_address(opts)
      check_params(opts,[:addresses])
      super
    end

    ##
    # Sets the server types of this server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::ServerType] :types The server types to set.
    def set_server_type(opts)
      check_params(opts,[:types])
      super
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
    # @attr [IControl::GlobalLB::Server::ServerIPsForUnitID] addresses The IP addresses associated with this instance of the server.
    class ServerIPDefinition < IControl::Base::Struct
      icontrol_attribute :server, String
      icontrol_attribute :addresses, IControl::GlobalLB::Server::ServerIPsForUnitID
    end

    ##
    # A struct that contains definition for the server.
    # @attr [Numeric] unit_id The unit ID of the server.
    # @attr [String] addresses_on_unit The IP addresses associated with the server's unit ID.
    class ServerIPsForUnitID < IControl::Base::Struct
      icontrol_attribute :unit_id, Numeric
      icontrol_attribute :addresses_on_unit, String
    end

    ##
    # A struct that contains metric limits for a server.
    # @attr [String] server_name The name that identifies a server.
    # @attr [IControl::GlobalLB::MetricLimit] metric_limits Metric limits of the server.
    class ServerMetricLimit < IControl::Base::Struct
      icontrol_attribute :server_name, String
      icontrol_attribute :metric_limits, IControl::GlobalLB::MetricLimit
    end

    ##
    # A struct that describes statistics for a particular server.
    # @attr [String] server_name The server name.
    # @attr [IControl::Common::Statistic] statistics The statistics for the server.
    class ServerStatisticEntry < IControl::Base::Struct
      icontrol_attribute :server_name, String
      icontrol_attribute :statistics, IControl::Common::Statistic
    end

    ##
    # A struct that describes server statistics and timestamp.
    # @attr [IControl::GlobalLB::Server::ServerStatisticEntry] statistics The statistics for a sequence of servers.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class ServerStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::GlobalLB::Server::ServerStatisticEntry
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
