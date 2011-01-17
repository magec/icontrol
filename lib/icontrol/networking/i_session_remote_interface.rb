module IControl::Networking
  ##
  # The iSession RemoteInterface interface enables you to work with the definitions and
  # attributes contained in a device's peer iSession Remote Endpoint objects.
  class ISessionRemoteInterface < IControl::Base

    set_id_name "peers"

    class NatSourceAddressSequence < IControl::Base::Sequence ; end
    class OriginStateSequence < IControl::Base::Sequence ; end
    # An enumeration of nat address states.
    class NatSourceAddress < IControl::Base::Enumeration; end
    # An enumeration of origin states.
    class OriginState < IControl::Base::Enumeration; end    ##
    # Create a peer Remote Endpoint object.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :peer_names The peer names.
    # @option opts [String] :serverssls The serverssl identifiers.
    # @option opts [String] :peer_ips The peer mgmt ips.
    # @option opts [IControl::Common::EnabledState] :enabled_states The is enable states settings.
    def create(opts)
      opts = check_params(opts,[:peer_names,:serverssls,:peer_ips,:enabled_states])
      super(opts)
    end

    ##
    # Deletes all peer remote endpoint objects.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_peers
      super
    end

    ##
    # Delete the peer Remote Endpoint object.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_peer
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
    # Get the nat attribute from the peer WOC object.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def behind_nat
      super
    end

    ##
    # Get dedup_cache
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def dedup_cache
      super
    end

    ##
    # Get a list of the current iSession peer objects.
    # @rspec_example
    # @return [String]
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
    # Get config_status
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def nat_config_status
      super
    end

    ##
    # Get the nat address attribute in the peer WOC object.
    # @rspec_example
    # @return [NatSourceAddress]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def nat_source_address
      super
    end

    ##
    # Get origin
    # @rspec_example
    # @return [OriginState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def origin
      super
    end

    ##
    # Get enable setting in the peer object.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def peer_enabled_state
      super
    end

    ##
    # Get a list of the current iSession peer object ips.
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def peer_ip_list
      super
    end

    ##
    # Get enabled flag in the peer routing attribute.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def peer_routing_state
      super
    end

    ##
    # Get serverssl
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def profile_serverssl
      super
    end

    ##
    # Get tunnel_port
    # @rspec_example
    # @return [short]
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
    # Set the nat attribute in the peer WOC object.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :nat_states The new nat states.
    def set_behind_nat(opts)
      opts = check_params(opts,[:nat_states])
      super(opts)
    end

    ##
    # Set Management address
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :ips The new mgmt addresses to use.
    def set_management_address(opts)
      opts = check_params(opts,[:ips])
      super(opts)
    end

    ##
    # Set config_status
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :nat_configs The new nat configs.
    def set_nat_config_status(opts)
      opts = check_params(opts,[:nat_configs])
      super(opts)
    end

    ##
    # Set the nat address attribute in the peer WOC object.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::iSessionRemoteInterface::NatSourceAddress] :nat_states The new nat states.
    def set_nat_source_address(opts)
      opts = check_params(opts,[:nat_states])
      super(opts)
    end

    ##
    # Set origin
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::iSessionRemoteInterface::OriginState] :origins The new peer origin states.
    def set_origin(opts)
      opts = check_params(opts,[:origins])
      super(opts)
    end

    ##
    # Set enable in the peer object.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :enabled The enabled flag.
    def set_peer_enabled_state(opts)
      opts = check_params(opts,[:enabled])
      super(opts)
    end

    ##
    # Set enabled flag in the peer routing attribute.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :routing
    def set_peer_routing_state(opts)
      opts = check_params(opts,[:routing])
      super(opts)
    end

    ##
    # Set serverssl
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :serverssl The server ssl name.
    def set_profile_serverssl(opts)
      opts = check_params(opts,[:serverssl])
      super(opts)
    end

    ##
    # Set tunnel_port
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [short] :tunnel_ports The tunnel port number.
    def set_tunnel_port(opts)
      opts = check_params(opts,[:tunnel_ports])
      super(opts)
    end


    ## A sequence of NatSourceAddress states.
    class NatSourceAddressSequence < IControl::Base::Sequence ; end
    ## A sequence of NatSourceAddress states.
    class OriginStateSequence < IControl::Base::Sequence ; end
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


    # An enumeration of origin states.
    class OriginState < IControl::Base::Enumeration
      # Origin of this item was auto discovered.
      MCP_ORIGIN_DISCOVERED = :MCP_ORIGIN_DISCOVERED
      # Origin of this item was configured.
      MCP_ORIGIN_CONFIGURED = :MCP_ORIGIN_CONFIGURED
      # Origin is persistable (survives resets).
      MCP_ORIGIN_PERSISTABLE = :MCP_ORIGIN_PERSISTABLE
      # Origin was a manually saved item.
      MCP_ORIGIN_MANUALLY_SAVED = :MCP_ORIGIN_MANUALLY_SAVED
    end


  end
end
