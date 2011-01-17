module IControl::LocalLB
  ##
  # The ProfileUserStatistic interface enables you to manage user-defined statistics
  # in a profile. The user can define up to 32 user-defined statistics in each profile.
  class ProfileUserStatistic < IControl::Base

    set_id_name "profile_names"

    class ProfileUserStatisticStatisticEntry < IControl::Base::Struct; end
    class ProfileUserStatisticStatistics < IControl::Base::Struct; end
    class UserStatistic < IControl::Base::Struct; end
    class UserStatisticName < IControl::Base::Struct; end
    class ProfileUserStatisticStatisticEntrySequence < IControl::Base::Sequence ; end
    class UserStatisticKeySequence < IControl::Base::Sequence ; end
    class UserStatisticKeySequenceSequence < IControl::Base::SequenceSequence ; end
    class UserStatisticNameSequence < IControl::Base::Sequence ; end
    class UserStatisticNameSequenceSequence < IControl::Base::SequenceSequence ; end
    class UserStatisticSequence < IControl::Base::Sequence ; end
    # A list of user statistic fields in the profile.
    class UserStatisticKey < IControl::Base::Enumeration; end    ##
    # Creates this user-defined statistic profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def create
      super
    end

    ##
    # Deletes all user-defined statistic profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_profiles
      super
    end

    ##
    # Deletes this user-defined statistic profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_profile
      super
    end

    ##
    # Gets the statistics for all the user-defined statistic profile. Only the statistic
    # values of the user-defined statistics will be returned, i.e. even though there are
    # up to 32 custom statistics in any given profile, but if only 3 of those custom statistics
    # have been defined by the user, then only the values of those 3 statistics will be
    # returned.
    # @rspec_example
    # @return [ProfileUserStatisticStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the names of the default profile from which this profile will derive default
    # values for its attributes.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def default_profile
      super
    end

    ##
    # Gets a list of all user-defined statistic profile.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the user-defined statistic names in this profile.
    # @rspec_example
    # @return [UserStatisticName[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileUserStatistic::UserStatisticKey[]] :statistic_keys The statistic keys used to index the statistic names.			Each "inner" sequence of statistic keys corresponds to a profile			specified in profile_names.
    def statistic_name(opts)
      opts = check_params(opts,[:statistic_keys])
      super(opts)
    end

    ##
    # Gets the statistics for this user-defined statistic profile. Only the statistic values
    # of the user-defined statistics will be returned, i.e. even though there are up to
    # 32 custom statistics in any given profile, but if only 3 of those custom statistics
    # have been defined by the user, then only the values of those 3 statistics will be
    # returned.
    # @rspec_example
    # @return [ProfileUserStatisticStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
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
    # Determines whether this profile are base/pre-configured profile, or user-defined
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
    # Resets the statistics for this user-defined statistic profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the names of the default profile from which this profile will derive default
    # values for its attributes.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :defaults The default profiles from which the specified profiles will get default values.
    def set_default_profile(opts)
      opts = check_params(opts,[:defaults])
      super(opts)
    end

    ##
    # Sets the user-defined statistic names in this profile.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileUserStatistic::UserStatisticName[]] :statistic_names The user-defined statistic names in the specified profiles.			 Each "inner" sequence of statistic names corresponds to a profile			 specified in profile_names.
    def set_statistic_name(opts)
      opts = check_params(opts,[:statistic_names])
      super(opts)
    end

    ##
    # A struct that describes statistics for a particular user-defined statistic profile.
    # @attr [String] profile_name The profile name.
    # @attr [IControl::LocalLB::ProfileUserStatistic::UserStatisticSequence] statistics The statistics for the profile.
    class ProfileUserStatisticStatisticEntry < IControl::Base::Struct
      icontrol_attribute :profile_name, String
      icontrol_attribute :statistics, IControl::LocalLB::ProfileUserStatistic::UserStatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    # @attr [IControl::LocalLB::ProfileUserStatistic::ProfileUserStatisticStatisticEntrySequence] statistics The statistics for a sequence of profiles.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class ProfileUserStatisticStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::ProfileUserStatistic::ProfileUserStatisticStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A user-defined statistic entry with type and value.
    # @attr [IControl::LocalLB::ProfileUserStatistic::UserStatisticKey] statistic_key The statistic key.
    # @attr [IControl::Common::ULong64] value The value of the statistic.
    # @attr [Numeric] time_stamp The timestamp of the statistic (Not currently supported in 9.0, intended for future use)
    class UserStatistic < IControl::Base::Struct
      icontrol_attribute :statistic_key, IControl::LocalLB::ProfileUserStatistic::UserStatisticKey
      icontrol_attribute :value, IControl::Common::ULong64
      icontrol_attribute :time_stamp, Numeric
    end

    ##
    # A struct that describes a user-defined statistic name.
    # @attr [IControl::LocalLB::ProfileUserStatistic::UserStatisticKey] statistic_key The statistic key.
    # @attr [IControl::LocalLB::ProfileString] statistic_name The statistic name.
    class UserStatisticName < IControl::Base::Struct
      icontrol_attribute :statistic_key, IControl::LocalLB::ProfileUserStatistic::UserStatisticKey
      icontrol_attribute :statistic_name, IControl::LocalLB::ProfileString
    end


    ## A sequence of ProfileUserStatistic statistics.
    class ProfileUserStatisticStatisticEntrySequence < IControl::Base::Sequence ; end
    ## A sequence of user-defined statistic keys.
    class UserStatisticKeySequence < IControl::Base::Sequence ; end
    ## A sequence of sequence of user-defined statistic keys.
    class UserStatisticKeySequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of UserStatisticName's.
    class UserStatisticNameSequence < IControl::Base::Sequence ; end
    ## A sequence of sequence of UserStatisticName's.
    class UserStatisticNameSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of different statistics.
    class UserStatisticSequence < IControl::Base::Sequence ; end
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


  end
end
