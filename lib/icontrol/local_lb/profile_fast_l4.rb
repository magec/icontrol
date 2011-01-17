module IControl::LocalLB
  ##
  # The ProfileFastL4 interface enables you to manipulate a local load balancer's L4
  # profile.
  class ProfileFastL4 < IControl::Base

    set_id_name "profile_names"

    class ProfileFastL4StatisticEntry < IControl::Base::Struct; end
    class ProfileFastL4Statistics < IControl::Base::Struct; end
    class ProfileFastL4StatisticEntrySequence < IControl::Base::Sequence ; end    ##
    # Creates this profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def create
      super
    end

    ##
    # Deletes all profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_profiles
      super
    end

    ##
    # Deletes this profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_profile
      super
    end

    ##
    # Gets the statistics for all the profile.
    # @rspec_example
    # @return [ProfileFastL4Statistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the names of the default profile from which this profile will derive default
    # values for its attributes.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def default_profile
      super
    end

    ##
    # Gets the preferred hardware acceleration modes for this profile.
    # @rspec_example
    # @return [ProfileHardwareAccelerationMode]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def hardware_acceleration_mode
      super
    end

    ##
    # Gets the state to enable/disable support for hardware SYN cookie.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def hardware_syn_cookie_state
      super
    end

    ##
    # Gets the idle timeout for this profile. The number of seconds without traffic before
    # a connection is eligible for deletion.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def idle_timeout
      super
    end

    ##
    # Gets the IP fragment reassembly states for this profile. If true, reassemble the
    # IP fragments.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ip_fragment_reassemble_state
      super
    end

    ##
    # Gets the IP type of service set in packets sent to the clients.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ip_tos_to_client
      super
    end

    ##
    # Gets the IP type of service set in packets sent to the servers.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ip_tos_to_server
      super
    end

    ##
    # Gets the keep-alive probe interval for a set of FastL4 profile.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def keep_alive_interval
      super
    end

    ##
    # Gets the link quality of service set in packets sent to the clients.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def link_qos_to_client
      super
    end

    ##
    # Gets the link quality of service set in packets sent to the servers.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def link_qos_to_server
      super
    end

    ##
    # Gets a list of all profile.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the state to aggressively close out a connection by allowing TMM to switch the
    # idle_timeout to tcp_close_timeout once the first FIN packet has been seen.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def loose_close_state
      super
    end

    ##
    # Gets the state to allow any TCP packet to initiate a connection (rather than requiring
    # a SYN).
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def loose_initiation_state
      super
    end

    ##
    # Gets the MSS override values for this profile. If non-zero and less than the default
    # value, this value overrides the maximum segment size.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def mss_override
      super
    end

    ##
    # Gets the reset on timeout states for this profile. If true and a TCP connection exceeds
    # its idle timeout, send a reset in addition to deleting the connection.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_on_timeout_state
      super
    end

    ##
    # Gets the state to use TCP timestamp options to measure the round trip time to the
    # client.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def rtt_from_client_state
      super
    end

    ##
    # Gets the state to use TCP timestamp options to measure the round trip time to the
    # server.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def rtt_from_server_state
      super
    end

    ##
    # Gets the state to enable/disable support for software SYN cookie.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def software_syn_cookie_state
      super
    end

    ##
    # Gets the statistics for this profile.
    # @rspec_example
    # @return [ProfileFastL4Statistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Gets the TCP close timeout for this profile. Only used when &amp;quot;loose_initiation"
    # or &amp;quot;loose_close" is enabled. This is used to rapidly close out a loosely
    # initiated connection after the first FIN packet has been seen (either client or server
    # side).
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def tcp_close_timeout
      super
    end

    ##
    # Gets the options to generate our own sequence numbers on all SYNs.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def tcp_generate_isn_state
      super
    end

    ##
    # Gets the TCP handshake timeout for this profile. The number of seconds without traffic
    # before a connection in the SYN received state is eligible for deletion.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def tcp_handshake_timeout
      super
    end

    ##
    # Gets the options to block TCP SackOK option from passing to server on an initiating
    # SYN.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def tcp_strip_sackok_state
      super
    end

    ##
    # Gets the TCP timestamp options for this profile.
    # @rspec_example
    # @return [ProfileTCPOptionMode]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def tcp_timestamp_mode
      super
    end

    ##
    # Gets the TCP window scale options for this profile.
    # @rspec_example
    # @return [ProfileTCPOptionMode]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def tcp_window_scale_mode
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
    # Determines whether this profile are base/pre-configured profile, or user-defined
    # profile.
    # @rspec_example
    # @return [boolean]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def is_base_profile
      super
    end

    ##
    # Resets the statistics for this profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the names of the default profile from which this profile will derive default
    # values for its attributes.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :defaults The default profiles from which the specified profiles will get default values.
    def set_default_profile(opts)
      opts = check_params(opts,[:defaults])
      super(opts)
    end

    ##
    # Sets the preferred hardware acceleration modes for this profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileHardwareAccelerationMode] :acceleration_modes The preferred hardware acceleration modes for the specified profiles.
    def set_hardware_acceleration_mode(opts)
      opts = check_params(opts,[:acceleration_modes])
      super(opts)
    end

    ##
    # Sets the state to enable/disable support for hardware SYN cookie.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The enabled/disabled state.
    def set_hardware_syn_cookie_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the idle timeout for this profile. The number of seconds without traffic before
    # a connection is eligible for deletion.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :timeouts The idle timeout for the specified profiles.
    def set_idle_timeout(opts)
      opts = check_params(opts,[:timeouts])
      super(opts)
    end

    ##
    # Sets the IP fragment reassembly states for this profile. If true, reassemble the
    # IP fragments.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The IP fragment reassembly states for the specified profiles.
    def set_ip_fragment_reassemble_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the IP type of service set in packets sent to the clients.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :ip_tos_values The IP type of service set in packets sent to the clients.
    def set_ip_tos_to_client(opts)
      opts = check_params(opts,[:ip_tos_values])
      super(opts)
    end

    ##
    # Sets the IP type of service set in packets sent to the servers.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :ip_tos_values The IP type of service set in packets sent to the servers.
    def set_ip_tos_to_server(opts)
      opts = check_params(opts,[:ip_tos_values])
      super(opts)
    end

    ##
    # Sets the keep-alive probe interval for a set of FastL4 profile. This interval is
    # the elapsed time between sending data over an idle TCP connection to keep the connection
    # open and to determine whether the connection is still valid. If zero, the keep-alive
    # probe is disabled.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :intervals Keep-alive probe interval (in seconds) for each specified FastL4 profile (default: 0)
    def set_keep_alive_interval(opts)
      opts = check_params(opts,[:intervals])
      super(opts)
    end

    ##
    # Sets the link quality of service set in packets sent to the clients.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :link_qos_values The link quality of service set in packets sent to the clients.
    def set_link_qos_to_client(opts)
      opts = check_params(opts,[:link_qos_values])
      super(opts)
    end

    ##
    # Sets the link quality of service set in packets sent to the servers.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :link_qos_values The link quality of service set in packets sent to the servers.
    def set_link_qos_to_server(opts)
      opts = check_params(opts,[:link_qos_values])
      super(opts)
    end

    ##
    # Sets the state to aggressively close out a connection by allowing TMM to switch the
    # idle_timeout to tcp_close_timeout once the first FIN packet has been seen.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The loose close state.
    def set_loose_close_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the state to allow any TCP packet to initiate a connection (rather than requiring
    # a SYN).
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The loose initiation state.
    def set_loose_initiation_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the MSS override values for this profile. If non-zero and less than the default
    # value, this value overrides the maximum segment size.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :mss_overrides The MSS override values for the specified profiles.
    def set_mss_override(opts)
      opts = check_params(opts,[:mss_overrides])
      super(opts)
    end

    ##
    # Sets the reset on timeout states for this profile. If true and a TCP connection exceeds
    # its idle timeout, send a reset in addition to deleting the connection.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The key reset on timeout states for the specified profiles.
    def set_reset_on_timeout_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the state to use TCP timestamp options to measure the round trip time to the
    # client.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The state to use TCP timestamp options to measure the round trip time to the client.
    def set_rtt_from_client_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the state to use TCP timestamp options to measure the round trip time to the
    # server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The state to use TCP timestamp options to measure the round trip time to the server.
    def set_rtt_from_server_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the state to enable/disable support for software SYN cookie.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The enabled/disabled state.
    def set_software_syn_cookie_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the TCP close timeout for this profile. Only used when &amp;quot;loose_initiation"
    # or &amp;quot;loose_close" is enabled. This is used to rapidly close out a loosely
    # initiated connection after the first FIN packet has been seen (either client or server
    # side).
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :timeouts The TCP close timeout for the specified profiles.
    def set_tcp_close_timeout(opts)
      opts = check_params(opts,[:timeouts])
      super(opts)
    end

    ##
    # Sets the options to generate our own sequence numbers on all SYNs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states to enable/disable generating our own sequence		 numbers on all SYNs for the specified profiles.
    def set_tcp_generate_isn_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the TCP handshake timeout for this profile. The number of seconds without traffic
    # before a connection in the SYN received state is eligible for deletion.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :timeouts The TCP handshake timeout for the specified profiles.
    def set_tcp_handshake_timeout(opts)
      opts = check_params(opts,[:timeouts])
      super(opts)
    end

    ##
    # Sets the options to block TCP SackOK option from passing to server on an initiating
    # SYN.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states to block TCP SackOK option from passing		to server on an initiating SYN.
    def set_tcp_strip_sackok_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the TCP timestamp options for this profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileTCPOptionMode] :modes The TCP timestamp options for the specified profiles.
    def set_tcp_timestamp_mode(opts)
      opts = check_params(opts,[:modes])
      super(opts)
    end

    ##
    # Sets the TCP window scale options for this profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileTCPOptionMode] :modes The TCP window scale options for the specified profiles. Note: mode "rewrite" is invalid for window scale mode, and as of 9.4.2, the method will throw Common::InvalidArgument and do nothing if you use this option in any mode element.
    def set_tcp_window_scale_mode(opts)
      opts = check_params(opts,[:modes])
      super(opts)
    end

    ##
    # A struct that describes statistics for a particular profile.
    # @attr [String] profile_name The profile name.
    # @attr [IControl::Common::StatisticSequence] statistics The statistics for the profile.
    class ProfileFastL4StatisticEntry < IControl::Base::Struct
      icontrol_attribute :profile_name, String
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    # @attr [IControl::LocalLB::ProfileFastL4::ProfileFastL4StatisticEntrySequence] statistics The statistics for a sequence of profiles.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class ProfileFastL4Statistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::ProfileFastL4::ProfileFastL4StatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of ProfileFastL4 statistics.
    class ProfileFastL4StatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
