module IControl::LocalLB
  ##
  # The ProfilePersistence interface enables you to manipulate a local load balancer's
  # Persistence profile.
  class ProfilePersistence < IControl::Base

    set_id_name "profile_names"

    class ProfilePersistenceHashMethod < IControl::Base::Struct; end
    class PersistenceHashMethodSequence < IControl::Base::Sequence ; end
    class ProfilePersistenceHashMethodSequence < IControl::Base::Sequence ; end
    # Persistence hash methods used for persisting connections
    class PersistenceHashMethod < IControl::Base::Enumeration; end    ##
    # Creates this Persistence profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::PersistenceMode] :modes The persistence modes for the specified profiles.
    def create(opts)
      opts = check_params(opts,[:modes])
      super(opts)
    end

    ##
    # Deletes all Persistence profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_profiles
      super
    end

    ##
    # Deletes this Persistence profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_profile
      super
    end

    ##
    # Gets the states to indicate whether persistence entries added under this profile
    # are available across pools.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def across_pool_state
      super
    end

    ##
    # Gets the states to indicate whether persistence entries added under this profile
    # are available across services.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def across_service_state
      super
    end

    ##
    # Gets the states to indicate whether persistence entries added under this profile
    # are available across virtuals.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def across_virtual_state
      super
    end

    ##
    # Gets the cookie expiration in seconds for this Persistence profile. Applicable when
    # peristence mode is PERSISTENCE_MODE_COOKIE.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def cookie_expiration
      super
    end

    ##
    # Gets the cookie hash lengths for this profile. Applicable when peristence mode is
    # PERSISTENCE_MODE_COOKIE, and cookie persistence method is COOKIE_PERSISTENCE_METHOD_HASH.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def cookie_hash_length
      super
    end

    ##
    # Gets the cookie hash offsets for this profile. Applicable when peristence mode is
    # PERSISTENCE_MODE_COOKIE, and cookie persistence method is COOKIE_PERSISTENCE_METHOD_HASH.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def cookie_hash_offset
      super
    end

    ##
    # Gets the cookie names for this Persistence profile. Applicable when peristence mode
    # is PERSISTENCE_MODE_COOKIE.
    # @rspec_example
    # @return [ProfileString]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def cookie_name
      super
    end

    ##
    # Gets the cookie persistence methods to be used when in cookie persistence mode. Applicable
    # when peristence mode is PERSISTENCE_MODE_COOKIE.
    # @rspec_example
    # @return [ProfileCookiePersistenceMethod]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def cookie_persistence_method
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
    # Gets the pattern marking the end of the section of payload data whose hashed value
    # is used for the persistence value for a set of persistence profile. This only returns
    # useful values if the persistence mode is PERSISTENCE_MODE_HASH and the hash method
    # is PERSISTENCE_HASH_CARP.
    # @rspec_example
    # @return [ProfileString]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ending_hash_pattern
      super
    end

    ##
    # Gets the length of payload data whose hashed value is used for the persistence value
    # for a set of persistence profile. This only returns useful values if the persistence
    # mode is PERSISTENCE_MODE_HASH and the hash method is PERSISTENCE_HASH_CARP.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def hash_length
      super
    end

    ##
    # Gets the hash method used to generate the persistence values for a set of persistence
    # profile. This only returns useful values if the persistence mode is PERSISTENCE_MODE_HASH.
    # @rspec_example
    # @return [ProfilePersistenceHashMethod]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def hash_method
      super
    end

    ##
    # Gets the enabled state whether to perform another hash operation after the current
    # hash operation completes for a set of persistence profile. This only returns useful
    # values if the persistence mode is PERSISTENCE_MODE_HASH and the hash method is PERSISTENCE_HASH_CARP.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def hash_more_data_state
      super
    end

    ##
    # Gets the offset to the start of the payload data whose hashed value is used as the
    # persistence value for a set of persistence profile. This only returns useful values
    # if the persistence mode is PERSISTENCE_MODE_HASH and the hash method is PERSISTENCE_HASH_CARP.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def hash_offset
      super
    end

    ##
    # Gets a list of all Persistence profile.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the states to indicate whether to map known proxies when the persistence mode
    # is source address affinity.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def map_proxy_state
      super
    end

    ##
    # Gets the masks used in either simple or sticky persistence mode.
    # @rspec_example
    # @return [ProfileIPAddress]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def mask
      super
    end

    ##
    # Gets the maximum size of the buffer used to hold the section of the payload data
    # whose hashed value is used for the persistence value for a set of persistence values.
    # This only returns useful values if the persistence mode is PERSISTENCE_MODE_HASH
    # and the hash method is PERSISTENCE_HASH_CARP.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def maximum_hash_buffer_size
      super
    end

    ##
    # Gets the mirror states for this Persistence profile.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def mirror_state
      super
    end

    ##
    # Gets the states to indicate whether MS terminal services have been configured without
    # a session directory for this Persistence profile.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def msrdp_without_session_directory_state
      super
    end

    ##
    # Gets the persistence modes for this Persistence profile.
    # @rspec_example
    # @return [ProfilePersistenceMode]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def persistence_mode
      super
    end

    ##
    # Gets the UIE rules for this Persistence profile. Applicable when peristence mode
    # is PERSISTENCE_MODE_UIE.
    # @rspec_example
    # @return [ProfileString]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def rule
      super
    end

    ##
    # Gets the sip_info headers for this Persistence profile. Applicable when peristence
    # mode is PERSISTENCE_MODE_SIP.
    # @rspec_example
    # @return [ProfileString]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def sip_info
      super
    end

    ##
    # Gets the pattern marking the start of the section of payload data whose hashed value
    # is used for the persistence value for a set of persistence profile. This only returns
    # useful values if the persistence mode is PERSISTENCE_MODE_HASH and the hash method
    # is PERSISTENCE_HASH_CARP.
    # @rspec_example
    # @return [ProfileString]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def starting_hash_pattern
      super
    end

    ##
    # Gets the timeout for this Persistence profile. The number of seconds to timeout a
    # persistence entry.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def timeout
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
    # Sets the states to indicate whether persistence entries added under this profile
    # are available across pools.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states for the specified Persistence profiles.
    def set_across_pool_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the states to indicate whether persistence entries added under this profile
    # are available across services.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states for the specified Persistence profiles.
    def set_across_service_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the states to indicate whether persistence entries added under this profile
    # are available across virtuals.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states for the specified Persistence profiles.
    def set_across_virtual_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the cookie expiration in seconds for this Persistence profile. Applicable when
    # peristence mode is PERSISTENCE_MODE_COOKIE.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :expirations The cookie expirations for the specified Persistence profiles.
    def set_cookie_expiration(opts)
      opts = check_params(opts,[:expirations])
      super(opts)
    end

    ##
    # Sets the cookie hash lengths for this profile. Applicable when peristence mode is
    # PERSISTENCE_MODE_COOKIE, and cookie persistence method is COOKIE_PERSISTENCE_METHOD_HASH.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :lengths The cookie hash lengths for the specified Persistence profiles.
    def set_cookie_hash_length(opts)
      opts = check_params(opts,[:lengths])
      super(opts)
    end

    ##
    # Sets the cookie hash offsets for this profile. Applicable when peristence mode is
    # PERSISTENCE_MODE_COOKIE, and cookie persistence method is COOKIE_PERSISTENCE_METHOD_HASH.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :offsets The cookie hash offsets for the specified Persistence profiles.
    def set_cookie_hash_offset(opts)
      opts = check_params(opts,[:offsets])
      super(opts)
    end

    ##
    # Sets the cookie names for this Persistence profile. Applicable when peristence mode
    # is PERSISTENCE_MODE_COOKIE.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :cookie_names The cookie names for the specified Persistence profiles.
    def set_cookie_name(opts)
      opts = check_params(opts,[:cookie_names])
      super(opts)
    end

    ##
    # Sets the cookie persistence methods to be used when in cookie persistence mode. Applicable
    # when peristence mode is PERSISTENCE_MODE_COOKIE.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileCookiePersistenceMethod] :methods The cookie persistence methods for the specified Persistence profiles.
    def set_cookie_persistence_method(opts)
      opts = check_params(opts,[:methods])
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
    # Sets the pattern marking the end of the section of payload data whose hashed value
    # is used for the persistence value for a set of persistence profile. The hash payload
    # data is either delimited by this starting and ending string pattern or the offset
    # and length, not both. This is only applicable when the persistence mode is PERSISTENCE_MODE_HASH
    # and the hash method is PERSISTENCE_HASH_CARP.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :patterns
    def set_ending_hash_pattern(opts)
      opts = check_params(opts,[:patterns])
      super(opts)
    end

    ##
    # Sets the length of payload data whose hashed value is used for the persistence value
    # for a set of persistence profile. The start of the data is specified via set_hash_offset.
    # The hash payload data is either delimited by this offset and length or the starting
    # and ending string pattern, not both. This is only applicable when the persistence
    # mode is PERSISTENCE_MODE_HASH and the hash method is PERSISTENCE_HASH_CARP.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :lengths Hashed payload data length (bytes) for each specified persistence profile (default: 0). If zero, the hashed payload data is not specified by an offset and length.
    def set_hash_length(opts)
      opts = check_params(opts,[:lengths])
      super(opts)
    end

    ##
    # Sets the hash method used to generate the persistence values for a set of persistence
    # profile. See PersistenceHashMethod for details. This is only applicable when the
    # persistence mode is PERSISTENCE_MODE_HASH.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfilePersistence::ProfilePersistenceHashMethod] :methods Persistence method for each specified profile (default: PERSISTENCE_HASH_DEFAULT)
    def set_hash_method(opts)
      opts = check_params(opts,[:methods])
      super(opts)
    end

    ##
    # Sets the enabled state whether to perform another hash operation after the current
    # hash operation completes for a set of persistence profile. This is only applicable
    # when the persistence mode is PERSISTENCE_MODE_HASH and the hash method is PERSISTENCE_HASH_CARP.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states Enabled state for more hashing for each specified persistence profile (default: disabled)
    def set_hash_more_data_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the offset to the start of the payload data whose hashed value is used as the
    # persistence value for a set of persistence profile. This is only applicable when
    # the persistence mode is PERSISTENCE_MODE_HASH and the hash method is PERSISTENCE_HASH_CARP.
    # The hashed payload data length is specified via set_hash_length.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :offsets Payload data offset (bytes) to the start of the hashed data for each specified persistence profile (default: 0)
    def set_hash_offset(opts)
      opts = check_params(opts,[:offsets])
      super(opts)
    end

    ##
    # Sets the states to indicate whether to map known proxies when the persistence mode
    # is source address affinity.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states for the specified Persistence profiles.
    def set_map_proxy_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the masks used in either simple or sticky persistence mode.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileIPAddress] :masks The masks for the specified Persistence profiles.
    def set_mask(opts)
      opts = check_params(opts,[:masks])
      super(opts)
    end

    ##
    # Sets the maximum size of the buffer used to hold the section of the payload data
    # whose hashed value is used for the persistence value for a set of persistence values.
    # This is only applicable when the persistence mode is PERSISTENCE_MODE_HASH and the
    # hash method is PERSISTENCE_HASH_CARP.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :sizes Maximum hashed data buffer size (bytes) for each specified persistence profile (default: 0)
    def set_maximum_hash_buffer_size(opts)
      opts = check_params(opts,[:sizes])
      super(opts)
    end

    ##
    # Sets the mirror states for this Persistence profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states indicating whether to mirror persistence records.
    def set_mirror_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the states to indicate whether MS terminal services have been configured without
    # a session directory for this Persistence profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states for the specified Persistence profiles.
    def set_msrdp_without_session_directory_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the persistence modes for this Persistence profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfilePersistenceMode] :modes The persistence modes for the specified profiles.
    def set_persistence_mode(opts)
      opts = check_params(opts,[:modes])
      super(opts)
    end

    ##
    # Sets the UIE rules for this Persistence profile. Applicable when peristence mode
    # is PERSISTENCE_MODE_UIE.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :rules The UIE rules for the specified Persistence profiles.
    def set_rule(opts)
      opts = check_params(opts,[:rules])
      super(opts)
    end

    ##
    # Sets the sip_info header for this Persistence profile. Applicable when peristence
    # mode is PERSISTENCE_MODE_SIP.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :sip_info_headers The sip_info headers for the specified Persistence profiles. Possible values are: 'Call-ID', 'To', 'From', 'SIP-ETag', 'Subject'.
    def set_sip_info(opts)
      opts = check_params(opts,[:sip_info_headers])
      super(opts)
    end

    ##
    # Sets the pattern marking the start of the section of payload data whose hashed value
    # is used for the persistence value for a set of persistence profile. This is only
    # applicable when the persistence mode is PERSISTENCE_MODE_HASH and the hash method
    # is PERSISTENCE_HASH_CARP.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :patterns
    def set_starting_hash_pattern(opts)
      opts = check_params(opts,[:patterns])
      super(opts)
    end

    ##
    # Sets the timeout for this Persistence profile. The number of seconds to timeout a
    # persistence entry.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :timeouts The idle timeouts for the specified Persistence profiles.
    def set_timeout(opts)
      opts = check_params(opts,[:timeouts])
      super(opts)
    end

    ##
    # A structure that specifies the persistence hash method for profiles
    # @attr [IControl::LocalLB::ProfilePersistence::PersistenceHashMethod] value Persistence hash method
    # @attr [Object] default_flag How to interpret "value". For queries, if true, "value" is the parent profile's value; if false, "value" has been explicitly set. For creation and modification, if true, the parent profile's value is used to set the attribute value, and "value" is thus ignored; if false, "value" will be used.
    class ProfilePersistenceHashMethod < IControl::Base::Struct
      icontrol_attribute :value, IControl::LocalLB::ProfilePersistence::PersistenceHashMethod
      icontrol_attribute :default_flag, Object
    end


    ## Sequence of persistence hash methods
    class PersistenceHashMethodSequence < IControl::Base::Sequence ; end
    ##
    class ProfilePersistenceHashMethodSequence < IControl::Base::Sequence ; end
    # Persistence hash methods used for persisting connections
    class PersistenceHashMethod < IControl::Base::Enumeration
      # Invalid enumeration value
      PERSISTENCE_HASH_NONE = :PERSISTENCE_HASH_NONE
      # The hash value of the pool member index is used for persistence.
      PERSISTENCE_HASH_DEFAULT = :PERSISTENCE_HASH_DEFAULT
      # The Cache Array Routing Protocol (i.e., packet payload) is used to obtain the hash value used for persistence.
      PERSISTENCE_HASH_CARP = :PERSISTENCE_HASH_CARP
    end


  end
end
