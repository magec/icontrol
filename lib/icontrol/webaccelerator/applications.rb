module IControl::WebAccelerator
  ##
  # Allows manipulation of Applications.
  class Applications < IControl::Base
    ##
    # Create a new Application. The strings that describe requested hosts should be one-line
    # and are of the form: requested_host(domain=&gt;www.example.com,		 destination_pool=&gt;INTERNAL)
    # or requested_host(domain=&gt;www.example.com,		 destination_pool=&gt;INTERNAL,
    # http_subdomain_count=&gt;5,		 https_subdomain_count=&gt;5,		 subdomain_prefix=&gt;wa)
    # :method: create
    # :call-seq:
    # create(name ,description ,local_policy ,remote_policy ,requested_hosts)
    #
    # Parameters:
    # - name String The name of the new application.
    # - description String The description of the new application.
    # - local_policy String The name of the local policy to use.
    # - remote_policy String The name of the remote policy to use;			 optional, may be blank.
    # - requested_hosts String[] A list of strings describing the one or			 more requested hosts to use with this			 application. The format of the strings			 is given above.

    ##
    # Delete a list of named Applications.
    # :method: delete_application
    # :call-seq:
    # delete_application(applications)
    #
    # Parameters:
    # - applications String[] A list of application names.

    ##
    # Get a list of Applications present on this WebAccelerator.
    # :method: get_list

    ##
    # Gets the version information for this interface.
    # :method: get_version


  end
end
