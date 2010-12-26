module IControl::ASM
  ##
  # The Policy interface enables you to manipulate a policy.
  class Policy < IControl::Base

    set_id_name "policy_names"

    ##
    # Add predictable resource location
    # @return [boolean]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policy_name The polciy's name.
    # @option opts [String] :uris List or URIs to block. The URI is full, e.g.: http://foo.com/bar.php
    def add_predictable_resource_location(opts)
      check_params(opts,[:policy_name,:uris])
      super
    end

    ##
    # Associates the WA web applictions to the ASM policy.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :wa_webapp_names List of WA web applcations.
    def associate_wa_webapp(opts)
      check_params(opts,[:wa_webapp_names])
      super
    end

    ##
    # Create policies for this web applications.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :webapp_names The web application names.
    def create(opts)
      check_params(opts,[:webapp_names])
      super
    end

    ##
    # Create policies from template for this web applications.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :webapp_names The web application names.
    # @option opts [IControl::ASM::PolicyTemplate[]] :policy_templates The policy templates.
    def create_from_template(opts)
      check_params(opts,[:webapp_names,:policy_templates])
      super
    end

    ##
    # Deletes a policy.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_policy
      super
    end

    ##
    # Detaches the WA web applictions from the ASM policy.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :wa_webapp_names List of WA web applcations.
    def detach_wa_webapp(opts)
      check_params(opts,[:wa_webapp_names])
      super
    end

    ##
    # Downloads the policy from the device. The download_policy is typically called after having called to export_policy. The parameter policy_name must be the same as used during export_policy. The file is downloaded in chunks. Each chunk should be concatenated to the previous one on the client side. The return value has two fields: - file_data: The relevant part of the content of the file - chunk_type: Indicates the current chunk whether it is the first, middle, last chunk		or the current call includes the entire file.
    # @return [FileTransferContext]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policy_name The relative filename under /var/tmp into which export_policy previously exported the policy.
    # @option opts [long] :chunk_size The chunk/block size of the file data to read from the device.
    # @option opts [long] :file_offset The file offset that indicates where to read the next chunk of file data from.
    def download_policy(opts)
      check_params(opts,[:policy_name,:chunk_size,:file_offset])
      super
    end

    ##
    # Export Policy The export_policy method exports the policy specified in parameter policy_name and writes the file to the device's local disk. This method is typically followed by a call to download_policy which gets this full path filename as a parameter.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policy_name The name of the policy.
    # @option opts [String] :filename The filename to which the policy will be exported under /var/tmp.
    def export_policy(opts)
      check_params(opts,[:policy_name,:filename])
      super
    end

    ##
    # Get the max cookie length.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def cookie_length
      super
    end

    ##
    # Get blocking flag.
    # @return [boolean]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def disable_blocking_flag
      super
    end

    ##
    # Get the &amp;quot;dynamic sessions in URL" for this policies.
    # @return [DynamicSessionsInUrl]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def dynamic_sessions_in_url
      super
    end

    ##
    # Get max http header length.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def http_header_length
      super
    end

    ##
    # Get the list of policies.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Gets violation blocking flag.
    # @return [Violation[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def violation_flags
      super
    end

    ##
    # Import Policy Before calling import_policy, upload_policy should be done. Once the policy is completely uploaded, you can import it.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :webapp_name The target web application into which the policy will be imported.
    # @option opts [String] :filename The server-side full path where the policy		 was previously uploaded during upload_policy.		 This is: "/var/tmp/" concatenated with the parameter policy_name from		 the import_policy call.
    def import_policy(opts)
      check_params(opts,[:webapp_name,:filename])
      super
    end

    ##
    # Updates max cookie length.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :cookie_lengths The maximum length of a cookie.
    def set_cookie_length(opts)
      check_params(opts,[:cookie_lengths])
      super
    end

    ##
    # Updates blocking flag.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [boolean] :blocking_flags The flags of blocking enabled / disabled for each policy
    def set_disable_blocking_flag(opts)
      check_params(opts,[:blocking_flags])
      super
    end

    ##
    # Set the &amp;quot;dynamic sessions in URL" for this policies.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::ASM::DynamicSessionsInUrl] :settings The "dynamic sessions in URL" settings for the policies
    def set_dynamic_sessions_in_url(opts)
      check_params(opts,[:settings])
      super
    end

    ##
    # Updates max http header length.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :http_header_lengths The maximum length of http header.
    def set_http_header_length(opts)
      check_params(opts,[:http_header_lengths])
      super
    end

    ##
    # Set HTTP response splitting
    # @return [boolean]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policy_name The polciy's name.
    def set_http_response_splitting(opts)
      check_params(opts,[:policy_name])
      super
    end

    ##
    # Set path traversal
    # @return [boolean]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policy_name The polciy's name.
    def set_path_traversal(opts)
      check_params(opts,[:policy_name])
      super
    end

    ##
    # Updates prerequisite expiration period flag.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :expiration_periods The expiration period of login pages in seconds
    def set_prerequisite_expiration_period(opts)
      check_params(opts,[:expiration_periods])
      super
    end

    ##
    # Updates violation blocking flag.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::ASM::Violation[]] :violations The violations for each policy.
    def set_violation_flags(opts)
      check_params(opts,[:violations])
      super
    end

    ##
    # Uploads the policy to the device. In order to import a policy two things have to be done in this order - call upload_policy - call import_policy upload_policy uploads the policy to the device to /var/tmp/ directory. The filename is the name of the policy given in policy_name. If the policy is big, it should be uploaded in chunks using a loop on the client side.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policy_name The name of the policy.		 The filename will be the name of the policy in the /var/tmp directory.
    # @option opts [IControl::ASM::FileTransferContext] :file_context The context of the transfer operation. It has two parts:		 - file_data: The relevant part of the content of the file		 - chunk_type: Indicates the current chunk whether it is the first, middle, last chunk				 or the current call includes the entire file.
    def upload_policy(opts)
      check_params(opts,[:policy_name,:file_context])
      super
    end

    ##
    # Uploads the the wsdl and attaches it to a specific xml profile of a policy.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policy_name The name of the policy.
    # @option opts [String] :profile_name The name of the XML profile.
    # @option opts [String] :wsdl_filename The WSDL filename which will be attached to the XML profile.
    # @option opts [String] :wsdl_text
    def upload_xml_profile_wsdl(opts)
      check_params(opts,[:policy_name,:profile_name,:wsdl_filename,:wsdl_text])
      super
    end


  end
end
