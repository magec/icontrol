module IControl::LocalLB
  ##
  # The ProfileUserStatistic interface enables you to manage user-defined statistics
  # in a profile. The user can define up to 32 user-defined statistics in each profile.
  class ProfileUserStatistic < IControl::Base
    class UserStatisticKey < IControl::Base::Enumeration; end
    class ProfileUserStatisticStatisticEntry < IControl::Base::Struct; end
    class ProfileUserStatisticStatistics < IControl::Base::Struct; end
    class UserStatistic < IControl::Base::Struct; end
    class UserStatisticName < IControl::Base::Struct; end    ## A sequence of ProfileUserStatistic statistics.
    class ProfileUserStatisticStatisticEntrySequence < IControl::Base::Sequence ; end## A sequence of user-defined statistic keys.
    class UserStatisticKeySequence < IControl::Base::Sequence ; end## A sequence of sequence of user-defined statistic keys.
    class UserStatisticKeySequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of UserStatisticName's.
    class UserStatisticNameSequence < IControl::Base::Sequence ; end## A sequence of sequence of UserStatisticName's.
    class UserStatisticNameSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of different statistics.
    class UserStatisticSequence < IControl::Base::Sequence ; end##
    # A list of user statistic fields in the profile.
    class UserStatisticKey < IControl::Base::Enumeration
      # Undefined statistic name.
      USER_STATISTIC_UNDEFINED = :USER_STATISTIC_UNDEFINED
      # User-defined statistic name # 1.
      USER_STATISTIC_1 = :USER_STATISTIC_1
      # User-defined statistic name # 2.
      USER_STATISTIC_2 = :USER_STATISTIC_2
      # User-defined statistic name # 3.
      USER_STATISTIC_3 = :USER_STATISTIC_3
      # User-defined statistic name # 4.
      USER_STATISTIC_4 = :USER_STATISTIC_4
      # User-defined statistic name # 5.
      USER_STATISTIC_5 = :USER_STATISTIC_5
      # User-defined statistic name # 6.
      USER_STATISTIC_6 = :USER_STATISTIC_6
      # User-defined statistic name # 7.
      USER_STATISTIC_7 = :USER_STATISTIC_7
      # User-defined statistic name # 8.
      USER_STATISTIC_8 = :USER_STATISTIC_8
      # User-defined statistic name # 9.
      USER_STATISTIC_9 = :USER_STATISTIC_9
      # User-defined statistic name # 10.
      USER_STATISTIC_10 = :USER_STATISTIC_10
      # User-defined statistic name # 11.
      USER_STATISTIC_11 = :USER_STATISTIC_11
      # User-defined statistic name # 12.
      USER_STATISTIC_12 = :USER_STATISTIC_12
      # User-defined statistic name # 13.
      USER_STATISTIC_13 = :USER_STATISTIC_13
      # User-defined statistic name # 14.
      USER_STATISTIC_14 = :USER_STATISTIC_14
      # User-defined statistic name # 15.
      USER_STATISTIC_15 = :USER_STATISTIC_15
      # User-defined statistic name # 16.
      USER_STATISTIC_16 = :USER_STATISTIC_16
      # User-defined statistic name # 17.
      USER_STATISTIC_17 = :USER_STATISTIC_17
      # User-defined statistic name # 18.
      USER_STATISTIC_18 = :USER_STATISTIC_18
      # User-defined statistic name # 19.
      USER_STATISTIC_19 = :USER_STATISTIC_19
      # User-defined statistic name # 20.
      USER_STATISTIC_20 = :USER_STATISTIC_20
      # User-defined statistic name # 21.
      USER_STATISTIC_21 = :USER_STATISTIC_21
      # User-defined statistic name # 22.
      USER_STATISTIC_22 = :USER_STATISTIC_22
      # User-defined statistic name # 23.
      USER_STATISTIC_23 = :USER_STATISTIC_23
      # User-defined statistic name # 24.
      USER_STATISTIC_24 = :USER_STATISTIC_24
      # User-defined statistic name # 25.
      USER_STATISTIC_25 = :USER_STATISTIC_25
      # User-defined statistic name # 26.
      USER_STATISTIC_26 = :USER_STATISTIC_26
      # User-defined statistic name # 27.
      USER_STATISTIC_27 = :USER_STATISTIC_27
      # User-defined statistic name # 28.
      USER_STATISTIC_28 = :USER_STATISTIC_28
      # User-defined statistic name # 29.
      USER_STATISTIC_29 = :USER_STATISTIC_29
      # User-defined statistic name # 30.
      USER_STATISTIC_30 = :USER_STATISTIC_30
      # User-defined statistic name # 31.
      USER_STATISTIC_31 = :USER_STATISTIC_31
      # User-defined statistic name # 32.
      USER_STATISTIC_32 = :USER_STATISTIC_32
    end

    ##
    # A struct that describes statistics for a particular user-defined statistic profile.
    class ProfileUserStatisticStatisticEntry < IControl::Base::Struct
      # The profile name.
      icontrol_attribute :profile_name, String
      # The statistics for the profile.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileUserStatistic::UserStatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    class ProfileUserStatisticStatistics < IControl::Base::Struct
      # The statistics for a sequence of profiles.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileUserStatistic::ProfileUserStatisticStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A user-defined statistic entry with type and value.
    class UserStatistic < IControl::Base::Struct
      # The statistic key.
      icontrol_attribute :statistic_key, IControl::LocalLB::ProfileUserStatistic::UserStatisticKey
      # The value of the statistic.
      icontrol_attribute :value, IControl::Common::ULong64
      # The timestamp of the statistic (Not currently supported in 9.0, intended for future
      # use)
      icontrol_attribute :time_stamp, Numeric
    end

    ##
    # A struct that describes a user-defined statistic name.
    class UserStatisticName < IControl::Base::Struct
      # The statistic key.
      icontrol_attribute :statistic_key, IControl::LocalLB::ProfileUserStatistic::UserStatisticKey
      # The statistic name.
      icontrol_attribute :statistic_name, IControl::LocalLB::ProfileString
    end

    ##
    # Creates the specified user-defined statistic profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] The user-defined statistic profiles to create.

    ##
    # Deletes all user-defined statistic profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified user-defined statistic profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the user-defined statistic profiles to delete.

    ##
    # Gets the statistics for all the user-defined statistic profiles. Only the statistic
    # values of the user-defined statistics will be returned, i.e. even though there are
    # up to 32 custom statistics in any given profile, but if only 3 of those custom statistics
    # have been defined by the user, then only the values of those 3 statistics will be
    # returned.
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
    # Gets a list of all user-defined statistic profiles.
    # :method: get_list

    ##
    # Gets the user-defined statistic names in the specified profiles.
    # :method: get_statistic_name
    # :call-seq:
    # get_statistic_name(profile_names ,statistic_keys)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - statistic_keys UserStatisticKey[][] The statistic keys used to index the statistic names.			Each "inner" sequence of statistic keys corresponds to a profile			specified in profile_names.

    ##
    # Gets the statistics for the specified user-defined statistic profiles. Only the statistic
    # values of the user-defined statistics will be returned, i.e. even though there are
    # up to 32 custom statistics in any given profile, but if only 3 of those custom statistics
    # have been defined by the user, then only the values of those 3 statistics will be
    # returned.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The user-defined statistic profiles to get the statistics from.

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
    # Resets the statistics for the specified user-defined statistic profiles.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the user-defined statistic profiles.

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
    # Sets the user-defined statistic names in the specified profiles.
    # :method: set_statistic_name
    # :call-seq:
    # set_statistic_name(profile_names ,statistic_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - statistic_names UserStatisticName[][] The user-defined statistic names in the specified profiles.			 Each "inner" sequence of statistic names corresponds to a profile			 specified in profile_names.


  end
end
