module IControl::LocalLB
  ##
  # The ProfileStream interface enables you to manipulate a local load balancer's stream
  # profile.
  class ProfileStream < IControl::Base
    class ProfileStreamStatisticEntry < IControl::Base::Struct; end
    class ProfileStreamStatistics < IControl::Base::Struct; end    ## A sequence of ProfileStream statistics.
    class ProfileStreamStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a particular stream profile.
    class ProfileStreamStatisticEntry < IControl::Base::Struct
      # The profile name.
      icontrol_attribute :profile_name, String
      # The statistics for the profile.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    class ProfileStreamStatistics < IControl::Base::Struct
      # The statistics for a sequence of profiles.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileStream::ProfileStreamStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified stream profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] The stream profiles to create.

    ##
    # Deletes all stream profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified stream profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the stream profiles to delete.

    ##
    # Gets the statistics for all the stream profiles.
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
    # Gets a list of all stream profiles.
    # :method: get_list

    ##
    # Gets the source strings to search for in the specified profiles.
    # :method: get_source_string
    # :call-seq:
    # get_source_string(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the stream profiles.

    ##
    # Gets the statistics for the specified stream profiles.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The stream profiles to get the statistics from.

    ##
    # Gets the target strings to replace with in the specified profiles.
    # :method: get_target_string
    # :call-seq:
    # get_target_string(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the stream profiles.

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
    # Resets the statistics for the specified stream profiles.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the stream profiles.

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
    # Sets the source strings to search for in the specified profiles.
    # :method: set_source_string
    # :call-seq:
    # set_source_string(profile_names ,sources)
    #
    # Parameters:
    # - profile_names String[] The names of the stream profiles.
    # - sources ProfileString[] The source strings to search for in the specified profiles.

    ##
    # Sets the target strings to replace with in the specified profiles.
    # :method: set_target_string
    # :call-seq:
    # set_target_string(profile_names ,targets)
    #
    # Parameters:
    # - profile_names String[] The names of the stream profiles.
    # - targets ProfileString[] The target strings to replace with in the specified profiles.


  end
end
