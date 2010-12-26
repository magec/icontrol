module IControl::Networking
  ##
  # The STPGlobals interface enables you to work with global attributes used to configure STP (Spanning Tree Protocol).
  class STPGlobals < IControl::Base

    set_id_name "value"

    ##
    # Gets the configuration identifier name in a spanning tree region, used to identify a group of adjacent bridges with identical configuration name, configuration revision levels, and assignments of VLANs to spanning tree instances. This setting is used only when the STP mode is MSTP, however the user may set it in any STP mode.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def configuration_identifier
      super
    end

    ##
    # Gets the configuration revision level of the MSTP configuration. It's used only when the STP mode is MSTP, however, the user may set it in any STP mode.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def configuration_revision
      super
    end

    ##
    # Gets the forward delay parameter, which controls how long an interface was blocked from forwarding network traffic after a reconfiguration of the spanning tree topology. The default valu is 15 seconds, and the valid range is 4-30 seconds. Note that this parameter has no effect when the STP mode is RSPT or MSTP, as long as all bridges in the spanning tree use the RSTP or MSTP protocol.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def forward_delay
      super
    end

    ##
    # Gets the hello time, which is the time interval in seconds between the periodic transmissions that communicate spanning tree information to the adjacent bridges in the network. The default valu is 2 seconds, and the valid range is 1-10 seconds.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def hello_time
      super
    end

    ##
    # Gets the maximum age parameter, which controls how long spanning tree information received from other bridges is considered valid. The default valu is 20 seconds, and the valid range is 6-40 seconds.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def maximum_age
      super
    end

    ##
    # Gets the maximum hops an MSTP packet may travel before it is discarded. It's used only when the STP mode is MSTP, however, the user may set it in any STP mode.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def maximum_hop
      super
    end

    ##
    # Gets the STP mode.
    # @return [STPModeType]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def mode
      super
    end

    ##
    # Gets the transmit hold count parameter, which is an absolute limit on the number of spanning tree protocol packets the BIG-IP may transmit on a port in any hello time interval. This ensures that the spanning tree packets will not unduly load the network even in unstable conditions. The default valu is 6 packets, and the valid range is 1-10 packets.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def transmit_hold
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Sets the configuration identifier name in a spanning tree region, used to identify a group of adjacent bridges with identical configuration name, configuration revision levels, and assignments of VLANs to spanning tree instances. This setting is used only when the STP mode is MSTP, however the user may set it in any STP mode.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_configuration_identifier
      super
    end

    ##
    # Sets the configuration revision level of the MSTP configuration. It's used only when the STP mode is MSTP, however, the user may set it in any STP mode.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_configuration_revision
      super
    end

    ##
    # Sets the forward delay parameter, which controls how long an interface was blocked from forwarding network traffic after a reconfiguration of the spanning tree topology. The default valu is 15 seconds, and the valid range is 4-30 seconds. Note that this parameter has no effect when the STP mode is RSPT or MSTP, as long as all bridges in the spanning tree use the RSTP or MSTP protocol.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_forward_delay
      super
    end

    ##
    # Sets the hello time, which is the time interval in seconds between the periodic transmissions that communicate spanning tree information to the adjacent bridges in the network. The default valu is 2 seconds, and the valid range is 1-10 seconds.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_hello_time
      super
    end

    ##
    # Sets the maximum age parameter, which controls how long spanning tree information received from other bridges is considered valid. The default valu is 20 seconds, and the valid range is 6-40 seconds.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_maximum_age
      super
    end

    ##
    # Sets the maximum hops an MSTP packet may travel before it is discarded. It's used only when the STP mode is MSTP, however, the user may set it in any STP mode.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_maximum_hop
      super
    end

    ##
    # Sets the STP mode.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_mode
      super
    end

    ##
    # Sets the transmit hold count parameter, which is an absolute limit on the number of spanning tree protocol packets the BIG-IP may transmit on a port in any hello time interval. This ensures that the spanning tree packets will not unduly load the network even in unstable conditions. The default valu is 6 packets, and the valid range is 1-10 packets.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_transmit_hold
      super
    end


  end
end
