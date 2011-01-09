module IControl::LocalLB
  ##
  # The ProfileHttp interface enables you to manipulate a local load balancer's HTTP
  # profile.
  class ProfileHttp < IControl::Base

    set_id_name "profile_names"

    class ProfileHttpStatisticEntry < IControl::Base::Struct; end
    class ProfileHttpStatistics < IControl::Base::Struct; end
    class ProfileHttpStatisticEntrySequence < IControl::Base::Sequence ; end    ##
    # Adds to the lists of regular expressions used to match the MIME types in the server
    # response's &amp;quot;Content-Type:" headers. No match may be found in any of the
    # &amp;quot;exclude" fields. For example, to disable compression on all PDF and image
    # files, one would use the following in the content_type exclue fields: : &amp;quot;application/pdf"
    # &amp;quot;image/*".
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :reg_expressions The lists of regular expressions to be added to the "exclude" list.
    def add_compression_content_type_exclude(opts)
      check_params(opts,[:reg_expressions])
      super
    end

    ##
    # Adds to the lists of regular expressions used to match the MIME types in the server
    # response's &amp;quot;Content-Type:" headers. A match must be found in at least one
    # of the &amp;quot;include" fields. For example, to enable compression on all PDF and
    # image files, one would use the following in the content_type include fields: : &amp;quot;application/pdf"
    # &amp;quot;image/*".
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :reg_expressions The lists of regular expressions to be added to the "include" list.
    def add_compression_content_type_include(opts)
      check_params(opts,[:reg_expressions])
      super
    end

    ##
    # Adds to the lists of regular expressions used to match the request URI part of the
    # client requests during compression. (see section 5.1 of RFC2616). No match may be
    # found in any of the &amp;quot;exclude" fields. For example, to disable compressing
    # requests ending in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would
    # use the following in the URI &amp;quot;exclude" fields: &amp;quot;*.txt" &amp;quot;*.htm"
    # &amp;quot;*.html"
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :reg_expressions The lists of regular expressions to be added to the "exclude" list.
    def add_compression_uri_exclude(opts)
      check_params(opts,[:reg_expressions])
      super
    end

    ##
    # Adds to the lists of regular expressions used to match the request URI part of the
    # client requests during compression. (see section 5.1 of RFC2616). A match must be
    # found in at least one of the &amp;quot;include" fields. For example, to include requests
    # ending in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would use the
    # following in the uri include field: &amp;quot;*.txt" &amp;quot;*.htm" &amp;quot;*.html".
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :reg_expressions The lists of regular expressions to be added to the "include" list.
    def add_compression_uri_include(opts)
      check_params(opts,[:reg_expressions])
      super
    end

    ##
    # Adds to the lists of cookies to be encrypted before sending them to the clients.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :cookies The lists of cookies to be encrypted.
    def add_cookie_encryption(opts)
      check_params(opts,[:cookies])
      super
    end

    ##
    # Adds to the lists of status codes that when matched, traffic will be sent to the
    # &amp;quot;fallback_host". An exception will be thrown if fallback status codes are
    # set when &amp;quot;fallback_host" has not been specified.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :status_codes The lists of status codes.
    def add_fallback_status_code(opts)
      check_params(opts,[:status_codes])
      super
    end

    ##
    # Adds to the lists of permitted headers in the responses for this HTTP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :headers The lists of permitted response headers.
    def add_permitted_response_header(opts)
      check_params(opts,[:headers])
      super
    end

    ##
    # Adds to the lists of regular expressions used to match the request URI part of the
    # client requests during caching. (see section 5.1 of RFC2616). No match may be found
    # in any of the &amp;quot;exclude" fields. For example, to disable compressing requests
    # ending in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would use the
    # following in the URI &amp;quot;exclude" fields: &amp;quot;*.txt" &amp;quot;*.htm"
    # &amp;quot;*.html"
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :reg_expressions The lists of regular expressions to be added to the "exclude" list.
    def add_ramcache_uri_exclude(opts)
      check_params(opts,[:reg_expressions])
      super
    end

    ##
    # Adds to the lists of regular expressions used to match the request URI part of the
    # client requests during caching. (see section 5.1 of RFC2616). A match must be found
    # in at least one of the &amp;quot;include" fields. For example, to include requests
    # ending in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would use the
    # following in the uri include field: &amp;quot;*.txt" &amp;quot;*.htm" &amp;quot;*.html".
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :reg_expressions The lists of regular expressions to be added to the "include" list.
    def add_ramcache_uri_include(opts)
      check_params(opts,[:reg_expressions])
      super
    end

    ##
    # Adds to the lists of cachable document URIs that will never be evicted from the cache.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :reg_expressions The lists of regular expressions to be added to the "pinned" list.
    def add_ramcache_uri_pinned(opts)
      check_params(opts,[:reg_expressions])
      super
    end

    ##
    # Creates this HTTP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def create
      super
    end

    ##
    # Deletes all HTTP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_profiles
      super
    end

    ##
    # Deletes this HTTP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_profile
      super
    end

    ##
    # Gets the statistics for all the HTTP profile.
    # @rspec_example
    # @return [ProfileHttpStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the basic authentication realms for this HTTP profile.
    # @rspec_example
    # @return [ProfileString]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def basic_auth_realm
      super
    end

    ##
    # Gets the states that specify whether we will allow compression on responses to HTTP
    # 1.0 requests. Default will be &amp;quot;false", i.e. disallowing compression on HTTP
    # 1.0 responses.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def compression_allow_http_10_state
      super
    end

    ##
    # Gets the states that specify whether to workaround browser bugs when doing compression.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def compression_browser_workaround_state
      super
    end

    ##
    # Gets the values that specify the maximum number of uncompressed bytes that the compression
    # proxy will buffer before it decides whether or not to compress the server's response,
    # in case the server's response headers don't specify the content length of the response.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def compression_buffer_size
      super
    end

    ##
    # Gets the lists of regular expressions used to match the MIME types in the server
    # response's &amp;quot;Content-Type:" headers. No match may be found in any of the
    # &amp;quot;exclude" fields. For example, to disable compression on all PDF and image
    # files, one would use the following in the content_type exclue fields: : &amp;quot;application/pdf"
    # &amp;quot;image/*".
    # @rspec_example
    # @return [ProfileStringArray]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def compression_content_type_exclude
      super
    end

    ##
    # Gets the lists of regular expressions used to match the MIME types in the server
    # response's &amp;quot;Content-Type:" headers. A match must be found in at least one
    # of the &amp;quot;include" fields. For example, to enable compression on all PDF and
    # image files, one would use the following in the content_type include fields: : &amp;quot;application/pdf"
    # &amp;quot;image/*".
    # @rspec_example
    # @return [ProfileStringArray]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def compression_content_type_include
      super
    end

    ##
    # Gets the CPU saver high threshold that basically switches to NULL compression when
    # CPU utilization exceeds this value.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def compression_cpu_saver_high_threshold
      super
    end

    ##
    # Gets the CPU saver low threshold that basically enables full throttle on compression
    # when CPU utilization drops below this value.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def compression_cpu_saver_low_threshold
      super
    end

    ##
    # Gets the states that specify whether to enable CPU saving mode when doing compression.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def compression_cpu_saver_state
      super
    end

    ##
    # Gets the compression level used by this HTTP profile.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def compression_level
      super
    end

    ##
    # Gets the amount of memory (in bytes) that the will be used for the internal compression
    # state for each compressed response. Smaller values will be slower and will produce
    # smaller compression ratios, whereas larger values will be faster and produce larger
    # compression ratios. The value must be one of 1K, 2K, 4K, 8K, 16K, 32K, 64K, 128K,
    # 256K and represent power-of-2 values (kilobytes). The default value will be 8K.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def compression_memory_level
      super
    end

    ##
    # Gets the values that specify the minimmum length of the server responses (in bytes)
    # to be considered acceptable for compression.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def compression_minimum_size
      super
    end

    ##
    # Gets the HTTP compression modes for this HTTP profile.
    # @rspec_example
    # @return [ProfileHttpCompressionMode]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def compression_mode
      super
    end

    ##
    # Gets the lists of regular expressions used to match the request URI part of the client
    # requests during compression. (see section 5.1 of RFC2616). No match may be found
    # in any of the &amp;quot;exclude" fields. For example, to disable compressing requests
    # ending in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would use the
    # following in the URI &amp;quot;exclude" fields: &amp;quot;*.txt" &amp;quot;*.htm"
    # &amp;quot;*.html"
    # @rspec_example
    # @return [ProfileStringArray]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def compression_uri_exclude
      super
    end

    ##
    # Gets the lists of regular expressions used to match the request URI part of the client
    # requests during compression. (see section 5.1 of RFC2616). A match must be found
    # in at least one of the &amp;quot;include" fields. For example, to include requests
    # ending in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would use the
    # following in the uri include field: &amp;quot;*.txt" &amp;quot;*.htm" &amp;quot;*.html".
    # @rspec_example
    # @return [ProfileStringArray]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def compression_uri_include
      super
    end

    ##
    # Gets the states that specify whether we will insert the header &amp;quot;Vary: Accept-Encoding"
    # in the server response for responses that have been compressed. If the &amp;quot;Vary:"
    # header already exists in the server response, then the value &amp;quot;Accept-Encoding"
    # will be appended to it.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def compression_vary_header_state
      super
    end

    ##
    # Gets the amount of memory (in bytes) for the window size (the compression history
    # buffer) that will be used when compressing the server response. Higher values produce
    # better compression ratios at the expense of more memory usage. The value must be
    # one of 1K, 2K, 4K, 8K, 16K, 32K, 64K, 128K and represent power-of-2 values (kilobytes).
    # The default value will be 16K.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def compression_window_size
      super
    end

    ##
    # Gets the lists of cookies to be encrypted before sending them to the clients.
    # @rspec_example
    # @return [ProfileStringArray]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def cookie_encryption
      super
    end

    ##
    # Gets the passphrases used to encrypt the cookies for this profile.
    # @rspec_example
    # @return [ProfileString]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def cookie_encryption_passphrase
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
    # Gets the fallback host names used in HTTP redirect for this HTTP profile.
    # @rspec_example
    # @return [ProfileString]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def fallback_host_name
      super
    end

    ##
    # Gets the lists of status codes that when matched, traffic will be sent to the &amp;quot;fallback_host".
    # An exception will be thrown if fallback status codes are set when &amp;quot;fallback_host"
    # has not been specified.
    # @rspec_example
    # @return [ProfileStringArray]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def fallback_status_code
      super
    end

    ##
    # Gets the headers to be erased for this HTTP profile.
    # @rspec_example
    # @return [ProfileString]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def header_erase
      super
    end

    ##
    # Gets the headers to be inserted for this HTTP profile.
    # @rspec_example
    # @return [ProfileString]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def header_insert
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
    # Gets the states that specify how we handle the &amp;quot;Accept-Encoding:" header.
    # If set to false, we will strip the &amp;quot;Accept-Encoding:" header before passing
    # the request on to the server (so that the server doesn't also compress the response).
    # If it is set to true, we will leave the &amp;quot;Accept-Encoding:" header in the
    # request so that servers are able to do compression. We will not compress responses
    # that have already been compressed.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def keep_accept_encoding_header_state
      super
    end

    ##
    # Gets a list of all HTTP profile.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the linear white space maximum column sizes used to support multi-line header
    # insertion.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def lws_maximum_column
      super
    end

    ##
    # Gets the linear white space separator strings for this HTTP profile.
    # @rspec_example
    # @return [ProfileString]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def lws_separator
      super
    end

    ##
    # Gets the maximum header sizes for this HTTP profile.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def maximum_header_size
      super
    end

    ##
    # Gets the maximum number of HTTP requests allowed in the connection before it is closed
    # automatically.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def maximum_requests
      super
    end

    ##
    # Gets the states that specify that OneConnect HTTP header transformation feature is
    # used or not.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def oneconnect_header_transformation_state
      super
    end

    ##
    # Gets the lists of permitted headers in the responses for this HTTP profile.
    # @rspec_example
    # @return [ProfileStringArray]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def permitted_response_header
      super
    end

    ##
    # Gets the pipelining mode for this profile.
    # @rspec_example
    # @return [ProfileProfileMode]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def pipelining_mode
      super
    end

    ##
    # Gets the preferred compression methods.
    # @rspec_example
    # @return [ProfileCompressionMethod]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def preferred_compression_method
      super
    end

    ##
    # Gets the aging rate for the RAM cache.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ramcache_aging_rate
      super
    end

    ##
    # Gets the mode to indicate whether to ignore the client cache control headers.
    # @rspec_example
    # @return [ProfileRamCacheCacheControlMode]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ramcache_ignore_client_cache_control_mode
      super
    end

    ##
    # Gets the mode that indicates whether to insert the Age headers for this profile.
    # @rspec_example
    # @return [ProfileProfileMode]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ramcache_insert_age_header_mode
      super
    end

    ##
    # Gets the maximum age of a cached object in the RAM cache.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ramcache_maximum_age
      super
    end

    ##
    # Gets the maximum number of cache entries allowed in the RAM cache.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ramcache_maximum_entry
      super
    end

    ##
    # Gets the RAM cache mode for this profile.
    # @rspec_example
    # @return [ProfileProfileMode]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ramcache_mode
      super
    end

    ##
    # Gets the maximum size requirement of a cached object in the RAM cache.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ramcache_object_maximum_size
      super
    end

    ##
    # Gets the minimum size requirement of a cached object in the RAM cache.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ramcache_object_minimum_size
      super
    end

    ##
    # Gets the size (MB) of the RAM cache.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ramcache_size
      super
    end

    ##
    # Gets the lists of regular expressions used to match the request URI part of the client
    # requests during caching. (see section 5.1 of RFC2616). No match may be found in any
    # of the &amp;quot;exclude" fields. For example, to disable compressing requests ending
    # in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would use the following
    # in the URI &amp;quot;exclude" fields: &amp;quot;*.txt" &amp;quot;*.htm" &amp;quot;*.html"
    # @rspec_example
    # @return [ProfileStringArray]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ramcache_uri_exclude
      super
    end

    ##
    # Gets the lists of regular expressions used to match the request URI part of the client
    # requests during caching. (see section 5.1 of RFC2616). A match must be found in at
    # least one of the &amp;quot;include" fields. For example, to include requests ending
    # in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would use the following
    # in the uri include field: &amp;quot;*.txt" &amp;quot;*.htm" &amp;quot;*.html".
    # @rspec_example
    # @return [ProfileStringArray]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ramcache_uri_include
      super
    end

    ##
    # Gets the lists of cachable document URIs that will never be evicted from the cache.
    # @rspec_example
    # @return [ProfileStringArray]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ramcache_uri_pinned
      super
    end

    ##
    # Gets the HTTP redirect/rewrite mode for the responses.
    # @rspec_example
    # @return [ProfileHttpRedirectRewriteMode]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def redirect_rewrite_mode
      super
    end

    ##
    # Gets the HTTP chunk mode for the responses.
    # @rspec_example
    # @return [ProfileHttpChunkMode]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def response_chunk_mode
      super
    end

    ##
    # Gets the state that if true, enable horizontal security for this HTTP profile.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def security_enabled_request_state
      super
    end

    ##
    # Gets the statistics for this HTTP profile.
    # @rspec_example
    # @return [ProfileHttpStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
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
    # Removes from the lists of regular expressions used to match the MIME types in the
    # server response's &amp;quot;Content-Type:" headers. No match may be found in any
    # of the &amp;quot;exclude" fields. For example, to disable compression on all PDF
    # and image files, one would use the following in the content_type exclue fields: :
    # &amp;quot;application/pdf" &amp;quot;image/*".
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :reg_expressions The lists of regular expressions to be removed from the "exclude" list.
    def remove_compression_content_type_exclude(opts)
      check_params(opts,[:reg_expressions])
      super
    end

    ##
    # Removes from the lists of regular expressions used to match the MIME types in the
    # server response's &amp;quot;Content-Type:" headers. A match must be found in at least
    # one of the &amp;quot;include" fields. For example, to enable compression on all PDF
    # and image files, one would use the following in the content_type include fields:
    # : &amp;quot;application/pdf" &amp;quot;image/*".
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :reg_expressions The lists of regular expressions to be removed from the "include" list.
    def remove_compression_content_type_include(opts)
      check_params(opts,[:reg_expressions])
      super
    end

    ##
    # Removes from the lists of regular expressions used to match the request URI part
    # of the client requests during compression. (see section 5.1 of RFC2616). No match
    # may be found in any of the &amp;quot;exclude" fields. For example, to disable compressing
    # requests ending in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would
    # use the following in the URI &amp;quot;exclude" fields: &amp;quot;*.txt" &amp;quot;*.htm"
    # &amp;quot;*.html"
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :reg_expressions The lists of regular expressions to be removed from the "exclude" list.
    def remove_compression_uri_exclude(opts)
      check_params(opts,[:reg_expressions])
      super
    end

    ##
    # Removes from the lists of regular expressions used to match the request URI part
    # of the client requests during compression. (see section 5.1 of RFC2616). A match
    # must be found in at least one of the &amp;quot;include" fields. For example, to include
    # requests ending in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would
    # use the following in the uri include field: &amp;quot;*.txt" &amp;quot;*.htm" &amp;quot;*.html".
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :reg_expressions The lists of regular expressions to be removed from the "include" list.
    def remove_compression_uri_include(opts)
      check_params(opts,[:reg_expressions])
      super
    end

    ##
    # Removes from the lists of cookies to be encrypted before sending them to the clients.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :cookies The lists of cookies to be encrypted.
    def remove_cookie_encryption(opts)
      check_params(opts,[:cookies])
      super
    end

    ##
    # Removes from the lists of status codes that when matched, traffic will be sent to
    # the &amp;quot;fallback_host". An exception will be thrown if fallback status codes
    # are set when &amp;quot;fallback_host" has not been specified.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :status_codes The lists of status codes.
    def remove_fallback_status_code(opts)
      check_params(opts,[:status_codes])
      super
    end

    ##
    # Removes from the lists of permitted headers in the responses for this HTTP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :headers The lists of permitted response headers.
    def remove_permitted_response_header(opts)
      check_params(opts,[:headers])
      super
    end

    ##
    # Removes from the lists of regular expressions used to match the request URI part
    # of the client requests during caching. (see section 5.1 of RFC2616). No match may
    # be found in any of the &amp;quot;exclude" fields. For example, to disable compressing
    # requests ending in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would
    # use the following in the URI &amp;quot;exclude" fields: &amp;quot;*.txt" &amp;quot;*.htm"
    # &amp;quot;*.html"
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :reg_expressions The lists of regular expressions to be removed from the "exclude" list.
    def remove_ramcache_uri_exclude(opts)
      check_params(opts,[:reg_expressions])
      super
    end

    ##
    # Removes from the lists of regular expressions used to match the request URI part
    # of the client requests during caching. (see section 5.1 of RFC2616). A match must
    # be found in at least one of the &amp;quot;include" fields. For example, to include
    # requests ending in &amp;quot;.txt", &amp;quot;.htm" and &amp;quot;.html", one would
    # use the following in the uri include field: &amp;quot;*.txt" &amp;quot;*.htm" &amp;quot;*.html".
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :reg_expressions The lists of regular expressions to be removed from the "include" list.
    def remove_ramcache_uri_include(opts)
      check_params(opts,[:reg_expressions])
      super
    end

    ##
    # Removes from the lists of cachable document URIs that will never be evicted from
    # the cache.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :reg_expressions The lists of regular expressions to be removed from the "pinned" list.
    def remove_ramcache_uri_pinned(opts)
      check_params(opts,[:reg_expressions])
      super
    end

    ##
    # Resets the statistics for this HTTP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the basic authentication realms for this HTTP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :realms The basic authentication realms of the specified HTTP profiles.
    def set_basic_auth_realm(opts)
      check_params(opts,[:realms])
      super
    end

    ##
    # Sets the states that specify whether we will allow compression on responses to HTTP
    # 1.0 requests. Default will be &amp;quot;false", i.e. disallowing compression on HTTP
    # 1.0 responses.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states indicating whether to allow compression on HTTP 1.0 responses.
    def set_compression_allow_http_10_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the states that specify whether to workaround browser bugs when doing compression.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states that specify whether to workaround browser bugs when doing compression.
    def set_compression_browser_workaround_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the values that specify the maximum number of uncompressed bytes that the compression
    # proxy will buffer before it decides whether or not to compress the server's response,
    # in case the server's response headers don't specify the content length of the response.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :sizes The compression buffer sizes.
    def set_compression_buffer_size(opts)
      check_params(opts,[:sizes])
      super
    end

    ##
    # Sets the CPU saver high threshold that basically switches to NULL compression when
    # CPU utilization exceeds this value.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :thresholds The high threshold in CPU saving mode.
    def set_compression_cpu_saver_high_threshold(opts)
      check_params(opts,[:thresholds])
      super
    end

    ##
    # Sets the CPU saver low threshold that basically enables full throttle on compression
    # when CPU utilization drops below this value.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :thresholds The low threshold in CPU saving mode.
    def set_compression_cpu_saver_low_threshold(opts)
      check_params(opts,[:thresholds])
      super
    end

    ##
    # Sets the states that specify whether to enable CPU saving mode when doing compression.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states that specify whether to enable CPU saving mode when doing compression.
    def set_compression_cpu_saver_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the compression level used by this HTTP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :levels The compression GZIP levels.
    def set_compression_level(opts)
      check_params(opts,[:levels])
      super
    end

    ##
    # Sets the amount of memory (in bytes) that the will be used for the internal compression
    # state for each compressed response. Smaller values will be slower and will produce
    # smaller compression ratios, whereas larger values will be faster and produce larger
    # compression ratios. The value must be one of 1K, 2K, 4K, 8K, 16K, 32K, 64K, 128K,
    # 256K and represent power-of-2 values (kilobytes). The default value will be 8K.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :levels The compression memory levels.
    def set_compression_memory_level(opts)
      check_params(opts,[:levels])
      super
    end

    ##
    # Sets the values that specify the minimmum length of the server responses (in bytes)
    # to be considered acceptable for compression.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :sizes The minimum lengths of server responses.
    def set_compression_minimum_size(opts)
      check_params(opts,[:sizes])
      super
    end

    ##
    # Sets the HTTP compression modes for this HTTP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileHttpCompressionMode] :modes The HTTP compression modes for the specified HTTP profiles.
    def set_compression_mode(opts)
      check_params(opts,[:modes])
      super
    end

    ##
    # Sets the states that specify whether we will insert the header &amp;quot;Vary: Accept-Encoding"
    # in the server response for responses that have been compressed. If the &amp;quot;Vary:"
    # header already exists in the server response, then the value &amp;quot;Accept-Encoding"
    # will be appended to it.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states indicating whether to insert the "Vary:" headers in the server responses.
    def set_compression_vary_header_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the amount of memory (in bytes) for the window size (the compression history
    # buffer) that will be used when compressing the server response. Higher values produce
    # better compression ratios at the expense of more memory usage. The value must be
    # one of 1K, 2K, 4K, 8K, 16K, 32K, 64K, 128K and represent power-of-2 values (kilobytes).
    # The default value will be 16K.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :sizes The compression window sizes.
    def set_compression_window_size(opts)
      check_params(opts,[:sizes])
      super
    end

    ##
    # Sets the passphrases used to encrypt the cookies for this profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :passphrases The passphrases used to encrypt the cookies.
    def set_cookie_encryption_passphrase(opts)
      check_params(opts,[:passphrases])
      super
    end

    ##
    # Resets the lists to parent defaults.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_default_compression_content_type_exclude
      super
    end

    ##
    # Resets the lists to parent defaults.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_default_compression_content_type_include
      super
    end

    ##
    # Resets the lists to parent defaults.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_default_compression_uri_exclude
      super
    end

    ##
    # Resets the list to the parent defaults.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_default_compression_uri_include
      super
    end

    ##
    # Resets the list to the parent defaults.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_default_cookie_encryption
      super
    end

    ##
    # Resets the list to the parent defaults.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_default_fallback_status_code
      super
    end

    ##
    # Resets the list to the parent defaults.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_default_permitted_response_header
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
      check_params(opts,[:defaults])
      super
    end

    ##
    # Resets the lists to parent defaults.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_default_ramcache_uri_exclude
      super
    end

    ##
    # Resets the list to the parent defaults.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_default_ramcache_uri_include
      super
    end

    ##
    # Resets the lists to parent defaults.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_default_ramcache_uri_pinned
      super
    end

    ##
    # Sets the fallback host names used in HTTP redirect for this HTTP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :fallbacks The fallback host names.
    def set_fallback_host_name(opts)
      check_params(opts,[:fallbacks])
      super
    end

    ##
    # Sets the headers to be erased into the HTTP headers for this HTTP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :headers The headers to be erased for the specified HTTP profiles.
    def set_header_erase(opts)
      check_params(opts,[:headers])
      super
    end

    ##
    # Sets the headers to be inserted into the HTTP headers for this HTTP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :headers The headers to be inserted for the specified HTTP profiles.
    def set_header_insert(opts)
      check_params(opts,[:headers])
      super
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
      check_params(opts,[:modes])
      super
    end

    ##
    # Sets the states that specify how we handle the &amp;quot;Accept-Encoding:" header.
    # If set to false, we will strip the &amp;quot;Accept-Encoding:" header before passing
    # the request on to the server (so that the server doesn't also compress the response).
    # If it is set to true, we will leave the &amp;quot;Accept-Encoding:" header in the
    # request so that servers are able to do compression. We will not compress responses
    # that have already been compressed.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states indicating how we handle the "Accept-Encoding:" header.
    def set_keep_accept_encoding_header_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the linear white space maximum column sizes used to support multi-line header
    # insertion.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :sizes The LWS maximum column sizes.
    def set_lws_maximum_column(opts)
      check_params(opts,[:sizes])
      super
    end

    ##
    # Sets the linear white space separator strings for this HTTP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :separators The LWS separators of the specified HTTP profiles.
    def set_lws_separator(opts)
      check_params(opts,[:separators])
      super
    end

    ##
    # Sets the maximum header sizes for this HTTP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :sizes The maximum header sizes.
    def set_maximum_header_size(opts)
      check_params(opts,[:sizes])
      super
    end

    ##
    # Sets the maximum number of HTTP requests allowed in the connection before it is closed
    # automatically.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :maximum_requests The maximum number of HTTP requests allowed in a connection.
    def set_maximum_requests(opts)
      check_params(opts,[:maximum_requests])
      super
    end

    ##
    # Sets the states that specify whether OneConnect HTTP header transformation is used
    # for this HTTP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The OneConnect HTTP header transformation states for the specified HTTP profiles.
    def set_oneconnect_header_transformation_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the pipelining mode for this profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileProfileMode] :modes The pipelining mode for the specified profiles.
    def set_pipelining_mode(opts)
      check_params(opts,[:modes])
      super
    end

    ##
    # Sets the preferred compression methods.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileCompressionMethod] :compression_methods The preferred compression methods.
    def set_preferred_compression_method(opts)
      check_params(opts,[:compression_methods])
      super
    end

    ##
    # Sets the aging rate for the RAM cache.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :aging_rates The aging rate for the RAM cache.
    def set_ramcache_aging_rate(opts)
      check_params(opts,[:aging_rates])
      super
    end

    ##
    # Sets the mode to indicate whether to ignore the client cache control headers.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileRamCacheCacheControlMode] :modes The client cache control mode.
    def set_ramcache_ignore_client_cache_control_mode(opts)
      check_params(opts,[:modes])
      super
    end

    ##
    # Sets the mode that indicates whether to insert the Age headers for this profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileProfileMode] :modes The mode that indicates whether to insert the Age headers for the specified profiles.
    def set_ramcache_insert_age_header_mode(opts)
      check_params(opts,[:modes])
      super
    end

    ##
    # Sets the maximum age of a cached object in the RAM cache.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :maximum_age The maximum age of a cached object in the RAM cache.
    def set_ramcache_maximum_age(opts)
      check_params(opts,[:maximum_age])
      super
    end

    ##
    # Sets the maximum number of cache entries allowed in the RAM cache.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :maximum_entries The maximum number of cache entries allowed in the RAM cache.
    def set_ramcache_maximum_entry(opts)
      check_params(opts,[:maximum_entries])
      super
    end

    ##
    # Sets the RAM cache mode for this profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileProfileMode] :modes The RAM cache mode for the specified profiles.
    def set_ramcache_mode(opts)
      check_params(opts,[:modes])
      super
    end

    ##
    # Sets the maximum size requirement of a cached object in the RAM cache.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :maximum_size The maximum size requirement of a cached object in the RAM cache.
    def set_ramcache_object_maximum_size(opts)
      check_params(opts,[:maximum_size])
      super
    end

    ##
    # Sets the minimum size requirement of a cached object in the RAM cache.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :minimum_size The minimum size requirement of a cached object in the RAM cache.
    def set_ramcache_object_minimum_size(opts)
      check_params(opts,[:minimum_size])
      super
    end

    ##
    # Sets the size (MB) of the RAM cache.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :sizes The size (MB) of the RAM cache.
    def set_ramcache_size(opts)
      check_params(opts,[:sizes])
      super
    end

    ##
    # Sets the HTTP redirect/rewrite mode for the responses.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileHttpRedirectRewriteMode] :modes The HTTP redirect/rewrite modes.
    def set_redirect_rewrite_mode(opts)
      check_params(opts,[:modes])
      super
    end

    ##
    # Sets the HTTP chunk mode for the responses.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileHttpChunkMode] :modes The HTTP chunk modes.
    def set_response_chunk_mode(opts)
      check_params(opts,[:modes])
      super
    end

    ##
    # Sets the state that if true, enable horizontal security for this HTTP profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The translate extended request states for the specified profiles.
    def set_security_enabled_request_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # A struct that describes statistics for a particular HTTP profile.
    # @attr [String] profile_name The profile name.
    # @attr [IControl::Common::StatisticSequence] statistics The statistics for the profile.
    class ProfileHttpStatisticEntry < IControl::Base::Struct
      icontrol_attribute :profile_name, String
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    # @attr [IControl::LocalLB::ProfileHttp::ProfileHttpStatisticEntrySequence] statistics The statistics for a sequence of profiles.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class ProfileHttpStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::ProfileHttp::ProfileHttpStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of ProfileHttp statistics.
    class ProfileHttpStatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
