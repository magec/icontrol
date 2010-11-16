module IControl::LocalLB
  ##
  # The ProfileHttp interface enables you to manipulate a local load balancer's HTTP
  # profile.
  class ProfileHttp < IControl::Base
    class ProfileHttpStatisticEntry < IControl::Base::Struct; end
    class ProfileHttpStatistics < IControl::Base::Struct; end    ## A sequence of ProfileHttp statistics.
    class ProfileHttpStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a particular HTTP profile.
    class ProfileHttpStatisticEntry < IControl::Base::Struct
      # The profile name.
      icontrol_attribute :profile_name, String
      # The statistics for the profile.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    class ProfileHttpStatistics < IControl::Base::Struct
      # The statistics for a sequence of profiles.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileHttp::ProfileHttpStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Adds to the lists of regular expressions used to match the MIME types in the server
    # response's &amp;quot;Content-Type:" headers. No match may be found in any of the
    # &amp;quot;exclude" fields. For example, to disable compression on all PDF and image
    # files, one would use the following in the content_type exclue fields: : &amp;quot;application/pdf"
    # &amp;quot;image/*".
    # :method: add_compression_content_type_exclude
    # :call-seq:
    # add_compression_content_type_exclude(profile_names ,reg_expressions)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - reg_expressions String[][] The lists of regular expressions to be added to the "exclude" list.

    ##
    # Adds to the lists of regular expressions used to match the MIME types in the server
    # response's &amp;quot;Content-Type:" headers. A match must be found in at least one
    # of the &amp;quot;include" fields. For example, to enable compression on all PDF and
    # image files, one would use the following in the content_type include fields: : &amp;quot;application/pdf"
    # &amp;quot;image/*".
    # :method: add_compression_content_type_include
    # :call-seq:
    # add_compression_content_type_include(profile_names ,reg_expressions)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - reg_expressions String[][] The lists of regular expressions to be added to the "include" list.

    ##
    # Adds to the lists of regular expressions used to match the request URI part of the
    # client requests during compression. (see section 5.1 of RFC2616). No match may be
    # found in any of the &amp;quot;exclude" fields. For example, to disable compressing
    # requests ending in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would
    # use the following in the URI &amp;quot;exclude" fields: &amp;quot;*.txt" &amp;quot;*.htm"
    # &amp;quot;*.html"
    # :method: add_compression_uri_exclude
    # :call-seq:
    # add_compression_uri_exclude(profile_names ,reg_expressions)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - reg_expressions String[][] The lists of regular expressions to be added to the "exclude" list.

    ##
    # Adds to the lists of regular expressions used to match the request URI part of the
    # client requests during compression. (see section 5.1 of RFC2616). A match must be
    # found in at least one of the &amp;quot;include" fields. For example, to include requests
    # ending in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would use the
    # following in the uri include field: &amp;quot;*.txt" &amp;quot;*.htm" &amp;quot;*.html".
    # :method: add_compression_uri_include
    # :call-seq:
    # add_compression_uri_include(profile_names ,reg_expressions)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - reg_expressions String[][] The lists of regular expressions to be added to the "include" list.

    ##
    # Adds to the lists of cookies to be encrypted before sending them to the clients.
    # :method: add_cookie_encryption
    # :call-seq:
    # add_cookie_encryption(profile_names ,cookies)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - cookies String[][] The lists of cookies to be encrypted.

    ##
    # Adds to the lists of status codes that when matched, traffic will be sent to the
    # &amp;quot;fallback_host". An exception will be thrown if fallback status codes are
    # set when &amp;quot;fallback_host" has not been specified.
    # :method: add_fallback_status_code
    # :call-seq:
    # add_fallback_status_code(profile_names ,status_codes)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - status_codes String[][] The lists of status codes.

    ##
    # Adds to the lists of permitted headers in the responses for the specified HTTP profiles.
    # :method: add_permitted_response_header
    # :call-seq:
    # add_permitted_response_header(profile_names ,headers)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - headers String[][] The lists of permitted response headers.

    ##
    # Adds to the lists of regular expressions used to match the request URI part of the
    # client requests during caching. (see section 5.1 of RFC2616). No match may be found
    # in any of the &amp;quot;exclude" fields. For example, to disable compressing requests
    # ending in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would use the
    # following in the URI &amp;quot;exclude" fields: &amp;quot;*.txt" &amp;quot;*.htm"
    # &amp;quot;*.html"
    # :method: add_ramcache_uri_exclude
    # :call-seq:
    # add_ramcache_uri_exclude(profile_names ,reg_expressions)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - reg_expressions String[][] The lists of regular expressions to be added to the "exclude" list.

    ##
    # Adds to the lists of regular expressions used to match the request URI part of the
    # client requests during caching. (see section 5.1 of RFC2616). A match must be found
    # in at least one of the &amp;quot;include" fields. For example, to include requests
    # ending in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would use the
    # following in the uri include field: &amp;quot;*.txt" &amp;quot;*.htm" &amp;quot;*.html".
    # :method: add_ramcache_uri_include
    # :call-seq:
    # add_ramcache_uri_include(profile_names ,reg_expressions)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - reg_expressions String[][] The lists of regular expressions to be added to the "include" list.

    ##
    # Adds to the lists of cachable document URIs that will never be evicted from the cache.
    # :method: add_ramcache_uri_pinned
    # :call-seq:
    # add_ramcache_uri_pinned(profile_names ,reg_expressions)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - reg_expressions String[][] The lists of regular expressions to be added to the "pinned" list.

    ##
    # Creates the specified HTTP profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] The HTTP profiles to create.

    ##
    # Deletes all HTTP profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified HTTP profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles to delete.

    ##
    # Gets the statistics for all the HTTP profiles.
    # :method: get_all_statistics

    ##
    # Gets the basic authentication realms for the specified HTTP profiles.
    # :method: get_basic_auth_realm
    # :call-seq:
    # get_basic_auth_realm(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the states that specify whether we will allow compression on responses to HTTP
    # 1.0 requests. Default will be &amp;quot;false", i.e. disallowing compression on HTTP
    # 1.0 responses.
    # :method: get_compression_allow_http_10_state
    # :call-seq:
    # get_compression_allow_http_10_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the states that specify whether to workaround browser bugs when doing compression.
    # :method: get_compression_browser_workaround_state
    # :call-seq:
    # get_compression_browser_workaround_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the values that specify the maximum number of uncompressed bytes that the compression
    # proxy will buffer before it decides whether or not to compress the server's response,
    # in case the server's response headers don't specify the content length of the response.
    # :method: get_compression_buffer_size
    # :call-seq:
    # get_compression_buffer_size(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the lists of regular expressions used to match the MIME types in the server
    # response's &amp;quot;Content-Type:" headers. No match may be found in any of the
    # &amp;quot;exclude" fields. For example, to disable compression on all PDF and image
    # files, one would use the following in the content_type exclue fields: : &amp;quot;application/pdf"
    # &amp;quot;image/*".
    # :method: get_compression_content_type_exclude
    # :call-seq:
    # get_compression_content_type_exclude(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the lists of regular expressions used to match the MIME types in the server
    # response's &amp;quot;Content-Type:" headers. A match must be found in at least one
    # of the &amp;quot;include" fields. For example, to enable compression on all PDF and
    # image files, one would use the following in the content_type include fields: : &amp;quot;application/pdf"
    # &amp;quot;image/*".
    # :method: get_compression_content_type_include
    # :call-seq:
    # get_compression_content_type_include(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the CPU saver high threshold that basically switches to NULL compression when
    # CPU utilization exceeds this value.
    # :method: get_compression_cpu_saver_high_threshold
    # :call-seq:
    # get_compression_cpu_saver_high_threshold(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the CPU saver low threshold that basically enables full throttle on compression
    # when CPU utilization drops below this value.
    # :method: get_compression_cpu_saver_low_threshold
    # :call-seq:
    # get_compression_cpu_saver_low_threshold(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the states that specify whether to enable CPU saving mode when doing compression.
    # :method: get_compression_cpu_saver_state
    # :call-seq:
    # get_compression_cpu_saver_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the compression level used by the specified HTTP profiles.
    # :method: get_compression_level
    # :call-seq:
    # get_compression_level(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the amount of memory (in bytes) that the will be used for the internal compression
    # state for each compressed response. Smaller values will be slower and will produce
    # smaller compression ratios, whereas larger values will be faster and produce larger
    # compression ratios. The value must be one of 1K, 2K, 4K, 8K, 16K, 32K, 64K, 128K,
    # 256K and represent power-of-2 values (kilobytes). The default value will be 8K.
    # :method: get_compression_memory_level
    # :call-seq:
    # get_compression_memory_level(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the values that specify the minimmum length of the server responses (in bytes)
    # to be considered acceptable for compression.
    # :method: get_compression_minimum_size
    # :call-seq:
    # get_compression_minimum_size(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the HTTP compression modes for the specified HTTP profiles.
    # :method: get_compression_mode
    # :call-seq:
    # get_compression_mode(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the lists of regular expressions used to match the request URI part of the client
    # requests during compression. (see section 5.1 of RFC2616). No match may be found
    # in any of the &amp;quot;exclude" fields. For example, to disable compressing requests
    # ending in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would use the
    # following in the URI &amp;quot;exclude" fields: &amp;quot;*.txt" &amp;quot;*.htm"
    # &amp;quot;*.html"
    # :method: get_compression_uri_exclude
    # :call-seq:
    # get_compression_uri_exclude(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the lists of regular expressions used to match the request URI part of the client
    # requests during compression. (see section 5.1 of RFC2616). A match must be found
    # in at least one of the &amp;quot;include" fields. For example, to include requests
    # ending in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would use the
    # following in the uri include field: &amp;quot;*.txt" &amp;quot;*.htm" &amp;quot;*.html".
    # :method: get_compression_uri_include
    # :call-seq:
    # get_compression_uri_include(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the states that specify whether we will insert the header &amp;quot;Vary: Accept-Encoding"
    # in the server response for responses that have been compressed. If the &amp;quot;Vary:"
    # header already exists in the server response, then the value &amp;quot;Accept-Encoding"
    # will be appended to it.
    # :method: get_compression_vary_header_state
    # :call-seq:
    # get_compression_vary_header_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the amount of memory (in bytes) for the window size (the compression history
    # buffer) that will be used when compressing the server response. Higher values produce
    # better compression ratios at the expense of more memory usage. The value must be
    # one of 1K, 2K, 4K, 8K, 16K, 32K, 64K, 128K and represent power-of-2 values (kilobytes).
    # The default value will be 16K.
    # :method: get_compression_window_size
    # :call-seq:
    # get_compression_window_size(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the lists of cookies to be encrypted before sending them to the clients.
    # :method: get_cookie_encryption
    # :call-seq:
    # get_cookie_encryption(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the passphrases used to encrypt the cookies for the specified profiles.
    # :method: get_cookie_encryption_passphrase
    # :call-seq:
    # get_cookie_encryption_passphrase(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

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
    # Gets the fallback host names used in HTTP redirect for the specified HTTP profiles.
    # :method: get_fallback_host_name
    # :call-seq:
    # get_fallback_host_name(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the lists of status codes that when matched, traffic will be sent to the &amp;quot;fallback_host".
    # An exception will be thrown if fallback status codes are set when &amp;quot;fallback_host"
    # has not been specified.
    # :method: get_fallback_status_code
    # :call-seq:
    # get_fallback_status_code(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the headers to be erased for the specified HTTP profiles.
    # :method: get_header_erase
    # :call-seq:
    # get_header_erase(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the headers to be inserted for the specified HTTP profiles.
    # :method: get_header_insert
    # :call-seq:
    # get_header_insert(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the mode to indicate whether to insert X-Forwarded-For headers for the specified
    # profiles.
    # :method: get_insert_xforwarded_for_header_mode
    # :call-seq:
    # get_insert_xforwarded_for_header_mode(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the states that specify how we handle the &amp;quot;Accept-Encoding:" header.
    # If set to false, we will strip the &amp;quot;Accept-Encoding:" header before passing
    # the request on to the server (so that the server doesn't also compress the response).
    # If it is set to true, we will leave the &amp;quot;Accept-Encoding:" header in the
    # request so that servers are able to do compression. We will not compress responses
    # that have already been compressed.
    # :method: get_keep_accept_encoding_header_state
    # :call-seq:
    # get_keep_accept_encoding_header_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets a list of all HTTP profiles.
    # :method: get_list

    ##
    # Gets the linear white space maximum column sizes used to support multi-line header
    # insertion.
    # :method: get_lws_maximum_column
    # :call-seq:
    # get_lws_maximum_column(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the linear white space separator strings for the specified HTTP profiles.
    # :method: get_lws_separator
    # :call-seq:
    # get_lws_separator(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the maximum header sizes for the specified HTTP profiles.
    # :method: get_maximum_header_size
    # :call-seq:
    # get_maximum_header_size(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the maximum number of HTTP requests allowed in the connection before it is closed
    # automatically.
    # :method: get_maximum_requests
    # :call-seq:
    # get_maximum_requests(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the states that specify that OneConnect HTTP header transformation feature is
    # used or not.
    # :method: get_oneconnect_header_transformation_state
    # :call-seq:
    # get_oneconnect_header_transformation_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the lists of permitted headers in the responses for the specified HTTP profiles.
    # :method: get_permitted_response_header
    # :call-seq:
    # get_permitted_response_header(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the pipelining mode for the specified profiles.
    # :method: get_pipelining_mode
    # :call-seq:
    # get_pipelining_mode(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the preferred compression methods.
    # :method: get_preferred_compression_method
    # :call-seq:
    # get_preferred_compression_method(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the aging rate for the RAM cache.
    # :method: get_ramcache_aging_rate
    # :call-seq:
    # get_ramcache_aging_rate(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the mode to indicate whether to ignore the client cache control headers.
    # :method: get_ramcache_ignore_client_cache_control_mode
    # :call-seq:
    # get_ramcache_ignore_client_cache_control_mode(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the mode that indicates whether to insert the Age headers for the specified
    # profiles.
    # :method: get_ramcache_insert_age_header_mode
    # :call-seq:
    # get_ramcache_insert_age_header_mode(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the maximum age of a cached object in the RAM cache.
    # :method: get_ramcache_maximum_age
    # :call-seq:
    # get_ramcache_maximum_age(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the maximum number of cache entries allowed in the RAM cache.
    # :method: get_ramcache_maximum_entry
    # :call-seq:
    # get_ramcache_maximum_entry(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the RAM cache mode for the specified profiles.
    # :method: get_ramcache_mode
    # :call-seq:
    # get_ramcache_mode(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the maximum size requirement of a cached object in the RAM cache.
    # :method: get_ramcache_object_maximum_size
    # :call-seq:
    # get_ramcache_object_maximum_size(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the minimum size requirement of a cached object in the RAM cache.
    # :method: get_ramcache_object_minimum_size
    # :call-seq:
    # get_ramcache_object_minimum_size(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the size (MB) of the RAM cache.
    # :method: get_ramcache_size
    # :call-seq:
    # get_ramcache_size(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the lists of regular expressions used to match the request URI part of the client
    # requests during caching. (see section 5.1 of RFC2616). No match may be found in any
    # of the &amp;quot;exclude" fields. For example, to disable compressing requests ending
    # in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would use the following
    # in the URI &amp;quot;exclude" fields: &amp;quot;*.txt" &amp;quot;*.htm" &amp;quot;*.html"
    # :method: get_ramcache_uri_exclude
    # :call-seq:
    # get_ramcache_uri_exclude(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the lists of regular expressions used to match the request URI part of the client
    # requests during caching. (see section 5.1 of RFC2616). A match must be found in at
    # least one of the &amp;quot;include" fields. For example, to include requests ending
    # in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would use the following
    # in the uri include field: &amp;quot;*.txt" &amp;quot;*.htm" &amp;quot;*.html".
    # :method: get_ramcache_uri_include
    # :call-seq:
    # get_ramcache_uri_include(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the lists of cachable document URIs that will never be evicted from the cache.
    # :method: get_ramcache_uri_pinned
    # :call-seq:
    # get_ramcache_uri_pinned(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the HTTP redirect/rewrite mode for the responses.
    # :method: get_redirect_rewrite_mode
    # :call-seq:
    # get_redirect_rewrite_mode(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the HTTP chunk mode for the responses.
    # :method: get_response_chunk_mode
    # :call-seq:
    # get_response_chunk_mode(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Gets the state that if true, enable horizontal security for the specified HTTP profiles.
    # :method: get_security_enabled_request_state
    # :call-seq:
    # get_security_enabled_request_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the statistics for the specified HTTP profiles.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The HTTP profiles to get the statistics from.

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
    # Removes from the lists of regular expressions used to match the MIME types in the
    # server response's &amp;quot;Content-Type:" headers. No match may be found in any
    # of the &amp;quot;exclude" fields. For example, to disable compression on all PDF
    # and image files, one would use the following in the content_type exclue fields: :
    # &amp;quot;application/pdf" &amp;quot;image/*".
    # :method: remove_compression_content_type_exclude
    # :call-seq:
    # remove_compression_content_type_exclude(profile_names ,reg_expressions)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - reg_expressions String[][] The lists of regular expressions to be removed from the "exclude" list.

    ##
    # Removes from the lists of regular expressions used to match the MIME types in the
    # server response's &amp;quot;Content-Type:" headers. A match must be found in at least
    # one of the &amp;quot;include" fields. For example, to enable compression on all PDF
    # and image files, one would use the following in the content_type include fields:
    # : &amp;quot;application/pdf" &amp;quot;image/*".
    # :method: remove_compression_content_type_include
    # :call-seq:
    # remove_compression_content_type_include(profile_names ,reg_expressions)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - reg_expressions String[][] The lists of regular expressions to be removed from the "include" list.

    ##
    # Removes from the lists of regular expressions used to match the request URI part
    # of the client requests during compression. (see section 5.1 of RFC2616). No match
    # may be found in any of the &amp;quot;exclude" fields. For example, to disable compressing
    # requests ending in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would
    # use the following in the URI &amp;quot;exclude" fields: &amp;quot;*.txt" &amp;quot;*.htm"
    # &amp;quot;*.html"
    # :method: remove_compression_uri_exclude
    # :call-seq:
    # remove_compression_uri_exclude(profile_names ,reg_expressions)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - reg_expressions String[][] The lists of regular expressions to be removed from the "exclude" list.

    ##
    # Removes from the lists of regular expressions used to match the request URI part
    # of the client requests during compression. (see section 5.1 of RFC2616). A match
    # must be found in at least one of the &amp;quot;include" fields. For example, to include
    # requests ending in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would
    # use the following in the uri include field: &amp;quot;*.txt" &amp;quot;*.htm" &amp;quot;*.html".
    # :method: remove_compression_uri_include
    # :call-seq:
    # remove_compression_uri_include(profile_names ,reg_expressions)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - reg_expressions String[][] The lists of regular expressions to be removed from the "include" list.

    ##
    # Removes from the lists of cookies to be encrypted before sending them to the clients.
    # :method: remove_cookie_encryption
    # :call-seq:
    # remove_cookie_encryption(profile_names ,cookies)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - cookies String[][] The lists of cookies to be encrypted.

    ##
    # Removes from the lists of status codes that when matched, traffic will be sent to
    # the &amp;quot;fallback_host". An exception will be thrown if fallback status codes
    # are set when &amp;quot;fallback_host" has not been specified.
    # :method: remove_fallback_status_code
    # :call-seq:
    # remove_fallback_status_code(profile_names ,status_codes)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - status_codes String[][] The lists of status codes.

    ##
    # Removes from the lists of permitted headers in the responses for the specified HTTP
    # profiles.
    # :method: remove_permitted_response_header
    # :call-seq:
    # remove_permitted_response_header(profile_names ,headers)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - headers String[][] The lists of permitted response headers.

    ##
    # Removes from the lists of regular expressions used to match the request URI part
    # of the client requests during caching. (see section 5.1 of RFC2616). No match may
    # be found in any of the &amp;quot;exclude" fields. For example, to disable compressing
    # requests ending in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would
    # use the following in the URI &amp;quot;exclude" fields: &amp;quot;*.txt" &amp;quot;*.htm"
    # &amp;quot;*.html"
    # :method: remove_ramcache_uri_exclude
    # :call-seq:
    # remove_ramcache_uri_exclude(profile_names ,reg_expressions)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - reg_expressions String[][] The lists of regular expressions to be removed from the "exclude" list.

    ##
    # Removes from the lists of regular expressions used to match the request URI part
    # of the client requests during caching. (see section 5.1 of RFC2616). A match must
    # be found in at least one of the &amp;quot;include" fields. For example, to include
    # requests ending in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would
    # use the following in the uri include field: &amp;quot;*.txt" &amp;quot;*.htm" &amp;quot;*.html".
    # :method: remove_ramcache_uri_include
    # :call-seq:
    # remove_ramcache_uri_include(profile_names ,reg_expressions)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - reg_expressions String[][] The lists of regular expressions to be removed from the "include" list.

    ##
    # Removes from the lists of cachable document URIs that will never be evicted from
    # the cache.
    # :method: remove_ramcache_uri_pinned
    # :call-seq:
    # remove_ramcache_uri_pinned(profile_names ,reg_expressions)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - reg_expressions String[][] The lists of regular expressions to be removed from the "pinned" list.

    ##
    # Resets the statistics for the specified HTTP profiles.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Sets the basic authentication realms for the specified HTTP profiles.
    # :method: set_basic_auth_realm
    # :call-seq:
    # set_basic_auth_realm(profile_names ,realms)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - realms ProfileString[] The basic authentication realms of the specified HTTP profiles.

    ##
    # Sets the states that specify whether we will allow compression on responses to HTTP
    # 1.0 requests. Default will be &amp;quot;false", i.e. disallowing compression on HTTP
    # 1.0 responses.
    # :method: set_compression_allow_http_10_state
    # :call-seq:
    # set_compression_allow_http_10_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - states ProfileEnabledState[] The states indicating whether to allow compression on HTTP 1.0 responses.

    ##
    # Sets the states that specify whether to workaround browser bugs when doing compression.
    # :method: set_compression_browser_workaround_state
    # :call-seq:
    # set_compression_browser_workaround_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - states ProfileEnabledState[] The states that specify whether to workaround browser bugs when doing compression.

    ##
    # Sets the values that specify the maximum number of uncompressed bytes that the compression
    # proxy will buffer before it decides whether or not to compress the server's response,
    # in case the server's response headers don't specify the content length of the response.
    # :method: set_compression_buffer_size
    # :call-seq:
    # set_compression_buffer_size(profile_names ,sizes)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - sizes ProfileULong[] The compression buffer sizes.

    ##
    # Sets the CPU saver high threshold that basically switches to NULL compression when
    # CPU utilization exceeds this value.
    # :method: set_compression_cpu_saver_high_threshold
    # :call-seq:
    # set_compression_cpu_saver_high_threshold(profile_names ,thresholds)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - thresholds ProfileULong[] The high threshold in CPU saving mode.

    ##
    # Sets the CPU saver low threshold that basically enables full throttle on compression
    # when CPU utilization drops below this value.
    # :method: set_compression_cpu_saver_low_threshold
    # :call-seq:
    # set_compression_cpu_saver_low_threshold(profile_names ,thresholds)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - thresholds ProfileULong[] The low threshold in CPU saving mode.

    ##
    # Sets the states that specify whether to enable CPU saving mode when doing compression.
    # :method: set_compression_cpu_saver_state
    # :call-seq:
    # set_compression_cpu_saver_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - states ProfileEnabledState[] The states that specify whether to enable CPU saving mode when doing compression.

    ##
    # Sets the compression level used by the specified HTTP profiles.
    # :method: set_compression_level
    # :call-seq:
    # set_compression_level(profile_names ,levels)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - levels ProfileULong[] The compression GZIP levels.

    ##
    # Sets the amount of memory (in bytes) that the will be used for the internal compression
    # state for each compressed response. Smaller values will be slower and will produce
    # smaller compression ratios, whereas larger values will be faster and produce larger
    # compression ratios. The value must be one of 1K, 2K, 4K, 8K, 16K, 32K, 64K, 128K,
    # 256K and represent power-of-2 values (kilobytes). The default value will be 8K.
    # :method: set_compression_memory_level
    # :call-seq:
    # set_compression_memory_level(profile_names ,levels)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - levels ProfileULong[] The compression memory levels.

    ##
    # Sets the values that specify the minimmum length of the server responses (in bytes)
    # to be considered acceptable for compression.
    # :method: set_compression_minimum_size
    # :call-seq:
    # set_compression_minimum_size(profile_names ,sizes)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - sizes ProfileULong[] The minimum lengths of server responses.

    ##
    # Sets the HTTP compression modes for the specified HTTP profiles.
    # :method: set_compression_mode
    # :call-seq:
    # set_compression_mode(profile_names ,modes)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - modes ProfileHttpCompressionMode[] The HTTP compression modes for the specified HTTP profiles.

    ##
    # Sets the states that specify whether we will insert the header &amp;quot;Vary: Accept-Encoding"
    # in the server response for responses that have been compressed. If the &amp;quot;Vary:"
    # header already exists in the server response, then the value &amp;quot;Accept-Encoding"
    # will be appended to it.
    # :method: set_compression_vary_header_state
    # :call-seq:
    # set_compression_vary_header_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - states ProfileEnabledState[] The states indicating whether to insert the "Vary:" headers in the server responses.

    ##
    # Sets the amount of memory (in bytes) for the window size (the compression history
    # buffer) that will be used when compressing the server response. Higher values produce
    # better compression ratios at the expense of more memory usage. The value must be
    # one of 1K, 2K, 4K, 8K, 16K, 32K, 64K, 128K and represent power-of-2 values (kilobytes).
    # The default value will be 16K.
    # :method: set_compression_window_size
    # :call-seq:
    # set_compression_window_size(profile_names ,sizes)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - sizes ProfileULong[] The compression window sizes.

    ##
    # Sets the passphrases used to encrypt the cookies for the specified profiles.
    # :method: set_cookie_encryption_passphrase
    # :call-seq:
    # set_cookie_encryption_passphrase(profile_names ,passphrases)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - passphrases ProfileString[] The passphrases used to encrypt the cookies.

    ##
    # Resets the lists to parent defaults.
    # :method: set_default_compression_content_type_exclude
    # :call-seq:
    # set_default_compression_content_type_exclude(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Resets the lists to parent defaults.
    # :method: set_default_compression_content_type_include
    # :call-seq:
    # set_default_compression_content_type_include(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Resets the lists to parent defaults.
    # :method: set_default_compression_uri_exclude
    # :call-seq:
    # set_default_compression_uri_exclude(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Resets the list to the parent defaults.
    # :method: set_default_compression_uri_include
    # :call-seq:
    # set_default_compression_uri_include(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Resets the list to the parent defaults.
    # :method: set_default_cookie_encryption
    # :call-seq:
    # set_default_cookie_encryption(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Resets the list to the parent defaults.
    # :method: set_default_fallback_status_code
    # :call-seq:
    # set_default_fallback_status_code(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Resets the list to the parent defaults.
    # :method: set_default_permitted_response_header
    # :call-seq:
    # set_default_permitted_response_header(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

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
    # Resets the lists to parent defaults.
    # :method: set_default_ramcache_uri_exclude
    # :call-seq:
    # set_default_ramcache_uri_exclude(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Resets the list to the parent defaults.
    # :method: set_default_ramcache_uri_include
    # :call-seq:
    # set_default_ramcache_uri_include(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Resets the lists to parent defaults.
    # :method: set_default_ramcache_uri_pinned
    # :call-seq:
    # set_default_ramcache_uri_pinned(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.

    ##
    # Sets the fallback host names used in HTTP redirect for the specified HTTP profiles.
    # :method: set_fallback_host_name
    # :call-seq:
    # set_fallback_host_name(profile_names ,fallbacks)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - fallbacks ProfileString[] The fallback host names.

    ##
    # Sets the headers to be erased into the HTTP headers for the specified HTTP profiles.
    # :method: set_header_erase
    # :call-seq:
    # set_header_erase(profile_names ,headers)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - headers ProfileString[] The headers to be erased for the specified HTTP profiles.

    ##
    # Sets the headers to be inserted into the HTTP headers for the specified HTTP profiles.
    # :method: set_header_insert
    # :call-seq:
    # set_header_insert(profile_names ,headers)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - headers ProfileString[] The headers to be inserted for the specified HTTP profiles.

    ##
    # Sets the mode to indicate whether to insert X-Forwarded-For headers for the specified
    # profiles.
    # :method: set_insert_xforwarded_for_header_mode
    # :call-seq:
    # set_insert_xforwarded_for_header_mode(profile_names ,modes)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - modes ProfileProfileMode[] The insert X-Forwarded-For header mode for the specified profiles.

    ##
    # Sets the states that specify how we handle the &amp;quot;Accept-Encoding:" header.
    # If set to false, we will strip the &amp;quot;Accept-Encoding:" header before passing
    # the request on to the server (so that the server doesn't also compress the response).
    # If it is set to true, we will leave the &amp;quot;Accept-Encoding:" header in the
    # request so that servers are able to do compression. We will not compress responses
    # that have already been compressed.
    # :method: set_keep_accept_encoding_header_state
    # :call-seq:
    # set_keep_accept_encoding_header_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - states ProfileEnabledState[] The states indicating how we handle the "Accept-Encoding:" header.

    ##
    # Sets the linear white space maximum column sizes used to support multi-line header
    # insertion.
    # :method: set_lws_maximum_column
    # :call-seq:
    # set_lws_maximum_column(profile_names ,sizes)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - sizes ProfileULong[] The LWS maximum column sizes.

    ##
    # Sets the linear white space separator strings for the specified HTTP profiles.
    # :method: set_lws_separator
    # :call-seq:
    # set_lws_separator(profile_names ,separators)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - separators ProfileString[] The LWS separators of the specified HTTP profiles.

    ##
    # Sets the maximum header sizes for the specified HTTP profiles.
    # :method: set_maximum_header_size
    # :call-seq:
    # set_maximum_header_size(profile_names ,sizes)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - sizes ProfileULong[] The maximum header sizes.

    ##
    # Sets the maximum number of HTTP requests allowed in the connection before it is closed
    # automatically.
    # :method: set_maximum_requests
    # :call-seq:
    # set_maximum_requests(profile_names ,maximum_requests)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - maximum_requests ProfileULong[] The maximum number of HTTP requests allowed in a connection.

    ##
    # Sets the states that specify whether OneConnect HTTP header transformation is used
    # for the specified HTTP profiles.
    # :method: set_oneconnect_header_transformation_state
    # :call-seq:
    # set_oneconnect_header_transformation_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - states ProfileEnabledState[] The OneConnect HTTP header transformation states for the specified HTTP profiles.

    ##
    # Sets the pipelining mode for the specified profiles.
    # :method: set_pipelining_mode
    # :call-seq:
    # set_pipelining_mode(profile_names ,modes)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - modes ProfileProfileMode[] The pipelining mode for the specified profiles.

    ##
    # Sets the preferred compression methods.
    # :method: set_preferred_compression_method
    # :call-seq:
    # set_preferred_compression_method(profile_names ,compression_methods)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - compression_methods ProfileCompressionMethod[] The preferred compression methods.

    ##
    # Sets the aging rate for the RAM cache.
    # :method: set_ramcache_aging_rate
    # :call-seq:
    # set_ramcache_aging_rate(profile_names ,aging_rates)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - aging_rates ProfileULong[] The aging rate for the RAM cache.

    ##
    # Sets the mode to indicate whether to ignore the client cache control headers.
    # :method: set_ramcache_ignore_client_cache_control_mode
    # :call-seq:
    # set_ramcache_ignore_client_cache_control_mode(profile_names ,modes)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - modes ProfileRamCacheCacheControlMode[] The client cache control mode.

    ##
    # Sets the mode that indicates whether to insert the Age headers for the specified
    # profiles.
    # :method: set_ramcache_insert_age_header_mode
    # :call-seq:
    # set_ramcache_insert_age_header_mode(profile_names ,modes)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - modes ProfileProfileMode[] The mode that indicates whether to insert the Age headers for the specified profiles.

    ##
    # Sets the maximum age of a cached object in the RAM cache.
    # :method: set_ramcache_maximum_age
    # :call-seq:
    # set_ramcache_maximum_age(profile_names ,maximum_age)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - maximum_age ProfileULong[] The maximum age of a cached object in the RAM cache.

    ##
    # Sets the maximum number of cache entries allowed in the RAM cache.
    # :method: set_ramcache_maximum_entry
    # :call-seq:
    # set_ramcache_maximum_entry(profile_names ,maximum_entries)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - maximum_entries ProfileULong[] The maximum number of cache entries allowed in the RAM cache.

    ##
    # Sets the RAM cache mode for the specified profiles.
    # :method: set_ramcache_mode
    # :call-seq:
    # set_ramcache_mode(profile_names ,modes)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - modes ProfileProfileMode[] The RAM cache mode for the specified profiles.

    ##
    # Sets the maximum size requirement of a cached object in the RAM cache.
    # :method: set_ramcache_object_maximum_size
    # :call-seq:
    # set_ramcache_object_maximum_size(profile_names ,maximum_size)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - maximum_size ProfileULong[] The maximum size requirement of a cached object in the RAM cache.

    ##
    # Sets the minimum size requirement of a cached object in the RAM cache.
    # :method: set_ramcache_object_minimum_size
    # :call-seq:
    # set_ramcache_object_minimum_size(profile_names ,minimum_size)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - minimum_size ProfileULong[] The minimum size requirement of a cached object in the RAM cache.

    ##
    # Sets the size (MB) of the RAM cache.
    # :method: set_ramcache_size
    # :call-seq:
    # set_ramcache_size(profile_names ,sizes)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - sizes ProfileULong[] The size (MB) of the RAM cache.

    ##
    # Sets the HTTP redirect/rewrite mode for the responses.
    # :method: set_redirect_rewrite_mode
    # :call-seq:
    # set_redirect_rewrite_mode(profile_names ,modes)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - modes ProfileHttpRedirectRewriteMode[] The HTTP redirect/rewrite modes.

    ##
    # Sets the HTTP chunk mode for the responses.
    # :method: set_response_chunk_mode
    # :call-seq:
    # set_response_chunk_mode(profile_names ,modes)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP profiles.
    # - modes ProfileHttpChunkMode[] The HTTP chunk modes.

    ##
    # Sets the state that if true, enable horizontal security for the specified HTTP profiles.
    # :method: set_security_enabled_request_state
    # :call-seq:
    # set_security_enabled_request_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The translate extended request states for the specified profiles.


  end
end
