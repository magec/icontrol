module IControl::Networking
  ##
  # The RouteTable interface enables you to work with the Route table and entries.
  class RouteTable < IControl::Base
    class DynamicRoute < IControl::Base::Struct; end
    class DynamicRouteStatistics < IControl::Base::Struct; end
    class RouteAttribute < IControl::Base::Struct; end
    class RouteDefinition < IControl::Base::Struct; end
    class RouteTableMetricEntry < IControl::Base::Struct; end
    class RouteTableMetricStatistics < IControl::Base::Struct; end    ## A sequence of dynamic route entries.
    class DynamicRouteSequence < IControl::Base::Sequence ; end## An alias for a sequence of route table statistics.
    class DynamicRouteStatisticsSequence < IControl::Base::Sequence ; end## A sequence of RouteAttribute entries.
    class RouteAttributeSequence < IControl::Base::Sequence ; end## A sequence of RouteDefinition entries.
    class RouteDefinitionSequence < IControl::Base::Sequence ; end## A sequence of route table metric statistics.
    class RouteTableMetricEntrySequence < IControl::Base::Sequence ; end## An alias for a sequence of route table metric statistics.
    class RouteTableMetricStatisticsSequence < IControl::Base::Sequence ; end##
    # A struct that describes a dynamic route and statistics.
    class DynamicRoute < IControl::Base::Struct
      # The IP address of the destination.
      icontrol_attribute :destination, String
      # The netmask of the destination.
      icontrol_attribute :netmask, String
      # The gateway to the destination.
      icontrol_attribute :gateway, String
      # The VLAN name for the destination.
      icontrol_attribute :vlan_name, String
      # The pool name for the destination.
      icontrol_attribute :pool_name, String
      # The MTU to destination.
      icontrol_attribute :mtu, Numeric
    end

    ##
    # A struct that describes dynamic route statistics and timestamp.
    class DynamicRouteStatistics < IControl::Base::Struct
      # The statistics for a sequence of dynamic routes.
      icontrol_attribute :statistics, IControl::Networking::RouteTable::DynamicRouteSequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes the attributes of a route.
    class RouteAttribute < IControl::Base::Struct
      # The gateway to the destination.
      icontrol_attribute :gateway, String
      # The VLAN name for the destination.
      icontrol_attribute :vlan_name, String
      # The pool name for the destination.
      icontrol_attribute :pool_name, String
    end

    ##
    # A struct that describes a route.
    class RouteDefinition < IControl::Base::Struct
      # The IP address of the destination.
      icontrol_attribute :destination, String
      # The netmask of the destination.
      icontrol_attribute :netmask, String
    end

    ##
    # A struct that describes statistics for a particular route table metric.
    class RouteTableMetricEntry < IControl::Base::Struct
      # The destination IP address.
      icontrol_attribute :destination, String
      # The MAC address of the next hop.
      icontrol_attribute :mac_address, String
      # The netmask of the destination.
      icontrol_attribute :rtt, Numeric
      # The gateway of the destination.
      icontrol_attribute :rtt_variance, Numeric
      # The MTU to destination.
      icontrol_attribute :mtu, Numeric
      # The number of seconds until expiration.
      icontrol_attribute :expiration, Numeric
    end

    ##
    # A struct that describes route table statistics and timestamp.
    class RouteTableMetricStatistics < IControl::Base::Struct
      # The statistics for a sequence of pool members.
      icontrol_attribute :statistics, IControl::Networking::RouteTable::RouteTableMetricEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Adds the specified management route entries to the route table.
    # :method: add_management_route
    # :call-seq:
    # add_management_route(routes ,attributes)
    #
    # Parameters:
    # - routes RouteDefinition[] The management route entries to add.
    # - attributes RouteAttribute[] The attributes for the specified management routes.

    ##
    # Adds the specified static route entries to the route table.
    # :method: add_static_route
    # :call-seq:
    # add_static_route(routes ,attributes)
    #
    # Parameters:
    # - routes RouteDefinition[] The static route entries to add.
    # - attributes RouteAttribute[] The static route attributes to add.

    ##
    # Deletes all management route entries from the route table.
    # :method: delete_all_management_routes

    ##
    # Deletes all static route entries from the route table.
    # :method: delete_all_static_routes

    ##
    # Deletes the specified management route entries from the route table.
    # :method: delete_management_route
    # :call-seq:
    # delete_management_route(routes)
    #
    # Parameters:
    # - routes RouteDefinition[] The management route entries to delete.

    ##
    # Deletes the specified static route entries from the route table.
    # :method: delete_static_route
    # :call-seq:
    # delete_static_route(routes)
    #
    # Parameters:
    # - routes RouteDefinition[] The static route entries to delete.

    ##
    # Gets the dynamic routes for the specified destination IP addresses.
    # :method: get_dynamic_route
    # :call-seq:
    # get_dynamic_route(destinations)
    #
    # Parameters:
    # - destinations String[] The destination IP addresses.

    ##
    # Gets a list of all management route entries.
    # :method: get_management_route

    ##
    # Gets the gateways for the specified management routes.
    # :method: get_management_route_gateway
    # :call-seq:
    # get_management_route_gateway(routes)
    #
    # Parameters:
    # - routes RouteDefinition[] The list of management route entries.

    ##
    # Gets the MTUs for the specified management routes.
    # :method: get_management_route_mtu
    # :call-seq:
    # get_management_route_mtu(routes)
    #
    # Parameters:
    # - routes RouteDefinition[] The list of management route entries.

    ##
    # Gets the route type for the specified management routes.
    # :method: get_management_route_type
    # :call-seq:
    # get_management_route_type(routes)
    #
    # Parameters:
    # - routes RouteDefinition[] The list of management route entries.

    ##
    # Gets the route metric statistics for the specified destination IP addresses.
    # :method: get_route_table_metric_statistics_for_destination
    # :call-seq:
    # get_route_table_metric_statistics_for_destination(destinations)
    #
    # Parameters:
    # - destinations String[] The destination IP addresses.

    ##
    # Gets the route metric statistics for the specified MAC addresses of the gateways.
    # :method: get_route_table_metric_statistics_for_mac
    # :call-seq:
    # get_route_table_metric_statistics_for_mac(mac_addresses)
    #
    # Parameters:
    # - mac_addresses String[] The MAC addresses.

    ##
    # Gets a list of all static route entries.
    # :method: get_static_route

    ##
    # Gets the gateways for the specified static routes.
    # :method: get_static_route_gateway
    # :call-seq:
    # get_static_route_gateway(routes)
    #
    # Parameters:
    # - routes RouteDefinition[] The list of static route entries.

    ##
    # Gets the MTUs for the specified static routes.
    # :method: get_static_route_mtu
    # :call-seq:
    # get_static_route_mtu(routes)
    #
    # Parameters:
    # - routes RouteDefinition[] The list of static route entries.

    ##
    # Gets the pool names for the specified static routes. The pool name allow the destination
    # to select the nexthop router from a pool.
    # :method: get_static_route_pool
    # :call-seq:
    # get_static_route_pool(routes)
    #
    # Parameters:
    # - routes RouteDefinition[] The list of static route entries.

    ##
    # Gets the route type for the specified static routes.
    # :method: get_static_route_type
    # :call-seq:
    # get_static_route_type(routes)
    #
    # Parameters:
    # - routes RouteDefinition[] The list of static route entries.

    ##
    # Gets the VLAN names for the specified static routes.
    # :method: get_static_route_vlan
    # :call-seq:
    # get_static_route_vlan(routes)
    #
    # Parameters:
    # - routes RouteDefinition[] The list of static route entries.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Resets or flushes all route metric statistics.
    # :method: reset_all_route_table_metric_statistics

    ##
    # Sets the gateways for the specified management routes.
    # :method: set_management_route_gateway
    # :call-seq:
    # set_management_route_gateway(routes ,gateways)
    #
    # Parameters:
    # - routes RouteDefinition[] The list of management route entries.
    # - gateways String[] The gateways for the specified management routes.

    ##
    # Sets the MTUs for the specified management routes.
    # :method: set_management_route_mtu
    # :call-seq:
    # set_management_route_mtu(routes ,mtus)
    #
    # Parameters:
    # - routes RouteDefinition[] The list of management route entries.
    # - mtus long[] The MTUs for the specified management routes.

    ##
    # Sets the state that rejects all requests for the specified management routes.
    # :method: set_management_route_reject
    # :call-seq:
    # set_management_route_reject(routes)
    #
    # Parameters:
    # - routes RouteDefinition[] The list of management route entries.

    ##
    # Sets the gateways for the specified static routes.
    # :method: set_static_route_gateway
    # :call-seq:
    # set_static_route_gateway(routes ,gateways)
    #
    # Parameters:
    # - routes RouteDefinition[] The list of static route entries.
    # - gateways String[] The gateways for the specified static routes.

    ##
    # Sets the MTUs for the specified static routes.
    # :method: set_static_route_mtu
    # :call-seq:
    # set_static_route_mtu(routes ,mtus)
    #
    # Parameters:
    # - routes RouteDefinition[] The list of static route entries.
    # - mtus long[] The MTUs to destinations.

    ##
    # Sets the pool names for the specified static routes. The pool name allow the destination
    # to select the nexthop router from a pool.
    # :method: set_static_route_pool
    # :call-seq:
    # set_static_route_pool(routes ,pools)
    #
    # Parameters:
    # - routes RouteDefinition[] The list of static route entries.
    # - pools String[] The pool names.

    ##
    # Sets the state that rejects all requests for the specified static routes.
    # :method: set_static_route_reject
    # :call-seq:
    # set_static_route_reject(routes)
    #
    # Parameters:
    # - routes RouteDefinition[] The list of static route entries.

    ##
    # Sets the VLAN names for the specified static routes.
    # :method: set_static_route_vlan
    # :call-seq:
    # set_static_route_vlan(routes ,vlans)
    #
    # Parameters:
    # - routes RouteDefinition[] The list of static route entries.
    # - vlans String[] The VLAN names.


  end
end
