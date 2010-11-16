module IControl::Networking
  ##
  # The STPGlobals interface enables you to work with global attributes used to configure
  # STP (Spanning Tree Protocol).
  class STPGlobals < IControl::Base
    ##
    # Gets the configuration identifier name in a spanning tree region, used to identify
    # a group of adjacent bridges with identical configuration name, configuration revision
    # levels, and assignments of VLANs to spanning tree instances. This setting is used
    # only when the STP mode is MSTP, however the user may set it in any STP mode.
    # :method: get_configuration_identifier

    ##
    # Gets the configuration revision level of the MSTP configuration. It's used only when
    # the STP mode is MSTP, however, the user may set it in any STP mode.
    # :method: get_configuration_revision

    ##
    # Gets the forward delay parameter, which controls how long an interface was blocked
    # from forwarding network traffic after a reconfiguration of the spanning tree topology.
    # The default value is 15 seconds, and the valid range is 4-30 seconds. Note that this
    # parameter has no effect when the STP mode is RSPT or MSTP, as long as all bridges
    # in the spanning tree use the RSTP or MSTP protocol.
    # :method: get_forward_delay

    ##
    # Gets the hello time, which is the time interval in seconds between the periodic transmissions
    # that communicate spanning tree information to the adjacent bridges in the network.
    # The default value is 2 seconds, and the valid range is 1-10 seconds.
    # :method: get_hello_time

    ##
    # Gets the maximum age parameter, which controls how long spanning tree information
    # received from other bridges is considered valid. The default value is 20 seconds,
    # and the valid range is 6-40 seconds.
    # :method: get_maximum_age

    ##
    # Gets the maximum hops an MSTP packet may travel before it is discarded. It's used
    # only when the STP mode is MSTP, however, the user may set it in any STP mode.
    # :method: get_maximum_hop

    ##
    # Gets the STP mode.
    # :method: get_mode

    ##
    # Gets the transmit hold count parameter, which is an absolute limit on the number
    # of spanning tree protocol packets the BIG-IP may transmit on a port in any hello
    # time interval. This ensures that the spanning tree packets will not unduly load the
    # network even in unstable conditions. The default value is 6 packets, and the valid
    # range is 1-10 packets.
    # :method: get_transmit_hold

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Sets the configuration identifier name in a spanning tree region, used to identify
    # a group of adjacent bridges with identical configuration name, configuration revision
    # levels, and assignments of VLANs to spanning tree instances. This setting is used
    # only when the STP mode is MSTP, however the user may set it in any STP mode.
    # :method: set_configuration_identifier
    # :call-seq:
    # set_configuration_identifier(value)
    #
    # Parameters:
    # - value String The configuration identifier.

    ##
    # Sets the configuration revision level of the MSTP configuration. It's used only when
    # the STP mode is MSTP, however, the user may set it in any STP mode.
    # :method: set_configuration_revision
    # :call-seq:
    # set_configuration_revision(value)
    #
    # Parameters:
    # - value long The configuration revision level.

    ##
    # Sets the forward delay parameter, which controls how long an interface was blocked
    # from forwarding network traffic after a reconfiguration of the spanning tree topology.
    # The default value is 15 seconds, and the valid range is 4-30 seconds. Note that this
    # parameter has no effect when the STP mode is RSPT or MSTP, as long as all bridges
    # in the spanning tree use the RSTP or MSTP protocol.
    # :method: set_forward_delay
    # :call-seq:
    # set_forward_delay(value)
    #
    # Parameters:
    # - value long The forwarding delay value.

    ##
    # Sets the hello time, which is the time interval in seconds between the periodic transmissions
    # that communicate spanning tree information to the adjacent bridges in the network.
    # The default value is 2 seconds, and the valid range is 1-10 seconds.
    # :method: set_hello_time
    # :call-seq:
    # set_hello_time(value)
    #
    # Parameters:
    # - value long The hello time interval.

    ##
    # Sets the maximum age parameter, which controls how long spanning tree information
    # received from other bridges is considered valid. The default value is 20 seconds,
    # and the valid range is 6-40 seconds.
    # :method: set_maximum_age
    # :call-seq:
    # set_maximum_age(value)
    #
    # Parameters:
    # - value long The maximum age parameter.

    ##
    # Sets the maximum hops an MSTP packet may travel before it is discarded. It's used
    # only when the STP mode is MSTP, however, the user may set it in any STP mode.
    # :method: set_maximum_hop
    # :call-seq:
    # set_maximum_hop(value)
    #
    # Parameters:
    # - value long The maximum hop value.

    ##
    # Sets the STP mode.
    # :method: set_mode
    # :call-seq:
    # set_mode(value)
    #
    # Parameters:
    # - value STPModeType The STP mode.

    ##
    # Sets the transmit hold count parameter, which is an absolute limit on the number
    # of spanning tree protocol packets the BIG-IP may transmit on a port in any hello
    # time interval. This ensures that the spanning tree packets will not unduly load the
    # network even in unstable conditions. The default value is 6 packets, and the valid
    # range is 1-10 packets.
    # :method: set_transmit_hold
    # :call-seq:
    # set_transmit_hold(value)
    #
    # Parameters:
    # - value long The transmit hold value.


  end
end
