module IControl::LocalLB
  ##
  # The ProfileHttpClass interface enables you to manipulate a local load balancer's ability to classify HTTP traffic.
  class ProfileHttpClass < IControl::Base

    set_id_name "profile_names"

    class ProfileHttpClassStatisticEntry < IControl::Base::Struct; end
    class ProfileHttpClassStatistics < IControl::Base::Struct; end    ##
    # Adds to the lists of patterns used to match the cookies.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::MatchPatternString[]] :patterns The lists of patterns (regular expressions or globs) to be added to the cookie match pattern list.
    def add_cookie_match_pattern(opts)
      check_params(opts,[:patterns])
      super
    end

    ##
    # Adds to the lists of patterns used to match the headers.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::MatchPatternString[]] :patterns The lists of patterns (regular expressions or globs) to be added to the host match pattern list.
    def add_header_match_pattern(opts)
      check_params(opts,[:patterns])
      super
    end

    ##
    # Adds to the lists of patterns used to match the hosts.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::MatchPatternString[]] :patterns The lists of patterns (regular expressions or globs) to be added to the host match pattern list.
    def add_host_match_pattern(opts)
      check_params(opts,[:patterns])
      super
    end

    ##
    # Adds to the lists of patterns used to match the URI paths.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::MatchPatternString[]] :patterns The lists of patterns (regular expressions or globs) to be added to the URI path match pattern list.
    def add_path_match_pattern(opts)
      check_params(opts,[:patterns])
      super
    end

    ##
    # Creates this HTTP class profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def create
      super
    end

    ##
    # Deletes all HTTP class profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_profiles
      super
    end

    ##
    # Deletes this HTTP class profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_profile
      super
    end

    ##
    # Gets the statistics for all the profile.
    # @return [ProfileHttpClassStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the states that specify whether specified classes are Application Security Module classes.
    # @return [ProfileEnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def application_security_module_enabled_state
      super
    end

    ##
    # Gets the lists of patterns used to match the cookies.
    # @return [ProfileMatchPatternStringArray]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def cookie_match_pattern
      super
    end

    ##
    # Gets the names of the default profile from which this profile will derive default values for its attributes.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def default_profile
      super
    end

    ##
    # Gets the lists of patterns used to match the headers.
    # @return [ProfileMatchPatternStringArray]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def header_match_pattern
      super
    end

    ##
    # Gets the lists of patterns used to match the hosts.
    # @return [ProfileMatchPatternStringArray]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def host_match_pattern
      super
    end

    ##
    # Gets a list of all HTTP class profile.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the lists of patterns used to match the URI paths.
    # @return [ProfileMatchPatternStringArray]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def path_match_pattern
      super
    end

    ##
    # Gets the pool names to use when this classes match.
    # @return [ProfileString]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def pool_name
      super
    end

    ##
    # Gets the string (which may include a TCL expression) to indicates where to redirect the original HTTP request once a match occurs. For example, to redirect requests to https://myserver.com to http://myotherserver.com.
    # @return [ProfileString]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def redirect_location
      super
    end

    ##
    # Gets the strings (which may include a TCL expression) with which to rewrite the URLs.
    # @return [ProfileString]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def rewrite_url
      super
    end

    ##
    # Gets the statistics for this profile.
    # @return [ProfileHttpClassStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Gets the states that specify whether specified classes are Web Accelerator classes.
    # @return [ProfileEnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def web_accelerator_module_enabled_state
      super
    end

    ##
    # Determines whether this profile are base/pre-configured profile, or user-defined profile.
    # @return [boolean]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def is_base_profile
      super
    end

    ##
    # Removes from the lists of patterns used to match the cookies.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::MatchPatternString[]] :patterns The lists of patterns (regular expressions or globs) to be removed from the cookie match pattern list.
    def remove_cookie_match_pattern(opts)
      check_params(opts,[:patterns])
      super
    end

    ##
    # Removes from the lists of patterns used to match the headers.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::MatchPatternString[]] :patterns The lists of patterns (regular expressions or globs) to be added to the host match pattern list.
    def remove_header_match_pattern(opts)
      check_params(opts,[:patterns])
      super
    end

    ##
    # Removes from the lists of patterns used to match the hosts.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::MatchPatternString[]] :patterns The lists of patterns (regular expressions or globs) to be removed from the host match pattern list.
    def remove_host_match_pattern(opts)
      check_params(opts,[:patterns])
      super
    end

    ##
    # Removes from the lists of patterns used to match the URI paths.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::MatchPatternString[]] :patterns The lists of patterns (regular expressions or globs) to be removed from the URI path match pattern list.
    def remove_path_match_pattern(opts)
      check_params(opts,[:patterns])
      super
    end

    ##
    # Resets the statistics for this profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the states that specify whether specified classes are Application Security Module classes.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states to set.
    def set_application_security_module_enabled_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Resets the lists to parent defaults.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_default_cookie_match_pattern
      super
    end

    ##
    # Resets the lists to parent defaults.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_default_header_match_pattern
      super
    end

    ##
    # Resets the lists to parent defaults.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_default_host_match_pattern
      super
    end

    ##
    # Resets the lists to parent defaults.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_default_path_match_pattern
      super
    end

    ##
    # Sets the names of the default profile from which this profile will derive default values for its attributes.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :defaults The default profiles from which the specified profiles will get default values.
    def set_default_profile(opts)
      check_params(opts,[:defaults])
      super
    end

    ##
    # Sets the pool names to use when this classes match.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :pool_names The pool names.
    def set_pool_name(opts)
      check_params(opts,[:pool_names])
      super
    end

    ##
    # Sets the string (which may include a TCL expression) to indicates where to redirect the original HTTP request once a match occurs. For example, to redirect requests to https://myserver.com to http://myotherserver.com.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :redirect_locations The new locations to redirect to.
    def set_redirect_location(opts)
      check_params(opts,[:redirect_locations])
      super
    end

    ##
    # Sets the strings (which may include a TCL expression) with which to rewrite the URLs.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileString] :urls The URLs to rewrite.
    def set_rewrite_url(opts)
      check_params(opts,[:urls])
      super
    end

    ##
    # Sets the states that specify whether specified classes are Web Accelerator classes.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states to set.
    def set_web_accelerator_module_enabled_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # A struct that describes statistics for a particular HTTP class profile.
    # @attr [String] profile_name The profile name.
    # @attr [IControl::Common::Statistic] statistics The statistics for the profile.
    class ProfileHttpClassStatisticEntry < IControl::Base::Struct
      icontrol_attribute :profile_name, String
      icontrol_attribute :statistics, IControl::Common::Statistic
    end

    ##
    # A struct that describes profile statistics and timestamp.
    # @attr [IControl::LocalLB::ProfileHttpClass::ProfileHttpClassStatisticEntry] statistics The statistics for a sequence of profiles.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class ProfileHttpClassStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::ProfileHttpClass::ProfileHttpClassStatisticEntry
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of ProfileHttpClass statistics.
    class ProfileHttpClassStatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
