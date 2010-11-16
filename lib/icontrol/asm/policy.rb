module IControl::ASM
  ##
  # The Policy interface enables you to manipulate a policy.
  class Policy < IControl::Base
    ##
    # Add predictable resource location
    # :method: add_predictable_resource_location
    # :call-seq:
    # add_predictable_resource_location(policy_name ,uris)
    #
    # Parameters:
    # - policy_name String The polciy's name.
    # - uris String[] List or URIs to block. The URI is full, e.g.: http://foo.com/bar.php

    ##
    # Associates the WA web applictions to the ASM policy.
    # :method: associate_wa_webapp
    # :call-seq:
    # associate_wa_webapp(policy_names ,wa_webapp_names)
    #
    # Parameters:
    # - policy_names String[] List of ASM policies.
    # - wa_webapp_names String[] List of WA web applcations.

    ##
    # Create policies for the specified web applications.
    # :method: create
    # :call-seq:
    # create(webapp_names ,policy_names)
    #
    # Parameters:
    # - webapp_names String[] The web application names.
    # - policy_names String[][] The policy names.

    ##
    # Create policies from template for the specified web applications.
    # :method: create_from_template
    # :call-seq:
    # create_from_template(webapp_names ,policy_names ,policy_templates)
    #
    # Parameters:
    # - webapp_names String[] The web application names.
    # - policy_names String[][] The policy names.
    # - policy_templates PolicyTemplate[][] The policy templates.

    ##
    # Deletes a policy.
    # :method: delete_policy
    # :call-seq:
    # delete_policy(policy_names)
    #
    # Parameters:
    # - policy_names String[] The policy names.

    ##
    # Detaches the WA web applictions from the ASM policy.
    # :method: detach_wa_webapp
    # :call-seq:
    # detach_wa_webapp(policy_names ,wa_webapp_names)
    #
    # Parameters:
    # - policy_names String[] List of ASM policies.
    # - wa_webapp_names String[] List of WA web applcations.

    ##
    # Downloads the policy from the device. The download_policy is typically called after
    # having called to export_policy. The parameter policy_name must be the same as used
    # during export_policy. The file is downloaded in chunks. Each chunk should be concatenated
    # to the previous one on the client side. The return value has two fields: - file_data:
    # The relevant part of the content of the file - chunk_type: Indicates the current
    # chunk whether it is the first, middle, last chunk		or the current call includes the
    # entire file.
    # :method: download_policy
    # :call-seq:
    # download_policy(policy_name ,chunk_size ,file_offset)
    #
    # Parameters:
    # - policy_name String The relative filename under /var/tmp into which export_policy previously exported the policy.
    # - chunk_size long The chunk/block size of the file data to read from the device.
    # - file_offset long The file offset that indicates where to read the next chunk of file data from.

    ##
    # Export Policy The export_policy method exports the policy specified in parameter
    # policy_name and writes the file to the device's local disk. This method is typically
    # followed by a call to download_policy which gets this full path filename as a parameter.
    # :method: export_policy
    # :call-seq:
    # export_policy(policy_name ,filename)
    #
    # Parameters:
    # - policy_name String The name of the policy.
    # - filename String The filename to which the policy will be exported under /var/tmp.

    ##
    # Get the max cookie length.
    # :method: get_cookie_length
    # :call-seq:
    # get_cookie_length(policy_names)
    #
    # Parameters:
    # - policy_names String[] The policy names.

    ##
    # Get blocking flag.
    # :method: get_disable_blocking_flag
    # :call-seq:
    # get_disable_blocking_flag(policy_names)
    #
    # Parameters:
    # - policy_names String[] The policy names.

    ##
    # Get the &amp;quot;dynamic sessions in URL" for the specified policies.
    # :method: get_dynamic_sessions_in_url
    # :call-seq:
    # get_dynamic_sessions_in_url(policy_names)
    #
    # Parameters:
    # - policy_names String[] The policy names.

    ##
    # Get max http header length.
    # :method: get_http_header_length
    # :call-seq:
    # get_http_header_length(policy_names)
    #
    # Parameters:
    # - policy_names String[] The policy names.

    ##
    # Get the list of policies.
    # :method: get_list

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Gets violation blocking flag.
    # :method: get_violation_flags
    # :call-seq:
    # get_violation_flags(policy_names)
    #
    # Parameters:
    # - policy_names String[] The policy names.

    ##
    # Import Policy Before calling import_policy, upload_policy should be done. Once the
    # policy is completely uploaded, you can import it.
    # :method: import_policy
    # :call-seq:
    # import_policy(webapp_name ,filename)
    #
    # Parameters:
    # - webapp_name String The target web application into which the policy will be imported.
    # - filename String The server-side full path where the policy		 was previously uploaded during upload_policy.		 This is: "/var/tmp/" concatenated with the parameter policy_name from		 the import_policy call.

    ##
    # Updates max cookie length.
    # :method: set_cookie_length
    # :call-seq:
    # set_cookie_length(policy_names ,cookie_lengths)
    #
    # Parameters:
    # - policy_names String[] The policy names.
    # - cookie_lengths long[] The maximum length of a cookie.

    ##
    # Updates blocking flag.
    # :method: set_disable_blocking_flag
    # :call-seq:
    # set_disable_blocking_flag(policy_names ,blocking_flags)
    #
    # Parameters:
    # - policy_names String[] The policy names.
    # - blocking_flags boolean[] The flags of blocking enabled / disabled for each policy

    ##
    # Set the &amp;quot;dynamic sessions in URL" for the specified policies.
    # :method: set_dynamic_sessions_in_url
    # :call-seq:
    # set_dynamic_sessions_in_url(policy_names ,settings)
    #
    # Parameters:
    # - policy_names String[] The policy names.
    # - settings DynamicSessionsInUrl[] The "dynamic sessions in URL" settings for the policies

    ##
    # Updates max http header length.
    # :method: set_http_header_length
    # :call-seq:
    # set_http_header_length(policy_names ,http_header_lengths)
    #
    # Parameters:
    # - policy_names String[] The policy names.
    # - http_header_lengths long[] The maximum length of http header.

    ##
    # Set HTTP response splitting
    # :method: set_http_response_splitting
    # :call-seq:
    # set_http_response_splitting(policy_name)
    #
    # Parameters:
    # - policy_name String The polciy's name.

    ##
    # Set path traversal
    # :method: set_path_traversal
    # :call-seq:
    # set_path_traversal(policy_name)
    #
    # Parameters:
    # - policy_name String The polciy's name.

    ##
    # Updates prerequisite expiration period flag.
    # :method: set_prerequisite_expiration_period
    # :call-seq:
    # set_prerequisite_expiration_period(policy_names ,expiration_periods)
    #
    # Parameters:
    # - policy_names String[] The policy names.
    # - expiration_periods long[] The expiration period of login pages in seconds

    ##
    # Updates violation blocking flag.
    # :method: set_violation_flags
    # :call-seq:
    # set_violation_flags(policy_names ,violations)
    #
    # Parameters:
    # - policy_names String[] The policy names.
    # - violations Violation[][] The violations for each policy.

    ##
    # Uploads the policy to the device. In order to import a policy two things have to
    # be done in this order - call upload_policy - call import_policy upload_policy uploads
    # the policy to the device to /var/tmp/ directory. The filename is the name of the
    # policy given in policy_name. If the policy is big, it should be uploaded in chunks
    # using a loop on the client side.
    # :method: upload_policy
    # :call-seq:
    # upload_policy(policy_name ,file_context)
    #
    # Parameters:
    # - policy_name String The name of the policy.		 The filename will be the name of the policy in the /var/tmp directory.
    # - file_context FileTransferContext The context of the transfer operation. It has two parts:		 - file_data: The relevant part of the content of the file		 - chunk_type: Indicates the current chunk whether it is the first, middle, last chunk				 or the current call includes the entire file.

    ##
    # Uploads the the wsdl and attaches it to a specific xml profile of a policy.
    # :method: upload_xml_profile_wsdl
    # :call-seq:
    # upload_xml_profile_wsdl(policy_name ,profile_name ,wsdl_filename ,wsdl_text)
    #
    # Parameters:
    # - policy_name String The name of the policy.
    # - profile_name String The name of the XML profile.
    # - wsdl_filename String The WSDL filename which will be attached to the XML profile.
    # - wsdl_text String


  end
end
