module IControl::Networking
  ##
  # The PacketFilterGlobals interface enables you to work with the global lists of trusted
  # source addresses and ingress VLANs used in packet filtering.
  class PacketFilterGlobals < IControl::Base
    ##
    # Adds the specified addresses to the list of trusted source addresses.
    # :method: add_trusted_address
    # :call-seq:
    # add_trusted_address(addresses)
    #
    # Parameters:
    # - addresses String[] The source addresses.

    ##
    # Adds the specified MAC addresses to the list of trusted MAC addresses.
    # :method: add_trusted_mac_address
    # :call-seq:
    # add_trusted_mac_address(mac_addresses)
    #
    # Parameters:
    # - mac_addresses String[] The MAC addresses.

    ##
    # Adds the specified ingress VLANs to the list of trusted VLANs.
    # :method: add_trusted_vlan
    # :call-seq:
    # add_trusted_vlan(vlans)
    #
    # Parameters:
    # - vlans String[] The VLAN names.

    ##
    # Gets a list of all trusted source addresses used in packet filtering on this device.
    # :method: get_trusted_address

    ##
    # Gets a list of all trusted MAC addresses used in packet filtering on this device.
    # :method: get_trusted_mac_address

    ##
    # Gets a list of all trusted ingress VLANs used in packet filtering on this device.
    # :method: get_trusted_vlan

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Removes the specified addresses from the list of trusted source addresses.
    # :method: remove_trusted_address
    # :call-seq:
    # remove_trusted_address(addresses)
    #
    # Parameters:
    # - addresses String[] The source addresses.

    ##
    # Removes the specified MAC addresses from the list of trusted MAC addresses.
    # :method: remove_trusted_mac_address
    # :call-seq:
    # remove_trusted_mac_address(mac_addresses)
    #
    # Parameters:
    # - mac_addresses String[] The MAC addresses.

    ##
    # Removes the specified ingress VLANs from the list of trusted VLANs.
    # :method: remove_trusted_vlan
    # :call-seq:
    # remove_trusted_vlan(vlans)
    #
    # Parameters:
    # - vlans String[] The VLAN names.


  end
end
