module IControl::LocalLB
  ##
  # The RAMCacheInformation interface enables you to query for RAM cache entries/statistics,
  # as well as evicting RAM cache entries.
  class RAMCacheInformation < IControl::Base
    class RAMCacheVaryType < IControl::Base::Enumeration; end
    class RAMCacheEntry < IControl::Base::Struct; end
    class RAMCacheEntryExactMatch < IControl::Base::Struct; end
    class RAMCacheKey < IControl::Base::Struct; end    ## A list of RAMCacheEntryExactMatch structs.
    class RAMCacheEntryExactMatchSequence < IControl::Base::Sequence ; end## A sequence of sequence of RAMCacheEntryExactMatch.
    class RAMCacheEntryExactMatchSequenceSequence < IControl::Base::SequenceSequence ; end## A list of RAMCacheEntries.
    class RAMCacheEntrySequence < IControl::Base::Sequence ; end## A sequence of sequence of RAMCacheEntries.
    class RAMCacheEntrySequenceSequence < IControl::Base::SequenceSequence ; end## A list of RAMCacheKey structs.
    class RAMCacheKeySequence < IControl::Base::Sequence ; end## A sequence of RAM Cache Vary types.
    class RAMCacheVaryTypeSequence < IControl::Base::Sequence ; end##
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

    ##
    # A struct that describes a RAM Cache entry and related statistics.
    class RAMCacheEntry < IControl::Base::Struct
      # The profile name for which this entry is based on.
      icontrol_attribute :profile_name, String
      # The destination host name.
      icontrol_attribute :host_name, String
      # The document URI that is cached.
      icontrol_attribute :uri, String
      # An indicator of how content varies.
      icontrol_attribute :vary_type, IControl::LocalLB::RAMCacheInformation::RAMCacheVaryType
      # Number of different versions of documents stored for different		 clients and user
      # agents. For example, if compression is enabled,		 this value could be 2 because we
      # will have a compressed and		 uncompressed versions stored in the cache.
      icontrol_attribute :vary_count, Numeric
      # Total number of document hits.
      icontrol_attribute :hits, Numeric
      # When the document was first received, in seconds since Unix epoch.
      icontrol_attribute :received, Numeric
      # When the document was last served, in seconds since Unix epoch.
      icontrol_attribute :last_sent, Numeric
      # When the document will expire, in seconds since Unix epoch.
      icontrol_attribute :expiration, Numeric
      # Total memory taken by all instances of documents for this URI. This		includes the
      # HTTP headers.
      icontrol_attribute :size, Numeric
    end

    ##
    # A struct that describes a detailed RAM Cache entry and related statistics.
    class RAMCacheEntryExactMatch < IControl::Base::Struct
      # The profile name for which this entry is based on.
      icontrol_attribute :profile_name, String
      # The destination host name.
      icontrol_attribute :host_name, String
      # The document URI that is cached.
      icontrol_attribute :uri, String
      # The User-Agent header that causes content to vary.
      icontrol_attribute :vary_useragent, String
      # The Accept-Encoding header that causes content to vary.
      icontrol_attribute :vary_encoding, String
      # Total number of document hits.
      icontrol_attribute :hits, Numeric
      # When the document was first received, in seconds since Unix epoch.
      icontrol_attribute :received, Numeric
      # When the document was last served, in seconds since Unix epoch.
      icontrol_attribute :last_sent, Numeric
      # When the document will expire, in seconds since Unix epoch.
      icontrol_attribute :expiration, Numeric
      # Total memory taken by all instances of documents for this URI. This		includes the
      # HTTP headers.
      icontrol_attribute :size, Numeric
    end

    ##
    # A struct that describes a key used to query/evict RAM cache entries.
    class RAMCacheKey < IControl::Base::Struct
      # Query/evict entries associated with this profile.
      icontrol_attribute :profile_name, String
      # Query/evict entries associated with this host name.
      icontrol_attribute :host_name, String
      # Query/evict entries associated with this URI.
      icontrol_attribute :uri, String
      # The maximum number of entries to be returned			 in the response for this key's query.
      # If there			 are more entries than "maximum_responses" that			 match the querying
      # parameters, then only the			 "maximum_responses" entries with most hits will			 be
      # returned. This parameter is ignored when used			 in a reset method.
      icontrol_attribute :maximum_responses, Numeric
    end

    ##
    # Resets/evicts all cache entries.
    # :method: evict_all_ramcache_entries

    ##
    # Note: This function has been deprecated. Please use evict_ramcache_entry_v2. Resets/evicts
    # the cache entries associated with the specified keys. Note: The &amp;quot;max_responses"
    # field in each RAMCacheKey key is ignored in this method.
    # :method: evict_ramcache_entry
    # :call-seq:
    # evict_ramcache_entry(keys)
    #
    # Parameters:
    # - keys RAMCacheKey[] The keys used to evict the RAM cache entries.

    ##
    # Resets/evicts the cache entries associated with the specified keys. Note: The &amp;quot;max_responses"
    # field in each RAMCacheKey key is ignored in this method.
    # :method: evict_ramcache_entry_v2
    # :call-seq:
    # evict_ramcache_entry_v2(keys ,exact_match)
    #
    # Parameters:
    # - keys RAMCacheKey[] The keys used to evict the RAM cache entries.
    # - exact_match boolean Whether to look for an exact match for host and uri. If exact, you must specify host and uri in the key. If non-exact, host and uri can be a subset of the text in a matched entry during the search.

    ##
    # Gets the RAM cache entries associated with the specified keys. The &amp;quot;profile_name"
    # in the key is required, however, other fields in each key are optionally specified.
    # &amp;quot;max_response" is recommended to be set to avoid possible large amount of
    # entries.
    # :method: get_ramcache_entry
    # :call-seq:
    # get_ramcache_entry(keys)
    #
    # Parameters:
    # - keys RAMCacheKey[] The keys used to look up and retrieve the RAM cache entries.

    ##
    # Gets the RAM cache entries associated with the specified keys. Each field in the
    # key must be provided, and together the key is used to extract a specific entry. However,
    # since each entry with the same profile/hostname/URI can still vary based on the User-Agent
    # or Accept-Encoding headers, a separate entry will be returned for each variation,
    # with also the specific header string that causes the variation.
    # :method: get_ramcache_entry_exact_match
    # :call-seq:
    # get_ramcache_entry_exact_match(keys)
    #
    # Parameters:
    # - keys RAMCacheKey[] The keys used to look up and retrieve the RAM cache entries.

    ##
    # Gets the version information for this interface.
    # :method: get_version


  end
end
