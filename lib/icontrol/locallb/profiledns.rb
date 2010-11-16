module IControl::LocalLB
  ##
  # The ProfileDNS interface enables you to manipulate a local load balancer's DNS profile.
  class ProfileDNS < IControl::Base
    class ProfileDNSStatisticEntry < IControl::Base::Struct; end
    class ProfileDNSStatistics < IControl::Base::Struct; end    ## A sequence of ProfileDNS statistics.
    class ProfileDNSStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a particular DNS profile.
    class ProfileDNSStatisticEntry < IControl::Base::Struct
      # The profile name.
      icontrol_attribute :profile_name, String
      # The statistics for the profile.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    class ProfileDNSStatistics < IControl::Base::Struct
      # The statistics for a sequence of profiles.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileDNS::ProfileDNSStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified DNS profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] The DNS profiles to create.

    ##
    # Deletes all DNS profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified DNS profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the DNS profiles to delete.

    ##
    # Gets the statistics for all the DNS profiles.
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
    # Gets the state that if true, allows GTM to handle DNS resolution for DNS queries
    # and responses that contain wide IP names.
    # :method: get_gtm_enabled_state
    # :call-seq:
    # get_gtm_enabled_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets a list of all DNS profiles.
    # :method: get_list

    ##
    # Gets the statistics for the specified DNS profiles.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The DNS profiles to get the statistics from.

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
    # Resets the statistics for the specified DNS profiles.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the DNS profiles.

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
    # Sets the state that if true, allows GTM to handle DNS resolution for DNS queries
    # and responses that contain wide IP names.
    # :method: set_gtm_enabled_state
    # :call-seq:
    # set_gtm_enabled_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The states for the specified profiles.


  end
end
