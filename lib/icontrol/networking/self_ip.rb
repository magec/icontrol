module IControl::Networking
  ##
  # The SelfIP interface enables you to work with the definitions and attributes contained
  # in a device's Self IP.
  class SelfIP < IControl::Base

    set_id_name "self_ips"

    ##
    # Creates this self IP addresses with extended attributes.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :vlan_names The VLANs that the new self IPs will be on.
    # @option opts [String] :netmasks The netmasks for the self IPs .
    # @option opts [long] :unit_ids The unit ids for the self IPs .
    # @option opts [IControl::Common::EnabledState] :floating_states The floating attributes of the self IPs .
    def create(opts)
      opts = check_params(opts,[:vlan_names,:netmasks,:unit_ids,:floating_states])
      super(opts)
    end

    ##
    # Deletes all self IP addresses.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_self_ips
      super
    end

    ##
    # Deletes this self IP addresses.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_self_ip
      super
    end

    ##
    # Gets the floating states of this self IPs.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def floating_state
      super
    end

    ##
    # Gets a list of all self IPs on this device.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the netmasks of this self IPs.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def netmask
      super
    end

    ##
    # Gets the unit ids of this self IPs.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def unit_id
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
    # Gets the VLANs with which this self IPs are associated.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def vlan
      super
    end

    ##
    # Sets the floating states of this self IPs. Note: If floating state is being set to
    # enabled, then unit ID will be set to 1 by default.	If floating state is being set
    # to disabled, then unit ID will be set to 0.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The floating states of the specified self IPs .
    def set_floating_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the netmasks of this self IPs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :netmasks The netmasks of the specified self IPs .
    def set_netmask(opts)
      opts = check_params(opts,[:netmasks])
      super(opts)
    end

    ##
    # Sets the unit ids of this self IPs. Note: If unit ID is being set to 0, then floating
    # state will be set to disabled by default.	If unit ID is being set to 1 or 2, then
    # floating state will be set to enabled.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :unit_ids The unit ids of the specified self IPs .
    def set_unit_id(opts)
      opts = check_params(opts,[:unit_ids])
      super(opts)
    end

    ##
    # Sets the VLANs with which this self IPs are associated.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :vlan_names The VLAN names.
    def set_vlan(opts)
      opts = check_params(opts,[:vlan_names])
      super(opts)
    end


  end
end
