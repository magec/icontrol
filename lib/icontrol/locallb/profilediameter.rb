module IControl::LocalLB
  ##
  # The ProfileDiameter interface enables you to manipulate a local load balancer's Diameter
  # profile.
  class ProfileDiameter < IControl::Base
    class ProfileDiameterStatisticEntry < IControl::Base::Struct; end
    class ProfileDiameterStatistics < IControl::Base::Struct; end    ## A sequence of ProfileDiameter statistics.
    class ProfileDiameterStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a particular Diameter profile.
    class ProfileDiameterStatisticEntry < IControl::Base::Struct
      # The profile name.
      icontrol_attribute :profile_name, String
      # The statistics for the profile.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    class ProfileDiameterStatistics < IControl::Base::Struct
      # The statistics for a sequence of profiles.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileDiameter::ProfileDiameterStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified Diameter profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] The Diameter profiles to create.

    ##
    # Deletes all Diameter profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified Diameter profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Diameter profiles to delete.

    ##
    # Gets the statistics for all the Diameter profiles.
    # :method: get_all_statistics

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
    # Gets the realm to which a Diameter message is to be routed, overriding a destination
    # realm present in the message. See set_destination_realm for more information.
    # :method: get_destination_realm
    # :call-seq:
    # get_destination_realm(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Diameter profiles.

    ##
    # Gets a list of all Diameter profiles.
    # :method: get_list

    ##
    # Gets the states to indicate whether overwrite destination host is enabled. See set_overwrite_destination_host_state
    # for more information.
    # :method: get_overwrite_destination_host_state
    # :call-seq:
    # get_overwrite_destination_host_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Diameter profiles.

    ##
    # Gets the Diameter Attribute Value Pair (AVP) used to indicate the parent AVP when
    # the persist AVP is embedded in a grouped AVP. See set_persist_avp for more information
    # on the AVP specification.
    # :method: get_parent_avp
    # :call-seq:
    # get_parent_avp(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Diameter profiles.

    ##
    # Gets the the Diameter Attribute Value Pair (AVP) on which to persist for each of
    # the profiles given. See set_persist_avp for more information on the AVP specification.
    # :method: get_persist_avp
    # :call-seq:
    # get_persist_avp(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Diameter profiles.

    ##
    # Gets the statistics for the specified Diameter profiles.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The Diameter profiles to get the statistics from.

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
    # Resets the statistics for the specified Diameter profiles.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Diameter profiles.

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
    # Sets the realm to which a Diameter message is to be routed, overriding a destination
    # realm present in the message. If a message does not have a destination realm, then
    # this setting has no effect.
    # :method: set_destination_realm
    # :call-seq:
    # set_destination_realm(profile_names ,realms)
    #
    # Parameters:
    # - profile_names String[] The names of the Diameter profiles.
    # - realms ProfileString[] The destination realms for the specified profiles.

    ##
    # Sets the states to indicate whether overwrite destination host is enabled. If it
    # is enabled, the system will overwrite the Destination-Host AVP (in a request) with
    # the pool member's address.
    # :method: set_overwrite_destination_host_state
    # :call-seq:
    # set_overwrite_destination_host_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the Diameter profiles.
    # - states ProfileEnabledState[] The states to set.

    ##
    # Sets the Diameter Attribute Value Pair (AVP) used to indicate the parent AVP when
    # the persist AVP is embedded in a grouped AVP. See set_persist_avp for more information
    # on the AVP specification.
    # :method: set_parent_avp
    # :call-seq:
    # set_parent_avp(profile_names ,avps)
    #
    # Parameters:
    # - profile_names String[] The names of the Diameter profiles.
    # - avps ProfileString[] The attribute value pair acting as parent for the persist AVP for the specified profiles.

    ##
    # Sets the Diameter Attribute Value Pair (AVP) on which to persist for each of the
    # profiles given. The AVP specification can be a string or a numeric code (1-4294967295),
    # encoded as string. If the string is empty, or the code does not exist in the traffic
    # coming to the system, then persist is disabled (if the name is not recognized, this
    # method will produce an error). See RFC 3588, section 4.5, for valid base numeric
    # codes. Valid names are as follows, in any mix of upper and lower case: &amp;quot;auth-application-id",
    # &amp;quot;destination-host", &amp;quot;destination-realm", &amp;quot;origin-host",
    # &amp;quot;origin-realm", &amp;quot;session-id", &amp;quot;subscription-id", &amp;quot;subscription-id-data".
    # :method: set_persist_avp
    # :call-seq:
    # set_persist_avp(profile_names ,avps)
    #
    # Parameters:
    # - profile_names String[] The names of the Diameter profiles.
    # - avps ProfileString[] The attribute value pair on which to persist for the specified profiles.


  end
end
