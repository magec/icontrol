module IControl::LocalLB
  ##
  # The ProfileHttpClass interface enables you to manipulate a local load balancer's
  # ability to classify HTTP traffic.
  class ProfileHttpClass < IControl::Base
    class ProfileHttpClassStatisticEntry < IControl::Base::Struct; end
    class ProfileHttpClassStatistics < IControl::Base::Struct; end    ## A sequence of ProfileHttpClass statistics.
    class ProfileHttpClassStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a particular HTTP class profile.
    class ProfileHttpClassStatisticEntry < IControl::Base::Struct
      # The profile name.
      icontrol_attribute :profile_name, String
      # The statistics for the profile.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    class ProfileHttpClassStatistics < IControl::Base::Struct
      # The statistics for a sequence of profiles.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileHttpClass::ProfileHttpClassStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Adds to the lists of patterns used to match the cookies.
    # :method: add_cookie_match_pattern
    # :call-seq:
    # add_cookie_match_pattern(profile_names ,patterns)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - patterns MatchPatternString[][] The lists of patterns (regular expressions or globs) to be added to the cookie match pattern list.

    ##
    # Adds to the lists of patterns used to match the headers.
    # :method: add_header_match_pattern
    # :call-seq:
    # add_header_match_pattern(profile_names ,patterns)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - patterns MatchPatternString[][] The lists of patterns (regular expressions or globs) to be added to the host match pattern list.

    ##
    # Adds to the lists of patterns used to match the hosts.
    # :method: add_host_match_pattern
    # :call-seq:
    # add_host_match_pattern(profile_names ,patterns)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - patterns MatchPatternString[][] The lists of patterns (regular expressions or globs) to be added to the host match pattern list.

    ##
    # Adds to the lists of patterns used to match the URI paths.
    # :method: add_path_match_pattern
    # :call-seq:
    # add_path_match_pattern(profile_names ,patterns)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - patterns MatchPatternString[][] The lists of patterns (regular expressions or globs) to be added to the URI path match pattern list.

    ##
    # Creates the specified HTTP class profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] The HTTP class profiles to create.

    ##
    # Deletes all HTTP class profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified HTTP class profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the HTTP class profiles to delete.

    ##
    # Gets the statistics for all the profiles.
    # :method: get_all_statistics

    ##
    # Gets the states that specify whether specified classes are Application Security Module
    # classes.
    # :method: get_application_security_module_enabled_state
    # :call-seq:
    # get_application_security_module_enabled_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the lists of patterns used to match the cookies.
    # :method: get_cookie_match_pattern
    # :call-seq:
    # get_cookie_match_pattern(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

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
    # Gets the lists of patterns used to match the headers.
    # :method: get_header_match_pattern
    # :call-seq:
    # get_header_match_pattern(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the lists of patterns used to match the hosts.
    # :method: get_host_match_pattern
    # :call-seq:
    # get_host_match_pattern(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets a list of all HTTP class profiles.
    # :method: get_list

    ##
    # Gets the lists of patterns used to match the URI paths.
    # :method: get_path_match_pattern
    # :call-seq:
    # get_path_match_pattern(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the pool names to use when the specified classes match.
    # :method: get_pool_name
    # :call-seq:
    # get_pool_name(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the string (which may include a TCL expression) to indicates where to redirect
    # the original HTTP request once a match occurs. For example, to redirect requests
    # to https://myserver.com to http://myotherserver.com.
    # :method: get_redirect_location
    # :call-seq:
    # get_redirect_location(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the strings (which may include a TCL expression) with which to rewrite the URLs.
    # :method: get_rewrite_url
    # :call-seq:
    # get_rewrite_url(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the statistics for the specified profiles.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The profiles to get the statistics from.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Gets the states that specify whether specified classes are Web Accelerator classes.
    # :method: get_web_accelerator_module_enabled_state
    # :call-seq:
    # get_web_accelerator_module_enabled_state(profile_names)
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
    # Removes from the lists of patterns used to match the cookies.
    # :method: remove_cookie_match_pattern
    # :call-seq:
    # remove_cookie_match_pattern(profile_names ,patterns)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - patterns MatchPatternString[][] The lists of patterns (regular expressions or globs) to be removed from the cookie match pattern list.

    ##
    # Removes from the lists of patterns used to match the headers.
    # :method: remove_header_match_pattern
    # :call-seq:
    # remove_header_match_pattern(profile_names ,patterns)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - patterns MatchPatternString[][] The lists of patterns (regular expressions or globs) to be added to the host match pattern list.

    ##
    # Removes from the lists of patterns used to match the hosts.
    # :method: remove_host_match_pattern
    # :call-seq:
    # remove_host_match_pattern(profile_names ,patterns)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - patterns MatchPatternString[][] The lists of patterns (regular expressions or globs) to be removed from the host match pattern list.

    ##
    # Removes from the lists of patterns used to match the URI paths.
    # :method: remove_path_match_pattern
    # :call-seq:
    # remove_path_match_pattern(profile_names ,patterns)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - patterns MatchPatternString[][] The lists of patterns (regular expressions or globs) to be removed from the URI path match pattern list.

    ##
    # Resets the statistics for the specified profiles.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Sets the states that specify whether specified classes are Application Security Module
    # classes.
    # :method: set_application_security_module_enabled_state
    # :call-seq:
    # set_application_security_module_enabled_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The states to set.

    ##
    # Resets the lists to parent defaults.
    # :method: set_default_cookie_match_pattern
    # :call-seq:
    # set_default_cookie_match_pattern(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Resets the lists to parent defaults.
    # :method: set_default_header_match_pattern
    # :call-seq:
    # set_default_header_match_pattern(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Resets the lists to parent defaults.
    # :method: set_default_host_match_pattern
    # :call-seq:
    # set_default_host_match_pattern(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Resets the lists to parent defaults.
    # :method: set_default_path_match_pattern
    # :call-seq:
    # set_default_path_match_pattern(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

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
    # Sets the pool names to use when the specified classes match.
    # :method: set_pool_name
    # :call-seq:
    # set_pool_name(profile_names ,pool_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - pool_names ProfileString[] The pool names.

    ##
    # Sets the string (which may include a TCL expression) to indicates where to redirect
    # the original HTTP request once a match occurs. For example, to redirect requests
    # to https://myserver.com to http://myotherserver.com.
    # :method: set_redirect_location
    # :call-seq:
    # set_redirect_location(profile_names ,redirect_locations)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - redirect_locations ProfileString[] The new locations to redirect to.

    ##
    # Sets the strings (which may include a TCL expression) with which to rewrite the URLs.
    # :method: set_rewrite_url
    # :call-seq:
    # set_rewrite_url(profile_names ,urls)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - urls ProfileString[] The URLs to rewrite.

    ##
    # Sets the states that specify whether specified classes are Web Accelerator classes.
    # :method: set_web_accelerator_module_enabled_state
    # :call-seq:
    # set_web_accelerator_module_enabled_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The states to set.


  end
end
