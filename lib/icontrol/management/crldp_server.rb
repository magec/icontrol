module IControl::Management
  ##
  # The CRLDPServer interface enables you to manage CRLDP Server configuration.
  class CRLDPServer < IControl::Base

    set_id_name "servers"

    class CRLDPServerDefinition < IControl::Base::Struct; end    ##
    # Creates this CRLDP server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def create
      super
    end

    ##
    # Deletes all CRLDP server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_servers
      super
    end

    ##
    # Deletes this CRLDP server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_server
      super
    end

    ##
    # Gets the base DNs of the CRLDP server.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def base_dn
      super
    end

    ##
    # Gets the hostnames of the CRLDP server.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def hostname
      super
    end

    ##
    # Gets a list of all CRLDP server.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the ports of the CRLDP server.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def port
      super
    end

    ##
    # Gets the states indicating whether to match from head to tail in the case where the DNs are in reversed order.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def reverse_dn_state
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Sets the base DNs of the CRLDP server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :base_dns The base DNs used by the servers.
    def set_base_dn(opts)
      check_params(opts,[:base_dns])
      super
    end

    ##
    # Sets the hostnames of the CRLDP server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :hostnames The hostnames used by the servers.
    def set_hostname(opts)
      check_params(opts,[:hostnames])
      super
    end

    ##
    # Sets the ports of the CRLDP server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :ports The ports used by the servers.
    def set_port(opts)
      check_params(opts,[:ports])
      super
    end

    ##
    # Sets the states indicating whether to match from head to tail in the case where the DNs are in reversed order.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set.
    def set_reverse_dn_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # A struct that describes a CRLDP server.
    # @attr [String] name The CRLDP server name.
    # @attr [String] hostname The CRLDP server's hostname.
    # @attr [Numeric] port The CRLDP server's listening port.
    class CRLDPServerDefinition < IControl::Base::Struct
      icontrol_attribute :name, String
      icontrol_attribute :hostname, String
      icontrol_attribute :port, Numeric
    end


    ## A sequence of CRLDP server definitions.
    class CRLDPServerDefinitionSequence < IControl::Base::Sequence ; end
  end
end
