module IControl::Management
  ##
  # The RADIUSConfiguration interface enables you to manage RADIUS PAM configuration.
  class RADIUSConfiguration < IControl::Base
    ##
    # Adds/associates servers to the specified RADIUS configurations.
    # :method: add_server
    # :call-seq:
    # add_server(config_names ,servers)
    #
    # Parameters:
    # - config_names String[] The names of the RADIUS configurations.
    # - servers String[][] The servers to add to the RADIUS configurations.

    ##
    # Creates the specified RADIUS configurations.
    # :method: create
    # :call-seq:
    # create(config_names ,servers)
    #
    # Parameters:
    # - config_names String[] The RADIUS configurations to create.
    # - servers String[][] The list of servers to be assigned to each of the configurations.

    ##
    # Creates the default authentication RADIUS configuration.
    # :method: create_default_authentication_radius_configuration
    # :call-seq:
    # create_default_authentication_radius_configuration(servers)
    #
    # Parameters:
    # - servers String[] The list of servers to be assigned to the configurations.

    ##
    # Deletes all RADIUS configurations.
    # :method: delete_all_configurations

    ##
    # Deletes the specified RADIUS configurations.
    # :method: delete_configuration
    # :call-seq:
    # delete_configuration(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the RADIUS configurations to delete.

    ##
    # Gets the states indicating whether to enable/disable validation of the accounting
    # response vector. This option should only be set necessary for older servers, i.e.
    # Livingston 1.16.
    # :method: get_accounting_validation_state
    # :call-seq:
    # get_accounting_validation_state(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the RADIUS configurations.

    ##
    # Gets the the NAS-Identifier RADIUS attribute with client_ids. If the client_id option
    # is not specified, the PAM service type is used instead. This feature may be disabled
    # by using empty strings for client_ids.
    # :method: get_client_id
    # :call-seq:
    # get_client_id(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the profiles.

    ##
    # Gets the states indicating whether syslog debugging is enabled/disabled.
    # :method: get_debug_state
    # :call-seq:
    # get_debug_state(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the RADIUS configurations.

    ##
    # Gets a list of all RADIUS configurations.
    # :method: get_list

    ##
    # Gets the number of attempts to communicate with the server before concluding that
    # the server has failed.
    # :method: get_retry
    # :call-seq:
    # get_retry(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the RADIUS configurations.

    ##
    # Gets the lists of servers the specified RADIUS configurations are associated with.
    # :method: get_server
    # :call-seq:
    # get_server(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the RADIUS configurations.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Removes all servers from the specified RADIUS configurations.
    # :method: remove_all_servers
    # :call-seq:
    # remove_all_servers(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the RADIUS configurations.

    ##
    # Removes servers from the specified RADIUS configurations.
    # :method: remove_server
    # :call-seq:
    # remove_server(config_names ,servers)
    #
    # Parameters:
    # - config_names String[] The names of the RADIUS configurations.
    # - servers String[][] The servers to remove from the RADIUS configurations.

    ##
    # Sets the states indicating whether to enable/disable validation of the accounting
    # response vector. This option should only be set necessary for older servers, i.e.
    # Livingston 1.16.
    # :method: set_accounting_validation_state
    # :call-seq:
    # set_accounting_validation_state(config_names ,states)
    #
    # Parameters:
    # - config_names String[] The names of the RADIUS configurations.
    # - states EnabledState[] The encryption states of the specified configurations.

    ##
    # Sets the NAS-Identifier RADIUS attribute with client_ids. If the client_id option
    # is not specified, the PAM service type is used instead. This feature may be disabled
    # by using empty strings for client_ids.
    # :method: set_client_id
    # :call-seq:
    # set_client_id(config_names ,client_ids)
    #
    # Parameters:
    # - config_names String[] The names of the profiles.
    # - client_ids String[] The client ids used by the configurations.

    ##
    # Sets the states indicating whether syslog debugging is enabled/disabled.
    # :method: set_debug_state
    # :call-seq:
    # set_debug_state(config_names ,states)
    #
    # Parameters:
    # - config_names String[] The names of the RADIUS configurations.
    # - states EnabledState[] The syslog debugging states of the specified configurations.

    ##
    # Sets the number of attempts to communicate with the server before concluding that
    # the server has failed.
    # :method: set_retry
    # :call-seq:
    # set_retry(config_names ,retries)
    #
    # Parameters:
    # - config_names String[] The names of the RADIUS configurations.
    # - retries long[] The retry values used by the configurations.


  end
end
