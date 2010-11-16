module IControl::ASM
  ##
  # The SystemConfiguration interface enables you to manipulate system-wide settings
  # of ASM.
  class SystemConfiguration < IControl::Base
    ##
    # Returns the current version of the installed signature file
    # :method: get_signature_file_version

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Get the severity of violations.
    # :method: get_violation_severities

    ##
    # Returns the current status of ASM: &amp;apos;1'=ASM ready &amp;apos;0'=ASM not ready
    # :method: is_asm_ready

    ##
    # Set the severity of violations.
    # :method: set_violation_severities
    # :call-seq:
    # set_violation_severities(violation_severities)
    #
    # Parameters:
    # - violation_severities ViolationSeverity[] The violation severities.

    ##
    # Updates the factory negsig file automatically from F5 server
    # :method: update_signature_file_automatic
    # :call-seq:
    # update_signature_file_automatic(flg_is_user_defined ,do_set_active ,force ,user_name ,check_interval)
    #
    # Parameters:
    # - flg_is_user_defined boolean Deprecated.
    # - do_set_active boolean Whether to make the signatures active for all policies
    # - force boolean Deprecated.
    # - user_name String Deprecated.
    # - check_interval boolean Deprecated. Should be 'false'.

    ##
    # Updates the factory negsig file manually
    # :method: update_signature_file_manual
    # :call-seq:
    # update_signature_file_manual(file_context ,flg_is_user_defined ,do_set_active ,force ,user_name ,check_interval)
    #
    # Parameters:
    # - file_context FileTransferContext The signature file's context used to update the system.
    # - flg_is_user_defined boolean Whether the file-context is of a user-defined signature in xml format or a complete factory im signature file from F5's server. (Use 'true' for user-defined signature in xml and 'false' for a complete factory im signature file.)
    # - do_set_active boolean Whether to make the signatures active for all policies
    # - force boolean Deprecated.
    # - user_name String Deprecated.
    # - check_interval boolean Deprecated. Should be 'false'.


  end
end
