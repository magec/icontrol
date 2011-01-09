module IControl::Networking
  ##
  # The ProfileWCCPGRE interface allows you to manipulate a WCCP-GRE tunnel profile to
  # configure the General Routing Encapsulation (GRE - RFC2784) tunnel protocol in conjunction
  # with the Web-Cache Communication Protocol (WCCP). See the Networking/ProfileGRE interface
  # for additional information.
  class ProfileWCCPGRE < IControl::Base

    set_id_name "profile_names"

    class ProfileWCCPGREForwarding < IControl::Base::Struct; end
    class ProfileWCCPGREForwardingSequence < IControl::Base::Sequence ; end
    class WCCPGREForwardingSequence < IControl::Base::Sequence ; end
    # Forwarding options for packets leaving a WCCP-GRE tunnel
    class WCCPGREForwarding < IControl::Base::Enumeration; end    ##
    # Creates a set of WCCP-GRE tunnel profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def create
      super
    end

    ##
    # Deletes all non-system WCCP-GRE tunnel profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_profiles
      super
    end

    ##
    # Deletes a set of WCCP-GRE tunnel profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_profile
      super
    end

    ##
    # Gets the existing WCCP-GRE tunnel profile from which this set of WCCP-GRE profile
    # inherits its unspecified attribute values.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def default_profile
      super
    end

    ##
    # Gets the forwarding specification for packets leaving a WCCP-GRE tunnel for a set
    # of WCCP-GRE tunnel profile.
    # @rspec_example
    # @return [ProfileWCCPGREForwarding]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def egress_forwarding
      super
    end

    ##
    # Gets whether the checksum should be included in the transmitted packets for a set
    # of WCCP-GRE tunnel profile.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def include_checksum_state
      super
    end

    ##
    # Gets the names for all WCCP-GRE tunnel profile.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets whether the checksum should be validated on the received packets for a set of
    # WCCP-GRE tunnel profile.
    # @rspec_example
    # @return [ProfileEnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def validate_checksum_state
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
    # Gets the WCCP version currently in use for a set of WCCP-GRE tunnel profile.
    # @rspec_example
    # @return [ProfileULong]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def wccp_version
      super
    end

    ##
    # Determines whether a set of WCCP-GRE tunnel profile are base/pre-configured (vs user-defined)
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
    # Sets the existing WCCP-GRE tunnel profile from which this set of WCCP-GRE tunnel
    # profile inherits their unspecified attribute values.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :defaults WCCP-GRE tunnel profile from which each specified WCCP-GRE tunnel profile inherits its unspecified attribute values (default: wccpgre)
    def set_default_profile(opts)
      check_params(opts,[:defaults])
      super
    end

    ##
    # Sets the forwarding specification for packets leaving a WCCP-GRE tunnel for a set
    # of WCCP-GRE tunnel profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::ProfileWCCPGRE::ProfileWCCPGREForwarding] :modes Forwarding specification for packets leaving a WCCP-GRE tunnel for each specified WCCP-GRE tunnel profile (default: WCCP_GRE_FORWARD_NORMAL)
    def set_egress_forwarding(opts)
      check_params(opts,[:modes])
      super
    end

    ##
    # Sets whether the checksum should be included in the transmitted packets for a set
    # of WCCP-GRE tunnel profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::ProfileEnabledState] :states Enabled state for including the checksum in the transmitted packets for each specified WCCP-GRE tunnel profile (default: disabled)
    def set_include_checksum_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets whether the checksum should be validated on the received packets for a set of
    # WCCP-GRE tunnel profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::ProfileEnabledState] :states Enabled state for validating the checksum on the received packets for each specified WCCP-GRE tunnel profile
    def set_validate_checksum_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the WCCP version currently in use for a set of WCCP-GRE tunnel profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::ProfileULong] :versions WCCP version currently in use for each specified WCCP-GRE tunnel profiles
    def set_wccp_version(opts)
      check_params(opts,[:versions])
      super
    end

    ##
    # A structure that specifies the WCCP-GRE tunnel forwarding options
    # @attr [IControl::Networking::ProfileWCCPGRE::WCCPGREForwarding] value WCCP-GRE tunnel forwarding options
    # @attr [Object] default_flag How to interpret "value". For queries, if true, "value" is the parent profile's value; if false, "value" has been explicitly set. For creation and modification, if true, the parent profile's value is used to set the attribute value, and "value" is thus ignored; if false, "value" will be used.
    class ProfileWCCPGREForwarding < IControl::Base::Struct
      icontrol_attribute :value, IControl::Networking::ProfileWCCPGRE::WCCPGREForwarding
      icontrol_attribute :default_flag, Object
    end


    ##
    class ProfileWCCPGREForwardingSequence < IControl::Base::Sequence ; end
    ## Sequence of tunnel forwarding options
    class WCCPGREForwardingSequence < IControl::Base::Sequence ; end
    # Forwarding options for packets leaving a WCCP-GRE tunnel
    class WCCPGREForwarding < IControl::Base::Enumeration
      #
      WCCP_GRE_FORWARD_UNKNOWN = :WCCP_GRE_FORWARD_UNKNOWN
      # The transmitted packet's nexthop is determined via a routing table lookup.
      WCCP_GRE_FORWARD_NORMAL = :WCCP_GRE_FORWARD_NORMAL
      # A packet received over the tunnel is forwarded to the L2 address specified in its lasthop record (as received on the tunnel), if the original packet needs to be sent back towards its source.
      WCCP_GRE_FORWARD_LASTHOP = :WCCP_GRE_FORWARD_LASTHOP
    end


  end
end
