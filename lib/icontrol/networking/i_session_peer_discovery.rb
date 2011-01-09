module IControl::Networking
  ##
  # The Dynamic Peer Discovery interface enables you to work with the definitions and
  # attributes contained in a device's peer discovery objects.
  class ISessionPeerDiscovery < IControl::Base

    set_id_name "dynpeerlist"

    class DiscoveryModeSequence < IControl::Base::Sequence ; end
    class FilterModeSequence < IControl::Base::Sequence ; end
    # An enumeration of discovery mode states.
    class DiscoveryMode < IControl::Base::Enumeration; end
    # An enumeration of discovery filter mode states.
    class FilterMode < IControl::Base::Enumeration; end    ##
    # Gets the setting allows other remote endpoints to discover this local endpoint and
    # advertises the local ability to connect.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def discoverable_peer_enabled_state
      super
    end

    ##
    # Gets the current setting allows other remote endpoints to discover this local endpoint
    # and enables and disables the logic that detects this condition.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def discovered_peer_enabled_state
      super
    end

    ##
    # Gets the modes that allows other remote endpoints to enable automatic discovery of
    # this local iSession endpoint
    # @rspec_example
    # @return [DiscoveryMode]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def discovery_mode
      super
    end

    ##
    # Gets the setting that allows other remote endpoints to enable automatic discovery
    # of this local iSession endpoint
    # @rspec_example
    # @return [FilterMode]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def discovery_mode_enabled_state
      super
    end

    ##
    # Gets the setting that controls the time we allow for ICMP retries for other remote
    # endpoints to discover this local endpoint
    # @rspec_example
    # @return [short]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def icmp_backoff_time
      super
    end

    ##
    # Gets the setting that controls the number of ICMP requests that we alow for other
    # remote endpoints to discover this local endpoint
    # @rspec_example
    # @return [short]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def icmp_max_requests
      super
    end

    ##
    # Gets the setting that controls the number of ICMP retries that we allow for other
    # remote endpoints to discover this local endpoint
    # @rspec_example
    # @return [short]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def icmp_max_retries
      super
    end

    ##
    # Gets a list of all Dynamic Peer Discovery objects on this device.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the setting that controls the number of ICMP requests that we alow for other
    # remote endpoints to discover this local endpoint
    # @rspec_example
    # @return [short]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def max_peer_count
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
    # Sets the setting allows other remote endpoints to discover this local endpoint and
    # advertises the local ability to connect.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :discoverable_peer The peer discoverable setting.
    def set_discoverable_peer_enabled_state(opts)
      check_params(opts,[:discoverable_peer])
      super
    end

    ##
    # Resets the current setting that allows other remote endpoints to discover this local
    # endpoint and enables and disables the logic that detects this condition.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :discover_peer The discover peer setting
    def set_discovered_peer_enabled_state(opts)
      check_params(opts,[:discover_peer])
      super
    end

    ##
    # Sets the modes that allows other remote endpoints to enable automatic discovery of
    # this local iSession endpoint
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::iSessionPeerDiscovery::DiscoveryMode] :discovery_modes The discovery mode setting.
    def set_discovery_mode(opts)
      check_params(opts,[:discovery_modes])
      super
    end

    ##
    # Sets the setting that allows other remote endpoints to enable automatic discovery
    # of this local iSession endpoint
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::iSessionPeerDiscovery::FilterMode] :discovery_mode The discovery mode setting.
    def set_discovery_mode_enabled_state(opts)
      check_params(opts,[:discovery_mode])
      super
    end

    ##
    # Sets the setting that controls the time we allow for ICMP retries for other remote
    # endpoints to discover this local endpoint
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [short] :max_backoff_time The max icmp backoff time of the Dynamic Peer Discovery objects.
    def set_icmp_backoff_time(opts)
      check_params(opts,[:max_backoff_time])
      super
    end

    ##
    # Sets the setting that controls the number of ICMP requests that we alow for other
    # remote endpoints to discover this local endpoint
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [short] :max_requests The max number of requests.
    def set_icmp_max_requests(opts)
      check_params(opts,[:max_requests])
      super
    end

    ##
    # Sets the setting that controls the number of ICMP retries that we allow for other
    # remote endpoints to discover this local endpoint
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [short] :max_retries The number of retries.
    def set_icmp_max_retries(opts)
      check_params(opts,[:max_retries])
      super
    end

    ##
    # Sets the setting that controls the number of ICMP requests that we alow for other
    # remote endpoints to discover this local endpoint
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [short] :max_peers The max number of peers.
    def set_max_peer_count(opts)
      check_params(opts,[:max_peers])
      super
    end


    ## A sequence of discovery modes.
    class DiscoveryModeSequence < IControl::Base::Sequence ; end
    ## A sequence of filter actions.
    class FilterModeSequence < IControl::Base::Sequence ; end
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


    # An enumeration of discovery filter mode states.
    class FilterMode < IControl::Base::Enumeration
      # Exclude discovery state.
      DISCOVERY_FILTER_MODE_EXCLUDE = :DISCOVERY_FILTER_MODE_EXCLUDE
      # Include discovery state.
      DISCOVERY_FILTER_MODE_INCLUDE = :DISCOVERY_FILTER_MODE_INCLUDE
    end


  end
end
