module IControl::LocalLB
  ##
  # The ProfileRTSP interface enables you to manipulate a local load balancer's RTSP
  # profile.
  class ProfileRTSP < IControl::Base
    class ProfileRTSPStatisticEntry < IControl::Base::Struct; end
    class ProfileRTSPStatistics < IControl::Base::Struct; end    ## A sequence of ProfileRTSP statistics.
    class ProfileRTSPStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a particular RTSP profile.
    class ProfileRTSPStatisticEntry < IControl::Base::Struct
      # The profile name.
      icontrol_attribute :profile_name, String
      # The statistics for the profile.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    class ProfileRTSPStatistics < IControl::Base::Struct
      # The statistics for a sequence of profiles.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileRTSP::ProfileRTSPStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified RTSP profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] The RTSP profiles to create.

    ##
    # Deletes all RTSP profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified RTSP profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles to delete.

    ##
    # Gets the statistics for all the RTSP profiles.
    # :method: get_all_statistics

    ##
    # Gets the states to indicate how the RTSP filter handles the source attribute in the
    # transport header. If true, the system will use the source attribute in the transport
    # header to establish the target address of the RTP stream, and will update the value
    # of the source attribute to be the virtual address (VIP) before the response is forwarded
    # to the client. If false, the system leaves the source attribute alone.
    # :method: get_check_source_state
    # :call-seq:
    # get_check_source_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.

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
    # Gets the idle timeouts (seconds) for the specified RTSP profiles. This is the number
    # of seconds that the UDP data connections are allowed to idle before they are closed.
    # :method: get_idle_timeout
    # :call-seq:
    # get_idle_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.

    ##
    # Gets a list of all RTSP profiles.
    # :method: get_list

    ##
    # Gets the maximum header sizes for the specified RTSP profiles. This is the largest
    # RTSP request or response header that the RTSP filter (control channel) will allow
    # before aborting the connection.
    # :method: get_maximum_header_size
    # :call-seq:
    # get_maximum_header_size(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.

    ##
    # Gets the maximum queued data sizes for the specified RTSP profiles. This is the maximum
    # amount of data that the RTSP filter (control channel) will buffer before assuming
    # the connection is dead and subsequently aborting the connection.
    # :method: get_maximum_queued_data_size
    # :call-seq:
    # get_maximum_queued_data_size(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.

    ##
    # Gets the states to indicate whether to allow redirection of multicasts for the specified
    # RTSP profiles. If enabled, the client is allowed to select the destination where
    # data will be streamed.
    # :method: get_multicast_redirect_state
    # :call-seq:
    # get_multicast_redirect_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.

    ##
    # Gets the names of the headers that are passed from the client side VIP to the server
    # side VIP in an RTSP proxy configuration. The name of the header should begin with
    # &amp;quot;X-".
    # :method: get_proxy_header
    # :call-seq:
    # get_proxy_header(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the stream profiles.

    ##
    # Gets the proxy types that the specified RTSP filters are associated with.
    # :method: get_proxy_type
    # :call-seq:
    # get_proxy_type(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.

    ##
    # Gets the RTCP port for the specified RTSP profiles.
    # :method: get_rtcp_port
    # :call-seq:
    # get_rtcp_port(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.

    ##
    # Gets the RTP port for the specified RTSP profiles.
    # :method: get_rtp_port
    # :call-seq:
    # get_rtp_port(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.

    ##
    # Gets the states to indicate whether the RTSP filter will automatically handle persisting
    # Real Networks tunneled RTSP over HTTP, over the RTSP port. The default value is enabled.
    # Disabling this value allows the user to override the default behavior with a rule.
    # :method: get_rtsp_over_http_persistence_state
    # :call-seq:
    # get_rtsp_over_http_persistence_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.

    ##
    # The RTSP specification allows a control connection to be resumed after it has become
    # disconnected. Gets the states to indicate whether the RTSP filter will persist the
    # control connection that is being resumed to the correct server.
    # :method: get_session_reconnect_state
    # :call-seq:
    # get_session_reconnect_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.

    ##
    # Gets the statistics for the specified RTSP profiles.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The RTSP profiles to get the statistics from.

    ##
    # Gets the states to indicate whether to allow redirection of unicasts for the specified
    # RTSP profiles. If enabled, the client is allowed to select the destination where
    # data will be streamed.
    # :method: get_unicast_redirect_state
    # :call-seq:
    # get_unicast_redirect_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.

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
    # Resets the statistics for the specified RTSP profiles.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.

    ##
    # Sets the states to indicate how the RTSP filter handles the source attribute in the
    # transport header. If true, the system will use the source attribute in the transport
    # header to establish the target address of the RTP stream, and will update the value
    # of the source attribute to be the virtual address (VIP) before the response is forwarded
    # to the client. If false, the system leaves the source attribute alone.
    # :method: set_check_source_state
    # :call-seq:
    # set_check_source_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.
    # - states ProfileEnabledState[] The states to set.

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
    # Sets the idle timeouts (seconds) for the specified RTSP profiles. This is the number
    # of seconds that the UDP data connections are allowed to idle before they are closed.
    # :method: set_idle_timeout
    # :call-seq:
    # set_idle_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.
    # - timeouts ProfileULong[] The idle timeouts.

    ##
    # Sets the maximum header sizes for the specified RTSP profiles. This is the largest
    # RTSP request or response header that the RTSP filter (control channel) will allow
    # before aborting the connection.
    # :method: set_maximum_header_size
    # :call-seq:
    # set_maximum_header_size(profile_names ,sizes)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.
    # - sizes ProfileULong[] The maximum header sizes.

    ##
    # Sets the maximum queued data sizes for the specified RTSP profiles. This is the maximum
    # amount of data that the RTSP filter (control channel) will buffer before assuming
    # the connection is dead and subsequently aborting the connection.
    # :method: set_maximum_queued_data_size
    # :call-seq:
    # set_maximum_queued_data_size(profile_names ,sizes)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.
    # - sizes ProfileULong[] The maximum queued data sizes.

    ##
    # Sets the states to indicate whether to allow redirection of multicasts for the specified
    # RTSP profiles. If enabled, the client is allowed to select the destination where
    # data will be streamed.
    # :method: set_multicast_redirect_state
    # :call-seq:
    # set_multicast_redirect_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.
    # - states ProfileEnabledState[] The states to set.

    ##
    # Sets the names of the headers that are passed from the client side VIP to the server
    # side VIP in an RTSP proxy configuration. The name of the header should begin with
    # &amp;quot;X-".
    # :method: set_proxy_header
    # :call-seq:
    # set_proxy_header(profile_names ,headers)
    #
    # Parameters:
    # - profile_names String[] The names of the stream profiles.
    # - headers ProfileString[] The proxy header names for the specified profiles.

    ##
    # Sets the proxy types that the specified RTSP filters are associated with.
    # :method: set_proxy_type
    # :call-seq:
    # set_proxy_type(profile_names ,types)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.
    # - types ProfileRtspProxyType[] The proxy types to set.

    ##
    # Sets the RTCP port for the specified RTSP profiles.
    # :method: set_rtcp_port
    # :call-seq:
    # set_rtcp_port(profile_names ,ports)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.
    # - ports ProfilePortNumber[] The RTCP ports for the specified RTSP profiles.

    ##
    # Sets the RTP port for the specified RTSP profiles.
    # :method: set_rtp_port
    # :call-seq:
    # set_rtp_port(profile_names ,ports)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.
    # - ports ProfilePortNumber[] The RTP ports for the specified RTSP profiles.

    ##
    # Sets the states to indicate whether the RTSP filter will automatically handle persisting
    # Real Networks tunneled RTSP over HTTP, over the RTSP port. The default value is enabled.
    # Disabling this value allows the user to override the default behavior with a rule.
    # :method: set_rtsp_over_http_persistence_state
    # :call-seq:
    # set_rtsp_over_http_persistence_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.
    # - states ProfileEnabledState[] The states to set.

    ##
    # The RTSP specification allows a control connection to be resumed after it has become
    # disconnected. This sets the states to indicate whether the RTSP filter will persist
    # the control connection that is being resumed to the correct server.
    # :method: set_session_reconnect_state
    # :call-seq:
    # set_session_reconnect_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.
    # - states ProfileEnabledState[] The states to set.

    ##
    # Sets the states to indicate whether to allow redirection of unicasts for the specified
    # RTSP profiles. If enabled, the client is allowed to select the destination where
    # data will be streamed.
    # :method: set_unicast_redirect_state
    # :call-seq:
    # set_unicast_redirect_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the RTSP profiles.
    # - states ProfileEnabledState[] The states to set.


  end
end
