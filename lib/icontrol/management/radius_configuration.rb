module IControl::Management
  ##
  # The RADIUSConfiguration interface enables you to manage RADIUS PAM configuration.
  class RADIUSConfiguration < IControl::Base

    set_id_name "config_names"

    ##
    # Adds/associates servers to this RADIUS configurations.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :servers The servers to add to the RADIUS configurations.
    def add_server(opts)
      opts = check_params(opts,[:servers])
      super(opts)
    end

    ##
    # Creates this RADIUS configurations.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :servers The list of servers to be assigned to each of the configurations.
    def create(opts)
      opts = check_params(opts,[:servers])
      super(opts)
    end

    ##
    # Creates the default authentication RADIUS configuration.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :servers The list of servers to be assigned to the configurations.
    def create_default_authentication_radius_configuration(opts)
      opts = check_params(opts,[:servers])
      super(opts)
    end

    ##
    # Deletes all RADIUS configurations.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_configurations
      super
    end

    ##
    # Deletes this RADIUS configurations.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_configuration
      super
    end

    ##
    # Gets the states indicating whether to enable/disable validation of the accounting
    # response vector. This option should only be set necessary for older servers, i.e.
    # Livingston 1.16.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def accounting_validation_state
      super
    end

    ##
    # Gets the the NAS-Identifier RADIUS attribute with client_ids. If the client_id option
    # is not specified, the PAM service type is used instead. This feature may be disabled
    # by using empty strings for client_ids.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def client_id
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
    # Gets a list of all RADIUS configurations.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the number of attempts to communicate with the server before concluding that
    # the server has failed.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def retry
      super
    end

    ##
    # Gets the lists of servers this RADIUS configurations are associated with.
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def server
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
    # Removes all servers from this RADIUS configurations.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_servers
      super
    end

    ##
    # Removes servers from this RADIUS configurations.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :servers The servers to remove from the RADIUS configurations.
    def remove_server(opts)
      opts = check_params(opts,[:servers])
      super(opts)
    end

    ##
    # Sets the states indicating whether to enable/disable validation of the accounting
    # response vector. This option should only be set necessary for older servers, i.e.
    # Livingston 1.16.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The encryption states of the specified configurations.
    def set_accounting_validation_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the NAS-Identifier RADIUS attribute with client_ids. If the client_id option
    # is not specified, the PAM service type is used instead. This feature may be disabled
    # by using empty strings for client_ids.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :client_ids The client ids used by the configurations.
    def set_client_id(opts)
      opts = check_params(opts,[:client_ids])
      super(opts)
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
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the number of attempts to communicate with the server before concluding that
    # the server has failed.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :retries The retry values used by the configurations.
    def set_retry(opts)
      opts = check_params(opts,[:retries])
      super(opts)
    end


  end
end
