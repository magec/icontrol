module IControl::LocalLB
  ##
  # The ProfileSIP interface enables you to manipulate a local load balancer's SIP profile.
  class ProfileSIP < IControl::Base
    class ProfileSIPStatisticEntry < IControl::Base::Struct; end
    class ProfileSIPStatistics < IControl::Base::Struct; end    ## A sequence of ProfileSIP statistics.
    class ProfileSIPStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a particular SIP profile.
    class ProfileSIPStatisticEntry < IControl::Base::Struct
      # The profile name.
      icontrol_attribute :profile_name, String
      # The statistics for the profile.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    class ProfileSIPStatistics < IControl::Base::Struct
      # The statistics for a sequence of profiles.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileSIP::ProfileSIPStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified SIP profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] The SIP profiles to create.

    ##
    # Deletes all SIP profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified SIP profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the SIP profiles to delete.

    ##
    # Gets the statistics for all the SIP profiles.
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
    # Gets whether the specified SIP profiles are dialog aware.
    # :method: get_dialog_aware_state
    # :call-seq:
    # get_dialog_aware_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the insert Record-Route states for the specified SIP profiles. If true, insert
    # a Record-Route header field value into the SIP message.
    # :method: get_insert_record_route_state
    # :call-seq:
    # get_insert_record_route_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the insert Via header states for the specified SIP profiles. If true, insert
    # a Via header into the SIP message.
    # :method: get_insert_via_state
    # :call-seq:
    # get_insert_via_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets a list of all SIP profiles.
    # :method: get_list

    ##
    # Gets the maximum SIP message sizes for the specified SIP profiles. This indicates
    # the maximum SIP header size the BIG-IP will accept.
    # :method: get_max_message_size
    # :call-seq:
    # get_max_message_size(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the secure Via states for the specified SIP profiles. If true, use &amp;quot;TLS"
    # in the sent-protocol portion of an inserted Via header.
    # :method: get_secure_via_state
    # :call-seq:
    # get_secure_via_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the community name for the specified SIP profiles.
    # :method: get_sip_community
    # :call-seq:
    # get_sip_community(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles

    ##
    # Gets the statistics for the specified SIP profiles.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The SIP profiles to get the statistics from.

    ##
    # Gets the terminate connection after bye states for the specified SIP profiles. If
    # true, terminate a connection after a (200 BYE) message.
    # :method: get_terminate_connection_after_bye_state
    # :call-seq:
    # get_terminate_connection_after_bye_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Gets the via userdata for the specified SIP profiles.
    # :method: get_via_userdata
    # :call-seq:
    # get_via_userdata(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

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
    # Resets the statistics for the specified SIP profiles.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the SIP profiles.

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
    # Sets whether the specified SIP profiles should gather SIP dialog information and
    # automatically forward SIP messages belonging to known SIP dialogs.
    # :method: set_dialog_aware_state
    # :call-seq:
    # set_dialog_aware_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles
    # - states ProfileEnabledState[] The SIP dialog aware state for the specified			 profiles

    ##
    # Sets the insert Record-Route states for the specified SIP profiles. If true, insert
    # a Record-Route header field value into the SIP message.
    # :method: set_insert_record_route_state
    # :call-seq:
    # set_insert_record_route_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The insert Record-Route states for the specified profiles.

    ##
    # Sets the insert Via header states for the specified SIP profiles. If true, insert
    # a Via header into the SIP message.
    # :method: set_insert_via_state
    # :call-seq:
    # set_insert_via_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The insert Via header states for the specified profiles.

    ##
    # Sets the maximum SIP message sizes for the specified SIP profiles. This indicates
    # the maximum SIP header size the BIG-IP will accept.
    # :method: set_max_message_size
    # :call-seq:
    # set_max_message_size(profile_names ,max_message_sizes)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - max_message_sizes ProfileULong[] The maximum SIP message sizes for the specified SIP profiles.

    ##
    # Sets the secure Via states for the specified SIP profiles. If true, use &amp;quot;TLS"
    # in the sent-protocol portion of an inserted Via header.
    # :method: set_secure_via_state
    # :call-seq:
    # set_secure_via_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The secure Via header states for the specified profiles.

    ##
    # Sets a community name for the specified SIP profiles. For &amp;quot;dialog aware"
    # SIP profiles with multiple SIP virtual server/profile pairings, this name groups
    # the SIP profiles in the same SIP proxy functional group.
    # :method: set_sip_community
    # :call-seq:
    # set_sip_community(profile_names ,community)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles
    # - community ProfileString[] The community names for the profiles

    ##
    # Sets the terminate connection after bye states for the specified SIP profiles. If
    # true, terminate a connection after a (200 BYE) message.
    # :method: set_terminate_connection_after_bye_state
    # :call-seq:
    # set_terminate_connection_after_bye_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The terminate connection after bye states for the specified profiles.

    ##
    # Sets the via userdata for the specified SIP profiles. If insert via is enabled and
    # this string is not empty, for a SIP request message the via header will be compiled
    # using this string.
    # :method: set_via_userdata
    # :call-seq:
    # set_via_userdata(profile_names ,via_userdata)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - via_userdata ProfileString[] The via userdata for the specified profiles.


  end
end
