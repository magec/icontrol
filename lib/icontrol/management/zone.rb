module IControl::Management
  ##
  # The Zone interface enables the user to perform &amp;quot;zone" operations on a dns
  # database
  class Zone < IControl::Base
    ##
    # Adds the Zones in the specified views, using the file names specified as the contents
    # of the zone files. Files must be local to target machine.
    # :method: add_zone_file
    # :call-seq:
    # add_zone_file(zone_records ,src_file_names ,sync_ptrs)
    #
    # Parameters:
    # - zone_records ZoneInfo[] The ZoneInfo struct containing information about the zone to be added
    # - src_file_names String[] The files containing the zone's resource records.
    # - sync_ptrs boolean[] A list containing sequences of states indicating whether PTR records should		 automatically be generated.

    ##
    # Adds new options to the specified zones.
    # :method: add_zone_option
    # :call-seq:
    # add_zone_option(zones)
    #
    # Parameters:
    # - zones ZoneInfo[] The zones and their options.

    ##
    # Adds the Zones in the specified views, using the texts specified as the contents
    # of the zone files.
    # :method: add_zone_text
    # :call-seq:
    # add_zone_text(zone_records ,text ,sync_ptrs)
    #
    # Parameters:
    # - zone_records ZoneInfo[] The ZoneInfo structs containing information about the zones to be added.
    # - text String[][] The list of sequence of strings containing the resource records to create	 in the zones (SOA, NS, etc)
    # - sync_ptrs boolean[] A list containing sequences of states indicating whether PTR records should		 automatically be generated.

    ##
    # Deletes the specified Zones in the specified views.
    # :method: delete_zone
    # :call-seq:
    # delete_zone(view_zones)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.

    ##
    # Deletes existing options of the specified zones
    # :method: delete_zone_option
    # :call-seq:
    # delete_zone_option(zones)
    #
    # Parameters:
    # - zones ZoneInfo[] The zones and their options.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Gets the ZoneInfo structs for the specified zones in the specified views.
    # :method: get_zone
    # :call-seq:
    # get_zone(view_zones)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.

    ##
    # Gets the list of zone names for the specified views.
    # :method: get_zone_name
    # :call-seq:
    # get_zone_name(view_names)
    #
    # Parameters:
    # - view_names String[] The names of the views.

    ##
    # Sets existing options of the specified zones to new values.
    # :method: set_zone_option
    # :call-seq:
    # set_zone_option(zones)
    #
    # Parameters:
    # - zones ZoneInfo[] The zones and their options.

    ##
    # Transfers the Zones from the specified remote named servers, creating them on the
    # local zrd server, using the specified views and zone info (type, file name, etc )
    # :method: transfer_zone
    # :call-seq:
    # transfer_zone(server_names ,src_zone_names ,dst_view_names ,zone_records)
    #
    # Parameters:
    # - server_names String[] The names of the servers to request the zones from.
    # - src_zone_names String[] The names of the zones on the source servers.
    # - dst_view_names String[] The names of the views to add the zones to.
    # - zone_records ZoneInfo[] The ZoneInfo structs containing information about the zones to be added.

    ##
    # Tests whether the specified zone exists
    # :method: zone_exist
    # :call-seq:
    # zone_exist(view_zones)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.


  end
end
