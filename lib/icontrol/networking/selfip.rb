module IControl::Networking
  ##
  # The SelfIP interface enables you to work with the definitions and attributes contained
  # in a device's Self IP.
  class SelfIP < IControl::Base
    ##
    # Creates the specified self IP addresses with extended attributes.
    # :method: create
    # :call-seq:
    # create(self_ips ,vlan_names ,netmasks ,unit_ids ,floating_states)
    #
    # Parameters:
    # - self_ips String[] The self IPs to create.
    # - vlan_names String[] The VLANs that the new self IPs will be on.
    # - netmasks String[] The netmasks for the self IPs .
    # - unit_ids long[] The unit ids for the self IPs .
    # - floating_states EnabledState[] The floating attributes of the self IPs .

    ##
    # Deletes all self IP addresses.
    # :method: delete_all_self_ips

    ##
    # Deletes the specified self IP addresses.
    # :method: delete_self_ip
    # :call-seq:
    # delete_self_ip(self_ips)
    #
    # Parameters:
    # - self_ips String[] The self IPs to delete.

    ##
    # Gets the floating states of the specified self IPs.
    # :method: get_floating_state
    # :call-seq:
    # get_floating_state(self_ips)
    #
    # Parameters:
    # - self_ips String[] The self IPs .

    ##
    # Gets a list of all self IPs on this device.
    # :method: get_list

    ##
    # Gets the netmasks of the specified self IPs.
    # :method: get_netmask
    # :call-seq:
    # get_netmask(self_ips)
    #
    # Parameters:
    # - self_ips String[] The self IPs .

    ##
    # Gets the unit ids of the specified self IPs.
    # :method: get_unit_id
    # :call-seq:
    # get_unit_id(self_ips)
    #
    # Parameters:
    # - self_ips String[] The self IPs .

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Gets the VLANs with which the specified self IPs are associated.
    # :method: get_vlan
    # :call-seq:
    # get_vlan(self_ips)
    #
    # Parameters:
    # - self_ips String[] The self IPs .

    ##
    # Sets the floating states of the specified self IPs. Note: If floating state is being
    # set to enabled, then unit ID will be set to 1 by default.	If floating state is being
    # set to disabled, then unit ID will be set to 0.
    # :method: set_floating_state
    # :call-seq:
    # set_floating_state(self_ips ,states)
    #
    # Parameters:
    # - self_ips String[] The self IPs .
    # - states EnabledState[] The floating states of the specified self IPs .

    ##
    # Sets the netmasks of the specified self IPs.
    # :method: set_netmask
    # :call-seq:
    # set_netmask(self_ips ,netmasks)
    #
    # Parameters:
    # - self_ips String[] The self IPs .
    # - netmasks String[] The netmasks of the specified self IPs .

    ##
    # Sets the unit ids of the specified self IPs. Note: If unit ID is being set to 0,
    # then floating state will be set to disabled by default.	If unit ID is being set to
    # 1 or 2, then floating state will be set to enabled.
    # :method: set_unit_id
    # :call-seq:
    # set_unit_id(self_ips ,unit_ids)
    #
    # Parameters:
    # - self_ips String[] The self IPs .
    # - unit_ids long[] The unit ids of the specified self IPs .

    ##
    # Sets the VLANs with which the specified self IPs are associated.
    # :method: set_vlan
    # :call-seq:
    # set_vlan(self_ips ,vlan_names)
    #
    # Parameters:
    # - self_ips String[] The self IPs .
    # - vlan_names String[] The VLAN names.


  end
end
