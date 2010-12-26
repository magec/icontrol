module IControl::LocalLB
  ##
  # The ProfileRTSP interface enables you to manipulate a local load balancer's RTSP profile.
  class ProfileRTSP < IControl::Base

    set_id_name "profile_names"

    class ProfileRTSPStatisticEntry < IControl::Base::Struct; end
    class ProfileRTSPStatistics < IControl::Base::Struct; end    ##
    # Creates this RTSP profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def create
      super
    end

    ##
    # Deletes all RTSP profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_profiles
      super
    end

    ##
    # Deletes this RTSP profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_profile
      super
    end

    ##
    # Gets the statistics for all the RTSP profile.
    # @return [ProfileRTSPStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the states to indicate how the RTSP filter handles the source attribute in the transport header. If true, the system will use the source attribute in the transport header to establish the target address of the RTP stream, and will update the value of the source attribute to be the virtual address (VIP) before the response is forwarded to the client. If false, the system leaves the source attribute alone.
    # @return [ProfileEnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def check_source_state
      super
    end

    ##
    # Gets the names of the default profile from which this profile will derive default values for its attributes.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def default_profile
      super
    end

    ##
    # Gets the idle timeouts (seconds) for this RTSP profile. This is the number of seconds that the UDP data connections are allowed to idle before they are closed.
    # @return [ProfileULong]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def idle_timeout
      super
    end

    ##
    # Gets a list of all RTSP profile.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the maximum header sizes for this RTSP profile. This is the largest RTSP request or response header that the RTSP filter (control channel) will allow before aborting the connection.
    # @return [ProfileULong]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def maximum_header_size
      super
    end

    ##
    # Gets the maximum queued data sizes for this RTSP profile. This is the maximum amount of data that the RTSP filter (control channel) will buffer before assuming the connection is dead and subsequently aborting the connection.
    # @return [ProfileULong]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def maximum_queued_data_size
      super
    end

    ##
    # Gets the states to indicate whether to allow redirection of multicasts for this RTSP profile. If enabled, the client is allowed to select the destination where data will be streamed.
    # @return [ProfileEnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def multicast_redirect_state
      super
    end

    ##
    # Gets the names of the headers that are passed from the client side VIP to the server side VIP in an RTSP proxy configuration. The name of the header should begin with &amp;quot;X-".
    # @return [ProfileString]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def proxy_header
      super
    end

    ##
    # Gets the proxy types that this RTSP filters are associated with.
    # @return [ProfileRtspProxyType]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def proxy_type
      super
    end

    ##
    # Gets the RTCP port for this RTSP profile.
    # @return [ProfilePortNumber]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def rtcp_port
      super
    end

    ##
    # Gets the RTP port for this RTSP profile.
    # @return [ProfilePortNumber]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def rtp_port
      super
    end

    ##
    # Gets the states to indicate whether the RTSP filter will automatically handle persisting Real Networks tunneled RTSP over HTTP, over the RTSP port. The default value is enabled. Disabling this value allows the user to override the default behavior with a rule.
    # @return [ProfileEnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def rtsp_over_http_persistence_state
      super
    end

    ##
    # The RTSP specification allows a control connection to be resumed after it has become disconnected. Gets the states to indicate whether the RTSP filter will persist the control connection that is being resumed to the correct server.
    # @return [ProfileEnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def session_reconnect_state
      super
    end

    ##
    # Gets the statistics for this RTSP profile.
    # @return [ProfileRTSPStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Gets the states to indicate whether to allow redirection of unicasts for this RTSP profile. If enabled, the client is allowed to select the destination where data will be streamed.
    # @return [ProfileEnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def unicast_redirect_state
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Determines whether this profile are base/pre-configured profile, or user-defined profile.
    # @return [boolean]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def is_base_profile
      super
    end

    ##
    # Resets the statistics for this RTSP profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the states to indicate how the RTSP filter handles the source attribute in the transport header. If true, the system will use the source attribute in the transport header to establish the target address of the RTP stream, and will update the value of the source attribute to be the virtual address (VIP) before the response is forwarded to the client. If false, the system leaves the source attribute alone.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states to set.
    def set_check_source_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the names of the default profile from which this profile will derive default values for its attributes.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :defaults The default profiles from which the specified profiles will get default values.
    def set_default_profile(opts)
      check_params(opts,[:defaults])
      super
    end

    ##
    # Sets the idle timeouts (seconds) for this RTSP profile. This is the number of seconds that the UDP data connections are allowed to idle before they are closed.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :timeouts The idle timeouts.
    def set_idle_timeout(opts)
      check_params(opts,[:timeouts])
      super
    end

    ##
    # Sets the maximum header sizes for this RTSP profile. This is the largest RTSP request or response header that the RTSP filter (control channel) will allow before aborting the connection.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :sizes The maximum header sizes.
    def set_maximum_header_size(opts)
      check_params(opts,[:sizes])
      super
    end

    ##
    # Sets the maximum queued data sizes for this RTSP profile. This is the maximum amount of data that the RTSP filter (control channel) will buffer before assuming the connection is dead and subsequently aborting the connection.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :sizes The maximum queued data sizes.
    def set_maximum_queued_data_size(opts)
      check_params(opts,[:sizes])
      super
    end

    ##
    # Sets the states to indicate whether to allow redirection of multicasts for this RTSP profile. If enabled, the client is allowed to select the destination where data will be streamed.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states to set.
    def set_multicast_redirect_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the names of the headers that are passed from the client side VIP to the server side VIP in an RTSP proxy configuration. The name of the header should begin with &amp;quot;X-".
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :headers The proxy header names for the specified profiles.
    def set_proxy_header(opts)
      check_params(opts,[:headers])
      super
    end

    ##
    # Sets the proxy types that this RTSP filters are associated with.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileRtspProxyType] :types The proxy types to set.
    def set_proxy_type(opts)
      check_params(opts,[:types])
      super
    end

    ##
    # Sets the RTCP port for this RTSP profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfilePortNumber] :ports The RTCP ports for the specified RTSP profiles.
    def set_rtcp_port(opts)
      check_params(opts,[:ports])
      super
    end

    ##
    # Sets the RTP port for this RTSP profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfilePortNumber] :ports The RTP ports for the specified RTSP profiles.
    def set_rtp_port(opts)
      check_params(opts,[:ports])
      super
    end

    ##
    # Sets the states to indicate whether the RTSP filter will automatically handle persisting Real Networks tunneled RTSP over HTTP, over the RTSP port. The default value is enabled. Disabling this value allows the user to override the default behavior with a rule.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states to set.
    def set_rtsp_over_http_persistence_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # The RTSP specification allows a control connection to be resumed after it has become disconnected. This sets the states to indicate whether the RTSP filter will persist the control connection that is being resumed to the correct server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states to set.
    def set_session_reconnect_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the states to indicate whether to allow redirection of unicasts for this RTSP profile. If enabled, the client is allowed to select the destination where data will be streamed.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states to set.
    def set_unicast_redirect_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # A struct that describes statistics for a particular RTSP profile.
    # @attr [String] profile_name The profile name.
    # @attr [IControl::Common::Statistic] statistics The statistics for the profile.
    class ProfileRTSPStatisticEntry < IControl::Base::Struct
      icontrol_attribute :profile_name, String
      icontrol_attribute :statistics, IControl::Common::Statistic
    end

    ##
    # A struct that describes profile statistics and timestamp.
    # @attr [IControl::LocalLB::ProfileRTSP::ProfileRTSPStatisticEntry] statistics The statistics for a sequence of profiles.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class ProfileRTSPStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::ProfileRTSP::ProfileRTSPStatisticEntry
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of ProfileRTSP statistics.
    class ProfileRTSPStatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
