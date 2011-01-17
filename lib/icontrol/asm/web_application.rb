module IControl::ASM
  ##
  # The WebApplication interface enables you to manipulate ASM Web Applications.
  class WebApplication < IControl::Base

    set_id_name "webapp_names"

    ##
    # Deletes all disabled web applications.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_disabled_webapps
      super
    end

    ##
    # Deletes all non-actice policies for web applications. The active policy will not
    # be deleted.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_non_active_policies
      super
    end

    ##
    # Deletes this web applications. Only disabled web applications can be deleted.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_webapp
      super
    end

    ##
    # Get the active policy for this web applications.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def active_policy
      super
    end

    ##
    # Get the "apply learning" for this web applications.
    # @rspec_example
    # @return [ApplyLearning]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def apply_learning
      super
    end

    ##
    # Returns the enabled flag of specified web application.
    # @rspec_example
    # @return [boolean]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def enabled_state
      super
    end

    ##
    # Gets the language for this web applications.
    # @rspec_example
    # @return [WebApplicationLanguage]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def language
      super
    end

    ##
    # Gets a list of all web applications.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Get the logging profile for this web applications.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def logging_profile
      super
    end

    ##
    # Returns a list of the policies associated with this web application.
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def policy_list
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
    # Reconfigures this web applications. This resets all of the web application properties.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reconfigure
      super
    end

    ##
    # Set the active policy for this web applications. This applies this policy to the
    # enforcer.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policy_names The names of the policies to set active for the specified web applications.
    def set_active_policy(opts)
      opts = check_params(opts,[:policy_names])
      super(opts)
    end

    ##
    # Set the "apply learning" for this web applications.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::ASM::ApplyLearning] :settings The "apply learning" settings for the web applications.
    def set_apply_learning(opts)
      opts = check_params(opts,[:settings])
      super(opts)
    end

    ##
    # Set the language for this web applications. Note that the language can only be set
    # once for a web application.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::ASM::WebApplicationLanguage] :languages The languages.
    def set_language(opts)
      opts = check_params(opts,[:languages])
      super(opts)
    end

    ##
    # Confugures this web applications in one-step. For each web application: sets the
    # language adds a policy created from this template sets the policy active removes
    # the original default policy
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::ASM::WebApplicationLanguage] :languages The language of the web application.
    # @option opts [String] :policy_names The policy names.
    # @option opts [IControl::ASM::PolicyTemplate] :policy_template_names The policy template names.
    # @option opts [long] :timeout The timeout period in which the ASM web-applications should be created prior to set its language
    def set_language_extended(opts)
      opts = check_params(opts,[:languages,:policy_names,:policy_template_names,:timeout])
      super(opts)
    end

    ##
    # Set the logging profile for this web applications.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :logprof_names The names of the logging profiles for the specified web applications.
    def set_logging_profile(opts)
      opts = check_params(opts,[:logprof_names])
      super(opts)
    end


  end
end
