module IControl::Networking
  ##
  # The SelfIPPortLockdown interface enables you to lock down protocols and ports on self IP addresses.
  class SelfIPPortLockdown < IControl::Base

    set_id_name "access_lists"

    class ProtocolPort < IControl::Base::Struct; end
    class SelfIPAccess < IControl::Base::Struct; end
    # A list of access modes.
    class AllowMode < IControl::Base::Enumeration; end    ##
    # Adds the list of access methods, with optional protocols/ports, for this self IPs.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def add_allow_access_list
      super
    end

    ##
    # Adds to the default list of protocols/ports on which access is allowed.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::SelfIPPortLockdown::ProtocolPort] :defaults The defaults protocols/ports to add.
    def add_default_protocol_port_access_list(opts)
      check_params(opts,[:defaults])
      super
    end

    ##
    # Deletes protocols and ports from the allow access list for this self IPs.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_allow_access_list
      super
    end

    ##
    # Gets the access list for this self IPs.
    # @return [SelfIPAccess]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :self_ips The self IPs .
    def allow_access_list(opts)
      check_params(opts,[:self_ips])
      super
    end

    ##
    # Gets the default protocol/port access list on which access is allowed.
    # @return [ProtocolPort]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def default_protocol_port_access_list
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Remove protocols and ports from the default list of protocols/ports on which access is allowed.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::SelfIPPortLockdown::ProtocolPort] :defaults The defaults protocols/ports to remove.
    def remove_default_protocol_port_access_list(opts)
      check_params(opts,[:defaults])
      super
    end

    ##
    # A structure that defines protocol / port combination.
    # @attr [IControl::Common::ProtocolType] protocol The protocol on which access is allowed.
    # @attr [Numeric] port The port for which access is allowed.
    class ProtocolPort < IControl::Base::Struct
      icontrol_attribute :protocol, IControl::Common::ProtocolType
      icontrol_attribute :port, Numeric
    end

    ##
    # A structure that defines the access mode for the specified self IP.
    # @attr [String] self_ip The self IP address.
    # @attr [IControl::Networking::SelfIPPortLockdown::AllowMode] mode The access mode for the self IP.
    # @attr [IControl::Networking::SelfIPPortLockdown::ProtocolPort] protocol_ports The list of protocols/ports for which access is allowed.
    class SelfIPAccess < IControl::Base::Struct
      icontrol_attribute :self_ip, String
      icontrol_attribute :mode, IControl::Networking::SelfIPPortLockdown::AllowMode
      icontrol_attribute :protocol_ports, IControl::Networking::SelfIPPortLockdown::ProtocolPort
    end


    ## A sequence of access modes.
    class AllowModeSequence < IControl::Base::Sequence ; end
    ## A sequence of protocol/port structures.
    class ProtocolPortSequence < IControl::Base::Sequence ; end
    ## A sequence of self IP access modes.
    class SelfIPAccessSequence < IControl::Base::Sequence ; end
    # A list of access modes.
    class AllowMode < IControl::Base::Enumeration
      # Access to the self IP is allowed through the specified protocol/port.
      ALLOW_MODE_PROTOCOL_PORT = :ALLOW_MODE_PROTOCOL_PORT
      # Allow no access to the self IP.
      ALLOW_MODE_NONE = :ALLOW_MODE_NONE
      # Allow access to the self IP using a pre-determined set of protocols/ports.
      ALLOW_MODE_DEFAULTS = :ALLOW_MODE_DEFAULTS
      # Allow full access to the self IP.
      ALLOW_MODE_ALL = :ALLOW_MODE_ALL
    end


  end
end
