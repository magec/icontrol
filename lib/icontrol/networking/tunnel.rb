module IControl::Networking
  ##
  # The Tunnel interface manages a virtual network interface that allows a network protocol to carry packets of another protocol between two endpoints. Once created, it can be used just like a VLAN in BIG-IP configurations.
  class Tunnel < IControl::Base

    set_id_name "tunnels"

    # Direction of traffic flow through the tunnel
    class TunnelDirection < IControl::Base::Enumeration; end    ##
    # Creates a set of tunnel.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :local_addresses IP addresses for the local end of each specified tunnel
    # @option opts [String] :remote_addresses IP addresses for the remote end of each specified tunnel
    # @option opts [String] :profiles Profile specifying the tunneling protocol for each specified tunnel
    def create(opts)
      check_params(opts,[:local_addresses,:remote_addresses,:profiles])
      super
    end

    ##
    # Deletes all tunnel.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_tunnels
      super
    end

    ##
    # Deletes a set of tunnel.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_tunnel
      super
    end

    ##
    # Gets the direction for traffic flow within a set of tunnel.
    # @return [TunnelDirection]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def direction
      super
    end

    ##
    # Gets the names of all tunnel.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the IP address for the local end of a set of tunnel.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def local_address
      super
    end

    ##
    # Gets the maximum transmission unit (MTU) for a set of tunnel.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def mtu
      super
    end

    ##
    # Gets the profile specifying the tunneling protocol for a set of tunnel.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def profile
      super
    end

    ##
    # Gets the IP address for the remote end for a set of tunnel.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def remote_address
      super
    end

    ##
    # Gets the Type of Service (ToS) value for the encapsulating packet's IP header.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def tos
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Sets the direction for traffic flow within a set of tunnel.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::Tunnel::TunnelDirection] :directions Direction for traffic flow within each specified tunnel
    def set_direction(opts)
      check_params(opts,[:directions])
      super
    end

    ##
    # Sets the IP address for the local end of the tunnel for a set of tunnel
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :addresses IP addresses for the local end of each specified tunnel
    def set_local_address(opts)
      check_params(opts,[:addresses])
      super
    end

    ##
    # Sets the maximum transmission unit (MTU) for a set of tunnel. If zero, the tunnel's MTU is automatically set to the MTU of the tunnel's underlying interface minus the encapsulation overhead introduced by the tunneling protocol in use for the tunnel.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :mtus Maximum transmission unit (MTU) for each specified tunnel (default: 0)
    def set_mtu(opts)
      check_params(opts,[:mtus])
      super
    end

    ##
    # Sets the profile specifying the tunneling protocol for a set of tunnel. This profile may be an IPIP, GRE, or WCCP-GRE profile type.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :profiles Profile specifying the tunneling protocol for each specified tunnel
    def set_profile(opts)
      check_params(opts,[:profiles])
      super
    end

    ##
    # Sets the IP address for the remote end of a set of tunnel.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :addresses IP addresses for the remote end of each specified tunnel
    def set_remote_address(opts)
      check_params(opts,[:addresses])
      super
    end

    ##
    # Sets the Type of Service (ToS) value for the encapsulating packet's IP header. The valid range is zero to 254. The special value 65535 specifies that the encapsulating packet's IP header ToS value is set to the encapsulated packet's IP header ToS value.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :values Type of Service ( ToS ) value for the encapsulating packet's IP header (default: 65535)
    def set_tos(opts)
      check_params(opts,[:values])
      super
    end


    ## Sequence of tunnel directions
    class TunnelDirectionSequence < IControl::Base::Sequence ; end
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


  end
end
