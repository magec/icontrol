module IControl::Networking
  ##
  # The PacketFilterGlobals interface enables you to work with the global lists of trusted
  # source addresses and ingress VLANs used in packet filtering.
  class PacketFilterGlobals < IControl::Base

    set_id_name "addresses"

    ##
    # Adds this addresse to the list of trusted source addresse.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def add_trusted_address
      super
    end

    ##
    # Adds this MAC addresse to the list of trusted MAC addresse.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :mac_addresses The MAC addresses.
    def add_trusted_mac_address(opts)
      check_params(opts,[:mac_addresses])
      super
    end

    ##
    # Adds this ingress VLANs to the list of trusted VLANs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :vlans The VLAN names.
    def add_trusted_vlan(opts)
      check_params(opts,[:vlans])
      super
    end

    ##
    # Gets a list of all trusted source addresse used in packet filtering on this device.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def trusted_address
      super
    end

    ##
    # Gets a list of all trusted MAC addresse used in packet filtering on this device.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def trusted_mac_address
      super
    end

    ##
    # Gets a list of all trusted ingress VLANs used in packet filtering on this device.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def trusted_vlan
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
    # Removes this addresse from the list of trusted source addresse.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_trusted_address
      super
    end

    ##
    # Removes this MAC addresse from the list of trusted MAC addresse.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :mac_addresses The MAC addresses.
    def remove_trusted_mac_address(opts)
      check_params(opts,[:mac_addresses])
      super
    end

    ##
    # Removes this ingress VLANs from the list of trusted VLANs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :vlans The VLAN names.
    def remove_trusted_vlan(opts)
      check_params(opts,[:vlans])
      super
    end


  end
end
