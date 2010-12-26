module IControl::Networking
  ##
  # The ProfileGRE interface allows you to manipulate a GRE tunnel profile to configure the General Routing Encapsulation tunneling protocol. The General Routing Encapsulation supports RFC2784, allowing the packets of any L3 protocol to be carried inside encapsulating IP packets.
  class ProfileGRE < IControl::Base

    set_id_name "profile_names"

    ##
    # Creates a set of GRE tunnel profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def create
      super
    end

    ##
    # Deletes all non-system GRE tunnel profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_profiles
      super
    end

    ##
    # Deletes a set of GRE tunnel profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_profile
      super
    end

    ##
    # Gets the existing GRE tunnel profile from which this set of GRE profile inherits its unspecified attribute values.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def default_profile
      super
    end

    ##
    # Gets whether the checksum should be included in the transmitted packets for a set of GRE tunnel profile.
    # @return [ProfileEnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def include_checksum_state
      super
    end

    ##
    # Gets the names for all GRE tunnel profile.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets whether the checksum should be validated on the received packets for a set of GRE tunnel profile.
    # @return [ProfileEnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def validate_checksum_state
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Determines whether a set of GRE tunnel profile are base/pre-configured (vs user-defined) profile.
    # @return [boolean]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def is_base_profile
      super
    end

    ##
    # Sets the existing GRE tunnel profile from which this set of GRE tunnel profile inherits their unspecified attribute values.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :defaults GRE tunnel profile from which each specified GRE tunnel profile inherits its unspecified attribute values (default: gre)
    def set_default_profile(opts)
      check_params(opts,[:defaults])
      super
    end

    ##
    # Sets whether the checksum should be included in the transmitted packets for a set of GRE tunnel profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::ProfileEnabledState] :states Enabled state for including the checksum in the transmitted packets for each specified GRE tunnel profile (default: disabled)
    def set_include_checksum_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets whether the checksum should be validated on the received packets for a set of GRE tunnel profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::ProfileEnabledState] :states Enabled state for validating the checksum on the received packets for each specified GRE tunnel profile
    def set_validate_checksum_state(opts)
      check_params(opts,[:states])
      super
    end


  end
end
