module IControl::Management
  ##
  # The Named interface provides the calls to manipulate the named.conf and the named
  # server
  class Named < IControl::Base
    ##
    # Deletes the &amp;quot;acl" statements specified by the statement names.
    # :method: delete_acl_statement
    # :call-seq:
    # delete_acl_statement(statement_names)
    #
    # Parameters:
    # - statement_names String[] The names of the acl Statements

    ##
    # Deletes the &amp;quot;controls" statement. There can only be one &amp;quot;controls"
    # statement in the file.
    # :method: delete_controls_statement

    ##
    # Deletes the &amp;quot;include" statements.
    # :method: delete_include_statement
    # :call-seq:
    # delete_include_statement(path_names)
    #
    # Parameters:
    # - path_names String[] The path_names for the include files

    ##
    # Deletes the specified &amp;quot;key" statements.
    # :method: delete_key_statement
    # :call-seq:
    # delete_key_statement(statement_names)
    #
    # Parameters:
    # - statement_names String[] The names of the statements to delete

    ##
    # Deletes an &amp;quot;logging" statement. There can only be one &amp;quot;logging"
    # statement in the file.
    # :method: delete_logging_statement

    ##
    # Deletes the &amp;quot;options" statement. There can only be one &amp;quot;options"
    # statement in the file.
    # :method: delete_options_statement

    ##
    # Deletes the &amp;quot;server" statements.
    # :method: delete_server_statement
    # :call-seq:
    # delete_server_statement(statement_names)
    #
    # Parameters:
    # - statement_names String[] The statements to delete.

    ##
    # Deletes an &amp;quot;trusted_keys" statement. There can only be one &amp;quot;trusted_keys"
    # statement in the file.
    # :method: delete_trusted_keys_statement

    ##
    # Get the version of bind (named) running on the server as a string
    # :method: get_bind_version

    ##
    # Gets the entire contents of the named.conf file in a sequence of strings, one per
    # line.
    # :method: get_named_configuration_file

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Adds the new &amp;quot;acl name" statements if they do not already exist. If the
    # &amp;quot;acl name" statement already exists, it will delete the existing statement
    # and replace it with this one.
    # :method: set_acl_statement
    # :call-seq:
    # set_acl_statement(statements)
    #
    # Parameters:
    # - statements StatementDefinition[] A sequence statements

    ##
    # Sets the &amp;quot;controls" statement. If there is no existing controls statement,
    # one is added. If one exists, it is deleted and replaced with this new one. There
    # can only be one &amp;quot;controls" statement in the file.
    # :method: set_controls_statement
    # :call-seq:
    # set_controls_statement(statement)
    #
    # Parameters:
    # - statement StatementDefinition The "controls" statement definition.

    ##
    # Adds the specified &amp;quot;include" statements
    # :method: set_include_statement
    # :call-seq:
    # set_include_statement(statements)
    #
    # Parameters:
    # - statements StatementDefinition[] The include statements definitions.

    ##
    # Sets the &amp;quot;key" statements. If a key statement with this name already exists,
    # it is deleted and the new one is added. Otherwise the key statements will be added.
    # :method: set_key_statement
    # :call-seq:
    # set_key_statement(statements)
    #
    # Parameters:
    # - statements StatementDefinition[] The statement definitions.

    ##
    # Sets a new &amp;quot;logging" statement. If the logging statement exists, it is deleted
    # and replaced with the new statement. If there is no logging statement, this one is
    # added. There can only be one &amp;quot;logging" statement in the file.
    # :method: set_logging_statement
    # :call-seq:
    # set_logging_statement(statement)
    #
    # Parameters:
    # - statement StatementDefinition The statement definition.

    ##
    # If there is an existing &amp;quot;options" statement, it is replaced with this statement.
    # If there is no existing &amp;quot;options" statement, this new one is added. There
    # can only be one &amp;quot;options" statement in the file.
    # :method: set_options_statement
    # :call-seq:
    # set_options_statement(statement)
    #
    # Parameters:
    # - statement StatementDefinition The statement definition.

    ##
    # Adds the new &amp;quot;server" statements if they do not exist. If they exist, these
    # statements will replace them.
    # :method: set_server_statement
    # :call-seq:
    # set_server_statement(statements)
    #
    # Parameters:
    # - statements StatementDefinition[] The statements to set.

    ##
    # Adds a new &amp;quot;trusted-keys" statement or replaces the existing one. There
    # can only be one &amp;quot;trusted_keys" statement in the file.
    # :method: set_trusted_keys_statement
    # :call-seq:
    # set_trusted_keys_statement(statement)
    #
    # Parameters:
    # - statement StatementDefinition The statement definition.


  end
end
