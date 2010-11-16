module IControl::Networking
  ##
  # The Tunnel interface manages a virtual network interface that allows a network protocol
  # to carry packets of another protocol between two endpoints. Once created, it can
  # be used just like a VLAN in BIG-IP configurations.
  class Tunnel < IControl::Base
    class TunnelDirection < IControl::Base::Enumeration; end    ## Sequence of tunnel directions
    class TunnelDirectionSequence < IControl::Base::Sequence ; end##
    # Direction of traffic flow through the tunnel
    class TunnelDirection < IControl::Base::Enumeration
      # Unknown value
      TUNNEL_DIRECTION_UNKNOWN = :TUNNEL_DIRECTION_UNKNOWN
      # Only incoming traffic runs through the tunnel
      TUNNEL_DIRECTION_INBOUND = :TUNNEL_DIRECTION_INBOUND
      # Only outgoing traffic runs through the tunnel
      TUNNEL_DIRECTION_OUTBOUND = :TUNNEL_DIRECTION_OUTBOUND
      # Traffic runs both ways through the tunnel
      TUNNEL_DIRECTION_BIDIRECTIONAL = :TUNNEL_DIRECTION_BIDIRECTIONAL
    end

    ##
    # Creates a set of tunnels.
    # :method: create
    # :call-seq:
    # create(tunnels ,local_addresses ,remote_addresses ,profiles)
    #
    # Parameters:
    # - tunnels String[] Names of the tunnels to create
    # - local_addresses String[] IP addresses for the local end of each specified tunnel
    # - remote_addresses String[] IP addresses for the remote end of each specified tunnel
    # - profiles String[] Profile specifying the tunneling protocol for each specified tunnel

    ##
    # Deletes all tunnels.
    # :method: delete_all_tunnels

    ##
    # Deletes a set of tunnels.
    # :method: delete_tunnel
    # :call-seq:
    # delete_tunnel(tunnels)
    #
    # Parameters:
    # - tunnels String[] Names of the tunnels to delete

    ##
    # Gets the direction for traffic flow within a set of tunnels.
    # :method: get_direction
    # :call-seq:
    # get_direction(tunnels)
    #
    # Parameters:
    # - tunnels String[] Names of the tunnels to query

    ##
    # Gets the names of all tunnels.
    # :method: get_list

    ##
    # Gets the IP address for the local end of a set of tunnels.
    # :method: get_local_address
    # :call-seq:
    # get_local_address(tunnels)
    #
    # Parameters:
    # - tunnels String[] Names of the tunnels to query

    ##
    # Gets the maximum transmission unit (MTU) for a set of tunnels.
    # :method: get_mtu
    # :call-seq:
    # get_mtu(tunnels)
    #
    # Parameters:
    # - tunnels String[] Names of the tunnels to query

    ##
    # Gets the profile specifying the tunneling protocol for a set of tunnels.
    # :method: get_profile
    # :call-seq:
    # get_profile(tunnels)
    #
    # Parameters:
    # - tunnels String[] Names of the tunnels to query

    ##
    # Gets the IP address for the remote end for a set of tunnels.
    # :method: get_remote_address
    # :call-seq:
    # get_remote_address(tunnels)
    #
    # Parameters:
    # - tunnels String[] Names of the tunnels to query

    ##
    # Gets the Type of Service (ToS) value for the encapsulating packet's IP header.
    # :method: get_tos
    # :call-seq:
    # get_tos(tunnels)
    #
    # Parameters:
    # - tunnels String[] Names of the tunnels to query

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Sets the direction for traffic flow within a set of tunnels.
    # :method: set_direction
    # :call-seq:
    # set_direction(tunnels ,directions)
    #
    # Parameters:
    # - tunnels String[] Names of the tunnels to modify
    # - directions TunnelDirection[] Direction for traffic flow within each specified tunnel

    ##
    # Sets the IP address for the local end of the tunnel for a set of tunnels
    # :method: set_local_address
    # :call-seq:
    # set_local_address(tunnels ,addresses)
    #
    # Parameters:
    # - tunnels String[] Names of the tunnels to modify
    # - addresses String[] IP addresses for the local end of each specified tunnel

    ##
    # Sets the maximum transmission unit (MTU) for a set of tunnels. If zero, the tunnel's
    # MTU is automatically set to the MTU of the tunnel's underlying interface minus the
    # encapsulation overhead introduced by the tunneling protocol in use for the tunnel.
    # :method: set_mtu
    # :call-seq:
    # set_mtu(tunnels ,mtus)
    #
    # Parameters:
    # - tunnels String[] Names of the tunnels to modify
    # - mtus long[] Maximum transmission unit (MTU) for each specified tunnel (default: 0)

    ##
    # Sets the profile specifying the tunneling protocol for a set of tunnels. This profile
    # may be an IPIP, GRE, or WCCP-GRE profile type.
    # :method: set_profile
    # :call-seq:
    # set_profile(tunnels ,profiles)
    #
    # Parameters:
    # - tunnels String[] Names of the tunnels to modify
    # - profiles String[] Profile specifying the tunneling protocol for each specified tunnel

    ##
    # Sets the IP address for the remote end of a set of tunnels.
    # :method: set_remote_address
    # :call-seq:
    # set_remote_address(tunnels ,addresses)
    #
    # Parameters:
    # - tunnels String[] Names of the tunnels to modify
    # - addresses String[] IP addresses for the remote end of each specified tunnel

    ##
    # Sets the Type of Service (ToS) value for the encapsulating packet's IP header. The
    # valid range is zero to 254. The special value 65535 specifies that the encapsulating
    # packet's IP header ToS value is set to the encapsulated packet's IP header ToS value.
    # :method: set_tos
    # :call-seq:
    # set_tos(tunnels ,values)
    #
    # Parameters:
    # - tunnels String[] Names of the tunnels to modify
    # - values long[] Type of Service ( ToS ) value for the encapsulating packet's IP header (default: 65535)


  end
end
