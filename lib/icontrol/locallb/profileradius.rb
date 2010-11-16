module IControl::LocalLB
  ##
  # The ProfileRADIUS interface enables you to manipulate a local load balancer's RADIUS
  # profile.
  class ProfileRADIUS < IControl::Base
    class ProfileRADIUSStatisticEntry < IControl::Base::Struct; end
    class ProfileRADIUSStatistics < IControl::Base::Struct; end    ## A sequence of ProfileRADIUS statistics.
    class ProfileRADIUSStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a particular RADIUS profile.
    class ProfileRADIUSStatisticEntry < IControl::Base::Struct
      # The profile name.
      icontrol_attribute :profile_name, String
      # The statistics for the profile.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    class ProfileRADIUSStatistics < IControl::Base::Struct
      # The statistics for a sequence of profiles.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileRADIUS::ProfileRADIUSStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Adds to the lists of host and network addresses from which clients can connect. See
    # get_client for more information on the client specification.
    # :method: add_client
    # :call-seq:
    # add_client(profile_names ,clients)
    #
    # Parameters:
    # - profile_names String[] The names of the RADIUS profiles.
    # - clients String[][] The lists of clients.

    ##
    # Creates the specified RADIUS profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] The RADIUS profiles to create.

    ##
    # Deletes all RADIUS profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified RADIUS profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the RADIUS profiles to delete.

    ##
    # Gets the statistics for all the RADIUS profiles.
    # :method: get_all_statistics

    ##
    # Gets the list of host and network addresses from which clients can connect. An entry
    # in the list can be a host or network address, for example: 10.10.10.0/24 or 10.10.10.10.
    # An empty value indicates that any client can connect.
    # :method: get_client
    # :call-seq:
    # get_client(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the RADIUS profiles.

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
    # Gets a list of all RADIUS profiles.
    # :method: get_list

    ##
    # Gets the the RADIUS Attribute (Value Pair; AVP) on which to persist for each of the
    # profiles given. See set_persist_avp for more information on the AVP specification.
    # :method: get_persist_avp
    # :call-seq:
    # get_persist_avp(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the RADIUS profiles.

    ##
    # Gets the statistics for the specified RADIUS profiles.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The RADIUS profiles to get the statistics from.

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
    # Removes entries from the lists of host and network addresses from which clients can
    # connect. See get_client for more information on the client specification.
    # :method: remove_client
    # :call-seq:
    # remove_client(profile_names ,clients)
    #
    # Parameters:
    # - profile_names String[] The names of the RADIUS profiles.
    # - clients String[][] The lists of clients.

    ##
    # Resets the statistics for the specified RADIUS profiles.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the RADIUS profiles.

    ##
    # Resets the client list to the parent defaults.
    # :method: set_default_client
    # :call-seq:
    # set_default_client(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the RADIUS profiles.

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
    # Sets the RADIUS Attribute (Value Pair; AVP) on which to persist for each of the profiles
    # given. The attribute specification can be a string or a numeric code (1-255), encoded
    # as string. If the string is empty, or the code does not exist in the traffic coming
    # to the system, then persist is disabled (if the name is not recognized, this method
    # will produce an error). See RFC 2865, section 5, for valid base numeric codes. Valid
    # names are as listed in section 5, in any mix of upper and lower case.
    # :method: set_persist_avp
    # :call-seq:
    # set_persist_avp(profile_names ,avps)
    #
    # Parameters:
    # - profile_names String[] The names of the RADIUS profiles.
    # - avps ProfileString[] The attribute value pair on which to persist for the specified profiles.


  end
end
