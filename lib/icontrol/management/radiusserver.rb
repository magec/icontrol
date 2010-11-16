module IControl::Management
  ##
  # The RADIUSServer interface enables you to manage RADIUS Server configuration.
  class RADIUSServer < IControl::Base
    class RADIUSServerDefinition < IControl::Base::Struct; end    ## A sequence of RADIUS server definitions.
    class RADIUSServerDefinitionSequence < IControl::Base::Sequence ; end##
    # A struct that describes a RADIUS server.
    class RADIUSServerDefinition < IControl::Base::Struct
      # The RADIUS server name.
      icontrol_attribute :name, String
      # The RADIUS server's IP address or hostname.
      icontrol_attribute :ip_or_hostname, String
      # The RADIUS server's listening port.
      icontrol_attribute :service, Numeric
      # The shared secret used to communicate with the RADIUS server.
      icontrol_attribute :secret, String
    end

    ##
    # Creates the specified RADIUS servers.
    # :method: create
    # :call-seq:
    # create(servers)
    #
    # Parameters:
    # - servers RADIUSServerDefinition[] The list of RADIUS servers to create.

    ##
    # Deletes all RADIUS servers.
    # :method: delete_all_servers

    ##
    # Deletes the specified RADIUS servers.
    # :method: delete_server
    # :call-seq:
    # delete_server(servers)
    #
    # Parameters:
    # - servers String[] The names of the RADIUS servers to delete.

    ##
    # Gets the IP addresses or hostnames of the RADIUS servers.
    # :method: get_ip_or_hostname
    # :call-seq:
    # get_ip_or_hostname(servers)
    #
    # Parameters:
    # - servers String[] The names of the RADIUS servers.

    ##
    # Gets a list of all RADIUS servers.
    # :method: get_list

    ##
    # Gets the ports of the RADIUS servers.
    # :method: get_port
    # :call-seq:
    # get_port(servers)
    #
    # Parameters:
    # - servers String[] The names of the RADIUS servers.

    ##
    # Gets the secrets of the RADIUS servers.
    # :method: get_secret
    # :call-seq:
    # get_secret(servers)
    #
    # Parameters:
    # - servers String[] The names of the RADIUS servers.

    ##
    # Gets the timeouts of the RADIUS servers.
    # :method: get_timeout
    # :call-seq:
    # get_timeout(servers)
    #
    # Parameters:
    # - servers String[] The names of the RADIUS servers.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Sets the IP addresses or hostnames of the RADIUS servers.
    # :method: set_ip_or_hostname
    # :call-seq:
    # set_ip_or_hostname(servers ,ip_or_hostnames)
    #
    # Parameters:
    # - servers String[] The names of the RADIUS servers.
    # - ip_or_hostnames String[] The IP addresses or hostnames used by the servers.

    ##
    # Sets the ports of the RADIUS servers.
    # :method: set_port
    # :call-seq:
    # set_port(servers ,ports)
    #
    # Parameters:
    # - servers String[] The names of the RADIUS servers.
    # - ports long[] The ports used by the servers.

    ##
    # Sets the secrets of the RADIUS servers.
    # :method: set_secret
    # :call-seq:
    # set_secret(servers ,secrets)
    #
    # Parameters:
    # - servers String[] The names of the RADIUS servers.
    # - secrets String[] The secrets used by the servers.

    ##
    # Sets the timeouts of the RADIUS servers.
    # :method: set_timeout
    # :call-seq:
    # set_timeout(servers ,timeouts)
    #
    # Parameters:
    # - servers String[] The names of the RADIUS servers.
    # - timeouts long[] The timeouts used by the servers.


  end
end
