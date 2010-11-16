module IControl::LocalLB
  ##
  # The ProfilePersistence interface enables you to manipulate a local load balancer's
  # Persistence profile.
  class ProfilePersistence < IControl::Base
    class PersistenceHashMethod < IControl::Base::Enumeration; end
    class ProfilePersistenceHashMethod < IControl::Base::Struct; end    ## Sequence of persistence hash methods
    class PersistenceHashMethodSequence < IControl::Base::Sequence ; end##
    class ProfilePersistenceHashMethodSequence < IControl::Base::Sequence ; end##
    # Persistence hash methods used for persisting connections
    class PersistenceHashMethod < IControl::Base::Enumeration
      # Invalid enumeration value
      PERSISTENCE_HASH_NONE = :PERSISTENCE_HASH_NONE
      # The hash value of the pool member index is used for persistence.
      PERSISTENCE_HASH_DEFAULT = :PERSISTENCE_HASH_DEFAULT
      # The Cache Array Routing Protocol (i.e., packet payload) is used to obtain the hash value used for persistence.
      PERSISTENCE_HASH_CARP = :PERSISTENCE_HASH_CARP
    end

    ##
    # A structure that specifies the persistence hash method for profiles
    class ProfilePersistenceHashMethod < IControl::Base::Struct
      # Persistence hash method
      icontrol_attribute :value, IControl::LocalLB::ProfilePersistence::PersistenceHashMethod
      # How to interpret "value". For queries, if true, "value" is the parent profile's value;
      # if false, "value" has been explicitly set. For creation and modification, if true,
      # the parent profile's value is used to set the attribute value, and "value" is thus
      # ignored; if false, "value" will be used.
      icontrol_attribute :default_flag, Object
    end

    ##
    # Creates the specified Persistence profiles.
    # :method: create
    # :call-seq:
    # create(profile_names ,modes)
    #
    # Parameters:
    # - profile_names String[] The Persistence profiles to create.
    # - modes PersistenceMode[] The persistence modes for the specified profiles.

    ##
    # Deletes all Persistence profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified Persistence profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles to delete.

    ##
    # Gets the states to indicate whether persistence entries added under this profile
    # are available across pools.
    # :method: get_across_pool_state
    # :call-seq:
    # get_across_pool_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.

    ##
    # Gets the states to indicate whether persistence entries added under this profile
    # are available across services.
    # :method: get_across_service_state
    # :call-seq:
    # get_across_service_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.

    ##
    # Gets the states to indicate whether persistence entries added under this profile
    # are available across virtuals.
    # :method: get_across_virtual_state
    # :call-seq:
    # get_across_virtual_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.

    ##
    # Gets the cookie expiration in seconds for the specified Persistence profiles. Applicable
    # when peristence mode is PERSISTENCE_MODE_COOKIE.
    # :method: get_cookie_expiration
    # :call-seq:
    # get_cookie_expiration(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.

    ##
    # Gets the cookie hash lengths for the specified profiles. Applicable when peristence
    # mode is PERSISTENCE_MODE_COOKIE, and cookie persistence method is COOKIE_PERSISTENCE_METHOD_HASH.
    # :method: get_cookie_hash_length
    # :call-seq:
    # get_cookie_hash_length(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.

    ##
    # Gets the cookie hash offsets for the specified profiles. Applicable when peristence
    # mode is PERSISTENCE_MODE_COOKIE, and cookie persistence method is COOKIE_PERSISTENCE_METHOD_HASH.
    # :method: get_cookie_hash_offset
    # :call-seq:
    # get_cookie_hash_offset(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.

    ##
    # Gets the cookie names for the specified Persistence profiles. Applicable when peristence
    # mode is PERSISTENCE_MODE_COOKIE.
    # :method: get_cookie_name
    # :call-seq:
    # get_cookie_name(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.

    ##
    # Gets the cookie persistence methods to be used when in cookie persistence mode. Applicable
    # when peristence mode is PERSISTENCE_MODE_COOKIE.
    # :method: get_cookie_persistence_method
    # :call-seq:
    # get_cookie_persistence_method(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.

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
    # Gets the pattern marking the end of the section of payload data whose hashed value
    # is used for the persistence value for a set of persistence profiles. This only returns
    # useful values if the persistence mode is PERSISTENCE_MODE_HASH and the hash method
    # is PERSISTENCE_HASH_CARP.
    # :method: get_ending_hash_pattern
    # :call-seq:
    # get_ending_hash_pattern(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the persistence profiles to query

    ##
    # Gets the length of payload data whose hashed value is used for the persistence value
    # for a set of persistence profiles. This only returns useful values if the persistence
    # mode is PERSISTENCE_MODE_HASH and the hash method is PERSISTENCE_HASH_CARP.
    # :method: get_hash_length
    # :call-seq:
    # get_hash_length(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the persistence profiles to query

    ##
    # Gets the hash method used to generate the persistence values for a set of persistence
    # profiles. This only returns useful values if the persistence mode is PERSISTENCE_MODE_HASH.
    # :method: get_hash_method
    # :call-seq:
    # get_hash_method(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the persistence profiles to query

    ##
    # Gets the enabled state whether to perform another hash operation after the current
    # hash operation completes for a set of persistence profiles. This only returns useful
    # values if the persistence mode is PERSISTENCE_MODE_HASH and the hash method is PERSISTENCE_HASH_CARP.
    # :method: get_hash_more_data_state
    # :call-seq:
    # get_hash_more_data_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the persistence profiles to query

    ##
    # Gets the offset to the start of the payload data whose hashed value is used as the
    # persistence value for a set of persistence profiles. This only returns useful values
    # if the persistence mode is PERSISTENCE_MODE_HASH and the hash method is PERSISTENCE_HASH_CARP.
    # :method: get_hash_offset
    # :call-seq:
    # get_hash_offset(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the persistence profiles to query

    ##
    # Gets a list of all Persistence profiles.
    # :method: get_list

    ##
    # Gets the states to indicate whether to map known proxies when the persistence mode
    # is source address affinity.
    # :method: get_map_proxy_state
    # :call-seq:
    # get_map_proxy_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.

    ##
    # Gets the masks used in either simple or sticky persistence mode.
    # :method: get_mask
    # :call-seq:
    # get_mask(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.

    ##
    # Gets the maximum size of the buffer used to hold the section of the payload data
    # whose hashed value is used for the persistence value for a set of persistence values.
    # This only returns useful values if the persistence mode is PERSISTENCE_MODE_HASH
    # and the hash method is PERSISTENCE_HASH_CARP.
    # :method: get_maximum_hash_buffer_size
    # :call-seq:
    # get_maximum_hash_buffer_size(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the persistence profiles to query

    ##
    # Gets the mirror states for the specified Persistence profiles.
    # :method: get_mirror_state
    # :call-seq:
    # get_mirror_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.

    ##
    # Gets the states to indicate whether MS terminal services have been configured without
    # a session directory for the specified Persistence profiles.
    # :method: get_msrdp_without_session_directory_state
    # :call-seq:
    # get_msrdp_without_session_directory_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.

    ##
    # Gets the persistence modes for the specified Persistence profiles.
    # :method: get_persistence_mode
    # :call-seq:
    # get_persistence_mode(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the UIE rules for the specified Persistence profiles. Applicable when peristence
    # mode is PERSISTENCE_MODE_UIE.
    # :method: get_rule
    # :call-seq:
    # get_rule(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.

    ##
    # Gets the sip_info headers for the specified Persistence profiles. Applicable when
    # peristence mode is PERSISTENCE_MODE_SIP.
    # :method: get_sip_info
    # :call-seq:
    # get_sip_info(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.

    ##
    # Gets the pattern marking the start of the section of payload data whose hashed value
    # is used for the persistence value for a set of persistence profiles. This only returns
    # useful values if the persistence mode is PERSISTENCE_MODE_HASH and the hash method
    # is PERSISTENCE_HASH_CARP.
    # :method: get_starting_hash_pattern
    # :call-seq:
    # get_starting_hash_pattern(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the persistence profiles to query

    ##
    # Gets the timeout for the specified Persistence profiles. The number of seconds to
    # timeout a persistence entry.
    # :method: get_timeout
    # :call-seq:
    # get_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.

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
    # Sets the states to indicate whether persistence entries added under this profile
    # are available across pools.
    # :method: set_across_pool_state
    # :call-seq:
    # set_across_pool_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.
    # - states ProfileEnabledState[] The states for the specified Persistence profiles.

    ##
    # Sets the states to indicate whether persistence entries added under this profile
    # are available across services.
    # :method: set_across_service_state
    # :call-seq:
    # set_across_service_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.
    # - states ProfileEnabledState[] The states for the specified Persistence profiles.

    ##
    # Sets the states to indicate whether persistence entries added under this profile
    # are available across virtuals.
    # :method: set_across_virtual_state
    # :call-seq:
    # set_across_virtual_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.
    # - states ProfileEnabledState[] The states for the specified Persistence profiles.

    ##
    # Sets the cookie expiration in seconds for the specified Persistence profiles. Applicable
    # when peristence mode is PERSISTENCE_MODE_COOKIE.
    # :method: set_cookie_expiration
    # :call-seq:
    # set_cookie_expiration(profile_names ,expirations)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.
    # - expirations ProfileULong[] The cookie expirations for the specified Persistence profiles.

    ##
    # Sets the cookie hash lengths for the specified profiles. Applicable when peristence
    # mode is PERSISTENCE_MODE_COOKIE, and cookie persistence method is COOKIE_PERSISTENCE_METHOD_HASH.
    # :method: set_cookie_hash_length
    # :call-seq:
    # set_cookie_hash_length(profile_names ,lengths)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.
    # - lengths ProfileULong[] The cookie hash lengths for the specified Persistence profiles.

    ##
    # Sets the cookie hash offsets for the specified profiles. Applicable when peristence
    # mode is PERSISTENCE_MODE_COOKIE, and cookie persistence method is COOKIE_PERSISTENCE_METHOD_HASH.
    # :method: set_cookie_hash_offset
    # :call-seq:
    # set_cookie_hash_offset(profile_names ,offsets)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.
    # - offsets ProfileULong[] The cookie hash offsets for the specified Persistence profiles.

    ##
    # Sets the cookie names for the specified Persistence profiles. Applicable when peristence
    # mode is PERSISTENCE_MODE_COOKIE.
    # :method: set_cookie_name
    # :call-seq:
    # set_cookie_name(profile_names ,cookie_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.
    # - cookie_names ProfileString[] The cookie names for the specified Persistence profiles.

    ##
    # Sets the cookie persistence methods to be used when in cookie persistence mode. Applicable
    # when peristence mode is PERSISTENCE_MODE_COOKIE.
    # :method: set_cookie_persistence_method
    # :call-seq:
    # set_cookie_persistence_method(profile_names ,methods)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.
    # - methods ProfileCookiePersistenceMethod[] The cookie persistence methods for the specified Persistence profiles.

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
    # Sets the pattern marking the end of the section of payload data whose hashed value
    # is used for the persistence value for a set of persistence profiles. The hash payload
    # data is either delimited by this starting and ending string pattern or the offset
    # and length, not both. This is only applicable when the persistence mode is PERSISTENCE_MODE_HASH
    # and the hash method is PERSISTENCE_HASH_CARP.
    # :method: set_ending_hash_pattern
    # :call-seq:
    # set_ending_hash_pattern(profile_names ,patterns)
    #
    # Parameters:
    # - profile_names String[] Names of the persistence profiles to modify
    # - patterns ProfileString[]

    ##
    # Sets the length of payload data whose hashed value is used for the persistence value
    # for a set of persistence profiles. The start of the data is specified via set_hash_offset.
    # The hash payload data is either delimited by this offset and length or the starting
    # and ending string pattern, not both. This is only applicable when the persistence
    # mode is PERSISTENCE_MODE_HASH and the hash method is PERSISTENCE_HASH_CARP.
    # :method: set_hash_length
    # :call-seq:
    # set_hash_length(profile_names ,lengths)
    #
    # Parameters:
    # - profile_names String[] Names of the persistence profiles to modify
    # - lengths ProfileULong[] Hashed payload data length (bytes) for each specified persistence profile (default: 0). If zero, the hashed payload data is not specified by an offset and length.

    ##
    # Sets the hash method used to generate the persistence values for a set of persistence
    # profiles. See PersistenceHashMethod for details. This is only applicable when the
    # persistence mode is PERSISTENCE_MODE_HASH.
    # :method: set_hash_method
    # :call-seq:
    # set_hash_method(profile_names ,methods)
    #
    # Parameters:
    # - profile_names String[] Names of the persistence profiles to modify
    # - methods ProfilePersistenceHashMethod[] Persistence method for each specified profile (default: PERSISTENCE_HASH_DEFAULT)

    ##
    # Sets the enabled state whether to perform another hash operation after the current
    # hash operation completes for a set of persistence profiles. This is only applicable
    # when the persistence mode is PERSISTENCE_MODE_HASH and the hash method is PERSISTENCE_HASH_CARP.
    # :method: set_hash_more_data_state
    # :call-seq:
    # set_hash_more_data_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] Names of the persistence profiles to modify
    # - states ProfileEnabledState[] Enabled state for more hashing for each specified persistence profile (default: disabled)

    ##
    # Sets the offset to the start of the payload data whose hashed value is used as the
    # persistence value for a set of persistence profiles. This is only applicable when
    # the persistence mode is PERSISTENCE_MODE_HASH and the hash method is PERSISTENCE_HASH_CARP.
    # The hashed payload data length is specified via set_hash_length.
    # :method: set_hash_offset
    # :call-seq:
    # set_hash_offset(profile_names ,offsets)
    #
    # Parameters:
    # - profile_names String[] Names of the persistence profiles to modify
    # - offsets ProfileULong[] Payload data offset (bytes) to the start of the hashed data for each specified persistence profile (default: 0)

    ##
    # Sets the states to indicate whether to map known proxies when the persistence mode
    # is source address affinity.
    # :method: set_map_proxy_state
    # :call-seq:
    # set_map_proxy_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.
    # - states ProfileEnabledState[] The states for the specified Persistence profiles.

    ##
    # Sets the masks used in either simple or sticky persistence mode.
    # :method: set_mask
    # :call-seq:
    # set_mask(profile_names ,masks)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.
    # - masks ProfileIPAddress[] The masks for the specified Persistence profiles.

    ##
    # Sets the maximum size of the buffer used to hold the section of the payload data
    # whose hashed value is used for the persistence value for a set of persistence values.
    # This is only applicable when the persistence mode is PERSISTENCE_MODE_HASH and the
    # hash method is PERSISTENCE_HASH_CARP.
    # :method: set_maximum_hash_buffer_size
    # :call-seq:
    # set_maximum_hash_buffer_size(profile_names ,sizes)
    #
    # Parameters:
    # - profile_names String[] Names of the persistence profiles to modify
    # - sizes ProfileULong[] Maximum hashed data buffer size (bytes) for each specified persistence profile (default: 0)

    ##
    # Sets the mirror states for the specified Persistence profiles.
    # :method: set_mirror_state
    # :call-seq:
    # set_mirror_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.
    # - states ProfileEnabledState[] The states indicating whether to mirror persistence records.

    ##
    # Sets the states to indicate whether MS terminal services have been configured without
    # a session directory for the specified Persistence profiles.
    # :method: set_msrdp_without_session_directory_state
    # :call-seq:
    # set_msrdp_without_session_directory_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.
    # - states ProfileEnabledState[] The states for the specified Persistence profiles.

    ##
    # Sets the persistence modes for the specified Persistence profiles.
    # :method: set_persistence_mode
    # :call-seq:
    # set_persistence_mode(profile_names ,modes)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - modes ProfilePersistenceMode[] The persistence modes for the specified profiles.

    ##
    # Sets the UIE rules for the specified Persistence profiles. Applicable when peristence
    # mode is PERSISTENCE_MODE_UIE.
    # :method: set_rule
    # :call-seq:
    # set_rule(profile_names ,rules)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.
    # - rules ProfileString[] The UIE rules for the specified Persistence profiles.

    ##
    # Sets the sip_info header for the specified Persistence profiles. Applicable when
    # peristence mode is PERSISTENCE_MODE_SIP.
    # :method: set_sip_info
    # :call-seq:
    # set_sip_info(profile_names ,sip_info_headers)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.
    # - sip_info_headers ProfileString[] The sip_info headers for the specified Persistence profiles. Possible values are: 'Call-ID', 'To', 'From', 'SIP-ETag', 'Subject'.

    ##
    # Sets the pattern marking the start of the section of payload data whose hashed value
    # is used for the persistence value for a set of persistence profiles. This is only
    # applicable when the persistence mode is PERSISTENCE_MODE_HASH and the hash method
    # is PERSISTENCE_HASH_CARP.
    # :method: set_starting_hash_pattern
    # :call-seq:
    # set_starting_hash_pattern(profile_names ,patterns)
    #
    # Parameters:
    # - profile_names String[] Names of the persistence profiles to modify
    # - patterns ProfileString[]

    ##
    # Sets the timeout for the specified Persistence profiles. The number of seconds to
    # timeout a persistence entry.
    # :method: set_timeout
    # :call-seq:
    # set_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the Persistence profiles.
    # - timeouts ProfileULong[] The idle timeouts for the specified Persistence profiles.


  end
end
