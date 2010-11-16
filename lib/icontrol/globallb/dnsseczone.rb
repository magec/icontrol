module IControl::GlobalLB
  ##
  # The DNSSECZone interface manages the zones in which securing DNS information, i.e.,
  # DNSSEC, is active. When a zone is active, its DNS record groups are digitally signed,
  # the DNS record names are hashed, and keys sent to upstream DNS servers are digitally
  # signed. A DNSSEC zone can contain any number of DNSSEC keys, and a single DNSSEC
  # key can be used in more than one DNSSEC zone. Note that a large number of DNSSEC
  # keys in a single DNSSEC zone can affect the responsiveness to DNS requests. Note
  # that the term &amp;quot;zone" in this interface is not necessarily &amp;quot;zone"
  # in a DNS sense. See the DNSSECKey interface for managing the keys themselves.
  class DNSSECZone < IControl::Base
    ##
    # Adds DNSSEC keys to a set of DNSSEC zones.
    # :method: add_key
    # :call-seq:
    # add_key(zones ,keys)
    #
    # Parameters:
    # - zones String[] Names of the DNSSEC zones to modify
    # - keys String[][] Names of DNSSEC keys to add to each specified DNSSEC zone

    ##
    # Creates a set of DNSSEC zones.
    # :method: create
    # :call-seq:
    # create(zones ,keys)
    #
    # Parameters:
    # - zones String[] DNSSEC zone names. The zone names must be fully qualified domain names (FQDN).
    # - keys String[][] DNSSEC key names for each specified DNSSEC zone

    ##
    # Deletes all DNSSEC zones.
    # :method: delete_all_zones

    ##
    # Deletes a set of DNSSEC zones.
    # :method: delete_zone
    # :call-seq:
    # delete_zone(zones)
    #
    # Parameters:
    # - zones String[] Names of the DNSSEC zones to delete

    ##
    # Gets the enabled state for a set of DNSSEC zones.
    # :method: get_enabled_state
    # :call-seq:
    # get_enabled_state(zones)
    #
    # Parameters:
    # - zones String[] Names of the DNSSEC zones to query

    ##
    # Gets the DNSSEC keys for a set of DNSSEC zones.
    # :method: get_key
    # :call-seq:
    # get_key(zones)
    #
    # Parameters:
    # - zones String[] Names of the DNSSEC zones to query

    ##
    # Gets the names of all DNSSEC zones.
    # :method: get_list

    ##
    # Gets the status of a set of DNSSEC zones.
    # :method: get_object_status
    # :call-seq:
    # get_object_status(zones)
    #
    # Parameters:
    # - zones String[] Names of the DNSSEC zones to query

    ##
    # Get the version information for this interface.
    # :method: get_version

    ##
    # Removes all DNSSEC keys from a set of DNSSEC zones.
    # :method: remove_all_keys
    # :call-seq:
    # remove_all_keys(zones)
    #
    # Parameters:
    # - zones String[] Names of the DNSSEC zones to modify

    ##
    # Removes DNSSEC keys from a set of DNSSEC zones.
    # :method: remove_key
    # :call-seq:
    # remove_key(zones ,keys)
    #
    # Parameters:
    # - zones String[] Names of the DNSSEC zones to modify
    # - keys String[][] Names of DNSSEC keys to delete from each specified DNSSEC zone

    ##
    # Sets the enabled state for a set of DNSSEC zones. Note that individual keys can also
    # be enabled and disabled. See the DNSSECKey interface for details.
    # :method: set_enabled_state
    # :call-seq:
    # set_enabled_state(zones ,states)
    #
    # Parameters:
    # - zones String[] Names of the DNSSEC zones to modify
    # - states EnabledState[] Enabled/disabled state for each specified DNSSEC zone (default: enabled)


  end
end
