module IControl::GlobalLB
  ##
  # The DNSSECKey interface manages the cryptographic keys used for securing DNS information,
  # i.e., DNSSEC. The keys managed by this interface can be used to sign DNS record groups
  # and the keys themselves. Technically, there is not a single key for each key object.
  # This key is re-created on a regular schedule, which can be controlled via this interface.
  # Each re-generated key is considered a new &amp;quot;generation" - a term used more
  # in its genealogical sense than a creation sense. A single key generation can have
  # its lifetime changed. Thus when using this interface, be careful to distinguish the
  # attributes which apply to this whole process vs those that apply to a single key
  # generation. Once a key generation is created, it is fully active for the &amp;quot;rollover
  # period". At the end of that period, the next generation's key is created and both
  # keys are in use. Once the first key reaches the end of its &amp;quot;expiration period",
  # it is no longer handed out, the generation is deleted, and only the second key is
  # in use. This process continues ad infinitum. It is important to note that these keys
  # do not affect the processing by their mere existence. To take effect, they must be
  # assigned to a DNSSEC zone (See the DNSSECZone interface).
  class DNSSECKey < IControl::Base
    class KeyAlgorithm < IControl::Base::Enumeration; end
    class KeyType < IControl::Base::Enumeration; end    ## Sequence of digital signature algorithms
    class KeyAlgorithmSequence < IControl::Base::Sequence ; end## Sequence of DNSSEC key types
    class KeyTypeSequence < IControl::Base::Sequence ; end##
    # Digital signature algorithm used to sign DNS record groups and keys
    class KeyAlgorithm < IControl::Base::Enumeration
      # Invalid enumeration value
      KEY_ALGORITHM_UNKNOWN = :KEY_ALGORITHM_UNKNOWN
      # RSA encryption / SHA1 hash algorithm signature suite
      KEY_ALGORITHM_RSASHA1 = :KEY_ALGORITHM_RSASHA1
    end

    ##
    # DNSSEC key type
    class KeyType < IControl::Base::Enumeration
      # Invalid enumeration value
      KEY_TYPE_UNKNOWN = :KEY_TYPE_UNKNOWN
      # This key is used to sign the DNS record groups for the zone.
      KEY_TYPE_ZONE_SIGNING = :KEY_TYPE_ZONE_SIGNING
      # This key is used to sign the key information sent to upstream servers.
      KEY_TYPE_KEY_SIGNING = :KEY_TYPE_KEY_SIGNING
    end

    ##
    # Creates a set of DNSSEC keys. Note that the attributes specified in this method cannot
    # be changed afterwards.
    # :method: create
    # :call-seq:
    # create(keys ,sizes ,types ,algorithms ,fips)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to create. These names are arbitrary.
    # - sizes long[] Digital signature sizes (bits) for each specified key
    # - types KeyType[] DNSSEC key type (See KeyType ) for each specified key
    # - algorithms KeyAlgorithm[] Digital signature algorithm (See KeyAlgorithm ) for each specified key
    # - fips EnabledState[] Specifies whether the FIPS device should be used for storing and retrieving the keys

    ##
    # Deletes all DNSSEC keys.
    # :method: delete_all_keys

    ##
    # Deletes a set of DNSSEC keys.
    # :method: delete_key
    # :call-seq:
    # delete_key(keys)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to delete

    ##
    # Gets the algorithms used to digitally sign DNS record groups and keys for a set of
    # DNSSEC keys.
    # :method: get_algorithm
    # :call-seq:
    # get_algorithm(keys)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to query

    ##
    # Gets the enabled state for a set of DNSSEC keys.
    # :method: get_enabled_state
    # :call-seq:
    # get_enabled_state(keys)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to query

    ##
    # Gets the expiration period for a set of DNSSEC keys.
    # :method: get_expiration_period
    # :call-seq:
    # get_expiration_period(keys)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to query

    ##
    # Gets the enabled state for using the FIPS device to store and retrieve keys for a
    # set of DNSSEC keys.
    # :method: get_fips_state
    # :call-seq:
    # get_fips_state(keys)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to query

    ##
    # Gets the existing DNSSEC key generation identifiers for a set of DNSSEC keys. The
    # key generation identifier is a simple generation count, unique within a single DNSSEC
    # key.
    # :method: get_generation
    # :call-seq:
    # get_generation(keys)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to query

    ##
    # Gets the expiration date and time for a set of DNSSEC key generations.
    # :method: get_generation_expiration_time
    # :call-seq:
    # get_generation_expiration_time(keys ,generations)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to query
    # - generations ULong64[][] Identifiers for the key generations to query for each specified DNSSEC key

    ##
    # Gets the public text for a set of DNSSEC key generations.
    # :method: get_generation_public_text
    # :call-seq:
    # get_generation_public_text(keys ,generations)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to query
    # - generations ULong64[][] Identifiers for the key generations to query for each specified DNSSEC key

    ##
    # Gets the rollover date and time for a set of DNSSEC key generations.
    # :method: get_generation_rollover_time
    # :call-seq:
    # get_generation_rollover_time(keys ,generations)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to query
    # - generations ULong64[][] Identifiers for the key generations to query for each specified DNSSEC key

    ##
    # Gets the names of all DNSSEC keys.
    # :method: get_list

    ##
    # Gets the rollover period for a set of DNSSEC keys.
    # :method: get_rollover_period
    # :call-seq:
    # get_rollover_period(keys)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to query

    ##
    # Gets the RRSIG record signature publication period for a set of DNSSEC keys.
    # :method: get_signature_publication_period
    # :call-seq:
    # get_signature_publication_period(keys)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to query

    ##
    # Gets the RRSIG record signature validity period for a set of DNSSEC keys.
    # :method: get_signature_validity_period
    # :call-seq:
    # get_signature_validity_period(keys)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to query

    ##
    # Gets the digital signature sizes for a set of DNSSEC keys.
    # :method: get_size
    # :call-seq:
    # get_size(keys)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to query

    ##
    # Gets the Time To Live (TTL) for the DNSKEY record types.
    # :method: get_time_to_live
    # :call-seq:
    # get_time_to_live(keys)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to query

    ##
    # Gets the types for a set of DNSSEC keys.
    # :method: get_type
    # :call-seq:
    # get_type(keys)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to query

    ##
    # Get the version information for this interface.
    # :method: get_version

    ##
    # Sets the enabled state for a set of DNSSEC keys. If a DNSSEC key is disabled, the
    # key is still published, but it is not used to sign DNS record groups or keys.
    # :method: set_enabled_state
    # :call-seq:
    # set_enabled_state(keys ,states)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to modify
    # - states EnabledState[] Enabled state for each specified DNSSEC key (default: enabled)

    ##
    # Sets the expiration period for a set of DNSSEC keys. The expiration period is the
    # time between the activation of a DNSSEC key generation and its expiration. It must
    # be longer than the rollover period.
    # :method: set_expiration_period
    # :call-seq:
    # set_expiration_period(keys ,times)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to modify
    # - times long[] Expiration period (seconds) for each specified DNSSEC key (default: zero - never expires)

    ##
    # Sets the expiration date and time for a set of DNSSEC key generations. This method
    # can be used for any reason, but most likely used to invalidate a possibly compromised
    # key.
    # :method: set_generation_expiration_time
    # :call-seq:
    # set_generation_expiration_time(keys ,generations ,times)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to modify
    # - generations ULong64[][] Identifiers for the key generations to modify for each specified DNSSEC key
    # - times TimeStamp[][] Expiration date and time for each specified DNSSEC key generation (default: as specified in the key)

    ##
    # Sets the rollover date and time for a set of DNSSEC key generations. This method
    # can be used for any reason, but most likely used to invalidate a possibly compromised
    # key by forcing the creation of a new key generation.
    # :method: set_generation_rollover_time
    # :call-seq:
    # set_generation_rollover_time(keys ,generations ,times)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to modify
    # - generations ULong64[][] Identifiers for the key generations to modify for each specified DNSSEC key
    # - times TimeStamp[][] Rollover date and time for each specified DNSSEC key generation (default: as specified in the key)

    ##
    # Sets the rollover period for a set of DNSSEC keys. The rollover period is the time
    # between the activation of one DNSSEC key generation and the activation of the next
    # DNSSEC key generation.
    # :method: set_rollover_period
    # :call-seq:
    # set_rollover_period(keys ,times)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to modify
    # - times long[] Rollover period (seconds) for each specified DNSSEC key (default: zero - one-shot key (never rolls over))

    ##
    # Sets the RRSIG record signature publication period for a set of DNSSEC keys. The
    # signature publication period is the period in which the digital signature is published,
    # is stored in the RRSIG record, and should be significantly shorter than the Time
    # To Live period and must be shorter than the signature validity period.
    # :method: set_signature_publication_period
    # :call-seq:
    # set_signature_publication_period(keys ,times)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to modify
    # - times long[] Signature publication period (seconds) for each specified DNSSEC key (default: zero - standard BIND value)

    ##
    # Sets the RRSIG record signature validity period for a set of DNSSEC keys. This value
    # is the period for which the digital signature is valid and is stored in the RRSIG
    # record and should be significantly smaller than the Time To Live period.
    # :method: set_signature_validity_period
    # :call-seq:
    # set_signature_validity_period(keys ,times)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to modify
    # - times long[] Signature validity period (seconds) for each specified DNSSEC key (default: zero - standard BIND value)

    ##
    # Sets the Time To Live (TTL) for the DNSKEY record types.
    # :method: set_time_to_live
    # :call-seq:
    # set_time_to_live(keys ,times)
    #
    # Parameters:
    # - keys String[] Names of the DNSSEC keys to modify
    # - times long[] DNSKEY record Time To Live (TTL) (seconds) for each specified DNSSEC key (default: 86400 (1 day))


  end
end
