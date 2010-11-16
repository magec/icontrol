module IControl::LocalLB
  ##
  # The ProfileIIOP interface enables you to manipulate a local load balancer's IIOP
  # profile.
  class ProfileIIOP < IControl::Base
    class ProfileIIOPStatisticEntry < IControl::Base::Struct; end
    class ProfileIIOPStatistics < IControl::Base::Struct; end    ## A sequence of ProfileIIOP statistics.
    class ProfileIIOPStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a particular IIOP profile.
    class ProfileIIOPStatisticEntry < IControl::Base::Struct
      # The profile name.
      icontrol_attribute :profile_name, String
      # The statistics for the profile.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    class ProfileIIOPStatistics < IControl::Base::Struct
      # The statistics for a sequence of profiles.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileIIOP::ProfileIIOPStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified IIOP profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] The IIOP profiles to create.

    ##
    # Deletes all IIOP profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified IIOP profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the IIOP profiles to delete.

    ##
    # Gets the state that if true, abort the connection when response is timed out.
    # :method: get_abort_on_timeout_state
    # :call-seq:
    # get_abort_on_timeout_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the statistics for all the IIOP profiles.
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
    # Gets a list of all IIOP profiles.
    # :method: get_list

    ##
    # Gets the state that if true, persist the object key.
    # :method: get_persist_object_key_state
    # :call-seq:
    # get_persist_object_key_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the state that if true, persist the request ID.
    # :method: get_persist_request_id_state
    # :call-seq:
    # get_persist_request_id_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the response timeouts for the specified IIOP profiles.
    # :method: get_response_timeout
    # :call-seq:
    # get_response_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the IIOP profiles.

    ##
    # Gets the statistics for the specified IIOP profiles.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The IIOP profiles to get the statistics from.

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
    # Resets the statistics for the specified IIOP profiles.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the IIOP profiles.

    ##
    # Sets the state that if true, abort the connection when response is timed out.
    # :method: set_abort_on_timeout_state
    # :call-seq:
    # set_abort_on_timeout_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The states for the specified profiles.

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
    # Sets the state that if true, persist the object key.
    # :method: set_persist_object_key_state
    # :call-seq:
    # set_persist_object_key_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The states for the specified profiles.

    ##
    # Sets the state that if true, persist the request ID.
    # :method: set_persist_request_id_state
    # :call-seq:
    # set_persist_request_id_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The states for the specified profiles.

    ##
    # Sets the response timeouts for the specified IIOP profiles.
    # :method: set_response_timeout
    # :call-seq:
    # set_response_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the IIOP profiles.
    # - timeouts ProfileULong[] The response timeouts.


  end
end
