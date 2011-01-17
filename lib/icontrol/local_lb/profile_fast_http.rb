module IControl::LocalLB
  ##
  # The ProfileFastHttp interface enables you to manipulate a local load balancer's Fast
  # HTTP profile.
  class ProfileFastHttp < IControl::Base

    set_id_name "profile_names"

    class ProfileFastHttpStatisticEntry < IControl::Base::Struct; end
    class ProfileFastHttpStatistics < IControl::Base::Struct; end
    class ProfileFastHttpStatisticEntrySequence < IControl::Base::Sequence ; end    ##
    # Creates this Fast HTTP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def create
      super
    end

    ##
    # Deletes all Fast HTTP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_profiles
      super
    end

    ##
    # Deletes this Fast HTTP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_profile
      super
    end

    ##
    # Gets the statistics for all the Fast HTTP profile.
    # @rspec_example
    # @return [ProfileFastHttpStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the idle timeout override when waiting for the client to close. This occurs
    # after a client FIN is received or after a FIN is sent.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def client_close_timeout
      super
    end

    ##
    # Gets the idle timeout override for unspliced serverside flows in the reuse pool.
    # 0 is disabled, i.e. use the default idle timeout.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def connection_pool_idle_timeout
      super
    end

    ##
    # Gets the maximum number of times a serverside flow will be reused. 0 for unlimited.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def connection_pool_maximum_reuse
      super
    end

    ##
    # Gets the maximum number of connections to any given LB pool. 0 for unlimited.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def connection_pool_maximum_size
      super
    end

    ##
    # Gets the minimum number of connections to any given LB pool. 0 is an acceptable value.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def connection_pool_minimum_size
      super
    end

    ##
    # Gets the connection ramp-up increments for this Fast HTTP profile. Must be greater
    # than 0.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def connection_pool_ramp_increment
      super
    end

    ##
    # Gets the state that specifies whether the connpool should be replenished to its prior
    # number of connections when a connection is closed by the server. If this is disabled,
    # then we will only replenish a closed server side connection residing in the connpool
    # if there are less than connpool_min_size connections in the pool.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def connection_pool_replenish_state
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
    # Gets the state that if true, rewrite server's HTTP version to 1.0 in status line
    # in order to dissuade the client from pipelining or chunking.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def force_http10_response_state
      super
    end

    ##
    # Gets the strings to be inserted as headers for this HTTP profile.
    # @rspec_example
    # @return [ProfileString]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def header_insert
      super
    end

    ##
    # Gets the state that if true, work around problems with certain brands of benchmarking
    # software that cannot handle FIN-PUSH on HTTP/1.1 responses.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def http11_close_workarounds_state
      super
    end

    ##
    # Gets the idle timeout for this Fast HTTP profile. The number of seconds without traffic
    # before a connection is eligible for deletion.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def idle_timeout
      super
    end

    ##
    # Gets the mode to indicate whether to insert X-Forwarded-For headers for this profile.
    # @rspec_example
    # @return [ProfileProfileMode]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def insert_xforwarded_for_header_mode
      super
    end

    ##
    # Gets the state that if false, we will not parse the HTTP requests. This is useful
    # for providing SYN-proxy protection for L4 connections through a SNAT where the client
    # sends data to the server before the server responds.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def layer7_state
      super
    end

    ##
    # Gets a list of all Fast HTTP profile.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the maximum amount of data that will be buffered in order to make a content-switching
    # decision.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def maximum_header_size
      super
    end

    ##
    # Gets the maximum number of requests on a clientside flow before the flow is shutdown.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def maximum_requests
      super
    end

    ##
    # Gets the MSS override values for this profile. If non-zero and less than the default
    # value, this value overrides the maximum segment size for serverside flows.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def mss_override
      super
    end

    ##
    # Gets the reset on timeout states for this Fast HTTP profile. If true and a TCP connection
    # exceeds its idle timeout, send a reset in addition to deleting the connection.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_on_timeout_state
      super
    end

    ##
    # Gets the idle timeout override when waiting for the server to close. This occurs
    # if the server flow is not suitable for reuse or after a FIN is received on an unspliced
    # server connection.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def server_close_timeout
      super
    end

    ##
    # Gets the statistics for this Fast HTTP profile.
    # @rspec_example
    # @return [ProfileFastHttpStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Gets the mode to indicate whether to do unclean shutdown for client connections.
    # @rspec_example
    # @return [ProfileUncleanShutdownMode]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def unclean_shutdown_mode
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
    # Resets the statistics for this Fast HTTP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the idle timeout override when waiting for the client to close. This occurs
    # after a client FIN is received or after a FIN is sent.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :timeouts The client close idle timeouts for the specified Fast HTTP profiles.
    def set_client_close_timeout(opts)
      opts = check_params(opts,[:timeouts])
      super(opts)
    end

    ##
    # Sets the idle timeout override for unspliced serverside flows in the reuse pool.
    # 0 is disabled, i.e. use the default idle timeout.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :timeouts The idle timeout override for unspliced serverside flows in the reuse pool.
    def set_connection_pool_idle_timeout(opts)
      opts = check_params(opts,[:timeouts])
      super(opts)
    end

    ##
    # Sets the maximum number of times a serverside flow will be reused. 0 for unlimited.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :reuses The maximum number of times a serverside flow will be reused.
    def set_connection_pool_maximum_reuse(opts)
      opts = check_params(opts,[:reuses])
      super(opts)
    end

    ##
    # Sets the maximum number of connections to any given LB pool. 0 for unlimited.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :sizes The maximum number of connections to any given LB pool.
    def set_connection_pool_maximum_size(opts)
      opts = check_params(opts,[:sizes])
      super(opts)
    end

    ##
    # Sets the minimum number of connections to any given LB pool. 0 is an acceptable value.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :sizes The minimum number of connections to any given LB pool.
    def set_connection_pool_minimum_size(opts)
      opts = check_params(opts,[:sizes])
      super(opts)
    end

    ##
    # Sets the connection ramp-up increments for this Fast HTTP profile. Must be greater
    # than 0.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :increments The connection ramp-up increments for the specified Fast HTTP profiles.
    def set_connection_pool_ramp_increment(opts)
      opts = check_params(opts,[:increments])
      super(opts)
    end

    ##
    # Sets the state that specifies whether the connpool should be replenished to its prior
    # number of connections when a connection is closed by the server. If this is disabled,
    # then we will only replenish a closed server side connection residing in the connpool
    # if there are less than connpool_min_size connections in the pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states for the specified Fast HTTP profiles.
    def set_connection_pool_replenish_state(opts)
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
    # Sets the state that if true, rewrite server's HTTP version to 1.0 in status line
    # in order to dissuade the client from pipelining or chunking.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states for the specified Fast HTTP profiles.
    def set_force_http10_response_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Insert the given string as a header. If the header already exists, it is not replaced.
    # Unlike HTTP, this string does not support rule command expansion.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :headers The headers to be inserted for the specified Fast HTTP profiles.
    def set_header_insert(opts)
      opts = check_params(opts,[:headers])
      super(opts)
    end

    ##
    # Sets the state that if true, work around problems with certain brands of benchmarking
    # software that cannot handle FIN-PUSH on HTTP/1.1 responses.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states for the specified Fast HTTP profiles.
    def set_http11_close_workarounds_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the idle timeout for this Fast HTTP profile. The number of seconds without traffic
    # before a connection is eligible for deletion.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :timeouts The idle timeouts for the specified Fast HTTP profiles.
    def set_idle_timeout(opts)
      opts = check_params(opts,[:timeouts])
      super(opts)
    end

    ##
    # Sets the mode to indicate whether to insert X-Forwarded-For headers for this profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileProfileMode] :modes The insert X-Forwarded-For header mode for the specified profiles.
    def set_insert_xforwarded_for_header_mode(opts)
      opts = check_params(opts,[:modes])
      super(opts)
    end

    ##
    # Sets the state that if false, we will not parse the HTTP requests. This is useful
    # for providing SYN-proxy protection for L4 connections through a SNAT where the client
    # sends data to the server before the server responds.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states for the specified Fast HTTP profiles.
    def set_layer7_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the maximum amount of data that will be buffered in order to make a content-switching
    # decision.
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
    # Sets the maximum number of requests on a clientside flow before the flow is shutdown.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :maximum_requests The maximum number of Fast HTTP requests allowed in a connection.
    def set_maximum_requests(opts)
      opts = check_params(opts,[:maximum_requests])
      super(opts)
    end

    ##
    # Sets the MSS override values for this profile. If non-zero and less than the default
    # value, this value overrides the maximum segment size for serverside flows.
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
    # Sets the reset on timeout states for this Fast HTTP profile. If true and a TCP connection
    # exceeds its idle timeout, send a reset in addition to deleting the connection.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The reset on timeout states for the specified Fast HTTP profiles.
    def set_reset_on_timeout_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the idle timeout override when waiting for the server to close. This occurs
    # if the server flow is not suitable for reuse or after a FIN is received on an unspliced
    # server connection.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :timeouts The server close idle timeouts for the specified Fast HTTP profiles.
    def set_server_close_timeout(opts)
      opts = check_params(opts,[:timeouts])
      super(opts)
    end

    ##
    # Sets the mode to indicate whether to do unclean shutdown for client connections.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileUncleanShutdownMode] :modes The unclean shutdown mode for the specified profiles.
    def set_unclean_shutdown_mode(opts)
      opts = check_params(opts,[:modes])
      super(opts)
    end

    ##
    # A struct that describes statistics for a particular Fast HTTP profile.
    # @attr [String] profile_name The profile name.
    # @attr [IControl::Common::StatisticSequence] statistics The statistics for the profile.
    class ProfileFastHttpStatisticEntry < IControl::Base::Struct
      icontrol_attribute :profile_name, String
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    # @attr [IControl::LocalLB::ProfileFastHttp::ProfileFastHttpStatisticEntrySequence] statistics The statistics for a sequence of profiles.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class ProfileFastHttpStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::ProfileFastHttp::ProfileFastHttpStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of ProfileFastHttp statistics.
    class ProfileFastHttpStatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
