module IControl::Networking
  ##
  # The iSession Local interface enables you to work with the definitions and attributes
  # contained in a device's local endpoint object.
  class ISessionLocalInterface < IControl::Base

    set_id_name "wocs"

    class NatSourceAddressSequence < IControl::Base::Sequence ; end
    # An enumeration of nat address states.
    class NatSourceAddress < IControl::Base::Enumeration; end    ##
    # Create a local WOC object.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :woc_instance The local woc object id.
    # @option opts [String] :local_ips The local ip addresses.
    # @option opts [IControl::Common::EnabledState] :enabled The enabled flag.
    # @option opts [String] :serverssl The serverssl name.
    def create(opts)
      check_params(opts,[:woc_instance,:local_ips,:enabled,:serverssl])
      super
    end

    ##
    # Delete the local WOC object.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_local
      super
    end

    ##
    # Get UUID
    # @rspec_example
    # @return [Uuid_128]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def UUID
      super
    end

    ##
    # Get the allow_nat attribute in the local WOC object.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def allow_nat
      super
    end

    ##
    # Get enable setting in the local WOC object.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def enabled_state
      super
    end

    ##
    # Get a list of the current WOC object names.
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ip_list
      super
    end

    ##
    # Get a list of the current local endpoint object ids.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Get Management address
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def management_address
      super
    end

    ##
    # Gets the nat source address in the local WOC object.
    # @rspec_example
    # @return [NatSourceAddress]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def nat_source_address
      super
    end

    ##
    # Get serverssl name strings in the local WOC object(s).
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def serverssl
      super
    end

    ##
    # Get local port number in the local WOC object.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def tunnel_port
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
    # Set the allow_nat attribute in the local WOC object.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :nat_states The new nat states.
    def set_allow_nat(opts)
      check_params(opts,[:nat_states])
      super
    end

    ##
    # Set enable in the local WOC object.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :enabled_states The new enabled state flags.
    def set_enabled_state(opts)
      check_params(opts,[:enabled_states])
      super
    end

    ##
    # Set Management address
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :ips The local ip addresses.
    def set_management_address(opts)
      check_params(opts,[:ips])
      super
    end

    ##
    # Sets the nat source address in the local WOC object.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::iSessionLocalInterface::NatSourceAddress] :nat_states The new nat states.
    def set_nat_source_address(opts)
      check_params(opts,[:nat_states])
      super
    end

    ##
    # Set serverssl string in the local WOC object.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :serverssls The serverssl strings to be used.
    def set_serverssl(opts)
      check_params(opts,[:serverssls])
      super
    end

    ##
    # Set local port number in the local WOC object.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :ports The new local port numbers.
    def set_tunnel_port(opts)
      check_params(opts,[:ports])
      super
    end


    ## A sequence of NatSourceAddress states.
    class NatSourceAddressSequence < IControl::Base::Sequence ; end
    # An enumeration of nat address states.
    class NatSourceAddress < IControl::Base::Enumeration
      # Disable all nat addresses.
      WOC_NAT_SOURCE_ADDRESS_NONE = :WOC_NAT_SOURCE_ADDRESS_NONE
      # Use client NAT address.
      WOC_NAT_SOURCE_ADDRESS_CLIENT = :WOC_NAT_SOURCE_ADDRESS_CLIENT
      # Use WOM NAT address.
      WOC_NAT_SOURCE_ADDRESS_WOM = :WOC_NAT_SOURCE_ADDRESS_WOM
      # Use tunnel NAT address.
      WOC_NAT_SOURCE_ADDRESS_TUNNEL = :WOC_NAT_SOURCE_ADDRESS_TUNNEL
    end


  end
end
