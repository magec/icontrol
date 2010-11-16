module IControl::GlobalLB
  ##
  # The Server interface enables you to work with servers within a data center.
  class Server < IControl::Base
    class MonitorAssociation < IControl::Base::Struct; end
    class ServerIPDefinition < IControl::Base::Struct; end
    class ServerIPsForUnitID < IControl::Base::Struct; end
    class ServerMetricLimit < IControl::Base::Struct; end
    class ServerStatisticEntry < IControl::Base::Struct; end
    class ServerStatistics < IControl::Base::Struct; end    ## A sequence of monitor associations.
    class MonitorAssociationSequence < IControl::Base::Sequence ; end## A sequence of ServerIPDefinition's.
    class ServerIPSequence < IControl::Base::Sequence ; end## A sequence of ServerIPsForUnitID's.
    class ServerIPsForUnitIDSequence < IControl::Base::Sequence ; end## A sequence of ServerMetricLimit's.
    class ServerMetricLimitSequence < IControl::Base::Sequence ; end## A sequence of Server statistics.
    class ServerStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes a server's monitor association.
    class MonitorAssociation < IControl::Base::Struct
      # The name that identifies a server.
      icontrol_attribute :server_name, String
      # The monitor rule used in the monitor association.
      icontrol_attribute :monitor_rule, IControl::GlobalLB::MonitorRule
    end

    ##
    # A struct that contains definition for the server and the associated IP addresses.
    class ServerIPDefinition < IControl::Base::Struct
      # The server name.
      icontrol_attribute :server, String
      # The IP addresses associated with this instance of the server.
      icontrol_attribute :addresses, IControl::GlobalLB::Server::ServerIPsForUnitIDSequence
    end

    ##
    # A struct that contains definition for the server.
    class ServerIPsForUnitID < IControl::Base::Struct
      # The unit ID of the server.
      icontrol_attribute :unit_id, Numeric
      # The IP addresses associated with the server's unit ID.
      icontrol_attribute :addresses_on_unit, StringSequence
    end

    ##
    # A struct that contains metric limits for a server.
    class ServerMetricLimit < IControl::Base::Struct
      # The name that identifies a server.
      icontrol_attribute :server_name, String
      # Metric limits of the server.
      icontrol_attribute :metric_limits, IControl::GlobalLB::MetricLimitSequence
    end

    ##
    # A struct that describes statistics for a particular server.
    class ServerStatisticEntry < IControl::Base::Struct
      # The server name.
      icontrol_attribute :server_name, String
      # The statistics for the server.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes server statistics and timestamp.
    class ServerStatistics < IControl::Base::Struct
      # The statistics for a sequence of servers.
      icontrol_attribute :statistics, IControl::GlobalLB::Server::ServerStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Adds the IP addresses to the specified servers.
    # :method: add_ip
    # :call-seq:
    # add_ip(ips)
    #
    # Parameters:
    # - ips ServerIPDefinition[] The IP addresses to add to the servers.

    ##
    # Creates the specified servers.
    # :method: create
    # :call-seq:
    # create(servers ,types ,data_centers)
    #
    # Parameters:
    # - servers ServerIPDefinition[] The servers to create.
    # - types ServerType[] The server types.
    # - data_centers String[] The data centers associated with the servers.

    ##
    # Deletes all servers.
    # :method: delete_all_servers

    ##
    # Deletes the specified servers.
    # :method: delete_server
    # :call-seq:
    # delete_server(servers)
    #
    # Parameters:
    # - servers String[] The servers to delete.

    ##
    # Gets the statistics for all the servers.
    # :method: get_all_statistics

    ##
    # Gets the states indicating whether path information gathering is allowed for the
    # specified servers.
    # :method: get_allow_path_state
    # :call-seq:
    # get_allow_path_state(servers)
    #
    # Parameters:
    # - servers String[] The list of servers.

    ##
    # Gets the states indicating whether service check is allowed for the specified servers.
    # :method: get_allow_service_check_state
    # :call-seq:
    # get_allow_service_check_state(servers)
    #
    # Parameters:
    # - servers String[] The list of servers.

    ##
    # Gets the states indicating whether SNMP information gathering is allowed for the
    # specified servers.
    # :method: get_allow_snmp_state
    # :call-seq:
    # get_allow_snmp_state(servers)
    #
    # Parameters:
    # - servers String[] The list of servers.

    ##
    # Gets the states indicating whether autoconfig is enabled/disabled. If enabled, GTM
    # will attempt to gather all virtual servers based on the specified servers.
    # :method: get_auto_configuration_state
    # :call-seq:
    # get_auto_configuration_state(servers)
    #
    # Parameters:
    # - servers String[] The list of servers.

    ##
    # Gets the data centers that the specified servers belong to.
    # :method: get_data_center
    # :call-seq:
    # get_data_center(servers)
    #
    # Parameters:
    # - servers String[] The list of servers.

    ##
    # Gets the enabled states for the specified servers.
    # :method: get_enabled_state
    # :call-seq:
    # get_enabled_state(servers)
    #
    # Parameters:
    # - servers String[] The list of servers.

    ##
    # Gets the IP addresses that belong to the specified servers.
    # :method: get_ip
    # :call-seq:
    # get_ip(servers)
    #
    # Parameters:
    # - servers String[] The list of servers.

    ##
    # Gets all metrics limits for a sequence of servers.
    # :method: get_limit
    # :call-seq:
    # get_limit(servers)
    #
    # Parameters:
    # - servers String[] The list of servers.

    ##
    # Gets the states indicating whether autoconfig is enabled/disabled. If enabled, GTM
    # will attempt to look up the links's default gateways.
    # :method: get_link_auto_configuration_state
    # :call-seq:
    # get_link_auto_configuration_state(servers)
    #
    # Parameters:
    # - servers String[] The list of servers.

    ##
    # Gets a list of servers.
    # :method: get_list

    ##
    # Gets the monitor associations for the specified servers, i.e. the monitor rules used
    # by the servers.
    # :method: get_monitor_association
    # :call-seq:
    # get_monitor_association(server_names)
    #
    # Parameters:
    # - server_names String[] The names of the servers.

    ##
    # Gets the statuses of the specified servers.
    # :method: get_object_status
    # :call-seq:
    # get_object_status(servers)
    #
    # Parameters:
    # - servers String[] The list of servers.

    ##
    # Gets the prober addresses for the specified servers.
    # :method: get_prober_address
    # :call-seq:
    # get_prober_address(servers)
    #
    # Parameters:
    # - servers String[] The list of servers.

    ##
    # Gets the server types of the specified servers.
    # :method: get_server_type
    # :call-seq:
    # get_server_type(servers)
    #
    # Parameters:
    # - servers String[] The list of servers.

    ##
    # Gets the statistics for the specified servers.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(server_names)
    #
    # Parameters:
    # - server_names String[] The names of the servers.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Removes the IP addresses from the specified servers.
    # :method: remove_ip
    # :call-seq:
    # remove_ip(ips)
    #
    # Parameters:
    # - ips ServerIPDefinition[] The IP addresses to remove from the servers.

    ##
    # Removes the monitor associations for the specified servers. This basically deletes
    # the monitor associations between a server and a monitor rule, i.e. the specified
    # servers will no longer be monitored.
    # :method: remove_monitor_association
    # :call-seq:
    # remove_monitor_association(server_names)
    #
    # Parameters:
    # - server_names String[] The names of the servers.

    ##
    # Resets the statistics for the specified servers.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(server_names)
    #
    # Parameters:
    # - server_names String[] The names of the servers.

    ##
    # Sets the states indicating whether path information gathering is allowed for the
    # specified servers.
    # :method: set_allow_path_state
    # :call-seq:
    # set_allow_path_state(servers ,states)
    #
    # Parameters:
    # - servers String[] The list of servers.
    # - states EnabledState[] The states to set.

    ##
    # Sets the states indicating whether service check is allowed for the specified servers.
    # :method: set_allow_service_check_state
    # :call-seq:
    # set_allow_service_check_state(servers ,states)
    #
    # Parameters:
    # - servers String[] The list of servers.
    # - states EnabledState[] The states to set.

    ##
    # Sets the states indicating whether SNMP information gathering is allowed for the
    # specified servers.
    # :method: set_allow_snmp_state
    # :call-seq:
    # set_allow_snmp_state(servers ,states)
    #
    # Parameters:
    # - servers String[] The list of servers.
    # - states EnabledState[] The states to set.

    ##
    # Sets the states indicating whether autoconfig is enabled/disabled. If enabled, GTM
    # will attempt to gather all virtual servers based on the specified servers.
    # :method: set_auto_configuration_state
    # :call-seq:
    # set_auto_configuration_state(servers ,states)
    #
    # Parameters:
    # - servers String[] The list of servers.
    # - states AutoConfigurationState[] The states to set.

    ##
    # Moves the specified servers to the new data centers.
    # :method: set_data_center
    # :call-seq:
    # set_data_center(servers ,data_centers)
    #
    # Parameters:
    # - servers String[] The list of servers.
    # - data_centers String[] The names of the new data centers.

    ##
    # Sets the enabled states for the specified servers.
    # :method: set_enabled_state
    # :call-seq:
    # set_enabled_state(servers ,states)
    #
    # Parameters:
    # - servers String[] The list of servers.
    # - states EnabledState[] The states to set.

    ##
    # Sets the limits for server metrics.
    # :method: set_limit
    # :call-seq:
    # set_limit(limits)
    #
    # Parameters:
    # - limits ServerMetricLimit[] The servers' metric limits.

    ##
    # Sets the states indicating whether autoconfig is enabled/disabled for the servers'
    # links. If enabled, GTM will attempt to look up the links's default gateways.
    # :method: set_link_auto_configuration_state
    # :call-seq:
    # set_link_auto_configuration_state(servers ,states)
    #
    # Parameters:
    # - servers String[] The list of servers.
    # - states AutoConfigurationState[] The states to set.

    ##
    # Sets/creates the monitor associations for the specified servers. This basically creates
    # the monitor associations between a server and a monitor rule.
    # :method: set_monitor_association
    # :call-seq:
    # set_monitor_association(monitor_associations)
    #
    # Parameters:
    # - monitor_associations MonitorAssociation[] The monitor associations that will be used to evaluate the specified servers.

    ##
    # Sets the prober addresses for the specified servers.
    # :method: set_prober_address
    # :call-seq:
    # set_prober_address(servers ,addresses)
    #
    # Parameters:
    # - servers String[] The list of servers.
    # - addresses String[] The prober addresses

    ##
    # Sets the server types of the specified servers.
    # :method: set_server_type
    # :call-seq:
    # set_server_type(servers ,types)
    #
    # Parameters:
    # - servers String[] The list of servers.
    # - types ServerType[] The server types to set.


  end
end
