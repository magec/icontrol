module IControl::LocalLB
  ##
  # The ProfileOneConnect interface enables you to manipulate a local load balancer's
  # OneConnect profile.
  class ProfileOneConnect < IControl::Base
    class ProfileOneConnectStatisticEntry < IControl::Base::Struct; end
    class ProfileOneConnectStatistics < IControl::Base::Struct; end    ## A sequence of ProfileOneConnect statistics.
    class ProfileOneConnectStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a particular OneConnect profile.
    class ProfileOneConnectStatisticEntry < IControl::Base::Struct
      # The profile name.
      icontrol_attribute :profile_name, String
      # The statistics for the profile.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    class ProfileOneConnectStatistics < IControl::Base::Struct
      # The statistics for a sequence of profiles.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileOneConnect::ProfileOneConnectStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified OneConnect profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] The OneConnect profiles to create.

    ##
    # Deletes all OneConnect profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified OneConnect profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the OneConnect profiles to delete.

    ##
    # Gets the statistics for all the OneConnect profiles.
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
    # Gets the idle timeouts for connections in the specified connection pools.
    # :method: get_idle_timeout
    # :call-seq:
    # get_idle_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the OneConnect profiles.

    ##
    # Gets a list of all OneConnect profiles.
    # :method: get_list

    ##
    # Gets the maximum age (in seconds) after which a connection should not be reused.
    # :method: get_maximum_age
    # :call-seq:
    # get_maximum_age(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the OneConnect profiles.

    ##
    # Gets the maximum number of connections for the specified OneConnect profiles.
    # :method: get_maximum_connection
    # :call-seq:
    # get_maximum_connection(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the OneConnect profiles.

    ##
    # Gets the maximum times the connections in the pool can be reused.
    # :method: get_maximum_reuse
    # :call-seq:
    # get_maximum_reuse(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the OneConnect profiles.

    ##
    # Gets the masks applied to the source addresses to determine eligibility for connection
    # reuse.
    # :method: get_source_mask
    # :call-seq:
    # get_source_mask(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the statistics for the specified OneConnect profiles.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The OneConnect profiles to get the statistics from.

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
    # Resets the statistics for the specified OneConnect profiles.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the OneConnect profiles.

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
    # Sets the idle timeouts for connections in the specified connection pools.
    # :method: set_idle_timeout
    # :call-seq:
    # set_idle_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the OneConnect profiles.
    # - timeouts ProfileULong[] The idle timeouts for connections in the specified connection pools.

    ##
    # Sets the maximum age (in seconds) after which a connection should not be reused.
    # :method: set_maximum_age
    # :call-seq:
    # set_maximum_age(profile_names ,maximum_ages)
    #
    # Parameters:
    # - profile_names String[] The names of the OneConnect profiles.
    # - maximum_ages ProfileULong[] The maximum age (in seconds) after which a connection should not be reused.

    ##
    # Sets the maximum number of connections for the specified OneConnect profiles.
    # :method: set_maximum_connection
    # :call-seq:
    # set_maximum_connection(profile_names ,maximum_connections)
    #
    # Parameters:
    # - profile_names String[] The names of the OneConnect profiles.
    # - maximum_connections ProfileULong[] The maximum number of connections for the specified OneConnect profiles.

    ##
    # Sets the maximum times the connections in the pool can be reused.
    # :method: set_maximum_reuse
    # :call-seq:
    # set_maximum_reuse(profile_names ,maximum_reuses)
    #
    # Parameters:
    # - profile_names String[] The names of the OneConnect profiles.
    # - maximum_reuses ProfileULong[] The maximum times the connections in the pool can be reused.

    ##
    # Sets the masks applied to the source addresses to determine eligibility for connection
    # reuse.
    # :method: set_source_mask
    # :call-seq:
    # set_source_mask(profile_names ,source_masks)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - source_masks ProfileIPAddress[] The masks applied to the source addresses to determine eligibility for connection reuse.


  end
end
