module IControl::LocalLB
  ##
  # The ProfileFastL4 interface enables you to manipulate a local load balancer's L4
  # profile.
  class ProfileFastL4 < IControl::Base
    class ProfileFastL4StatisticEntry < IControl::Base::Struct; end
    class ProfileFastL4Statistics < IControl::Base::Struct; end    ## A sequence of ProfileFastL4 statistics.
    class ProfileFastL4StatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a particular profile.
    class ProfileFastL4StatisticEntry < IControl::Base::Struct
      # The profile name.
      icontrol_attribute :profile_name, String
      # The statistics for the profile.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    class ProfileFastL4Statistics < IControl::Base::Struct
      # The statistics for a sequence of profiles.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileFastL4::ProfileFastL4StatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] The profiles to create.

    ##
    # Deletes all profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles to delete.

    ##
    # Gets the statistics for all the profiles.
    # :method: get_all_statistics

    ##
    # Gets the names of the default profiles from which the specified profiles will derive
    # default values for its attributes.
    # :method: get_default_profile
    # :call-seq:
    # get_default_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the preferred hardware acceleration modes for the specified profiles.
    # :method: get_hardware_acceleration_mode
    # :call-seq:
    # get_hardware_acceleration_mode(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the state to enable/disable support for hardware SYN cookie.
    # :method: get_hardware_syn_cookie_state
    # :call-seq:
    # get_hardware_syn_cookie_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the idle timeout for the specified profiles. The number of seconds without traffic
    # before a connection is eligible for deletion.
    # :method: get_idle_timeout
    # :call-seq:
    # get_idle_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the IP fragment reassembly states for the specified profiles. If true, reassemble
    # the IP fragments.
    # :method: get_ip_fragment_reassemble_state
    # :call-seq:
    # get_ip_fragment_reassemble_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the IP type of service set in packets sent to the clients.
    # :method: get_ip_tos_to_client
    # :call-seq:
    # get_ip_tos_to_client(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the IP type of service set in packets sent to the servers.
    # :method: get_ip_tos_to_server
    # :call-seq:
    # get_ip_tos_to_server(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the keep-alive probe interval for a set of FastL4 profiles.
    # :method: get_keep_alive_interval
    # :call-seq:
    # get_keep_alive_interval(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the FastL4 profiles to query

    ##
    # Gets the link quality of service set in packets sent to the clients.
    # :method: get_link_qos_to_client
    # :call-seq:
    # get_link_qos_to_client(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the link quality of service set in packets sent to the servers.
    # :method: get_link_qos_to_server
    # :call-seq:
    # get_link_qos_to_server(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets a list of all profiles.
    # :method: get_list

    ##
    # Gets the state to aggressively close out a connection by allowing TMM to switch the
    # idle_timeout to tcp_close_timeout once the first FIN packet has been seen.
    # :method: get_loose_close_state
    # :call-seq:
    # get_loose_close_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the state to allow any TCP packet to initiate a connection (rather than requiring
    # a SYN).
    # :method: get_loose_initiation_state
    # :call-seq:
    # get_loose_initiation_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the MSS override values for the specified profiles. If non-zero and less than
    # the default value, this value overrides the maximum segment size.
    # :method: get_mss_override
    # :call-seq:
    # get_mss_override(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the reset on timeout states for the specified profiles. If true and a TCP connection
    # exceeds its idle timeout, send a reset in addition to deleting the connection.
    # :method: get_reset_on_timeout_state
    # :call-seq:
    # get_reset_on_timeout_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the state to use TCP timestamp options to measure the round trip time to the
    # client.
    # :method: get_rtt_from_client_state
    # :call-seq:
    # get_rtt_from_client_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the state to use TCP timestamp options to measure the round trip time to the
    # server.
    # :method: get_rtt_from_server_state
    # :call-seq:
    # get_rtt_from_server_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the state to enable/disable support for software SYN cookie.
    # :method: get_software_syn_cookie_state
    # :call-seq:
    # get_software_syn_cookie_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the statistics for the specified profiles.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The profiles to get the statistics from.

    ##
    # Gets the TCP close timeout for the specified profiles. Only used when &amp;quot;loose_initiation"
    # or &amp;quot;loose_close" is enabled. This is used to rapidly close out a loosely
    # initiated connection after the first FIN packet has been seen (either client or server
    # side).
    # :method: get_tcp_close_timeout
    # :call-seq:
    # get_tcp_close_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the options to generate our own sequence numbers on all SYNs.
    # :method: get_tcp_generate_isn_state
    # :call-seq:
    # get_tcp_generate_isn_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the TCP handshake timeout for the specified profiles. The number of seconds
    # without traffic before a connection in the SYN received state is eligible for deletion.
    # :method: get_tcp_handshake_timeout
    # :call-seq:
    # get_tcp_handshake_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the options to block TCP SackOK option from passing to server on an initiating
    # SYN.
    # :method: get_tcp_strip_sackok_state
    # :call-seq:
    # get_tcp_strip_sackok_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the TCP timestamp options for the specified profiles.
    # :method: get_tcp_timestamp_mode
    # :call-seq:
    # get_tcp_timestamp_mode(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the TCP window scale options for the specified profiles.
    # :method: get_tcp_window_scale_mode
    # :call-seq:
    # get_tcp_window_scale_mode(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Determines whether the specified profiles are base/pre-configured profiles, or user-defined
    # profiles.
    # :method: is_base_profile
    # :call-seq:
    # is_base_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Resets the statistics for the specified profiles.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Sets the names of the default profiles from which the specified profiles will derive
    # default values for its attributes.
    # :method: set_default_profile
    # :call-seq:
    # set_default_profile(profile_names ,defaults)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - defaults String[] The default profiles from which the specified profiles will get default values.

    ##
    # Sets the preferred hardware acceleration modes for the specified profiles.
    # :method: set_hardware_acceleration_mode
    # :call-seq:
    # set_hardware_acceleration_mode(profile_names ,acceleration_modes)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - acceleration_modes ProfileHardwareAccelerationMode[] The preferred hardware acceleration modes for the specified profiles.

    ##
    # Sets the state to enable/disable support for hardware SYN cookie.
    # :method: set_hardware_syn_cookie_state
    # :call-seq:
    # set_hardware_syn_cookie_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The enabled/disabled state.

    ##
    # Sets the idle timeout for the specified profiles. The number of seconds without traffic
    # before a connection is eligible for deletion.
    # :method: set_idle_timeout
    # :call-seq:
    # set_idle_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - timeouts ProfileULong[] The idle timeout for the specified profiles.

    ##
    # Sets the IP fragment reassembly states for the specified profiles. If true, reassemble
    # the IP fragments.
    # :method: set_ip_fragment_reassemble_state
    # :call-seq:
    # set_ip_fragment_reassemble_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The IP fragment reassembly states for the specified profiles.

    ##
    # Sets the IP type of service set in packets sent to the clients.
    # :method: set_ip_tos_to_client
    # :call-seq:
    # set_ip_tos_to_client(profile_names ,ip_tos_values)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - ip_tos_values ProfileULong[] The IP type of service set in packets sent to the clients.

    ##
    # Sets the IP type of service set in packets sent to the servers.
    # :method: set_ip_tos_to_server
    # :call-seq:
    # set_ip_tos_to_server(profile_names ,ip_tos_values)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - ip_tos_values ProfileULong[] The IP type of service set in packets sent to the servers.

    ##
    # Sets the keep-alive probe interval for a set of FastL4 profiles. This interval is
    # the elapsed time between sending data over an idle TCP connection to keep the connection
    # open and to determine whether the connection is still valid. If zero, the keep-alive
    # probe is disabled.
    # :method: set_keep_alive_interval
    # :call-seq:
    # set_keep_alive_interval(profile_names ,intervals)
    #
    # Parameters:
    # - profile_names String[] Names of the FastL4 profiles to modify
    # - intervals ProfileULong[] Keep-alive probe interval (in seconds) for each specified FastL4 profile (default: 0)

    ##
    # Sets the link quality of service set in packets sent to the clients.
    # :method: set_link_qos_to_client
    # :call-seq:
    # set_link_qos_to_client(profile_names ,link_qos_values)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - link_qos_values ProfileULong[] The link quality of service set in packets sent to the clients.

    ##
    # Sets the link quality of service set in packets sent to the servers.
    # :method: set_link_qos_to_server
    # :call-seq:
    # set_link_qos_to_server(profile_names ,link_qos_values)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - link_qos_values ProfileULong[] The link quality of service set in packets sent to the servers.

    ##
    # Sets the state to aggressively close out a connection by allowing TMM to switch the
    # idle_timeout to tcp_close_timeout once the first FIN packet has been seen.
    # :method: set_loose_close_state
    # :call-seq:
    # set_loose_close_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The loose close state.

    ##
    # Sets the state to allow any TCP packet to initiate a connection (rather than requiring
    # a SYN).
    # :method: set_loose_initiation_state
    # :call-seq:
    # set_loose_initiation_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The loose initiation state.

    ##
    # Sets the MSS override values for the specified profiles. If non-zero and less than
    # the default value, this value overrides the maximum segment size.
    # :method: set_mss_override
    # :call-seq:
    # set_mss_override(profile_names ,mss_overrides)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - mss_overrides ProfileULong[] The MSS override values for the specified profiles.

    ##
    # Sets the reset on timeout states for the specified profiles. If true and a TCP connection
    # exceeds its idle timeout, send a reset in addition to deleting the connection.
    # :method: set_reset_on_timeout_state
    # :call-seq:
    # set_reset_on_timeout_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The key reset on timeout states for the specified profiles.

    ##
    # Sets the state to use TCP timestamp options to measure the round trip time to the
    # client.
    # :method: set_rtt_from_client_state
    # :call-seq:
    # set_rtt_from_client_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The state to use TCP timestamp options to measure the round trip time to the client.

    ##
    # Sets the state to use TCP timestamp options to measure the round trip time to the
    # server.
    # :method: set_rtt_from_server_state
    # :call-seq:
    # set_rtt_from_server_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The state to use TCP timestamp options to measure the round trip time to the server.

    ##
    # Sets the state to enable/disable support for software SYN cookie.
    # :method: set_software_syn_cookie_state
    # :call-seq:
    # set_software_syn_cookie_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The enabled/disabled state.

    ##
    # Sets the TCP close timeout for the specified profiles. Only used when &amp;quot;loose_initiation"
    # or &amp;quot;loose_close" is enabled. This is used to rapidly close out a loosely
    # initiated connection after the first FIN packet has been seen (either client or server
    # side).
    # :method: set_tcp_close_timeout
    # :call-seq:
    # set_tcp_close_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - timeouts ProfileULong[] The TCP close timeout for the specified profiles.

    ##
    # Sets the options to generate our own sequence numbers on all SYNs.
    # :method: set_tcp_generate_isn_state
    # :call-seq:
    # set_tcp_generate_isn_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The states to enable/disable generating our own sequence		 numbers on all SYNs for the specified profiles.

    ##
    # Sets the TCP handshake timeout for the specified profiles. The number of seconds
    # without traffic before a connection in the SYN received state is eligible for deletion.
    # :method: set_tcp_handshake_timeout
    # :call-seq:
    # set_tcp_handshake_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - timeouts ProfileULong[] The TCP handshake timeout for the specified profiles.

    ##
    # Sets the options to block TCP SackOK option from passing to server on an initiating
    # SYN.
    # :method: set_tcp_strip_sackok_state
    # :call-seq:
    # set_tcp_strip_sackok_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The states to block TCP SackOK option from passing		to server on an initiating SYN.

    ##
    # Sets the TCP timestamp options for the specified profiles.
    # :method: set_tcp_timestamp_mode
    # :call-seq:
    # set_tcp_timestamp_mode(profile_names ,modes)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - modes ProfileTCPOptionMode[] The TCP timestamp options for the specified profiles.

    ##
    # Sets the TCP window scale options for the specified profiles.
    # :method: set_tcp_window_scale_mode
    # :call-seq:
    # set_tcp_window_scale_mode(profile_names ,modes)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - modes ProfileTCPOptionMode[] The TCP window scale options for the specified profiles. Note: mode "rewrite" is invalid for window scale mode, and as of 9.4.2, the method will throw Common::InvalidArgument and do nothing if you use this option in any mode element.


  end
end
