module IControl::Management
  ##
  # The CRLDPConfiguration interface enables you to manage CRLDP PAM configuration.
  class CRLDPConfiguration < IControl::Base

    set_id_name "config_names"

    ##
    # Adds/associates servers to this CRLDP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :servers The servers to add to the CRLDP configurations.
    def add_server(opts)
      check_params(opts,[:servers])
      super
    end

    ##
    # Creates this CRLDP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :servers The list of servers to be assigned to each of the configurations.
    def create(opts)
      check_params(opts,[:servers])
      super
    end

    ##
    # Deletes all CRLDP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_configurations
      super
    end

    ##
    # Deletes this CRLDP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_configuration
      super
    end

    ##
    # Gets the number of seconds before a CRL entry expires and is deleted from the CRL cache.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def cache_timeout
      super
    end

    ##
    # Gets the number of seconds to wait for server's response before concluding that the server is down.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def connection_timeout
      super
    end

    ##
    # Gets a list of all CRLDP configurations.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the lists of servers this CRLDP configurations are associated with.
    # @return [String[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def server
      super
    end

    ##
    # Gets the number of seconds to wait between updates.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def update_interval
      super
    end

    ##
    # Gets the states indicating whether reuse the issuer.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def use_issuer_state
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Removes all servers from this CRLDP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_servers
      super
    end

    ##
    # Removes servers from this CRLDP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :servers The servers to remove from the CRLDP configurations.
    def remove_server(opts)
      check_params(opts,[:servers])
      super
    end

    ##
    # Sets the number of seconds before a CRL entry expires and is deleted from the CRL cache.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :timeouts The timeouts used by the configurations.
    def set_cache_timeout(opts)
      check_params(opts,[:timeouts])
      super
    end

    ##
    # Sets the number of seconds to wait for server's response before concluding that the server is down.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :timeouts The connection timeouts used by the configurations.
    def set_connection_timeout(opts)
      check_params(opts,[:timeouts])
      super
    end

    ##
    # Sets the number of seconds to wait between updates.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :intervals The update intervals used by the configurations.
    def set_update_interval(opts)
      check_params(opts,[:intervals])
      super
    end

    ##
    # Sets the states indicating whether to reuse the issuer.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states of the specified configurations.
    def set_use_issuer_state(opts)
      check_params(opts,[:states])
      super
    end


  end
end
