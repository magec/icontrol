module IControl::Networking
  ##
  # The iSession RemoteInterface interface enables you to work with the definitions and attributes contained in a device's peer iSession Remote Endpoint objects.
  class ISessionRemoteInterface < IControl::Base

    set_id_name "peers"

    # An enumeration of nat address states.
    class NatSourceAddress < IControl::Base::Enumeration; end
    # An enumeration of origin states.
    class OriginState < IControl::Base::Enumeration; end    ##
    # Create a peer Remote Endpoint object.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :peer_names The peer names.
    # @option opts [String] :serverssls The serverssl identifiers.
    # @option opts [String] :peer_ips The peer mgmt ips.
    # @option opts [IControl::Common::EnabledState] :enabled_states The is enable states settings.
    def create(opts)
      check_params(opts,[:peer_names,:serverssls,:peer_ips,:enabled_states])
      super
    end

    ##
    # Deletes all peer remote endpoint objects.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_peers
      super
    end

    ##
    # Delete the peer Remote Endpoint object.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_peer
      super
    end

    ##
    # Get UUID
    # @return [Uuid_128]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def UUID
      super
    end

    ##
    # Get the nat attribute from the peer WOC object.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def behind_nat
      super
    end

    ##
    # Get dedup_cache
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def dedup_cache
      super
    end

    ##
    # Get a list of the current iSession peer objects.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Get Management address
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def management_address
      super
    end

    ##
    # Get config_status
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def nat_config_status
      super
    end

    ##
    # Get the nat address attribute in the peer WOC object.
    # @return [NatSourceAddress]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def nat_source_address
      super
    end

    ##
    # Get origin
    # @return [OriginState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def origin
      super
    end

    ##
    # Get enable setting in the peer object.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def peer_enabled_state
      super
    end

    ##
    # Get a list of the current iSession peer object ips.
    # @return [String[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def peer_ip_list
      super
    end

    ##
    # Get enabled flag in the peer routing attribute.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def peer_routing_state
      super
    end

    ##
    # Get serverssl
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def profile_serverssl
      super
    end

    ##
    # Get tunnel_port
    # @return [short]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def tunnel_port
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Set the nat attribute in the peer WOC object.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :nat_states The new nat states.
    def set_behind_nat(opts)
      check_params(opts,[:nat_states])
      super
    end

    ##
    # Set Management address
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :ips The new mgmt addresses to use.
    def set_management_address(opts)
      check_params(opts,[:ips])
      super
    end

    ##
    # Set config_status
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :nat_configs The new nat configs.
    def set_nat_config_status(opts)
      check_params(opts,[:nat_configs])
      super
    end

    ##
    # Set the nat address attribute in the peer WOC object.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::iSessionRemoteInterface::NatSourceAddress] :nat_states The new nat states.
    def set_nat_source_address(opts)
      check_params(opts,[:nat_states])
      super
    end

    ##
    # Set origin
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::iSessionRemoteInterface::OriginState] :origins The new peer origin states.
    def set_origin(opts)
      check_params(opts,[:origins])
      super
    end

    ##
    # Set enable in the peer object.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :enabled The enabled flag.
    def set_peer_enabled_state(opts)
      check_params(opts,[:enabled])
      super
    end

    ##
    # Set enabled flag in the peer routing attribute.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :routing
    def set_peer_routing_state(opts)
      check_params(opts,[:routing])
      super
    end

    ##
    # Set serverssl
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :serverssl The server ssl name.
    def set_profile_serverssl(opts)
      check_params(opts,[:serverssl])
      super
    end

    ##
    # Set tunnel_port
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [short] :tunnel_ports The tunnel port number.
    def set_tunnel_port(opts)
      check_params(opts,[:tunnel_ports])
      super
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
