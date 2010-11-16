module IControl::Networking
  ##
  # The SelfIPPortLockdown interface enables you to lock down protocols and ports on
  # self IP addresses.
  class SelfIPPortLockdown < IControl::Base
    class AllowMode < IControl::Base::Enumeration; end
    class ProtocolPort < IControl::Base::Struct; end
    class SelfIPAccess < IControl::Base::Struct; end    ## A sequence of access modes.
    class AllowModeSequence < IControl::Base::Sequence ; end## A sequence of protocol/port structures.
    class ProtocolPortSequence < IControl::Base::Sequence ; end## A sequence of self IP access modes.
    class SelfIPAccessSequence < IControl::Base::Sequence ; end##
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

    ##
    # A structure that defines protocol / port combination.
    class ProtocolPort < IControl::Base::Struct
      # The protocol on which access is allowed.
      icontrol_attribute :protocol, IControl::Common::ProtocolType
      # The port for which access is allowed.
      icontrol_attribute :port, Numeric
    end

    ##
    # A structure that defines the access mode for the specified self IP.
    class SelfIPAccess < IControl::Base::Struct
      # The self IP address.
      icontrol_attribute :self_ip, String
      # The access mode for the self IP.
      icontrol_attribute :mode, IControl::Networking::SelfIPPortLockdown::AllowMode
      # The list of protocols/ports for which access is allowed.
      icontrol_attribute :protocol_ports, IControl::Networking::SelfIPPortLockdown::ProtocolPortSequence
    end

    ##
    # Adds the list of access methods, with optional protocols/ports, for the specified
    # self IPs.
    # :method: add_allow_access_list
    # :call-seq:
    # add_allow_access_list(access_lists)
    #
    # Parameters:
    # - access_lists SelfIPAccess[] The access lists that define how access is allowed to the specified self IPs . NOTE: For the AllowMode attribute of the access list: ALLOW_MODE_PROTOCOL_PORT - Access is allowed for the specified combinations of protocols and ports.				 For a given self IP, if the size of "protocol_ports" is 1, and if protocol is 0,				 then full access is allowed to the self IP, effectively similar to ALLOW_MODE_ALL.				 For a given self IP, if the size of "protocol_ports" is 1, and if port is 0,				 all ports will be open for the specified protocol (i.e. TCP and UDP) ALLOW_MODE_NONE - Allow no access to the self IP via any combination of protocols and ports.			 The "protocol_ports" field should be empty, and will be ignored. ALLOW_MODE_DEFAULTS - Allow access to the self IP via a predetermined default sets of protocols and ports.			 The "protocol_ports" field should be empty, and will be ignored. ALLOW_MODE_ALL - Allow full access to the self IP via any combination of protocols and ports.			The "protocol_ports" field should be empty, and will be ignored.

    ##
    # Adds to the default list of protocols/ports on which access is allowed.
    # :method: add_default_protocol_port_access_list
    # :call-seq:
    # add_default_protocol_port_access_list(defaults)
    #
    # Parameters:
    # - defaults ProtocolPort[] The defaults protocols/ports to add.

    ##
    # Deletes protocols and ports from the allow access list for the specified self IPs.
    # :method: delete_allow_access_list
    # :call-seq:
    # delete_allow_access_list(access_lists)
    #
    # Parameters:
    # - access_lists SelfIPAccess[] The access lists that define how access is allowed to the specified self IPs .		 For a self IP, if the size of "protocol_ports" is 1, and if the protocol is 0,		 this will effective remove all access to the self IP, regardless of protocol/port.		 This is effectively the same as calling add_allow_access_list with the mode		 attribute being ALLOW_MODE_NONE.		 For a self IP, if the size of "protocol_ports" is 1, and if the port is 0,		 this will effective remove all access via the specified protocol to the self IP. NOTE: The AllowMode attribute of the access list will be ignored since we're only deleting the	different combinations of protocols/ports. If the "protocol_ports" sequence is empty, nothing	will be performed.

    ##
    # Gets the access lists for the specified self IPs.
    # :method: get_allow_access_list
    # :call-seq:
    # get_allow_access_list(self_ips)
    #
    # Parameters:
    # - self_ips String[] The self IPs .

    ##
    # Gets the default protocol/port access list on which access is allowed.
    # :method: get_default_protocol_port_access_list

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Remove protocols and ports from the default list of protocols/ports on which access
    # is allowed.
    # :method: remove_default_protocol_port_access_list
    # :call-seq:
    # remove_default_protocol_port_access_list(defaults)
    #
    # Parameters:
    # - defaults ProtocolPort[] The defaults protocols/ports to remove.


  end
end
