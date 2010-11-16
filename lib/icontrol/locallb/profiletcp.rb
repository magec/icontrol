module IControl::LocalLB
  ##
  # The ProfileTCP interface enables you to manipulate a local load balancer's TCP profile.
  class ProfileTCP < IControl::Base
    class ProfileTCPStatisticEntry < IControl::Base::Struct; end
    class ProfileTCPStatistics < IControl::Base::Struct; end    ## A sequence of ProfileTCP statistics.
    class ProfileTCPStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a particular profile.
    class ProfileTCPStatisticEntry < IControl::Base::Struct
      # The profile name.
      icontrol_attribute :profile_name, String
      # The statistics for the profile.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    class ProfileTCPStatistics < IControl::Base::Struct
      # The statistics for a sequence of profiles.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileTCP::ProfileTCPStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified TCP profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] The TCP profiles to create.

    ##
    # Deletes all TCP profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified TCP profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles to delete.

    ##
    # Gets the states that if true, data-bearing in-order TCP segments will elicit immediate
    # ACKs from us if they have the PUSH flag set, regardless of the setting of the delayed-ack
    # profile option.
    # :method: get_ack_on_push_state
    # :call-seq:
    # get_ack_on_push_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the statistics for all the profiles.
    # :method: get_all_statistics

    ##
    # Gets the states that if true, count the number of bytes acked rather than the number
    # of returning ACKs from the peer when in the linear congestion-window expansion phase
    # of a TCP connection. This algorithm and its benefits are described in RFC3465 (Appropriate
    # Byte Counting).
    # :method: get_appropriate_byte_counting_state
    # :call-seq:
    # get_appropriate_byte_counting_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the states that if true, attempt to calculate the optimal bandwidth to use to
    # the peer based on throughput and round-trip time, and don't exceed it.
    # :method: get_bandwidth_delay_state
    # :call-seq:
    # get_bandwidth_delay_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the time (in seconds) to remain in LAST-ACK state before giving up. Zero is
    # forever (or until max retransmission of FIN).
    # :method: get_close_wait_timeout
    # :call-seq:
    # get_close_wait_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the states that if true, use the route-metrics cache in order to jump-start
    # congestion-control parameters. When this parameter is disabled, the system slow-starts
    # to the peer every time (assuming, of course, that slow-start is enabled), resulting
    # in a much more conservative ramp-up in bandwidth utilization. This may be required
    # in cases where an intermediate device is NATing multiple distinct clients to the
    # same IP address, yet each of these hosts has distinctly different bandwidth and jitter
    # parameters. It may also be required when the link is heavily oversubscribed and dropping
    # packets due to overdriving.
    # :method: get_cmetrics_cache_state
    # :call-seq:
    # get_cmetrics_cache_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the TCP congestion control modes for the specified TCP profiles.
    # :method: get_congestion_control_mode
    # :call-seq:
    # get_congestion_control_mode(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

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
    # Gets the states that if true, defer allocation of connection chain context until
    # payload from the client has been seen.
    # :method: get_deferred_accept_state
    # :call-seq:
    # get_deferred_accept_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the states that if true, enabled delayed ACK to allow coalescing of multiple
    # ACK responses.
    # :method: get_delayed_ack_state
    # :call-seq:
    # get_delayed_ack_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the states that if true, enable support for RFC2883 Duplicate Selective Acknowledgement.
    # :method: get_duplicate_selective_ack_state
    # :call-seq:
    # get_duplicate_selective_ack_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the states that if true, enable support for RFC3168 Extended Congestion Notification
    # (ECN).
    # :method: get_ecn_state
    # :call-seq:
    # get_ecn_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the time (in seconds) to remain in FIN-WAIT or CLOSING state before giving up.
    # Zero is forever (or until max retransmission of FIN).
    # :method: get_fin_wait_timeout
    # :call-seq:
    # get_fin_wait_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the states that if true, enable support for RFC1323 timestamps and window scaling
    # (high performance TCP extensions).
    # :method: get_high_performance_tcp_extension_state
    # :call-seq:
    # get_high_performance_tcp_extension_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the idle timeout for the specified TCP profiles. The number of seconds without
    # traffic before a connection is eligible for deletion.
    # :method: get_idle_timeout
    # :call-seq:
    # get_idle_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the client-side IP TOS values for the specified TCP profiles.
    # :method: get_ip_tos_to_client
    # :call-seq:
    # get_ip_tos_to_client(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the keep-alive intervals (in seconds) for the specified profiles.
    # :method: get_keep_alive_interval
    # :call-seq:
    # get_keep_alive_interval(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the states that if true, enable support for RFC3042 Limited Transmit Recovery.
    # :method: get_limited_transmit_recovery_state
    # :call-seq:
    # get_limited_transmit_recovery_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the client-side link QoS values for the specified TCP profiles.
    # :method: get_link_qos_to_client
    # :call-seq:
    # get_link_qos_to_client(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets a list of all TCP profiles.
    # :method: get_list

    ##
    # Gets the maximum number of retransmission of data segments for the specified profiles.
    # :method: get_maximum_data_retransmission
    # :call-seq:
    # get_maximum_data_retransmission(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the maximum number of retransmission of SYN segments for the specified profiles.
    # :method: get_maximum_syn_retransmission
    # :call-seq:
    # get_maximum_syn_retransmission(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the plaintext passphrase which may be between 1 and 80 characters in length,
    # and is used in a shared-secret scheme to implement the spoof-prevention parts of
    # RFC2385.
    # :method: get_md5_signature_passphrase
    # :call-seq:
    # get_md5_signature_passphrase(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the stream profiles.

    ##
    # Gets the states that if true, use RFC2385 TCP-MD5 signatures to protect tcp traffic
    # against intermediate tampering.
    # :method: get_md5_signature_state
    # :call-seq:
    # get_md5_signature_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets values indicating the likelihood of performing congestion control when multiple
    # packets in a row are lost even if the loss threshold has not been exceeded. Valid
    # values from 0 to 32. Higher values decrease the likelihood of performing congestion
    # control.
    # :method: get_packet_loss_ignore_burst
    # :call-seq:
    # get_packet_loss_ignore_burst(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the threshold of packets lost per million at which the system should perform
    # congestion control. Measured in packets per million. Valid values are from 0 to 1000000.
    # :method: get_packet_loss_ignore_rate
    # :call-seq:
    # get_packet_loss_ignore_rate(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the proxy buffer level at which the receive window is closed, i.e. not advanced.
    # :method: get_proxy_buffer_high
    # :call-seq:
    # get_proxy_buffer_high(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the proxy buffer level at which the receive window is opened.
    # :method: get_proxy_buffer_low
    # :call-seq:
    # get_proxy_buffer_low(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the states that if true, enable proxying of maximum segment size.
    # :method: get_proxy_mss_state
    # :call-seq:
    # get_proxy_mss_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the states that if true, enable proxying of an option (e.g. time-stamps) to
    # the server only if it was negotiated with the client.
    # :method: get_proxy_option_state
    # :call-seq:
    # get_proxy_option_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the receive window sizes (in bytes) for the specified profiles.
    # :method: get_receive_window_size
    # :call-seq:
    # get_receive_window_size(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the reset on timeout states for the specified TCP profiles. If true and a TCP
    # connection exceeds its idle timeout, send a reset in addition to deleting the connection.
    # :method: get_reset_on_timeout_state
    # :call-seq:
    # get_reset_on_timeout_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the states that if true, enable support for RFC2018 Selective Acknowledgement.
    # :method: get_selective_ack_state
    # :call-seq:
    # get_selective_ack_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the send buffer sizes (in bytes) for the specified profiles.
    # :method: get_send_buffer_size
    # :call-seq:
    # get_send_buffer_size(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the states that if true, enable support for RFC3390 TCP slow-start. BIG-IP uses
    # RFC3390 TCP slow-start rather than traditional congestion avoidance mechanisms.
    # :method: get_slow_start_state
    # :call-seq:
    # get_slow_start_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the statistics for the specified profiles.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The profiles to get the statistics from.

    ##
    # Gets the states that if true, recycle the connection when SYN is received in TIME-WAIT
    # state.
    # :method: get_time_wait_recycle_state
    # :call-seq:
    # get_time_wait_recycle_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the time (in milliseconds) in TIME-WAIT state before entering CLOSED state.
    # :method: get_time_wait_timeout
    # :call-seq:
    # get_time_wait_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the states that if true, delay sending data that is less than MSS in size unless
    # all prior data has been ACKed. This leads to less in-flight small-data, and less
    # chance for drops, but can have poor effects for interactive protocols such as telnet
    # over high latency links.
    # :method: get_use_nagle_algorithm_state
    # :call-seq:
    # get_use_nagle_algorithm_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

    ##
    # Gets the states that if true, the system must not respond to the client's SYN with
    # a SYN-ACK until it receives a SYN-ACK from the server, indicating that the port is
    # open.
    # :method: get_verified_accept_state
    # :call-seq:
    # get_verified_accept_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.

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
    # Sets the states that if true, data-bearing in-order TCP segments will elicit immediate
    # ACKs from us if they have the PUSH flag set, regardless of the setting of the delayed-ack
    # profile option.
    # :method: set_ack_on_push_state
    # :call-seq:
    # set_ack_on_push_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - states ProfileEnabledState[] The states for the specified TCP profiles.

    ##
    # Sets the states that if true, count the number of bytes acked rather than the number
    # of returning ACKs from the peer when in the linear congestion-window expansion phase
    # of a TCP connection. This algorithm and its benefits are described in RFC3465 (Appropriate
    # Byte Counting).
    # :method: set_appropriate_byte_counting_state
    # :call-seq:
    # set_appropriate_byte_counting_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - states ProfileEnabledState[] The states for the specified TCP profiles.

    ##
    # Sets the states that if true, attempt to calculate the optimal bandwidth to use to
    # the peer based on throughput and round-trip time, and don't exceed it.
    # :method: set_bandwidth_delay_state
    # :call-seq:
    # set_bandwidth_delay_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - states ProfileEnabledState[] The states for the specified TCP profiles.

    ##
    # Sets the time (in seconds) to remain in LAST-ACK state before giving up. Zero is
    # forever (or until max retransmission of FIN).
    # :method: set_close_wait_timeout
    # :call-seq:
    # set_close_wait_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - timeouts ProfileULong[] The timeouts for the specified TCP profiles.

    ##
    # Sets the states that if true, use the route-metrics cache in order to jump-start
    # congestion-control parameters. When this parameter is disabled, the system slow-starts
    # to the peer every time (assuming, of course, that slow-start is enabled), resulting
    # in a much more conservative ramp-up in bandwidth utilization. This may be required
    # in cases where an intermediate device is NATing multiple distinct clients to the
    # same IP address, yet each of these hosts has distinctly different bandwidth and jitter
    # parameters. It may also be required when the link is heavily oversubscribed and dropping
    # packets due to overdriving.
    # :method: set_cmetrics_cache_state
    # :call-seq:
    # set_cmetrics_cache_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - states ProfileEnabledState[] The states for the specified TCP profiles.

    ##
    # Sets the TCP congestion control modes for the specified TCP profiles.
    # :method: set_congestion_control_mode
    # :call-seq:
    # set_congestion_control_mode(profile_names ,values)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - values ProfileTCPCongestionControlMode[] The TCP congestion control modes.

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
    # Sets the states that if true, defer allocation of connection chain context until
    # payload from the client has been seen.
    # :method: set_deferred_accept_state
    # :call-seq:
    # set_deferred_accept_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - states ProfileEnabledState[] The states for the specified TCP profiles.

    ##
    # Sets the states that if true, enabled delayed ACK to allow coalescing of multiple
    # ACK responses.
    # :method: set_delayed_ack_state
    # :call-seq:
    # set_delayed_ack_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - states ProfileEnabledState[] The states for the specified TCP profiles.

    ##
    # Sets the states that if true, enable support for RFC2883 Duplicate Selective Acknowledgement.
    # :method: set_duplicate_selective_ack_state
    # :call-seq:
    # set_duplicate_selective_ack_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - states ProfileEnabledState[] The states for the specified TCP profiles.

    ##
    # Sets the states that if true, enable support for RFC3168 Extended Congestion Notification
    # (ECN).
    # :method: set_ecn_state
    # :call-seq:
    # set_ecn_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - states ProfileEnabledState[] The states for the specified TCP profiles.

    ##
    # Sets the time (in seconds) to remain in FIN-WAIT or CLOSING state before giving up.
    # Zero is forever (or until max retransmission of FIN).
    # :method: set_fin_wait_timeout
    # :call-seq:
    # set_fin_wait_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - timeouts ProfileULong[] The timeouts for the specified TCP profiles.

    ##
    # Sets the states that if true, enable support for RFC1323 timestamps and window scaling
    # (high performance TCP extensions).
    # :method: set_high_performance_tcp_extension_state
    # :call-seq:
    # set_high_performance_tcp_extension_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - states ProfileEnabledState[] The states for the specified TCP profiles.

    ##
    # Sets the idle timeout for the specified TCP profiles. The number of seconds without
    # traffic before a connection is eligible for deletion.
    # :method: set_idle_timeout
    # :call-seq:
    # set_idle_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - timeouts ProfileULong[] The idle timeouts for the specified TCP profiles.

    ##
    # Sets the client-side IP TOS values for the specified TCP profiles.
    # :method: set_ip_tos_to_client
    # :call-seq:
    # set_ip_tos_to_client(profile_names ,values)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - values ProfileULong[] The client-side IP TOS values.

    ##
    # Sets the keep-alive intervals (in seconds) for the specified profiles.
    # :method: set_keep_alive_interval
    # :call-seq:
    # set_keep_alive_interval(profile_names ,intervals)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - intervals ProfileULong[] The keep-alive intervals for the specified TCP profiles.

    ##
    # Sets the states that if true, enable support for RFC3042 Limited Transmit Recovery.
    # :method: set_limited_transmit_recovery_state
    # :call-seq:
    # set_limited_transmit_recovery_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - states ProfileEnabledState[] The states for the specified TCP profiles.

    ##
    # Sets the client-side link QoS values for the specified TCP profiles.
    # :method: set_link_qos_to_client
    # :call-seq:
    # set_link_qos_to_client(profile_names ,values)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - values ProfileULong[] The client-side link QoS values.

    ##
    # Sets the maximum number of retransmission of data segments for the specified profiles.
    # :method: set_maximum_data_retransmission
    # :call-seq:
    # set_maximum_data_retransmission(profile_names ,retries)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - retries ProfileULong[] The maximum retransmission count of data segments for the specified TCP profiles.

    ##
    # Sets the maximum number of retransmission of SYN segments for the specified profiles.
    # :method: set_maximum_syn_retransmission
    # :call-seq:
    # set_maximum_syn_retransmission(profile_names ,retries)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - retries ProfileULong[] The maximum retransmission count of SYN segments for the specified TCP profiles.

    ##
    # Sets the plaintext passphrase which may be between 1 and 80 characters in length,
    # and is used in a shared-secret scheme to implement the spoof-prevention parts of
    # RFC2385.
    # :method: set_md5_signature_passphrase
    # :call-seq:
    # set_md5_signature_passphrase(profile_names ,passphrases)
    #
    # Parameters:
    # - profile_names String[] The names of the stream profiles.
    # - passphrases ProfileString[] The MD5 passphrases for the specified profiles.

    ##
    # Sets the states that if true, use RFC2385 TCP-MD5 signatures to protect tcp traffic
    # against intermediate tampering.
    # :method: set_md5_signature_state
    # :call-seq:
    # set_md5_signature_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - states ProfileEnabledState[] The states for the specified TCP profiles.

    ##
    # Sets values indicating the likelihood of performing congestion control when multiple
    # packets in a row are lost even if the loss threshold has not been exceeded. Valid
    # values from 0 to 32. Higher values decrease the likelihood of performing congestion
    # control.
    # :method: set_packet_loss_ignore_burst
    # :call-seq:
    # set_packet_loss_ignore_burst(profile_names ,values)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - values ProfileULong[] The packet loss ignore burst setting for the specified TCP profiles.

    ##
    # Sets the threshold of packets lost per million at which the system should perform
    # congestion control. Measured in packets per million. Valid values are from 0 to 1000000.
    # :method: set_packet_loss_ignore_rate
    # :call-seq:
    # set_packet_loss_ignore_rate(profile_names ,thresholds)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - thresholds ProfileULong[] The threshold for the specified TCP profiles.

    ##
    # Sets the proxy buffer level at which the receive window is closed, i.e. not advanced.
    # :method: set_proxy_buffer_high
    # :call-seq:
    # set_proxy_buffer_high(profile_names ,levels)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - levels ProfileULong[] The high proxy buffer level for the specified TCP profiles.

    ##
    # Sets the proxy buffer level at which the receive window is opened.
    # :method: set_proxy_buffer_low
    # :call-seq:
    # set_proxy_buffer_low(profile_names ,levels)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - levels ProfileULong[] The low proxy buffer level for the specified TCP profiles.

    ##
    # Sets the states that if true, enable proxying of maximum segment size.
    # :method: set_proxy_mss_state
    # :call-seq:
    # set_proxy_mss_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - states ProfileEnabledState[] The states for the specified TCP profiles.

    ##
    # Sets the states that if true, enable proxying of an option (e.g. time-stamps) to
    # the server only if it was negotiated with the client.
    # :method: set_proxy_option_state
    # :call-seq:
    # set_proxy_option_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - states ProfileEnabledState[] The states for the specified TCP profiles.

    ##
    # Sets the receive window sizes (in bytes) for the specified profiles.
    # :method: set_receive_window_size
    # :call-seq:
    # set_receive_window_size(profile_names ,sizes)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - sizes ProfileULong[] The receive window sizes for the specified TCP profiles.

    ##
    # Sets the reset on timeout states for the specified TCP profiles. If true and a TCP
    # connection exceeds its idle timeout, send a reset in addition to deleting the connection.
    # :method: set_reset_on_timeout_state
    # :call-seq:
    # set_reset_on_timeout_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - states ProfileEnabledState[] The key reset on timeout states for the specified TCP profiles.

    ##
    # Sets the states that if true, enable support for RFC2018 Selective Acknowledgement.
    # :method: set_selective_ack_state
    # :call-seq:
    # set_selective_ack_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - states ProfileEnabledState[] The states for the specified TCP profiles.

    ##
    # Sets the send buffer sizes (in bytes) for the specified profiles.
    # :method: set_send_buffer_size
    # :call-seq:
    # set_send_buffer_size(profile_names ,sizes)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - sizes ProfileULong[] The send buffer sizes for the specified TCP profiles.

    ##
    # Sets the states that if true, enable support for RFC3390 TCP slow-start. BIG-IP uses
    # RFC3390 TCP slow-start rather than traditional congestion avoidance mechanisms.
    # :method: set_slow_start_state
    # :call-seq:
    # set_slow_start_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - states ProfileEnabledState[] The states for the specified TCP profiles.

    ##
    # Sets the states that if true, recycle the connection when SYN is received in TIME-WAIT
    # state.
    # :method: set_time_wait_recycle_state
    # :call-seq:
    # set_time_wait_recycle_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - states ProfileEnabledState[] The states for the specified TCP profiles.

    ##
    # Sets the time (in milliseconds) in TIME-WAIT state before entering CLOSED state.
    # :method: set_time_wait_timeout
    # :call-seq:
    # set_time_wait_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - timeouts ProfileULong[] The timeouts for the specified TCP profiles.

    ##
    # Sets the states that if true, delay sending data that is less than MSS in size unless
    # all prior data has been ACKed. This leads to less in-flight small-data, and less
    # chance for drops, but can have poor effects for interactive protocols such as telnet
    # over high latency links.
    # :method: set_use_nagle_algorithm_state
    # :call-seq:
    # set_use_nagle_algorithm_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - states ProfileEnabledState[] The states for the specified TCP profiles.

    ##
    # Sets the states that if true, the system must not respond to the client's SYN with
    # a SYN-ACK until it receives a SYN-ACK from the server, indicating that the port is
    # open.
    # :method: set_verified_accept_state
    # :call-seq:
    # set_verified_accept_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the TCP profiles.
    # - states ProfileEnabledState[] The states for the specified TCP profiles.


  end
end
