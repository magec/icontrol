module IControl::Management
  ##
  # The OCSPConfiguration interface enables you to manage OCSP PAM configuration.
  class OCSPConfiguration < IControl::Base
    ##
    # Adds/associates responders to the specified OCSP configurations.
    # :method: add_responder
    # :call-seq:
    # add_responder(config_names ,responders)
    #
    # Parameters:
    # - config_names String[] The names of the OCSP configurations.
    # - responders String[][] The responders to add to the OCSP configurations.

    ##
    # Creates the specified OCSP configurations.
    # :method: create
    # :call-seq:
    # create(config_names ,responders)
    #
    # Parameters:
    # - config_names String[] The OCSP configurations to create.
    # - responders String[][] The list of responders to be assigned to each of the configurations.

    ##
    # Deletes all OCSP configurations.
    # :method: delete_all_configurations

    ##
    # Deletes the specified OCSP configurations.
    # :method: delete_configuration
    # :call-seq:
    # delete_configuration(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the OCSP configurations to delete.

    ##
    # Gets a list of all OCSP configurations.
    # :method: get_list

    ##
    # Gets the lists of responders the specified OCSP configurations are associated with.
    # :method: get_responder
    # :call-seq:
    # get_responder(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the OCSP configurations.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Removes all responders from the specified OCSP configurations.
    # :method: remove_all_responders
    # :call-seq:
    # remove_all_responders(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the OCSP configurations.

    ##
    # Removes responders from the specified OCSP configurations.
    # :method: remove_responder
    # :call-seq:
    # remove_responder(config_names ,responders)
    #
    # Parameters:
    # - config_names String[] The names of the OCSP configurations.
    # - responders String[][] The responders to remove from the OCSP configurations.


  end
end
