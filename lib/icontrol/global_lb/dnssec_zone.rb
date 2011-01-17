module IControl::GlobalLB
  ##
  # The DNSSECZone interface manages the zones in which securing DNS information, i.e.,
  # DNSSEC, is active. When a zone is active, its DNS record groups are digitally signed,
  # the DNS record names are hashed, and keys sent to upstream DNS servers are digitally
  # signed. A DNSSEC zone can contain any number of DNSSEC keys, and a single DNSSEC
  # key can be used in more than one DNSSEC zone. Note that a large number of DNSSEC
  # keys in a single DNSSEC zone can affect the responsiveness to DNS requests. Note
  # that the term &amp;quot;zone" in this interface is not necessarily &amp;quot;zone"
  # in a DNS sense. See the DNSSECKey interface for managing the keys themselves.
  class DNSSECZone < IControl::Base

    set_id_name "zones"

    ##
    # Adds DNSSEC keys to a set of DNSSEC zone.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :keys Names of DNSSEC keys to add to each specified DNSSEC zone
    def add_key(opts)
      opts = check_params(opts,[:keys])
      super(opts)
    end

    ##
    # Creates a set of DNSSEC zone.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :keys DNSSEC key names for each specified DNSSEC zone
    def create(opts)
      opts = check_params(opts,[:keys])
      super(opts)
    end

    ##
    # Deletes all DNSSEC zone.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_zones
      super
    end

    ##
    # Deletes a set of DNSSEC zone.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_zone
      super
    end

    ##
    # Gets the enabled state for a set of DNSSEC zone.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def enabled_state
      super
    end

    ##
    # Gets the DNSSEC keys for a set of DNSSEC zone.
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def key
      super
    end

    ##
    # Gets the names of all DNSSEC zone.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the status of a set of DNSSEC zone.
    # @rspec_example
    # @return [ObjectStatus]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def object_status
      super
    end

    ##
    # Get the version information for this interface.
    # @rspec_example
    # @return [String]
    def version
      super
    end

    ##
    # Removes all DNSSEC keys from a set of DNSSEC zone.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_keys
      super
    end

    ##
    # Removes DNSSEC keys from a set of DNSSEC zone.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :keys Names of DNSSEC keys to delete from each specified DNSSEC zone
    def remove_key(opts)
      opts = check_params(opts,[:keys])
      super(opts)
    end

    ##
    # Sets the enabled state for a set of DNSSEC zone. Note that individual keys can also
    # be enabled and disabled. See the DNSSECKey interface for details.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states Enabled/disabled state for each specified DNSSEC zone (default: enabled)
    def set_enabled_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end


  end
end
