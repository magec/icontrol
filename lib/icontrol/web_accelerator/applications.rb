module IControl::WebAccelerator
  ##
  # Allows manipulation of Applications.
  class Applications < IControl::Base

    set_id_name "name"

    ##
    # Create a new Application. The strings that describe requested hosts should be one-line
    # and are of the form: requested_host(domain=&gt;www.example.com,		 destination_pool=&gt;INTERNAL)
    # or requested_host(domain=&gt;www.example.com,		 destination_pool=&gt;INTERNAL,
    # http_subdomain_count=&gt;5,		 https_subdomain_count=&gt;5,		 subdomain_prefix=&gt;wa)
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :description The description of the new application.
    # @option opts [String] :local_policy The name of the local policy to use.
    # @option opts [String] :remote_policy The name of the remote policy to use;			 optional, may be blank.
    # @option opts [String] :requested_hosts A list of strings describing the one or			 more requested hosts to use with this			 application. The format of the strings			 is given above.
    def create(opts)
      check_params(opts,[:description,:local_policy,:remote_policy,:requested_hosts])
      super
    end

    ##
    # Delete a list of namd Applications.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :applications A list of application names.
    def delete_application(opts)
      check_params(opts,[:applications])
      super
    end

    ##
    # Get a list of Applications present on this WebAccelerator.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the version information for this interface.
    # @rspec_example
    # @return [String]
    def version
      super
    end


  end
end
