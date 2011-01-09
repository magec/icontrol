module IControl::Management
  ##
  # The Named interface provides the calls to manipulate the named.conf and the named
  # server
  class Named < IControl::Base

    set_id_name "statements"

    ##
    # Deletes the &amp;quot;acl" statement specified by the statement names.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :statement_names The names of the acl Statements
    def delete_acl_statement(opts)
      check_params(opts,[:statement_names])
      super
    end

    ##
    # Deletes the &amp;quot;controls" statement. There can only be one &amp;quot;controls"
    # statement in the file.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_controls_statement
      super
    end

    ##
    # Deletes the &amp;quot;include" statement.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :path_names The path_names for the include files
    def delete_include_statement(opts)
      check_params(opts,[:path_names])
      super
    end

    ##
    # Deletes this &amp;quot;key" statement.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :statement_names The names of the statements to delete
    def delete_key_statement(opts)
      check_params(opts,[:statement_names])
      super
    end

    ##
    # Deletes an &amp;quot;logging" statement. There can only be one &amp;quot;logging"
    # statement in the file.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_logging_statement
      super
    end

    ##
    # Deletes the &amp;quot;options" statement. There can only be one &amp;quot;options"
    # statement in the file.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_options_statement
      super
    end

    ##
    # Deletes the &amp;quot;server" statement.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :statement_names The statements to delete.
    def delete_server_statement(opts)
      check_params(opts,[:statement_names])
      super
    end

    ##
    # Deletes an &amp;quot;trusted_keys" statement. There can only be one &amp;quot;trusted_keys"
    # statement in the file.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_trusted_keys_statement
      super
    end

    ##
    # Get the version of bind (named) running on the server as a string
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def bind_version
      super
    end

    ##
    # Gets the entire contents of the named.conf file in a sequence of strings, one per
    # line.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def named_configuration_file
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
    # Adds the new &amp;quot;acl name" statement if they do not already exist. If the &amp;quot;acl
    # name" statement already exists, it will delete the existing statement and replace
    # it with this one.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_acl_statement
      super
    end

    ##
    # Sets the &amp;quot;controls" statement. If there is no existing controls statement,
    # one is added. If one exists, it is deleted and replaced with this new one. There
    # can only be one &amp;quot;controls" statement in the file.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::StatementDefinition] :statement The "controls" statement definition.
    def set_controls_statement(opts)
      check_params(opts,[:statement])
      super
    end

    ##
    # Adds this &amp;quot;include" statement
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_include_statement
      super
    end

    ##
    # Sets the &amp;quot;key" statement. If a key statement with this name already exists,
    # it is deleted and the new one is added. Otherwise the key statement will be added.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_key_statement
      super
    end

    ##
    # Sets a new &amp;quot;logging" statement. If the logging statement exists, it is deleted
    # and replaced with the new statement. If there is no logging statement, this one is
    # added. There can only be one &amp;quot;logging" statement in the file.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::StatementDefinition] :statement The statement definition.
    def set_logging_statement(opts)
      check_params(opts,[:statement])
      super
    end

    ##
    # If there is an existing &amp;quot;options" statement, it is replaced with this statement.
    # If there is no existing &amp;quot;options" statement, this new one is added. There
    # can only be one &amp;quot;options" statement in the file.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::StatementDefinition] :statement The statement definition.
    def set_options_statement(opts)
      check_params(opts,[:statement])
      super
    end

    ##
    # Adds the new &amp;quot;server" statement if they do not exist. If they exist, these
    # statement will replace them.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_server_statement
      super
    end

    ##
    # Adds a new &amp;quot;trusted-keys" statement or replaces the existing one. There
    # can only be one &amp;quot;trusted_keys" statement in the file.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::StatementDefinition] :statement The statement definition.
    def set_trusted_keys_statement(opts)
      check_params(opts,[:statement])
      super
    end


  end
end
