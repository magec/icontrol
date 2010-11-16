module IControl::Management
  ##
  # The TACACSConfiguration interface enables you to manage TACACS PAM configuration.
  class TACACSConfiguration < IControl::Base
    ##
    # Adds/associates servers to the specified TACACS configurations.
    # :method: add_server
    # :call-seq:
    # add_server(config_names ,servers)
    #
    # Parameters:
    # - config_names String[] The names of the TACACS configurations.
    # - servers String[][] The servers to add to the TACACS configurations.

    ##
    # Creates the specified TACACS configurations.
    # :method: create
    # :call-seq:
    # create(config_names ,secrets ,service_names ,protocol_names ,servers)
    #
    # Parameters:
    # - config_names String[] The TACACS configurations to create.
    # - secrets String[] The secret keys used to encrypt/decrypt packets sent/received from the servers.
    # - service_names String[] The TACACS+ servers' listening service names used by the configurations.
    # - protocol_names String[] The TACACS+ servers' listening protocol names used by the configurations.
    # - servers String[][] The list of servers to be assigned to each of the configurations.

    ##
    # Deletes all TACACS configurations.
    # :method: delete_all_configurations

    ##
    # Deletes the specified TACACS configurations.
    # :method: delete_configuration
    # :call-seq:
    # delete_configuration(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the TACACS configurations to delete.

    ##
    # Gets the states such that if enabled and if multiple servers are defined, send accounting
    # start/stop packets to all servers (if session accounting has been enabled in the
    # PAM service configuration).
    # :method: get_accounting_to_all_state
    # :call-seq:
    # get_accounting_to_all_state(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the TACACS configurations.

    ##
    # Gets the states indicating whether syslog debugging is enabled/disabled.
    # :method: get_debug_state
    # :call-seq:
    # get_debug_state(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the TACACS configurations.

    ##
    # Gets the states indicating whether encryption on TACACS+ packets is enabled/disabled.
    # :method: get_encryption_state
    # :call-seq:
    # get_encryption_state(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the TACACS configurations.

    ##
    # Gets the states such that if enabled and if multiple servers are defined, try to
    # authenticate the user on all servers until the first authentication succeeds, or
    # until all servers have been queried. The first success response results in the auth
    # succeeding.
    # :method: get_first_hit_state
    # :call-seq:
    # get_first_hit_state(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the TACACS configurations.

    ##
    # Gets a list of all TACACS configurations.
    # :method: get_list

    ##
    # Gets the names of the TACACS+ servers' listening protocols used by the configurations.
    # :method: get_protocol_name
    # :call-seq:
    # get_protocol_name(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the profiles.

    ##
    # Gets the secret keys used to encrypt/decrypt packets sent/received from the server.
    # :method: get_secret
    # :call-seq:
    # get_secret(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the TACACS configurations.

    ##
    # Gets the lists of servers the specified TACACS configurations are associated with.
    # :method: get_server
    # :call-seq:
    # get_server(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the TACACS configurations.

    ##
    # Gets the names of the TACACS+ servers' listening services used by the configurations.
    # :method: get_service_name
    # :call-seq:
    # get_service_name(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the profiles.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Removes servers from the specified TACACS configurations.
    # :method: remove_server
    # :call-seq:
    # remove_server(config_names ,servers)
    #
    # Parameters:
    # - config_names String[] The names of the TACACS configurations.
    # - servers String[][] The servers to remove from the TACACS configurations.

    ##
    # Sets the states such that if enabled and if multiple servers are defined, send accounting
    # start/stop packets to all servers (if session accounting has been enabled in the
    # PAM service configuration).
    # :method: set_accounting_to_all_state
    # :call-seq:
    # set_accounting_to_all_state(config_names ,states)
    #
    # Parameters:
    # - config_names String[] The names of the TACACS configurations.
    # - states EnabledState[] The accounting-to-all states of the specified configurations.

    ##
    # Sets the states indicating whether syslog debugging is enabled/disabled.
    # :method: set_debug_state
    # :call-seq:
    # set_debug_state(config_names ,states)
    #
    # Parameters:
    # - config_names String[] The names of the TACACS configurations.
    # - states EnabledState[] The syslog debugging states of the specified configurations.

    ##
    # Sets the states indicating whether encryption on TACACS+ packets is enabled/disabled.
    # :method: set_encryption_state
    # :call-seq:
    # set_encryption_state(config_names ,states)
    #
    # Parameters:
    # - config_names String[] The names of the TACACS configurations.
    # - states EnabledState[] The encryption states of the specified configurations.

    ##
    # Sets the states such that if enabled and if multiple servers are defined, try to
    # authenticate the user on all servers until the first authentication succeeds, or
    # until all servers have been queried. The first success response results in the auth
    # succeeding.
    # :method: set_first_hit_state
    # :call-seq:
    # set_first_hit_state(config_names ,states)
    #
    # Parameters:
    # - config_names String[] The names of the TACACS configurations.
    # - states EnabledState[] The first-hit states of the specified configurations.

    ##
    # Sets the names of the TACACS+ servers' listening protocols used by the configurations.
    # :method: set_protocol_name
    # :call-seq:
    # set_protocol_name(config_names ,protocol_names)
    #
    # Parameters:
    # - config_names String[] The names of the profiles.
    # - protocol_names String[] The service names used by the configurations.

    ##
    # Sets the secret keys used to encrypt/decrypt packets sent/received from the server.
    # :method: set_secret
    # :call-seq:
    # set_secret(config_names ,secrets)
    #
    # Parameters:
    # - config_names String[] The names of the TACACS configurations.
    # - secrets String[] The secrets used by the configurations.

    ##
    # Sets the names of the TACACS+ servers' listening services used by the configurations.
    # :method: set_service_name
    # :call-seq:
    # set_service_name(config_names ,service_names)
    #
    # Parameters:
    # - config_names String[] The names of the profiles.
    # - service_names String[] The service names used by the configurations.


  end
end
