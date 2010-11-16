module IControl::Networking
  ##
  # The Dynamic Peer Discovery interface enables you to work with the definitions and
  # attributes contained in a device's peer discovery objects.
  class ISessionPeerDiscovery < IControl::Base
    class DiscoveryMode < IControl::Base::Enumeration; end
    class FilterMode < IControl::Base::Enumeration; end    ## A sequence of discovery modes.
    class DiscoveryModeSequence < IControl::Base::Sequence ; end## A sequence of filter actions.
    class FilterModeSequence < IControl::Base::Sequence ; end##
    # An enumeration of discovery mode states.
    class DiscoveryMode < IControl::Base::Enumeration
      # Enable all discovery modes.
      DISCOVERY_MODE_ENABLE_ALL = :DISCOVERY_MODE_ENABLE_ALL
      # Disable all discovery modes.
      DISCOVERY_MODE_DISABLE = :DISCOVERY_MODE_DISABLE
      # Enable ICMP discovery modes.
      DISCOVERY_MODE_ENABLE_ICMP = :DISCOVERY_MODE_ENABLE_ICMP
      # Enable TCP discovery modes.
      DISCOVERY_MODE_ENABLE_TCP = :DISCOVERY_MODE_ENABLE_TCP
    end

    ##
    # An enumeration of discovery filter mode states.
    class FilterMode < IControl::Base::Enumeration
      # Exclude discovery state.
      DISCOVERY_FILTER_MODE_EXCLUDE = :DISCOVERY_FILTER_MODE_EXCLUDE
      # Include discovery state.
      DISCOVERY_FILTER_MODE_INCLUDE = :DISCOVERY_FILTER_MODE_INCLUDE
    end

    ##
    # Gets the setting allows other remote endpoints to discover this local endpoint and
    # advertises the local ability to connect.
    # :method: get_discoverable_peer_enabled_state
    # :call-seq:
    # get_discoverable_peer_enabled_state(dynpeerlist)
    #
    # Parameters:
    # - dynpeerlist long[] The list of Dynamic Peer Discovery objects.

    ##
    # Gets the current setting allows other remote endpoints to discover this local endpoint
    # and enables and disables the logic that detects this condition.
    # :method: get_discovered_peer_enabled_state
    # :call-seq:
    # get_discovered_peer_enabled_state(dynpeerlist)
    #
    # Parameters:
    # - dynpeerlist long[] The list of Dynamic Peer Discovery objects.

    ##
    # Gets the modes that allows other remote endpoints to enable automatic discovery of
    # this local iSession endpoint
    # :method: get_discovery_mode
    # :call-seq:
    # get_discovery_mode(dynpeerlist)
    #
    # Parameters:
    # - dynpeerlist long[] The list of Dynamic Peer Discovery objects.

    ##
    # Gets the setting that allows other remote endpoints to enable automatic discovery
    # of this local iSession endpoint
    # :method: get_discovery_mode_enabled_state
    # :call-seq:
    # get_discovery_mode_enabled_state(dynpeerlist)
    #
    # Parameters:
    # - dynpeerlist long[] The list of Dynamic Peer Discovery objects.

    ##
    # Gets the setting that controls the time we allow for ICMP retries for other remote
    # endpoints to discover this local endpoint
    # :method: get_icmp_backoff_time
    # :call-seq:
    # get_icmp_backoff_time(dynpeerlist)
    #
    # Parameters:
    # - dynpeerlist long[] The list of Dynamic Peer Discovery objects.

    ##
    # Gets the setting that controls the number of ICMP requests that we alow for other
    # remote endpoints to discover this local endpoint
    # :method: get_icmp_max_requests
    # :call-seq:
    # get_icmp_max_requests(dynpeerlist)
    #
    # Parameters:
    # - dynpeerlist long[] The list of Dynamic Peer Discovery objects.

    ##
    # Gets the setting that controls the number of ICMP retries that we allow for other
    # remote endpoints to discover this local endpoint
    # :method: get_icmp_max_retries
    # :call-seq:
    # get_icmp_max_retries(dynpeerlist)
    #
    # Parameters:
    # - dynpeerlist long[] The list of Dynamic Peer Discovery objects.

    ##
    # Gets a list of all Dynamic Peer Discovery objects on this device.
    # :method: get_list

    ##
    # Gets the setting that controls the number of ICMP requests that we alow for other
    # remote endpoints to discover this local endpoint
    # :method: get_max_peer_count
    # :call-seq:
    # get_max_peer_count(dynpeerlist)
    #
    # Parameters:
    # - dynpeerlist long[] The list of Dynamic Peer Discovery objects.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Sets the setting allows other remote endpoints to discover this local endpoint and
    # advertises the local ability to connect.
    # :method: set_discoverable_peer_enabled_state
    # :call-seq:
    # set_discoverable_peer_enabled_state(dynpeerlist ,discoverable_peer)
    #
    # Parameters:
    # - dynpeerlist long[] The list of Dynamic Peer Discovery objects.
    # - discoverable_peer EnabledState[] The peer discoverable setting.

    ##
    # Resets the current setting that allows other remote endpoints to discover this local
    # endpoint and enables and disables the logic that detects this condition.
    # :method: set_discovered_peer_enabled_state
    # :call-seq:
    # set_discovered_peer_enabled_state(dynpeerlist ,discover_peer)
    #
    # Parameters:
    # - dynpeerlist long[] The list of Dynamic Peer Discovery objects.
    # - discover_peer EnabledState[] The discover peer setting

    ##
    # Sets the modes that allows other remote endpoints to enable automatic discovery of
    # this local iSession endpoint
    # :method: set_discovery_mode
    # :call-seq:
    # set_discovery_mode(dynpeerlist ,discovery_modes)
    #
    # Parameters:
    # - dynpeerlist long[] The list of Dynamic Peer Discovery objects.
    # - discovery_modes DiscoveryMode[] The discovery mode setting.

    ##
    # Sets the setting that allows other remote endpoints to enable automatic discovery
    # of this local iSession endpoint
    # :method: set_discovery_mode_enabled_state
    # :call-seq:
    # set_discovery_mode_enabled_state(dynpeerlist ,discovery_mode)
    #
    # Parameters:
    # - dynpeerlist long[] The list of Dynamic Peer Discovery objects.
    # - discovery_mode FilterMode[] The discovery mode setting.

    ##
    # Sets the setting that controls the time we allow for ICMP retries for other remote
    # endpoints to discover this local endpoint
    # :method: set_icmp_backoff_time
    # :call-seq:
    # set_icmp_backoff_time(dynpeerlist ,max_backoff_time)
    #
    # Parameters:
    # - dynpeerlist long[] The list of Dynamic Peer Discovery objects.
    # - max_backoff_time short[] The max icmp backoff time of the Dynamic Peer Discovery objects.

    ##
    # Sets the setting that controls the number of ICMP requests that we alow for other
    # remote endpoints to discover this local endpoint
    # :method: set_icmp_max_requests
    # :call-seq:
    # set_icmp_max_requests(dynpeerlist ,max_requests)
    #
    # Parameters:
    # - dynpeerlist long[] The list of Dynamic Peer Discovery objects.
    # - max_requests short[] The max number of requests.

    ##
    # Sets the setting that controls the number of ICMP retries that we allow for other
    # remote endpoints to discover this local endpoint
    # :method: set_icmp_max_retries
    # :call-seq:
    # set_icmp_max_retries(dynpeerlist ,max_retries)
    #
    # Parameters:
    # - dynpeerlist long[] The list of Dynamic Peer Discovery objects.
    # - max_retries short[] The number of retries.

    ##
    # Sets the setting that controls the number of ICMP requests that we alow for other
    # remote endpoints to discover this local endpoint
    # :method: set_max_peer_count
    # :call-seq:
    # set_max_peer_count(dynpeerlist ,max_peers)
    #
    # Parameters:
    # - dynpeerlist long[] The list of Dynamic Peer Discovery objects.
    # - max_peers short[] The max number of peers.


  end
end
