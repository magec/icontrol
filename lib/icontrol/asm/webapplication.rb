module IControl::ASM
  ##
  # The WebApplication interface enables you to manipulate ASM Web Applications.
  class WebApplication < IControl::Base
    ##
    # Deletes all disabled web applications.
    # :method: delete_all_disabled_webapps

    ##
    # Deletes all non-actice policies for web applications. The active policy will not
    # be deleted.
    # :method: delete_all_non_active_policies
    # :call-seq:
    # delete_all_non_active_policies(webapp_names)
    #
    # Parameters:
    # - webapp_names String[] The web application names.

    ##
    # Deletes the specified web applications. Only disabled web applications can be deleted.
    # :method: delete_webapp
    # :call-seq:
    # delete_webapp(webapp_names)
    #
    # Parameters:
    # - webapp_names String[] The web application names.

    ##
    # Get the active policy for the specified web applications.
    # :method: get_active_policy
    # :call-seq:
    # get_active_policy(webapp_names)
    #
    # Parameters:
    # - webapp_names String[] The web application names.

    ##
    # Get the &amp;quot;apply learning" for the specified web applications.
    # :method: get_apply_learning
    # :call-seq:
    # get_apply_learning(webapp_names)
    #
    # Parameters:
    # - webapp_names String[] The web application names.

    ##
    # Returns the enabled flag of specified web application.
    # :method: get_enabled_state
    # :call-seq:
    # get_enabled_state(webapp_names)
    #
    # Parameters:
    # - webapp_names String[] The web application names.

    ##
    # Gets the language for the specified web applications.
    # :method: get_language
    # :call-seq:
    # get_language(webapp_names)
    #
    # Parameters:
    # - webapp_names String[] The web application names.

    ##
    # Gets a list of all web applications.
    # :method: get_list

    ##
    # Get the logging profile for the specified web applications.
    # :method: get_logging_profile
    # :call-seq:
    # get_logging_profile(webapp_names)
    #
    # Parameters:
    # - webapp_names String[] The web application names.

    ##
    # Returns a list of the policies associated with the specified web application.
    # :method: get_policy_list
    # :call-seq:
    # get_policy_list(webapp_names)
    #
    # Parameters:
    # - webapp_names String[] The web application names.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Reconfigures the specified web applications. This resets all of the web application
    # properties.
    # :method: reconfigure
    # :call-seq:
    # reconfigure(webapp_names)
    #
    # Parameters:
    # - webapp_names String[] The web application names.

    ##
    # Set the active policy for the specified web applications. This applies the specified
    # policy to the enforcer.
    # :method: set_active_policy
    # :call-seq:
    # set_active_policy(webapp_names ,policy_names)
    #
    # Parameters:
    # - webapp_names String[] The web application names.
    # - policy_names String[] The names of the policies to set active for the specified web applications.

    ##
    # Set the &amp;quot;apply learning" for the specified web applications.
    # :method: set_apply_learning
    # :call-seq:
    # set_apply_learning(webapp_names ,settings)
    #
    # Parameters:
    # - webapp_names String[] The web application names.
    # - settings ApplyLearning[] The "apply learning" settings for the web applications.

    ##
    # Set the language for the specified web applications. Note that the language can only
    # be set once for a web application.
    # :method: set_language
    # :call-seq:
    # set_language(webapp_names ,languages)
    #
    # Parameters:
    # - webapp_names String[] The web application names.
    # - languages WebApplicationLanguage[] The languages.

    ##
    # Confugures the specified web applications in one-step. For each web application:
    # sets the language adds a policy created from the specified template sets the policy
    # active removes the original default policy
    # :method: set_language_extended
    # :call-seq:
    # set_language_extended(webapp_names ,languages ,policy_names ,policy_template_names ,timeout)
    #
    # Parameters:
    # - webapp_names String[] The web application names.
    # - languages WebApplicationLanguage[] The language of the web application.
    # - policy_names String[] The policy names.
    # - policy_template_names PolicyTemplate[] The policy template names.
    # - timeout long The timeout period in which the ASM web-applications should be created prior to set its language

    ##
    # Set the logging profile for the specified web applications.
    # :method: set_logging_profile
    # :call-seq:
    # set_logging_profile(webapp_names ,logprof_names)
    #
    # Parameters:
    # - webapp_names String[] The web application names.
    # - logprof_names String[] The names of the logging profiles for the specified web applications.


  end
end
