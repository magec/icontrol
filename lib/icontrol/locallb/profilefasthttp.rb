module IControl::LocalLB
  ##
  # The ProfileFastHttp interface enables you to manipulate a local load balancer's Fast
  # HTTP profile.
  class ProfileFastHttp < IControl::Base
    class ProfileFastHttpStatisticEntry < IControl::Base::Struct; end
    class ProfileFastHttpStatistics < IControl::Base::Struct; end    ## A sequence of ProfileFastHttp statistics.
    class ProfileFastHttpStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a particular Fast HTTP profile.
    class ProfileFastHttpStatisticEntry < IControl::Base::Struct
      # The profile name.
      icontrol_attribute :profile_name, String
      # The statistics for the profile.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    class ProfileFastHttpStatistics < IControl::Base::Struct
      # The statistics for a sequence of profiles.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileFastHttp::ProfileFastHttpStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified Fast HTTP profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] The Fast HTTP profiles to create.

    ##
    # Deletes all Fast HTTP profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified Fast HTTP profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles to delete.

    ##
    # Gets the statistics for all the Fast HTTP profiles.
    # :method: get_all_statistics

    ##
    # Gets the idle timeout override when waiting for the client to close. This occurs
    # after a client FIN is received or after a FIN is sent.
    # :method: get_client_close_timeout
    # :call-seq:
    # get_client_close_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.

    ##
    # Gets the idle timeout override for unspliced serverside flows in the reuse pool.
    # 0 is disabled, i.e. use the default idle timeout.
    # :method: get_connection_pool_idle_timeout
    # :call-seq:
    # get_connection_pool_idle_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.

    ##
    # Gets the maximum number of times a serverside flow will be reused. 0 for unlimited.
    # :method: get_connection_pool_maximum_reuse
    # :call-seq:
    # get_connection_pool_maximum_reuse(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.

    ##
    # Gets the maximum number of connections to any given LB pool. 0 for unlimited.
    # :method: get_connection_pool_maximum_size
    # :call-seq:
    # get_connection_pool_maximum_size(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.

    ##
    # Gets the minimum number of connections to any given LB pool. 0 is an acceptable value.
    # :method: get_connection_pool_minimum_size
    # :call-seq:
    # get_connection_pool_minimum_size(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.

    ##
    # Gets the connection ramp-up increments for the specified Fast HTTP profiles. Must
    # be greater than 0.
    # :method: get_connection_pool_ramp_increment
    # :call-seq:
    # get_connection_pool_ramp_increment(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.

    ##
    # Gets the state that specifies whether the connpool should be replenished to its prior
    # number of connections when a connection is closed by the server. If this is disabled,
    # then we will only replenish a closed server side connection residing in the connpool
    # if there are less than connpool_min_size connections in the pool.
    # :method: get_connection_pool_replenish_state
    # :call-seq:
    # get_connection_pool_replenish_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.

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
    # Gets the state that if true, rewrite server's HTTP version to 1.0 in status line
    # in order to dissuade the client from pipelining or chunking.
    # :method: get_force_http10_response_state
    # :call-seq:
    # get_force_http10_response_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.

    ##
    # Gets the strings to be inserted as headers for the specified HTTP profiles.
    # :method: get_header_insert
    # :call-seq:
    # get_header_insert(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the state that if true, work around problems with certain brands of benchmarking
    # software that cannot handle FIN-PUSH on HTTP/1.1 responses.
    # :method: get_http11_close_workarounds_state
    # :call-seq:
    # get_http11_close_workarounds_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.

    ##
    # Gets the idle timeout for the specified Fast HTTP profiles. The number of seconds
    # without traffic before a connection is eligible for deletion.
    # :method: get_idle_timeout
    # :call-seq:
    # get_idle_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.

    ##
    # Gets the mode to indicate whether to insert X-Forwarded-For headers for the specified
    # profiles.
    # :method: get_insert_xforwarded_for_header_mode
    # :call-seq:
    # get_insert_xforwarded_for_header_mode(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.

    ##
    # Gets the state that if false, we will not parse the HTTP requests. This is useful
    # for providing SYN-proxy protection for L4 connections through a SNAT where the client
    # sends data to the server before the server responds.
    # :method: get_layer7_state
    # :call-seq:
    # get_layer7_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.

    ##
    # Gets a list of all Fast HTTP profiles.
    # :method: get_list

    ##
    # Gets the maximum amount of data that will be buffered in order to make a content-switching
    # decision.
    # :method: get_maximum_header_size
    # :call-seq:
    # get_maximum_header_size(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.

    ##
    # Gets the maximum number of requests on a clientside flow before the flow is shutdown.
    # :method: get_maximum_requests
    # :call-seq:
    # get_maximum_requests(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.

    ##
    # Gets the MSS override values for the specified profiles. If non-zero and less than
    # the default value, this value overrides the maximum segment size for serverside flows.
    # :method: get_mss_override
    # :call-seq:
    # get_mss_override(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the reset on timeout states for the specified Fast HTTP profiles. If true and
    # a TCP connection exceeds its idle timeout, send a reset in addition to deleting the
    # connection.
    # :method: get_reset_on_timeout_state
    # :call-seq:
    # get_reset_on_timeout_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.

    ##
    # Gets the idle timeout override when waiting for the server to close. This occurs
    # if the server flow is not suitable for reuse or after a FIN is received on an unspliced
    # server connection.
    # :method: get_server_close_timeout
    # :call-seq:
    # get_server_close_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.

    ##
    # Gets the statistics for the specified Fast HTTP profiles.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The Fast HTTP profiles to get the statistics from.

    ##
    # Gets the mode to indicate whether to do unclean shutdown for client connections.
    # :method: get_unclean_shutdown_mode
    # :call-seq:
    # get_unclean_shutdown_mode(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.

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
    # Resets the statistics for the specified Fast HTTP profiles.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.

    ##
    # Sets the idle timeout override when waiting for the client to close. This occurs
    # after a client FIN is received or after a FIN is sent.
    # :method: set_client_close_timeout
    # :call-seq:
    # set_client_close_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.
    # - timeouts ProfileULong[] The client close idle timeouts for the specified Fast HTTP profiles.

    ##
    # Sets the idle timeout override for unspliced serverside flows in the reuse pool.
    # 0 is disabled, i.e. use the default idle timeout.
    # :method: set_connection_pool_idle_timeout
    # :call-seq:
    # set_connection_pool_idle_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.
    # - timeouts ProfileULong[] The idle timeout override for unspliced serverside flows in the reuse pool.

    ##
    # Sets the maximum number of times a serverside flow will be reused. 0 for unlimited.
    # :method: set_connection_pool_maximum_reuse
    # :call-seq:
    # set_connection_pool_maximum_reuse(profile_names ,reuses)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.
    # - reuses ProfileULong[] The maximum number of times a serverside flow will be reused.

    ##
    # Sets the maximum number of connections to any given LB pool. 0 for unlimited.
    # :method: set_connection_pool_maximum_size
    # :call-seq:
    # set_connection_pool_maximum_size(profile_names ,sizes)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.
    # - sizes ProfileULong[] The maximum number of connections to any given LB pool.

    ##
    # Sets the minimum number of connections to any given LB pool. 0 is an acceptable value.
    # :method: set_connection_pool_minimum_size
    # :call-seq:
    # set_connection_pool_minimum_size(profile_names ,sizes)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.
    # - sizes ProfileULong[] The minimum number of connections to any given LB pool.

    ##
    # Sets the connection ramp-up increments for the specified Fast HTTP profiles. Must
    # be greater than 0.
    # :method: set_connection_pool_ramp_increment
    # :call-seq:
    # set_connection_pool_ramp_increment(profile_names ,increments)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.
    # - increments ProfileULong[] The connection ramp-up increments for the specified Fast HTTP profiles.

    ##
    # Sets the state that specifies whether the connpool should be replenished to its prior
    # number of connections when a connection is closed by the server. If this is disabled,
    # then we will only replenish a closed server side connection residing in the connpool
    # if there are less than connpool_min_size connections in the pool.
    # :method: set_connection_pool_replenish_state
    # :call-seq:
    # set_connection_pool_replenish_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.
    # - states ProfileEnabledState[] The states for the specified Fast HTTP profiles.

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
    # Sets the state that if true, rewrite server's HTTP version to 1.0 in status line
    # in order to dissuade the client from pipelining or chunking.
    # :method: set_force_http10_response_state
    # :call-seq:
    # set_force_http10_response_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.
    # - states ProfileEnabledState[] The states for the specified Fast HTTP profiles.

    ##
    # Insert the given string as a header. If the header already exists, it is not replaced.
    # Unlike HTTP, this string does not support rule command expansion.
    # :method: set_header_insert
    # :call-seq:
    # set_header_insert(profile_names ,headers)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - headers ProfileString[] The headers to be inserted for the specified Fast HTTP profiles.

    ##
    # Sets the state that if true, work around problems with certain brands of benchmarking
    # software that cannot handle FIN-PUSH on HTTP/1.1 responses.
    # :method: set_http11_close_workarounds_state
    # :call-seq:
    # set_http11_close_workarounds_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.
    # - states ProfileEnabledState[] The states for the specified Fast HTTP profiles.

    ##
    # Sets the idle timeout for the specified Fast HTTP profiles. The number of seconds
    # without traffic before a connection is eligible for deletion.
    # :method: set_idle_timeout
    # :call-seq:
    # set_idle_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.
    # - timeouts ProfileULong[] The idle timeouts for the specified Fast HTTP profiles.

    ##
    # Sets the mode to indicate whether to insert X-Forwarded-For headers for the specified
    # profiles.
    # :method: set_insert_xforwarded_for_header_mode
    # :call-seq:
    # set_insert_xforwarded_for_header_mode(profile_names ,modes)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.
    # - modes ProfileProfileMode[] The insert X-Forwarded-For header mode for the specified profiles.

    ##
    # Sets the state that if false, we will not parse the HTTP requests. This is useful
    # for providing SYN-proxy protection for L4 connections through a SNAT where the client
    # sends data to the server before the server responds.
    # :method: set_layer7_state
    # :call-seq:
    # set_layer7_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.
    # - states ProfileEnabledState[] The states for the specified Fast HTTP profiles.

    ##
    # Sets the maximum amount of data that will be buffered in order to make a content-switching
    # decision.
    # :method: set_maximum_header_size
    # :call-seq:
    # set_maximum_header_size(profile_names ,sizes)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.
    # - sizes ProfileULong[] The maximum header sizes.

    ##
    # Sets the maximum number of requests on a clientside flow before the flow is shutdown.
    # :method: set_maximum_requests
    # :call-seq:
    # set_maximum_requests(profile_names ,maximum_requests)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.
    # - maximum_requests ProfileULong[] The maximum number of Fast HTTP requests allowed in a connection.

    ##
    # Sets the MSS override values for the specified profiles. If non-zero and less than
    # the default value, this value overrides the maximum segment size for serverside flows.
    # :method: set_mss_override
    # :call-seq:
    # set_mss_override(profile_names ,mss_overrides)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - mss_overrides ProfileULong[] The MSS override values for the specified profiles.

    ##
    # Sets the reset on timeout states for the specified Fast HTTP profiles. If true and
    # a TCP connection exceeds its idle timeout, send a reset in addition to deleting the
    # connection.
    # :method: set_reset_on_timeout_state
    # :call-seq:
    # set_reset_on_timeout_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.
    # - states ProfileEnabledState[] The reset on timeout states for the specified Fast HTTP profiles.

    ##
    # Sets the idle timeout override when waiting for the server to close. This occurs
    # if the server flow is not suitable for reuse or after a FIN is received on an unspliced
    # server connection.
    # :method: set_server_close_timeout
    # :call-seq:
    # set_server_close_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.
    # - timeouts ProfileULong[] The server close idle timeouts for the specified Fast HTTP profiles.

    ##
    # Sets the mode to indicate whether to do unclean shutdown for client connections.
    # :method: set_unclean_shutdown_mode
    # :call-seq:
    # set_unclean_shutdown_mode(profile_names ,modes)
    #
    # Parameters:
    # - profile_names String[] The names of the Fast HTTP profiles.
    # - modes ProfileUncleanShutdownMode[] The unclean shutdown mode for the specified profiles.


  end
end
