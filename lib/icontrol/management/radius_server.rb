module IControl::Management
  ##
  # The RADIUSServer interface enables you to manage RADIUS Server configuration.
  class RADIUSServer < IControl::Base

    set_id_name "servers"

    class RADIUSServerDefinition < IControl::Base::Struct; end    ##
    # Creates this RADIUS server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def create
      super
    end

    ##
    # Deletes all RADIUS server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_servers
      super
    end

    ##
    # Deletes this RADIUS server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_server
      super
    end

    ##
    # Gets the IP addresses or hostnames of the RADIUS server.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def ip_or_hostname
      super
    end

    ##
    # Gets a list of all RADIUS server.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the ports of the RADIUS server.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def port
      super
    end

    ##
    # Gets the secrets of the RADIUS server.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def secret
      super
    end

    ##
    # Gets the timeouts of the RADIUS server.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def timeout
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Sets the IP addresses or hostnames of the RADIUS server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :ip_or_hostnames The IP addresses or hostnames used by the servers.
    def set_ip_or_hostname(opts)
      check_params(opts,[:ip_or_hostnames])
      super
    end

    ##
    # Sets the ports of the RADIUS server.
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
    # Sets the secrets of the RADIUS server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :secrets The secrets used by the servers.
    def set_secret(opts)
      check_params(opts,[:secrets])
      super
    end

    ##
    # Sets the timeouts of the RADIUS server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :timeouts The timeouts used by the servers.
    def set_timeout(opts)
      check_params(opts,[:timeouts])
      super
    end

    ##
    # A struct that describes a RADIUS server.
    # @attr [String] name The RADIUS server name.
    # @attr [String] ip_or_hostname The RADIUS server's IP address or hostname.
    # @attr [Numeric] service The RADIUS server's listening port.
    # @attr [String] secret The shared secret used to communicate with the RADIUS server.
    class RADIUSServerDefinition < IControl::Base::Struct
      icontrol_attribute :name, String
      icontrol_attribute :ip_or_hostname, String
      icontrol_attribute :service, Numeric
      icontrol_attribute :secret, String
    end


    ## A sequence of RADIUS server definitions.
    class RADIUSServerDefinitionSequence < IControl::Base::Sequence ; end
  end
end
