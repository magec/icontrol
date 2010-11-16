module IControl::LocalLB
  ##
  # The ProfileSCTP interface enables you to manipulate a local load balancer's SCTP
  # profile.
  class ProfileSCTP < IControl::Base
    class ProfileSCTPStatisticEntry < IControl::Base::Struct; end
    class ProfileSCTPStatistics < IControl::Base::Struct; end    ## A sequence of ProfileSCTP statistics.
    class ProfileSCTPStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a particular SCTP profile.
    class ProfileSCTPStatisticEntry < IControl::Base::Struct
      # The profile name.
      icontrol_attribute :profile_name, String
      # The statistics for the profile.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    class ProfileSCTPStatistics < IControl::Base::Struct
      # The statistics for a sequence of profiles.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileSCTP::ProfileSCTPStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified SCTP profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] The SCTP profiles to create.

    ##
    # Deletes all SCTP profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified SCTP profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles to delete.

    ##
    # Gets the statistics for all the SCTP profiles.
    # :method: get_all_statistics

    ##
    # Gets the maximum number of retries to establish the connection for the specified
    # SCTP profiles.
    # :method: get_connect_maximum_retry
    # :call-seq:
    # get_connect_maximum_retry(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.

    ##
    # Gets the valid duration of cookies for the specified SCTP profiles.
    # :method: get_cookie_expiration
    # :call-seq:
    # get_cookie_expiration(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.

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
    # Gets the state that if true, SCTP will emulate TCP closing.
    # :method: get_emulate_tcp_shutdown_state
    # :call-seq:
    # get_emulate_tcp_shutdown_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the intervals (in seconds) between heartbeats.
    # :method: get_heartbeat_interval
    # :call-seq:
    # get_heartbeat_interval(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.

    ##
    # Gets the number of seconds without traffic before the connection is eligible for
    # deletion.
    # :method: get_idle_timeout
    # :call-seq:
    # get_idle_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.

    ##
    # Gets the number of inbound streams used by the specified SCTP profiles.
    # :method: get_inbound_stream
    # :call-seq:
    # get_inbound_stream(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.

    ##
    # Gets the IP ToS values in packets sent to peer.
    # :method: get_ip_tos_to_peer
    # :call-seq:
    # get_ip_tos_to_peer(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.

    ##
    # Gets the link QoS values in packets sent to peer.
    # :method: get_link_qos_to_peer
    # :call-seq:
    # get_link_qos_to_peer(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.

    ##
    # Gets a list of all SCTP profiles.
    # :method: get_list

    ##
    # Gets the state that if true, SCPT will order the received messages before delivering
    # them to upper layer.
    # :method: get_order_receive_message_state
    # :call-seq:
    # get_order_receive_message_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the number of outbound streams used by the specified SCTP profiles.
    # :method: get_outbound_stream
    # :call-seq:
    # get_outbound_stream(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.

    ##
    # Gets the proxy buffer level at which the receive window is closed (not advanced)
    # for the specified SCTP profiles.
    # :method: get_proxy_buffer_high
    # :call-seq:
    # get_proxy_buffer_high(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.

    ##
    # Gets the proxy buffer level at which the receive window is opened for the specified
    # SCTP profiles.
    # :method: get_proxy_buffer_low
    # :call-seq:
    # get_proxy_buffer_low(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.

    ##
    # Gets the number of RX chunk buffers used by the specified SCTP profiles.
    # :method: get_receive_chunk_buffer
    # :call-seq:
    # get_receive_chunk_buffer(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.

    ##
    # Gets the receive window sizes used by the specified SCTP profiles.
    # :method: get_receive_window_size
    # :call-seq:
    # get_receive_window_size(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.

    ##
    # Gets the state that if true, SCTP will reset the connection when a timeout occurs.
    # :method: get_reset_on_timeout_state
    # :call-seq:
    # get_reset_on_timeout_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the internal secret strings used to HMAC cookies.
    # :method: get_secret
    # :call-seq:
    # get_secret(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.

    ##
    # Gets the send buffer sizes (in bytes) used by the specified SCTP profiles.
    # :method: get_send_buffer_size
    # :call-seq:
    # get_send_buffer_size(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.

    ##
    # Gets the maximum number of retries to send data for the specified SCTP profiles.
    # :method: get_send_maximum_retry
    # :call-seq:
    # get_send_maximum_retry(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.

    ##
    # Gets the state that indicates whether SCTP will accept and send partial application
    # data.
    # :method: get_send_partial_data_state
    # :call-seq:
    # get_send_partial_data_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the statistics for the specified SCTP profiles.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The SCTP profiles to get the statistics from.

    ##
    # Gets the number of TX chunk buffers used by the specified SCTP profiles.
    # :method: get_transmit_chunk_buffer
    # :call-seq:
    # get_transmit_chunk_buffer(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.

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
    # Resets the statistics for the specified SCTP profiles.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.

    ##
    # Sets the maximum number of retries to establish the connection for the specified
    # SCTP profiles.
    # :method: set_connect_maximum_retry
    # :call-seq:
    # set_connect_maximum_retry(profile_names ,retries)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.
    # - retries ProfileULong[] The maximum number of retries.

    ##
    # Sets the valid duration of cookies for the specified SCTP profiles.
    # :method: set_cookie_expiration
    # :call-seq:
    # set_cookie_expiration(profile_names ,durations)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.
    # - durations ProfileULong[] The valid cookie durations.

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
    # Sets the state that if true, SCTP will emulate TCP closing.
    # :method: set_emulate_tcp_shutdown_state
    # :call-seq:
    # set_emulate_tcp_shutdown_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The states for the specified profiles.

    ##
    # Sets the intervals (in seconds) between heartbeats.
    # :method: set_heartbeat_interval
    # :call-seq:
    # set_heartbeat_interval(profile_names ,intervals)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.
    # - intervals ProfileULong[] The heartbeat intervals.

    ##
    # Sets the number of seconds without traffic before the connection is eligible for
    # deletion.
    # :method: set_idle_timeout
    # :call-seq:
    # set_idle_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.
    # - timeouts ProfileULong[] The idle timeouts.

    ##
    # Sets the number of inbound streams used by the specified SCTP profiles.
    # :method: set_inbound_stream
    # :call-seq:
    # set_inbound_stream(profile_names ,streams)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.
    # - streams ProfileULong[] The number of streams.

    ##
    # Sets the IP ToS values in packets sent to peer.
    # :method: set_ip_tos_to_peer
    # :call-seq:
    # set_ip_tos_to_peer(profile_names ,values)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.
    # - values ProfileULong[] The IP ToS values.

    ##
    # Sets the link QoS values in packets sent to peer.
    # :method: set_link_qos_to_peer
    # :call-seq:
    # set_link_qos_to_peer(profile_names ,values)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.
    # - values ProfileULong[] The link QoS values.

    ##
    # Sets the state that if true, SCPT will order the received messages before delivering
    # them to upper layer.
    # :method: set_order_receive_message_state
    # :call-seq:
    # set_order_receive_message_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The states for the specified profiles.

    ##
    # Sets the number of outbound streams used by the specified SCTP profiles.
    # :method: set_outbound_stream
    # :call-seq:
    # set_outbound_stream(profile_names ,streams)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.
    # - streams ProfileULong[] The number of streams.

    ##
    # Sets the proxy buffer level at which the receive window is closed (not advanced)
    # for the specified SCTP profiles.
    # :method: set_proxy_buffer_high
    # :call-seq:
    # set_proxy_buffer_high(profile_names ,levels)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.
    # - levels ProfileULong[] The high proxy buffer levels.

    ##
    # Sets the proxy buffer level at which the receive window is opened for the specified
    # SCTP profiles.
    # :method: set_proxy_buffer_low
    # :call-seq:
    # set_proxy_buffer_low(profile_names ,levels)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.
    # - levels ProfileULong[] The low proxy buffer levels.

    ##
    # Sets the number of RX chunk buffers used by the specified SCTP profiles.
    # :method: set_receive_chunk_buffer
    # :call-seq:
    # set_receive_chunk_buffer(profile_names ,buffers)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.
    # - buffers ProfileULong[] The number of buffers.

    ##
    # Sets the receive window sizes used by the specified SCTP profiles.
    # :method: set_receive_window_size
    # :call-seq:
    # set_receive_window_size(profile_names ,sizes)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.
    # - sizes ProfileULong[] The receive window sizes.

    ##
    # Sets the state that if true, SCTP will reset the connection when a timeout occurs.
    # :method: set_reset_on_timeout_state
    # :call-seq:
    # set_reset_on_timeout_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The states for the specified profiles.

    ##
    # Sets the internal secret strings used to HMAC cookies.
    # :method: set_secret
    # :call-seq:
    # set_secret(profile_names ,secrets)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.
    # - secrets ProfileString[] The secret string values.

    ##
    # Sets the send buffer sizes (in bytes) used by the specified SCTP profiles.
    # :method: set_send_buffer_size
    # :call-seq:
    # set_send_buffer_size(profile_names ,sizes)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.
    # - sizes ProfileULong[] The send buffer sizes.

    ##
    # Sets the maximum number of retries to send data for the specified SCTP profiles.
    # :method: set_send_maximum_retry
    # :call-seq:
    # set_send_maximum_retry(profile_names ,retries)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.
    # - retries ProfileULong[] The maximum number of retries.

    ##
    # Sets the state that indicates whether SCTP will accept and send partial application
    # data.
    # :method: set_send_partial_data_state
    # :call-seq:
    # set_send_partial_data_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The states for the specified profiles.

    ##
    # Sets the number of TX chunk buffers used by the specified SCTP profiles.
    # :method: set_transmit_chunk_buffer
    # :call-seq:
    # set_transmit_chunk_buffer(profile_names ,buffers)
    #
    # Parameters:
    # - profile_names String[] The names of the SCTP profiles.
    # - buffers ProfileULong[] The number of buffers.


  end
end
