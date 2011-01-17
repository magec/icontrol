module IControl::LocalLB
  ##
  # The RAMCacheInformation interface enables you to query for RAM cache entries/statistics,
  # as well as evicting RAM cache entries.
  class RAMCacheInformation < IControl::Base

    set_id_name "keys"

    class RAMCacheEntry < IControl::Base::Struct; end
    class RAMCacheEntryExactMatch < IControl::Base::Struct; end
    class RAMCacheKey < IControl::Base::Struct; end
    class RAMCacheEntryExactMatchSequence < IControl::Base::Sequence ; end
    class RAMCacheEntryExactMatchSequenceSequence < IControl::Base::SequenceSequence ; end
    class RAMCacheEntrySequence < IControl::Base::Sequence ; end
    class RAMCacheEntrySequenceSequence < IControl::Base::SequenceSequence ; end
    class RAMCacheKeySequence < IControl::Base::Sequence ; end
    class RAMCacheVaryTypeSequence < IControl::Base::Sequence ; end
    # A list of types that indicate what type of content is cached.
    class RAMCacheVaryType < IControl::Base::Enumeration; end    ##
    # Resets/evicts all cache entries.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def evict_all_ramcache_entries
      super
    end

    ##
    # Note: This function has been deprecated. Please use evict_ramcache_entry_v2. Resets/evicts
    # the cache entries associated with this key. Note: The &amp;quot;max_responses" field
    # in each RAMCacheKey key is ignored in this method.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def evict_ramcache_entry
      super
    end

    ##
    # Resets/evicts the cache entries associated with this key. Note: The &amp;quot;max_responses"
    # field in each RAMCacheKey key is ignored in this method.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [boolean] :exact_match Whether to look for an exact match for host and uri. If exact, you must specify host and uri in the key. If non-exact, host and uri can be a subset of the text in a matched entry during the search.
    def evict_ramcache_entry_v2(opts)
      opts = check_params(opts,[:exact_match])
      super(opts)
    end

    ##
    # Gets the RAM cache entries associated with this key. The &amp;quot;profile_name"
    # in the key is required, however, other fields in each key are optionally specified.
    # &amp;quot;max_response" is recommended to be set to avoid possible large amount of
    # entries.
    # @rspec_example
    # @return [RAMCacheEntry[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ramcache_entry
      super
    end

    ##
    # Gets the RAM cache entries associated with this key. Each field in the key must be
    # provided, and together the key is used to extract a specific entry. However, since
    # each entry with the same profile/hostname/URI can still vary based on the User-Agent
    # or Accept-Encoding headers, a separate entry will be returned for each variation,
    # with also the specific header string that causes the variation.
    # @rspec_example
    # @return [RAMCacheEntryExactMatch[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ramcache_entry_exact_match
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
    # A struct that describes a RAM Cache entry and related statistics.
    # @attr [String] profile_name The profile name for which this entry is based on.
    # @attr [String] host_name The destination host name.
    # @attr [String] uri The document URI that is cached.
    # @attr [IControl::LocalLB::RAMCacheInformation::RAMCacheVaryType] vary_type An indicator of how content varies.
    # @attr [Numeric] vary_count Number of different versions of documents stored for different		 clients and user agents. For example, if compression is enabled,		 this value could be 2 because we will have a compressed and		 uncompressed versions stored in the cache.
    # @attr [Numeric] hits Total number of document hits.
    # @attr [Numeric] received When the document was first received, in seconds since Unix epoch.
    # @attr [Numeric] last_sent When the document was last served, in seconds since Unix epoch.
    # @attr [Numeric] expiration When the document will expire, in seconds since Unix epoch.
    # @attr [Numeric] size Total memory taken by all instances of documents for this URI. This		includes the HTTP headers.
    class RAMCacheEntry < IControl::Base::Struct
      icontrol_attribute :profile_name, String
      icontrol_attribute :host_name, String
      icontrol_attribute :uri, String
      icontrol_attribute :vary_type, IControl::LocalLB::RAMCacheInformation::RAMCacheVaryType
      icontrol_attribute :vary_count, Numeric
      icontrol_attribute :hits, Numeric
      icontrol_attribute :received, Numeric
      icontrol_attribute :last_sent, Numeric
      icontrol_attribute :expiration, Numeric
      icontrol_attribute :size, Numeric
    end

    ##
    # A struct that describes a detailed RAM Cache entry and related statistics.
    # @attr [String] profile_name The profile name for which this entry is based on.
    # @attr [String] host_name The destination host name.
    # @attr [String] uri The document URI that is cached.
    # @attr [String] vary_useragent The User-Agent header that causes content to vary.
    # @attr [String] vary_encoding The Accept-Encoding header that causes content to vary.
    # @attr [Numeric] hits Total number of document hits.
    # @attr [Numeric] received When the document was first received, in seconds since Unix epoch.
    # @attr [Numeric] last_sent When the document was last served, in seconds since Unix epoch.
    # @attr [Numeric] expiration When the document will expire, in seconds since Unix epoch.
    # @attr [Numeric] size Total memory taken by all instances of documents for this URI. This		includes the HTTP headers.
    class RAMCacheEntryExactMatch < IControl::Base::Struct
      icontrol_attribute :profile_name, String
      icontrol_attribute :host_name, String
      icontrol_attribute :uri, String
      icontrol_attribute :vary_useragent, String
      icontrol_attribute :vary_encoding, String
      icontrol_attribute :hits, Numeric
      icontrol_attribute :received, Numeric
      icontrol_attribute :last_sent, Numeric
      icontrol_attribute :expiration, Numeric
      icontrol_attribute :size, Numeric
    end

    ##
    # A struct that describes a key used to query/evict RAM cache entries.
    # @attr [String] profile_name Query/evict entries associated with this profile.
    # @attr [String] host_name Query/evict entries associated with this host name.
    # @attr [String] uri Query/evict entries associated with this URI.
    # @attr [Numeric] maximum_responses The maximum number of entries to be returned			 in the response for this key's query. If there			 are more entries than "maximum_responses" that			 match the querying parameters, then only the			 "maximum_responses" entries with most hits will			 be returned. This parameter is ignored when used			 in a reset method.
    class RAMCacheKey < IControl::Base::Struct
      icontrol_attribute :profile_name, String
      icontrol_attribute :host_name, String
      icontrol_attribute :uri, String
      icontrol_attribute :maximum_responses, Numeric
    end


    ## A list of RAMCacheEntryExactMatch structs.
    class RAMCacheEntryExactMatchSequence < IControl::Base::Sequence ; end
    ## A sequence of sequence of RAMCacheEntryExactMatch.
    class RAMCacheEntryExactMatchSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A list of RAMCacheEntries.
    class RAMCacheEntrySequence < IControl::Base::Sequence ; end
    ## A sequence of sequence of RAMCacheEntries.
    class RAMCacheEntrySequenceSequence < IControl::Base::SequenceSequence ; end
    ## A list of RAMCacheKey structs.
    class RAMCacheKeySequence < IControl::Base::Sequence ; end
    ## A sequence of RAM Cache Vary types.
    class RAMCacheVaryTypeSequence < IControl::Base::Sequence ; end
    # A list of types that indicate what type of content is cached.
    class RAMCacheVaryType < IControl::Base::Enumeration
      # Content that doesn't vary.
      RAM_CACHE_VARY_NONE = :RAM_CACHE_VARY_NONE
      # Content that can vary depending on value				 of the User-Agent header.
      RAM_CACHE_VARY_USERAGENT = :RAM_CACHE_VARY_USERAGENT
      # Content that can vary depending on value					 of the Accept-Encoding header.
      RAM_CACHE_VARY_ACCEPT_ENCODING = :RAM_CACHE_VARY_ACCEPT_ENCODING
      # Content that can vary depending on values of both			 the User-Agent and Accept-Encoding headers.
      RAM_CACHE_VARY_BOTH = :RAM_CACHE_VARY_BOTH
    end


  end
end
