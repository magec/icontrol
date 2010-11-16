module IControl::LocalLB
  ##
  # The ProfileAuth interface enables you to manipulate a local load balancer's authentication
  # profile.
  class ProfileAuth < IControl::Base
    class ProfileAuthStatisticEntry < IControl::Base::Struct; end
    class ProfileAuthStatistics < IControl::Base::Struct; end    ## A sequence of ProfileAuth statistics.
    class ProfileAuthStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a particular Auth profile.
    class ProfileAuthStatisticEntry < IControl::Base::Struct
      # The profile name.
      icontrol_attribute :profile_name, String
      # The statistics for the profile.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    class ProfileAuthStatistics < IControl::Base::Struct
      # The statistics for a sequence of profiles.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileAuth::ProfileAuthStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified auth profiles.
    # :method: create
    # :call-seq:
    # create(profile_names ,config_names ,auth_methods)
    #
    # Parameters:
    # - profile_names String[] The auth profiles to create.
    # - config_names ProfileString[] The configuration used by the profile.
    # - auth_methods ProfileAuthenticationMethod[] The authentication method used by the profile.

    ##
    # Deletes all auth profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified auth profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the auth profiles to delete.

    ##
    # Gets the statistics for all the Auth profiles.
    # :method: get_all_statistics

    ##
    # Gets the authentication methods that the specified profiles will be using.
    # :method: get_authentication_method
    # :call-seq:
    # get_authentication_method(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the auth profiles.

    ##
    # Gets the names of the authentication configurations that the specified profiles will
    # be using.
    # :method: get_configuration_name
    # :call-seq:
    # get_configuration_name(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the sources of the credentials that the specified profiles will be using.
    # :method: get_credential_source
    # :call-seq:
    # get_credential_source(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the auth profiles.

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
    # Gets the idle timeout for the specified auth profiles.
    # :method: get_idle_timeout
    # :call-seq:
    # get_idle_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the auth profiles.

    ##
    # Gets a list of all auth profiles.
    # :method: get_list

    ##
    # Gets the modes for the specified auth profiles.
    # :method: get_profile_mode
    # :call-seq:
    # get_profile_mode(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the auth profiles.

    ##
    # Gets the names of rules that the specified profiles will be using.
    # :method: get_rule_name
    # :call-seq:
    # get_rule_name(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the statistics for the specified Auth profiles.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The Auth profiles to get the statistics from.

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
    # Resets the statistics for the specified Auth profiles.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the Auth profiles.

    ##
    # Sets the authentication methods that the specified profiles will be using.
    # :method: set_authentication_method
    # :call-seq:
    # set_authentication_method(profile_names ,auth_methods)
    #
    # Parameters:
    # - profile_names String[] The names of the auth profiles.
    # - auth_methods ProfileAuthenticationMethod[] The authentication methods.

    ##
    # Sets the names of the authentication configurations that the specified profiles will
    # be using.
    # :method: set_configuration_name
    # :call-seq:
    # set_configuration_name(profile_names ,config_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - config_names ProfileString[] The authentication configuration names.

    ##
    # Sets the sources of the credentials that the specified profiles will be using.
    # :method: set_credential_source
    # :call-seq:
    # set_credential_source(profile_names ,sources)
    #
    # Parameters:
    # - profile_names String[] The names of the auth profiles.
    # - sources ProfileCredentialSource[] The sources of the credentials.

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
    # Sets the idle timeout for the specified auth profiles.
    # :method: set_idle_timeout
    # :call-seq:
    # set_idle_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the auth profiles.
    # - timeouts ProfileULong[] The idle timeout for the specified auth profiles.

    ##
    # Sets the modes for the specified auth profiles.
    # :method: set_profile_mode
    # :call-seq:
    # set_profile_mode(profile_names ,modes)
    #
    # Parameters:
    # - profile_names String[] The names of the auth profiles.
    # - modes ProfileProfileMode[] The modes of the specified auth profiles.

    ##
    # Sets the names of rules that the specified profiles will be using.
    # :method: set_rule_name
    # :call-seq:
    # set_rule_name(profile_names ,rule_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - rule_names ProfileString[] The rule names.


  end
end
