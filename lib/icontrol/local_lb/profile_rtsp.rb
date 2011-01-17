module IControl::LocalLB
  ##
  # The ProfileRTSP interface enables you to manipulate a local load balancer's RTSP
  # profile.
  class ProfileRTSP < IControl::Base

    set_id_name "profile_names"

    class ProfileRTSPStatisticEntry < IControl::Base::Struct; end
    class ProfileRTSPStatistics < IControl::Base::Struct; end
    class ProfileRTSPStatisticEntrySequence < IControl::Base::Sequence ; end    ##
    # Creates this RTSP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def create
      super
    end

    ##
    # Deletes all RTSP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_profiles
      super
    end

    ##
    # Deletes this RTSP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_profile
      super
    end

    ##
    # Gets the statistics for all the RTSP profile.
    # @rspec_example
    # @return [ProfileRTSPStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the states to indicate how the RTSP filter handles the source attribute in the
    # transport header. If true, the system will use the source attribute in the transport
    # header to establish the target address of the RTP stream, and will update the value
    # of the source attribute to be the virtual address (VIP) before the response is forwarded
    # to the client. If false, the system leaves the source attribute alone.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def check_source_state
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
    # Gets the idle timeouts (seconds) for this RTSP profile. This is the number of seconds
    # that the UDP data connections are allowed to idle before they are closed.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def idle_timeout
      super
    end

    ##
    # Gets a list of all RTSP profile.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the maximum header sizes for this RTSP profile. This is the largest RTSP request
    # or response header that the RTSP filter (control channel) will allow before aborting
    # the connection.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def maximum_header_size
      super
    end

    ##
    # Gets the maximum queued data sizes for this RTSP profile. This is the maximum amount
    # of data that the RTSP filter (control channel) will buffer before assuming the connection
    # is dead and subsequently aborting the connection.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def maximum_queued_data_size
      super
    end

    ##
    # Gets the states to indicate whether to allow redirection of multicasts for this RTSP
    # profile. If enabled, the client is allowed to select the destination where data will
    # be streamed.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def multicast_redirect_state
      super
    end

    ##
    # Gets the names of the headers that are passed from the client side VIP to the server
    # side VIP in an RTSP proxy configuration. The name of the header should begin with
    # &amp;quot;X-".
    # @rspec_example
    # @return [ProfileString]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def proxy_header
      super
    end

    ##
    # Gets the proxy types that this RTSP filters are associated with.
    # @rspec_example
    # @return [ProfileRtspProxyType]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def proxy_type
      super
    end

    ##
    # Gets the RTCP port for this RTSP profile.
    # @rspec_example
    # @return [ProfilePortNumber]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def rtcp_port
      super
    end

    ##
    # Gets the RTP port for this RTSP profile.
    # @rspec_example
    # @return [ProfilePortNumber]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def rtp_port
      super
    end

    ##
    # Gets the states to indicate whether the RTSP filter will automatically handle persisting
    # Real Networks tunneled RTSP over HTTP, over the RTSP port. The default value is enabled.
    # Disabling this value allows the user to override the default behavior with a rule.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def rtsp_over_http_persistence_state
      super
    end

    ##
    # The RTSP specification allows a control connection to be resumed after it has become
    # disconnected. Gets the states to indicate whether the RTSP filter will persist the
    # control connection that is being resumed to the correct server.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def session_reconnect_state
      super
    end

    ##
    # Gets the statistics for this RTSP profile.
    # @rspec_example
    # @return [ProfileRTSPStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Gets the states to indicate whether to allow redirection of unicasts for this RTSP
    # profile. If enabled, the client is allowed to select the destination where data will
    # be streamed.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def unicast_redirect_state
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
    # Resets the statistics for this RTSP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the states to indicate how the RTSP filter handles the source attribute in the
    # transport header. If true, the system will use the source attribute in the transport
    # header to establish the target address of the RTP stream, and will update the value
    # of the source attribute to be the virtual address (VIP) before the response is forwarded
    # to the client. If false, the system leaves the source attribute alone.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states to set.
    def set_check_source_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
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
    # Sets the idle timeouts (seconds) for this RTSP profile. This is the number of seconds
    # that the UDP data connections are allowed to idle before they are closed.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :timeouts The idle timeouts.
    def set_idle_timeout(opts)
      opts = check_params(opts,[:timeouts])
      super(opts)
    end

    ##
    # Sets the maximum header sizes for this RTSP profile. This is the largest RTSP request
    # or response header that the RTSP filter (control channel) will allow before aborting
    # the connection.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :sizes The maximum header sizes.
    def set_maximum_header_size(opts)
      opts = check_params(opts,[:sizes])
      super(opts)
    end

    ##
    # Sets the maximum queued data sizes for this RTSP profile. This is the maximum amount
    # of data that the RTSP filter (control channel) will buffer before assuming the connection
    # is dead and subsequently aborting the connection.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :sizes The maximum queued data sizes.
    def set_maximum_queued_data_size(opts)
      opts = check_params(opts,[:sizes])
      super(opts)
    end

    ##
    # Sets the states to indicate whether to allow redirection of multicasts for this RTSP
    # profile. If enabled, the client is allowed to select the destination where data will
    # be streamed.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states to set.
    def set_multicast_redirect_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the names of the headers that are passed from the client side VIP to the server
    # side VIP in an RTSP proxy configuration. The name of the header should begin with
    # &amp;quot;X-".
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :headers The proxy header names for the specified profiles.
    def set_proxy_header(opts)
      opts = check_params(opts,[:headers])
      super(opts)
    end

    ##
    # Sets the proxy types that this RTSP filters are associated with.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileRtspProxyType] :types The proxy types to set.
    def set_proxy_type(opts)
      opts = check_params(opts,[:types])
      super(opts)
    end

    ##
    # Sets the RTCP port for this RTSP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfilePortNumber] :ports The RTCP ports for the specified RTSP profiles.
    def set_rtcp_port(opts)
      opts = check_params(opts,[:ports])
      super(opts)
    end

    ##
    # Sets the RTP port for this RTSP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfilePortNumber] :ports The RTP ports for the specified RTSP profiles.
    def set_rtp_port(opts)
      opts = check_params(opts,[:ports])
      super(opts)
    end

    ##
    # Sets the states to indicate whether the RTSP filter will automatically handle persisting
    # Real Networks tunneled RTSP over HTTP, over the RTSP port. The default value is enabled.
    # Disabling this value allows the user to override the default behavior with a rule.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states to set.
    def set_rtsp_over_http_persistence_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # The RTSP specification allows a control connection to be resumed after it has become
    # disconnected. This sets the states to indicate whether the RTSP filter will persist
    # the control connection that is being resumed to the correct server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states to set.
    def set_session_reconnect_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the states to indicate whether to allow redirection of unicasts for this RTSP
    # profile. If enabled, the client is allowed to select the destination where data will
    # be streamed.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states to set.
    def set_unicast_redirect_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # A struct that describes statistics for a particular RTSP profile.
    # @attr [String] profile_name The profile name.
    # @attr [IControl::Common::StatisticSequence] statistics The statistics for the profile.
    class ProfileRTSPStatisticEntry < IControl::Base::Struct
      icontrol_attribute :profile_name, String
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    # @attr [IControl::LocalLB::ProfileRTSP::ProfileRTSPStatisticEntrySequence] statistics The statistics for a sequence of profiles.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class ProfileRTSPStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::ProfileRTSP::ProfileRTSPStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of ProfileRTSP statistics.
    class ProfileRTSPStatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
