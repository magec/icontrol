module IControl::ASM
  ##
  # The SystemConfiguration interface enables you to manipulate system-wide settings
  # of ASM.
  class SystemConfiguration < IControl::Base

    set_id_name "flg_is_user_defined"

    ##
    # Returns the current version of the installed signature file
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def signature_file_version
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
    # Get the severity of violations.
    # @rspec_example
    # @return [ViolationSeverity]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def violation_severities
      super
    end

    ##
    # Returns the current status of ASM: &amp;apos;1'=ASM ready &amp;apos;0'=ASM not ready
    # @rspec_example
    # @return [boolean]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def is_asm_ready
      super
    end

    ##
    # Set the severity of violations.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::ASM::ViolationSeverity] :violation_severities The violation severities.
    def set_violation_severities(opts)
      opts = check_params(opts,[:violation_severities])
      super(opts)
    end

    ##
    # Updates the factory negsig file automatically from F5 server
    # @rspec_example
    # @return [SignatureFileUpdateReturnValue]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [boolean] :do_set_active Whether to make the signatures active for all policies
    # @option opts [boolean] :force Deprecated.
    # @option opts [String] :user_name Deprecated.
    # @option opts [boolean] :check_interval Deprecated. Should be 'false'.
    def update_signature_file_automatic(opts)
      opts = check_params(opts,[:do_set_active,:force,:user_name,:check_interval])
      super(opts)
    end

    ##
    # Updates the factory negsig file manually
    # @rspec_example
    # @return [SignatureFileUpdateReturnValue]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::ASM::FileTransferContext] :file_context The signature file's context used to update the system.
    # @option opts [boolean] :do_set_active Whether to make the signatures active for all policies
    # @option opts [boolean] :force Deprecated.
    # @option opts [String] :user_name Deprecated.
    # @option opts [boolean] :check_interval Deprecated. Should be 'false'.
    def update_signature_file_manual(opts)
      opts = check_params(opts,[:file_context,:do_set_active,:force,:user_name,:check_interval])
      super(opts)
    end


  end
end
