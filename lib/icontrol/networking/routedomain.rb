module IControl::Networking
  ##
  # The RouteDomain interface enables you to work with the definitions and attributes
  # contained in a device's route domains. Route domains allow you to specify overlapping
  # IP addresses for different objects in the system. This allows a service provider,
  # for example, to have two different pool members at 10.10.10.1 that represent completely
  # different real servers. The addresses for the two pool members might be 10.10.10.1%1
  # and 10.10.10.1%2 where the numbers after the percent signs are numeric ids of route
  # domains.
  class RouteDomain < IControl::Base
    ##
    # Adds the specified VLANs to the specified route domains.
    # :method: add_vlan
    # :call-seq:
    # add_vlan(route_domains ,vlans)
    #
    # Parameters:
    # - route_domains long[] The route domain names.
    # - vlans String[][] The lists of child VLANs .

    ##
    # Creates a route domain.
    # :method: create
    # :call-seq:
    # create(route_domains ,vlans)
    #
    # Parameters:
    # - route_domains long[] The route domains to create.
    # - vlans String[][] The lists of VLANs .

    ##
    # Deletes all route domains.
    # :method: delete_all_route_domains

    ##
    # Deletes the specified route domains.
    # :method: delete_route_domain
    # :call-seq:
    # delete_route_domain(route_domains)
    #
    # Parameters:
    # - route_domains long[] The route domain names.

    ##
    # Gets the descriptions for the the specified route domains.
    # :method: get_description
    # :call-seq:
    # get_description(route_domains)
    #
    # Parameters:
    # - route_domains long[] The route domain names.

    ##
    # Gets a list of all route domains on this device.
    # :method: get_list

    ##
    # Gets the parent ids for the specified route domains.
    # :method: get_parent_id
    # :call-seq:
    # get_parent_id(route_domains)
    #
    # Parameters:
    # - route_domains long[] The route domain names.

    ##
    # Gets the state to enforce cross-domain routing restrictions for a set of route domains.
    # :method: get_strict_state
    # :call-seq:
    # get_strict_state(route_domains)
    #
    # Parameters:
    # - route_domains long[] Identifiers of the route domains to modify

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Gets the lists of VLANs for the specified route domains.
    # :method: get_vlan
    # :call-seq:
    # get_vlan(route_domains)
    #
    # Parameters:
    # - route_domains long[] The route domain names.

    ##
    # Removes all VLANs from the specified route domains.
    # :method: remove_all_vlans
    # :call-seq:
    # remove_all_vlans(route_domains)
    #
    # Parameters:
    # - route_domains long[] The route domain names.

    ##
    # Removes the specified VLANs from the specified route domains.
    # :method: remove_vlan
    # :call-seq:
    # remove_vlan(route_domains ,vlans)
    #
    # Parameters:
    # - route_domains long[] The route domain names.
    # - vlans String[][] The lists of child VLANs .

    ##
    # Sets the descriptions for the the specified route domains.
    # :method: set_description
    # :call-seq:
    # set_description(route_domains ,descriptions)
    #
    # Parameters:
    # - route_domains long[] The route domain names.
    # - descriptions String[] The descriptions to set for the specified route domains.

    ##
    # Sets the parent ids for the specified route domains.
    # :method: set_parent_id
    # :call-seq:
    # set_parent_id(route_domains ,parent_ids)
    #
    # Parameters:
    # - route_domains long[] The route domain names.
    # - parent_ids long[] The route domain parent ids.

    ##
    # Sets the state to enforce cross-domain routing restrictions for a set of route domains.
    # NOTES = If set, packets cannot cross route domain boundaries, i.e., they are strictly
    # isolated to the current route domain. = For example, if not set, you can add a route
    # to the routing table where the destination is 10.0.0.0%20 (route domain 20) and the
    # gateway is 172.27.84.29%32 (route domain 32). = If set, the system may find invalid
    # iRules that passed validation.
    # :method: set_strict_state
    # :call-seq:
    # set_strict_state(route_domains ,states)
    #
    # Parameters:
    # - route_domains long[] Identifiers of the route domains to modify
    # - states EnabledState[] State to enforce cross-domain routing restrictions for each specified route domain (default: enabled)


  end
end
