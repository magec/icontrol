module IControl::Networking
  ##
  # The RouteTable interface enables you to work with the Route table and entries.
  class RouteTable < IControl::Base

    set_id_name "routes"

    class DynamicRoute < IControl::Base::Struct; end
    class DynamicRouteStatistics < IControl::Base::Struct; end
    class RouteAttribute < IControl::Base::Struct; end
    class RouteDefinition < IControl::Base::Struct; end
    class RouteTableMetricEntry < IControl::Base::Struct; end
    class RouteTableMetricStatistics < IControl::Base::Struct; end
    class DynamicRouteSequence < IControl::Base::Sequence ; end
    class DynamicRouteStatisticsSequence < IControl::Base::Sequence ; end
    class RouteAttributeSequence < IControl::Base::Sequence ; end
    class RouteDefinitionSequence < IControl::Base::Sequence ; end
    class RouteTableMetricEntrySequence < IControl::Base::Sequence ; end
    class RouteTableMetricStatisticsSequence < IControl::Base::Sequence ; end    ##
    # Adds this management route entries to the route table.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::RouteTable::RouteAttribute] :attributes The attributes for the specified management routes.
    def add_management_route(opts)
      check_params(opts,[:attributes])
      super
    end

    ##
    # Adds this static route entries to the route table.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::RouteTable::RouteAttribute] :attributes The static route attributes to add.
    def add_static_route(opts)
      check_params(opts,[:attributes])
      super
    end

    ##
    # Deletes all management route entries from the route table.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_management_routes
      super
    end

    ##
    # Deletes all static route entries from the route table.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_static_routes
      super
    end

    ##
    # Deletes this management route entries from the route table.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_management_route
      super
    end

    ##
    # Deletes this static route entries from the route table.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_static_route
      super
    end

    ##
    # Gets the dynamic route for this destination IP addresses.
    # @rspec_example
    # @return [DynamicRouteStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :destinations The destination IP addresses.
    def dynamic_route(opts)
      check_params(opts,[:destinations])
      super
    end

    ##
    # Gets a list of all management route entries.
    # @rspec_example
    # @return [RouteDefinition]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def management_route
      super
    end

    ##
    # Gets the gateways for this management route.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def management_route_gateway
      super
    end

    ##
    # Gets the MTUs for this management route.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def management_route_mtu
      super
    end

    ##
    # Gets the route type for this management route.
    # @rspec_example
    # @return [RouteEntryType]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def management_route_type
      super
    end

    ##
    # Gets the route metric statistics for this destination IP addresses.
    # @rspec_example
    # @return [RouteTableMetricStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :destinations The destination IP addresses.
    def route_table_metric_statistics_for_destination(opts)
      check_params(opts,[:destinations])
      super
    end

    ##
    # Gets the route metric statistics for this MAC addresses of the gateways.
    # @rspec_example
    # @return [RouteTableMetricStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :mac_addresses The MAC addresses.
    def route_table_metric_statistics_for_mac(opts)
      check_params(opts,[:mac_addresses])
      super
    end

    ##
    # Gets a list of all static route entries.
    # @rspec_example
    # @return [RouteDefinition]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def static_route
      super
    end

    ##
    # Gets the gateways for this static route.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def static_route_gateway
      super
    end

    ##
    # Gets the MTUs for this static route.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def static_route_mtu
      super
    end

    ##
    # Gets the pool names for this static route. The pool name allow the destination to
    # select the nexthop router from a pool.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def static_route_pool
      super
    end

    ##
    # Gets the route type for this static route.
    # @rspec_example
    # @return [RouteEntryType]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def static_route_type
      super
    end

    ##
    # Gets the VLAN names for this static route.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def static_route_vlan
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
    # Resets or flushes all route metric statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_all_route_table_metric_statistics
      super
    end

    ##
    # Sets the gateways for this management route.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :gateways The gateways for the specified management routes.
    def set_management_route_gateway(opts)
      check_params(opts,[:gateways])
      super
    end

    ##
    # Sets the MTUs for this management route.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :mtus The MTUs for the specified management routes.
    def set_management_route_mtu(opts)
      check_params(opts,[:mtus])
      super
    end

    ##
    # Sets the state that rejects all requests for this management route.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_management_route_reject
      super
    end

    ##
    # Sets the gateways for this static route.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :gateways The gateways for the specified static routes.
    def set_static_route_gateway(opts)
      check_params(opts,[:gateways])
      super
    end

    ##
    # Sets the MTUs for this static route.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :mtus The MTUs to destinations.
    def set_static_route_mtu(opts)
      check_params(opts,[:mtus])
      super
    end

    ##
    # Sets the pool names for this static route. The pool name allow the destination to
    # select the nexthop router from a pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :pools The pool names.
    def set_static_route_pool(opts)
      check_params(opts,[:pools])
      super
    end

    ##
    # Sets the state that rejects all requests for this static route.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_static_route_reject
      super
    end

    ##
    # Sets the VLAN names for this static route.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :vlans The VLAN names.
    def set_static_route_vlan(opts)
      check_params(opts,[:vlans])
      super
    end

    ##
    # A struct that describes a dynamic route and statistics.
    # @attr [String] destination The IP address of the destination.
    # @attr [String] netmask The netmask of the destination.
    # @attr [String] gateway The gateway to the destination.
    # @attr [String] vlan_name The VLAN name for the destination.
    # @attr [String] pool_name The pool name for the destination.
    # @attr [Numeric] mtu The MTU to destination.
    class DynamicRoute < IControl::Base::Struct
      icontrol_attribute :destination, String
      icontrol_attribute :netmask, String
      icontrol_attribute :gateway, String
      icontrol_attribute :vlan_name, String
      icontrol_attribute :pool_name, String
      icontrol_attribute :mtu, Numeric
    end

    ##
    # A struct that describes dynamic route statistics and timestamp.
    # @attr [IControl::Networking::RouteTable::DynamicRouteSequence] statistics The statistics for a sequence of dynamic routes.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class DynamicRouteStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::Networking::RouteTable::DynamicRouteSequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes the attributes of a route.
    # @attr [String] gateway The gateway to the destination.
    # @attr [String] vlan_name The VLAN name for the destination.
    # @attr [String] pool_name The pool name for the destination.
    class RouteAttribute < IControl::Base::Struct
      icontrol_attribute :gateway, String
      icontrol_attribute :vlan_name, String
      icontrol_attribute :pool_name, String
    end

    ##
    # A struct that describes a route.
    # @attr [String] destination The IP address of the destination.
    # @attr [String] netmask The netmask of the destination.
    class RouteDefinition < IControl::Base::Struct
      icontrol_attribute :destination, String
      icontrol_attribute :netmask, String
    end

    ##
    # A struct that describes statistics for a particular route table metric.
    # @attr [String] destination The destination IP address.
    # @attr [String] mac_address The MAC address of the next hop.
    # @attr [Numeric] rtt The netmask of the destination.
    # @attr [Numeric] rtt_variance The gateway of the destination.
    # @attr [Numeric] mtu The MTU to destination.
    # @attr [Numeric] expiration The number of seconds until expiration.
    class RouteTableMetricEntry < IControl::Base::Struct
      icontrol_attribute :destination, String
      icontrol_attribute :mac_address, String
      icontrol_attribute :rtt, Numeric
      icontrol_attribute :rtt_variance, Numeric
      icontrol_attribute :mtu, Numeric
      icontrol_attribute :expiration, Numeric
    end

    ##
    # A struct that describes route table statistics and timestamp.
    # @attr [IControl::Networking::RouteTable::RouteTableMetricEntrySequence] statistics The statistics for a sequence of pool members.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class RouteTableMetricStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::Networking::RouteTable::RouteTableMetricEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of dynamic route entries.
    class DynamicRouteSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of route table statistics.
    class DynamicRouteStatisticsSequence < IControl::Base::Sequence ; end
    ## A sequence of RouteAttribute entries.
    class RouteAttributeSequence < IControl::Base::Sequence ; end
    ## A sequence of RouteDefinition entries.
    class RouteDefinitionSequence < IControl::Base::Sequence ; end
    ## A sequence of route table metric statistics.
    class RouteTableMetricEntrySequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of route table metric statistics.
    class RouteTableMetricStatisticsSequence < IControl::Base::Sequence ; end
  end
end
