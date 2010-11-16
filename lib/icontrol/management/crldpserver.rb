module IControl::Management
  ##
  # The CRLDPServer interface enables you to manage CRLDP Server configuration.
  class CRLDPServer < IControl::Base
    class CRLDPServerDefinition < IControl::Base::Struct; end    ## A sequence of CRLDP server definitions.
    class CRLDPServerDefinitionSequence < IControl::Base::Sequence ; end##
    # A struct that describes a CRLDP server.
    class CRLDPServerDefinition < IControl::Base::Struct
      # The CRLDP server name.
      icontrol_attribute :name, String
      # The CRLDP server's hostname.
      icontrol_attribute :hostname, String
      # The CRLDP server's listening port.
      icontrol_attribute :port, Numeric
    end

    ##
    # Creates the specified CRLDP servers.
    # :method: create
    # :call-seq:
    # create(servers)
    #
    # Parameters:
    # - servers CRLDPServerDefinition[] The list of CRLDP servers to create.

    ##
    # Deletes all CRLDP servers.
    # :method: delete_all_servers

    ##
    # Deletes the specified CRLDP servers.
    # :method: delete_server
    # :call-seq:
    # delete_server(servers)
    #
    # Parameters:
    # - servers String[] The names of the CRLDP servers to delete.

    ##
    # Gets the base DNs of the CRLDP servers.
    # :method: get_base_dn
    # :call-seq:
    # get_base_dn(servers)
    #
    # Parameters:
    # - servers String[] The names of the CRLDP servers.

    ##
    # Gets the hostnames of the CRLDP servers.
    # :method: get_hostname
    # :call-seq:
    # get_hostname(servers)
    #
    # Parameters:
    # - servers String[] The names of the CRLDP servers.

    ##
    # Gets a list of all CRLDP servers.
    # :method: get_list

    ##
    # Gets the ports of the CRLDP servers.
    # :method: get_port
    # :call-seq:
    # get_port(servers)
    #
    # Parameters:
    # - servers String[] The names of the CRLDP servers.

    ##
    # Gets the states indicating whether to match from head to tail in the case where the
    # DNs are in reversed order.
    # :method: get_reverse_dn_state
    # :call-seq:
    # get_reverse_dn_state(servers)
    #
    # Parameters:
    # - servers String[] The names of the CRLDP servers.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Sets the base DNs of the CRLDP servers.
    # :method: set_base_dn
    # :call-seq:
    # set_base_dn(servers ,base_dns)
    #
    # Parameters:
    # - servers String[] The names of the CRLDP servers.
    # - base_dns String[] The base DNs used by the servers.

    ##
    # Sets the hostnames of the CRLDP servers.
    # :method: set_hostname
    # :call-seq:
    # set_hostname(servers ,hostnames)
    #
    # Parameters:
    # - servers String[] The names of the CRLDP servers.
    # - hostnames String[] The hostnames used by the servers.

    ##
    # Sets the ports of the CRLDP servers.
    # :method: set_port
    # :call-seq:
    # set_port(servers ,ports)
    #
    # Parameters:
    # - servers String[] The names of the CRLDP servers.
    # - ports long[] The ports used by the servers.

    ##
    # Sets the states indicating whether to match from head to tail in the case where the
    # DNs are in reversed order.
    # :method: set_reverse_dn_state
    # :call-seq:
    # set_reverse_dn_state(servers ,states)
    #
    # Parameters:
    # - servers String[] The names of the CRLDP servers.
    # - states EnabledState[] The states to set.


  end
end
