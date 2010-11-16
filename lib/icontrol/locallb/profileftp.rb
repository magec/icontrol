module IControl::LocalLB
  ##
  # The ProfileFTP interface enables you to manipulate a local load balancer's FTP profile.
  class ProfileFTP < IControl::Base
    class ProfileFTPStatisticEntry < IControl::Base::Struct; end
    class ProfileFTPStatistics < IControl::Base::Struct; end    ## A sequence of ProfileFTP statistics.
    class ProfileFTPStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a particular FTP profile.
    class ProfileFTPStatisticEntry < IControl::Base::Struct
      # The profile name.
      icontrol_attribute :profile_name, String
      # The statistics for the profile.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    class ProfileFTPStatistics < IControl::Base::Struct
      # The statistics for a sequence of profiles.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileFTP::ProfileFTPStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified FTP profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] The FTP profiles to create.

    ##
    # Deletes all FTP profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified FTP profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the FTP profiles to delete.

    ##
    # Gets the statistics for all the FTP profiles.
    # :method: get_all_statistics

    ##
    # Gets the data channel port for the specified FTP profiles.
    # :method: get_data_channel_port
    # :call-seq:
    # get_data_channel_port(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the FTP profiles.

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
    # Gets a list of all FTP profiles.
    # :method: get_list

    ##
    # Gets the state that if true, enable horizontal security for the specified FTP profiles.
    # :method: get_security_enabled_request_state
    # :call-seq:
    # get_security_enabled_request_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the statistics for the specified FTP profiles.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The FTP profiles to get the statistics from.

    ##
    # Gets the state that if true, automatically translate RFC2428 extended requests EPSV
    # and EPRT to PASV and PORT when talking to IPv4 servers.
    # :method: get_translated_extended_request_state
    # :call-seq:
    # get_translated_extended_request_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

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
    # Resets the statistics for the specified FTP profiles.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the FTP profiles.

    ##
    # Sets the data channel port for the specified FTP profiles.
    # :method: set_data_channel_port
    # :call-seq:
    # set_data_channel_port(profile_names ,ports)
    #
    # Parameters:
    # - profile_names String[] The names of the FTP profiles.
    # - ports ProfilePortNumber[] The data channel port for the specified FTP profiles.

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
    # Sets the state that if true, enable horizontal security for the specified FTP profiles.
    # :method: set_security_enabled_request_state
    # :call-seq:
    # set_security_enabled_request_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The translate extended request states for the specified profiles.

    ##
    # Sets the state that if true, automatically translate RFC2428 extended requests EPSV
    # and EPRT to PASV and PORT when talking to IPv4 servers.
    # :method: set_translated_extended_request_state
    # :call-seq:
    # set_translated_extended_request_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The translate extended request states for the specified profiles.


  end
end
