module IControl::Management
  ##
  # The TACACSConfiguration interface enables you to manage TACACS PAM configuration.
  class TACACSConfiguration < IControl::Base

    set_id_name "config_names"

    ##
    # Adds/associates servers to this TACACS configurations.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :servers The servers to add to the TACACS configurations.
    def add_server(opts)
      check_params(opts,[:servers])
      super
    end

    ##
    # Creates this TACACS configurations.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :secrets The secret keys used to encrypt/decrypt packets sent/received from the servers.
    # @option opts [String] :service_names The TACACS+ servers' listening service names used by the configurations.
    # @option opts [String] :protocol_names The TACACS+ servers' listening protocol names used by the configurations.
    # @option opts [String[]] :servers The list of servers to be assigned to each of the configurations.
    def create(opts)
      check_params(opts,[:secrets,:service_names,:protocol_names,:servers])
      super
    end

    ##
    # Deletes all TACACS configurations.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_configurations
      super
    end

    ##
    # Deletes this TACACS configurations.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_configuration
      super
    end

    ##
    # Gets the states such that if enabled and if multiple servers are defined, send accounting
    # start/stop packets to all servers (if session accounting has been enabled in the
    # PAM service configuration).
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def accounting_to_all_state
      super
    end

    ##
    # Gets the states indicating whether syslog debugging is enabled/disabled.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def debug_state
      super
    end

    ##
    # Gets the states indicating whether encryption on TACACS+ packets is enabled/disabled.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def encryption_state
      super
    end

    ##
    # Gets the states such that if enabled and if multiple servers are defined, try to
    # authenticate the user on all servers until the first authentication succeeds, or
    # until all servers have been queried. The first success response results in the auth
    # succeeding.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def first_hit_state
      super
    end

    ##
    # Gets a list of all TACACS configurations.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the names of the TACACS+ servers' listening protocols used by the configurations.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def protocol_name
      super
    end

    ##
    # Gets the secret keys used to encrypt/decrypt packets sent/received from the server.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def secret
      super
    end

    ##
    # Gets the lists of servers this TACACS configurations are associated with.
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def server
      super
    end

    ##
    # Gets the names of the TACACS+ servers' listening services used by the configurations.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def service_name
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
    # Removes servers from this TACACS configurations.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :servers The servers to remove from the TACACS configurations.
    def remove_server(opts)
      check_params(opts,[:servers])
      super
    end

    ##
    # Sets the states such that if enabled and if multiple servers are defined, send accounting
    # start/stop packets to all servers (if session accounting has been enabled in the
    # PAM service configuration).
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The accounting-to-all states of the specified configurations.
    def set_accounting_to_all_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the states indicating whether syslog debugging is enabled/disabled.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The syslog debugging states of the specified configurations.
    def set_debug_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the states indicating whether encryption on TACACS+ packets is enabled/disabled.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The encryption states of the specified configurations.
    def set_encryption_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the states such that if enabled and if multiple servers are defined, try to
    # authenticate the user on all servers until the first authentication succeeds, or
    # until all servers have been queried. The first success response results in the auth
    # succeeding.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The first-hit states of the specified configurations.
    def set_first_hit_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the names of the TACACS+ servers' listening protocols used by the configurations.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :protocol_names The service names used by the configurations.
    def set_protocol_name(opts)
      check_params(opts,[:protocol_names])
      super
    end

    ##
    # Sets the secret keys used to encrypt/decrypt packets sent/received from the server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :secrets The secrets used by the configurations.
    def set_secret(opts)
      check_params(opts,[:secrets])
      super
    end

    ##
    # Sets the names of the TACACS+ servers' listening services used by the configurations.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :service_names The service names used by the configurations.
    def set_service_name(opts)
      check_params(opts,[:service_names])
      super
    end


  end
end
