module IControl::Networking
  ##
  # The VLANGroup interface enables you to work with the definitions and attributes contained
  # in a device's VLAN group.
  class VLANGroup < IControl::Base
    class VLANGroupTransparency < IControl::Base::Enumeration; end    ## A sequence of transparency values.
    class VLANGroupTransparencySequence < IControl::Base::Sequence ; end##
    # A list of possible transparency values for VLAN groups.
    class VLANGroupTransparency < IControl::Base::Enumeration
      # Transparent level, bridging with no modifications.
      VLANGROUP_TRANSPARENT = :VLANGROUP_TRANSPARENT
      # Opaque level, bridging using proxy-arp.
      VLANGROUP_OPAQUE = :VLANGROUP_OPAQUE
      # Translucent level, toggling locally-modified bit of source MAC.
      VLANGROUP_TRANSLUCENT = :VLANGROUP_TRANSLUCENT
    end

    ##
    # Adds the specified IP addresses to the global proxy ARP exclusion list that applies
    # to all VLAN groups.
    # :method: add_global_proxy_exclusion
    # :call-seq:
    # add_global_proxy_exclusion(addresses)
    #
    # Parameters:
    # - addresses String[] The lists of IP addresses.

    ##
    # Adds the specified children VLANs to the specified VLAN groups.
    # :method: add_member
    # :call-seq:
    # add_member(vlan_groups ,member_vlans)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.
    # - member_vlans String[][] The lists of child VLANs .

    ##
    # Adds the specified IP addresses to the proxy ARP exclusion lists of the specified
    # VLAN groups.
    # :method: add_proxy_exclusion
    # :call-seq:
    # add_proxy_exclusion(vlan_groups ,addresses)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.
    # - addresses String[][] The lists of IP addresses.

    ##
    # This method has been deprecated; please use create_v2 instead. Creates a VLAN group.
    # :method: create
    # :call-seq:
    # create(vlan_groups ,vlan_ids ,member_vlans)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN groups to create.
    # - vlan_ids long[] The VLAN tag numbers or IDs (valid range is 1-4095).
    # - member_vlans String[][] The lists of member VLANs .

    ##
    # Creates a VLAN group.
    # :method: create_v2
    # :call-seq:
    # create_v2(vlan_groups ,member_vlans)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN groups to create.
    # - member_vlans String[][] The lists of member VLANs .

    ##
    # Deletes all VLAN groups.
    # :method: delete_all_vlan_groups

    ##
    # Deletes the specified VLAN groups.
    # :method: delete_vlan_group
    # :call-seq:
    # delete_vlan_group(vlan_groups)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.

    ##
    # Gets the states to indicate whether to bridge non-IP traffic as well as IP traffic
    # for the specified VLAN groups.
    # :method: get_bridge_all_traffic_state
    # :call-seq:
    # get_bridge_all_traffic_state(vlan_groups)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.

    ##
    # Gets the states to indicate whether to bridge while unit is in standby mode for the
    # specified VLAN groups.
    # :method: get_bridge_in_standby_state
    # :call-seq:
    # get_bridge_in_standby_state(vlan_groups)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.

    ##
    # Gets the states to indicate whether to bridge multicast/broadcast traffic for the
    # specified VLAN groups.
    # :method: get_bridge_multicast_state
    # :call-seq:
    # get_bridge_multicast_state(vlan_groups)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.

    ##
    # Gets the global lists of IP addresses that proxy ARP will ignore for all VLAN groups.
    # :method: get_global_proxy_exclusion

    ##
    # Gets a list of all VLAN groups on this device.
    # :method: get_list

    ##
    # Gets the MAC masquerade addresses for the specified VLAN groups.
    # :method: get_mac_masquerade_address
    # :call-seq:
    # get_mac_masquerade_address(vlan_groups)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.

    ##
    # Gets the lists of children VLANs of the specified VLAN groups.
    # :method: get_member
    # :call-seq:
    # get_member(vlan_groups)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.

    ##
    # Gets the lists of IP addresses that proxy ARP will ignore for the specified VLAN
    # groups.
    # :method: get_proxy_exclusion
    # :call-seq:
    # get_proxy_exclusion(vlan_groups)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.

    ##
    # Gets the transparency modes for the specified VLAN groups.
    # :method: get_transparency_mode
    # :call-seq:
    # get_transparency_mode(vlan_groups)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.

    ##
    # Gets the true MAC addresses used by the specified VLAN groups.
    # :method: get_true_mac_address
    # :call-seq:
    # get_true_mac_address(vlan_groups)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # This method has been deprecated; accessing VLAN id for a VLAN group was unnecessary
    # and misleading. The method now returns 0s. Please don't use in the future. Gets the
    # ids for the specified VLAN groups.
    # :method: get_vlan_id
    # :call-seq:
    # get_vlan_id(vlan_groups)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.

    ##
    # Removes all IP addresses from the global proxy ARP exclusion list for all VLAN groups.
    # :method: remove_all_global_proxy_exclusions

    ##
    # Removes all children VLANs from the specified VLAN groups.
    # :method: remove_all_members
    # :call-seq:
    # remove_all_members(vlan_groups)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.

    ##
    # Removes all IP addresses from the proxy ARP exclusion lists of the specified VLAN
    # groups.
    # :method: remove_all_proxy_exclusions
    # :call-seq:
    # remove_all_proxy_exclusions(vlan_groups)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.

    ##
    # Removes the specified IP addresses from the global proxy ARP exclusion list that
    # applies to all VLAN groups.
    # :method: remove_global_proxy_exclusion
    # :call-seq:
    # remove_global_proxy_exclusion(addresses)
    #
    # Parameters:
    # - addresses String[] The lists of IP addresses.

    ##
    # Removes the specified children VLANs from the specified VLAN groups.
    # :method: remove_member
    # :call-seq:
    # remove_member(vlan_groups ,member_vlans)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.
    # - member_vlans String[][] The lists of child VLANs .

    ##
    # Removes the specified IP addresses from the proxy ARP exclusion lists of the specified
    # VLAN groups.
    # :method: remove_proxy_exclusion
    # :call-seq:
    # remove_proxy_exclusion(vlan_groups ,addresses)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.
    # - addresses String[][] The lists of IP addresses.

    ##
    # Sets the states to indicate whether to bridge non-IP traffic as well as IP traffic
    # for the specified VLAN groups.
    # :method: set_bridge_all_traffic_state
    # :call-seq:
    # set_bridge_all_traffic_state(vlan_groups ,states)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.
    # - states EnabledState[] The states to set for the specified VLAN group names.

    ##
    # Sets the states to indicate whether to bridge while unit is in standby mode for the
    # specified VLAN groups.
    # :method: set_bridge_in_standby_state
    # :call-seq:
    # set_bridge_in_standby_state(vlan_groups ,states)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.
    # - states EnabledState[] The states to set for the specified VLAN group names.

    ##
    # Sets the states to indicate whether to bridge multicast/broadcast traffic for the
    # specified VLAN groups.
    # :method: set_bridge_multicast_state
    # :call-seq:
    # set_bridge_multicast_state(vlan_groups ,states)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.
    # - states EnabledState[] The states to set for the specified VLAN group names.

    ##
    # Sets the MAC masquerade addresses for the specified VLAN groups.
    # :method: set_mac_masquerade_address
    # :call-seq:
    # set_mac_masquerade_address(vlan_groups ,mac_masquerade_addresses)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.
    # - mac_masquerade_addresses String[] The MAC masquerade addresses to set for the specified VLAN groups.

    ##
    # Sets the transparency modes for the specified VLAN groups.
    # :method: set_transparency_mode
    # :call-seq:
    # set_transparency_mode(vlan_groups ,modes)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.
    # - modes VLANGroupTransparency[] The transparency modes for the specified VLAN groups.

    ##
    # This method has been deprecated; setting VLAN id for a VLAN group had and will have
    # no effect. Please don't use in the future. Sets the tag ids for the specified VLAN
    # groups.
    # :method: set_vlan_id
    # :call-seq:
    # set_vlan_id(vlan_groups ,vlan_ids)
    #
    # Parameters:
    # - vlan_groups String[] The VLAN group names.
    # - vlan_ids long[] The VLAN ID/tag numbers (valid range is 1-4095).


  end
end
