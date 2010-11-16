module IControl::Management
  ##
  # The CRLDPConfiguration interface enables you to manage CRLDP PAM configuration.
  class CRLDPConfiguration < IControl::Base
    ##
    # Adds/associates servers to the specified CRLDP configurations.
    # :method: add_server
    # :call-seq:
    # add_server(config_names ,servers)
    #
    # Parameters:
    # - config_names String[] The names of the CRLDP configurations.
    # - servers String[][] The servers to add to the CRLDP configurations.

    ##
    # Creates the specified CRLDP configurations.
    # :method: create
    # :call-seq:
    # create(config_names ,servers)
    #
    # Parameters:
    # - config_names String[] The CRLDP configurations to create.
    # - servers String[][] The list of servers to be assigned to each of the configurations.

    ##
    # Deletes all CRLDP configurations.
    # :method: delete_all_configurations

    ##
    # Deletes the specified CRLDP configurations.
    # :method: delete_configuration
    # :call-seq:
    # delete_configuration(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the CRLDP configurations to delete.

    ##
    # Gets the number of seconds before a CRL entry expires and is deleted from the CRL
    # cache.
    # :method: get_cache_timeout
    # :call-seq:
    # get_cache_timeout(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the CRLDP configurations.

    ##
    # Gets the number of seconds to wait for server's response before concluding that the
    # server is down.
    # :method: get_connection_timeout
    # :call-seq:
    # get_connection_timeout(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the CRLDP configurations.

    ##
    # Gets a list of all CRLDP configurations.
    # :method: get_list

    ##
    # Gets the lists of servers the specified CRLDP configurations are associated with.
    # :method: get_server
    # :call-seq:
    # get_server(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the CRLDP configurations.

    ##
    # Gets the number of seconds to wait between updates.
    # :method: get_update_interval
    # :call-seq:
    # get_update_interval(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the CRLDP configurations.

    ##
    # Gets the states indicating whether reuse the issuer.
    # :method: get_use_issuer_state
    # :call-seq:
    # get_use_issuer_state(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the CRLDP configurations.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Removes all servers from the specified CRLDP configurations.
    # :method: remove_all_servers
    # :call-seq:
    # remove_all_servers(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the CRLDP configurations.

    ##
    # Removes servers from the specified CRLDP configurations.
    # :method: remove_server
    # :call-seq:
    # remove_server(config_names ,servers)
    #
    # Parameters:
    # - config_names String[] The names of the CRLDP configurations.
    # - servers String[][] The servers to remove from the CRLDP configurations.

    ##
    # Sets the number of seconds before a CRL entry expires and is deleted from the CRL
    # cache.
    # :method: set_cache_timeout
    # :call-seq:
    # set_cache_timeout(config_names ,timeouts)
    #
    # Parameters:
    # - config_names String[] The names of the CRLDP configurations.
    # - timeouts long[] The timeouts used by the configurations.

    ##
    # Sets the number of seconds to wait for server's response before concluding that the
    # server is down.
    # :method: set_connection_timeout
    # :call-seq:
    # set_connection_timeout(config_names ,timeouts)
    #
    # Parameters:
    # - config_names String[] The names of the CRLDP configurations.
    # - timeouts long[] The connection timeouts used by the configurations.

    ##
    # Sets the number of seconds to wait between updates.
    # :method: set_update_interval
    # :call-seq:
    # set_update_interval(config_names ,intervals)
    #
    # Parameters:
    # - config_names String[] The names of the CRLDP configurations.
    # - intervals long[] The update intervals used by the configurations.

    ##
    # Sets the states indicating whether to reuse the issuer.
    # :method: set_use_issuer_state
    # :call-seq:
    # set_use_issuer_state(config_names ,states)
    #
    # Parameters:
    # - config_names String[] The names of the CRLDP configurations.
    # - states EnabledState[] The states of the specified configurations.


  end
end
