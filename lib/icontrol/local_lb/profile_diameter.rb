module IControl::LocalLB
  ##
  # The ProfileDiameter interface enables you to manipulate a local load balancer's Diameter profile.
  class ProfileDiameter < IControl::Base

    set_id_name "profile_names"

    class ProfileDiameterStatisticEntry < IControl::Base::Struct; end
    class ProfileDiameterStatistics < IControl::Base::Struct; end    ##
    # Creates this Diameter profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def create
      super
    end

    ##
    # Deletes all Diameter profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_profiles
      super
    end

    ##
    # Deletes this Diameter profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_profile
      super
    end

    ##
    # Gets the statistics for all the Diameter profile.
    # @return [ProfileDiameterStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the names of the default profile from which this profile will derive default values for its attributes.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def default_profile
      super
    end

    ##
    # Gets the realm to which a Diameter message is to be routed, overriding a destination realm present in the message. See set_destination_realm for more information.
    # @return [ProfileString]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def destination_realm
      super
    end

    ##
    # Gets a list of all Diameter profile.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the states to indicate whether overwrite destination host is enabled. See set_overwrite_destination_host_state for more information.
    # @return [ProfileEnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def overwrite_destination_host_state
      super
    end

    ##
    # Gets the Diameter Attribute Value Pair (AVP) used to indicate the parent AVP when the persist AVP is embedded in a grouped AVP. See set_persist_avp for more information on the AVP specification.
    # @return [ProfileString]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def parent_avp
      super
    end

    ##
    # Gets the the Diameter Attribute Value Pair (AVP) on which to persist for each of the profile given. See set_persist_avp for more information on the AVP specification.
    # @return [ProfileString]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def persist_avp
      super
    end

    ##
    # Gets the statistics for this Diameter profile.
    # @return [ProfileDiameterStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Determines whether this profile are base/pre-configured profile, or user-defined profile.
    # @return [boolean]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def is_base_profile
      super
    end

    ##
    # Resets the statistics for this Diameter profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the names of the default profile from which this profile will derive default values for its attributes.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :defaults The default profiles from which the specified profiles will get default values.
    def set_default_profile(opts)
      check_params(opts,[:defaults])
      super
    end

    ##
    # Sets the realm to which a Diameter message is to be routed, overriding a destination realm present in the message. If a message does not have a destination realm, then this setting has no effect.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :realms The destination realms for the specified profiles.
    def set_destination_realm(opts)
      check_params(opts,[:realms])
      super
    end

    ##
    # Sets the states to indicate whether overwrite destination host is enabled. If it is enabled, the system will overwrite the Destination-Host AVP (in a request) with the pool member's address.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states to set.
    def set_overwrite_destination_host_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the Diameter Attribute Value Pair (AVP) used to indicate the parent AVP when the persist AVP is embedded in a grouped AVP. See set_persist_avp for more information on the AVP specification.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :avps The attribute value pair acting as parent for the persist AVP for the specified profiles.
    def set_parent_avp(opts)
      check_params(opts,[:avps])
      super
    end

    ##
    # Sets the Diameter Attribute Value Pair (AVP) on which to persist for each of the profile given. The AVP specification can be a string or a numeric code (1-4294967295), encoded as string. If the string is empty, or the code does not exist in the traffic coming to the system, then persist is disabled (if the name is not recognized, this method will produce an error). See RFC 3588, section 4.5, for valid base numeric codes. Valid names are as follows, in any mix of upper and lower case: &amp;quot;auth-application-id", &amp;quot;destination-host", &amp;quot;destination-realm", &amp;quot;origin-host", &amp;quot;origin-realm", &amp;quot;session-id", &amp;quot;subscription-id", &amp;quot;subscription-id-data".
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :avps The attribute value pair on which to persist for the specified profiles.
    def set_persist_avp(opts)
      check_params(opts,[:avps])
      super
    end

    ##
    # A struct that describes statistics for a particular Diameter profile.
    # @attr [String] profile_name The profile name.
    # @attr [IControl::Common::Statistic] statistics The statistics for the profile.
    class ProfileDiameterStatisticEntry < IControl::Base::Struct
      icontrol_attribute :profile_name, String
      icontrol_attribute :statistics, IControl::Common::Statistic
    end

    ##
    # A struct that describes profile statistics and timestamp.
    # @attr [IControl::LocalLB::ProfileDiameter::ProfileDiameterStatisticEntry] statistics The statistics for a sequence of profiles.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class ProfileDiameterStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::ProfileDiameter::ProfileDiameterStatisticEntry
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of ProfileDiameter statistics.
    class ProfileDiameterStatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
