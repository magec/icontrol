module IControl::Networking
  ##
  # The iSession RemoteInterface interface enables you to work with the definitions and
  # attributes contained in a device's peer iSession Remote Endpoint objects.
  class ISessionRemoteInterface < IControl::Base
    class NatSourceAddress < IControl::Base::Enumeration; end
    class OriginState < IControl::Base::Enumeration; end    ## A sequence of NatSourceAddress states.
    class NatSourceAddressSequence < IControl::Base::Sequence ; end## A sequence of NatSourceAddress states.
    class OriginStateSequence < IControl::Base::Sequence ; end##
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

    ##
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

    ##
    # Create a peer Remote Endpoint object.
    # :method: create
    # :call-seq:
    # create(peer_names ,serverssls ,peer_ips ,enabled_states)
    #
    # Parameters:
    # - peer_names String[] The peer names.
    # - serverssls String[] The serverssl identifiers.
    # - peer_ips String[] The peer mgmt ips.
    # - enabled_states EnabledState[] The is enable states settings.

    ##
    # Deletes all peer remote endpoint objects.
    # :method: delete_all_peers

    ##
    # Delete the peer Remote Endpoint object.
    # :method: delete_peer
    # :call-seq:
    # delete_peer(peers)
    #
    # Parameters:
    # - peers String[] The peer addresses.

    ##
    # Get UUID
    # :method: get_UUID
    # :call-seq:
    # get_UUID(peers)
    #
    # Parameters:
    # - peers String[] The peer addresses.

    ##
    # Get the nat attribute from the peer WOC object.
    # :method: get_behind_nat
    # :call-seq:
    # get_behind_nat(peers)
    #
    # Parameters:
    # - peers String[] The peer addresses.

    ##
    # Get dedup_cache
    # :method: get_dedup_cache
    # :call-seq:
    # get_dedup_cache(peers)
    #
    # Parameters:
    # - peers String[] The peer addresses.

    ##
    # Get a list of the current iSession peer objects.
    # :method: get_list

    ##
    # Get Management address
    # :method: get_management_address
    # :call-seq:
    # get_management_address(peers)
    #
    # Parameters:
    # - peers String[] The peer addresses.

    ##
    # Get config_status
    # :method: get_nat_config_status
    # :call-seq:
    # get_nat_config_status(peers)
    #
    # Parameters:
    # - peers String[] The peer addresses.

    ##
    # Get the nat address attribute in the peer WOC object.
    # :method: get_nat_source_address
    # :call-seq:
    # get_nat_source_address(peers)
    #
    # Parameters:
    # - peers String[] The peer addresses.

    ##
    # Get origin
    # :method: get_origin
    # :call-seq:
    # get_origin(peers)
    #
    # Parameters:
    # - peers String[] The peer addresses.

    ##
    # Get enable setting in the peer object.
    # :method: get_peer_enabled_state
    # :call-seq:
    # get_peer_enabled_state(peers)
    #
    # Parameters:
    # - peers String[] The peer addresses.

    ##
    # Get a list of the current iSession peer object ips.
    # :method: get_peer_ip_list
    # :call-seq:
    # get_peer_ip_list(peers)
    #
    # Parameters:
    # - peers String[] The peer addresses.

    ##
    # Get enabled flag in the peer routing attribute.
    # :method: get_peer_routing_state
    # :call-seq:
    # get_peer_routing_state(peers)
    #
    # Parameters:
    # - peers String[] The peer addresses.

    ##
    # Get serverssl
    # :method: get_profile_serverssl
    # :call-seq:
    # get_profile_serverssl(peers)
    #
    # Parameters:
    # - peers String[] The peer addresses.

    ##
    # Get tunnel_port
    # :method: get_tunnel_port
    # :call-seq:
    # get_tunnel_port(peers)
    #
    # Parameters:
    # - peers String[] The peer addresses.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Set the nat attribute in the peer WOC object.
    # :method: set_behind_nat
    # :call-seq:
    # set_behind_nat(peers ,nat_states)
    #
    # Parameters:
    # - peers String[] The peer addresses.
    # - nat_states EnabledState[] The new nat states.

    ##
    # Set Management address
    # :method: set_management_address
    # :call-seq:
    # set_management_address(peers ,ips)
    #
    # Parameters:
    # - peers String[] The peer addresses.
    # - ips String[] The new mgmt addresses to use.

    ##
    # Set config_status
    # :method: set_nat_config_status
    # :call-seq:
    # set_nat_config_status(peers ,nat_configs)
    #
    # Parameters:
    # - peers String[] The peer addresses.
    # - nat_configs String[] The new nat configs.

    ##
    # Set the nat address attribute in the peer WOC object.
    # :method: set_nat_source_address
    # :call-seq:
    # set_nat_source_address(peers ,nat_states)
    #
    # Parameters:
    # - peers String[] The peer addresses.
    # - nat_states NatSourceAddress[] The new nat states.

    ##
    # Set origin
    # :method: set_origin
    # :call-seq:
    # set_origin(peers ,origins)
    #
    # Parameters:
    # - peers String[] The peer addresses.
    # - origins OriginState[] The new peer origin states.

    ##
    # Set enable in the peer object.
    # :method: set_peer_enabled_state
    # :call-seq:
    # set_peer_enabled_state(peers ,enabled)
    #
    # Parameters:
    # - peers String[] The peer addresses.
    # - enabled EnabledState[] The enabled flag.

    ##
    # Set enabled flag in the peer routing attribute.
    # :method: set_peer_routing_state
    # :call-seq:
    # set_peer_routing_state(peers ,routing)
    #
    # Parameters:
    # - peers String[] The peer addresses.
    # - routing EnabledState[]

    ##
    # Set serverssl
    # :method: set_profile_serverssl
    # :call-seq:
    # set_profile_serverssl(peers ,serverssl)
    #
    # Parameters:
    # - peers String[] The peer addresses.
    # - serverssl String[] The server ssl name.

    ##
    # Set tunnel_port
    # :method: set_tunnel_port
    # :call-seq:
    # set_tunnel_port(peers ,tunnel_ports)
    #
    # Parameters:
    # - peers String[] The peer addresses.
    # - tunnel_ports short[] The tunnel port number.


  end
end
