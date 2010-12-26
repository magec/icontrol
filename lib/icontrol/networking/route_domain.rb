module IControl::Networking
  ##
  # The RouteDomain interface enables you to work with the definitions and attributes contained in a device's route domains. Route domains allow you to specify overlapping IP addresses for different objects in the system. This allows a service provider, for example, to have two different pool members at 10.10.10.1 that represent completely different real servers. The addresses for the two pool members might be 10.10.10.1%1 and 10.10.10.1%2 where the numbers after the percent signs are numeric ids of route domains.
  class RouteDomain < IControl::Base

    set_id_name "route_domains"

    ##
    # Adds this VLANs to this route domain.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :vlans The lists of child VLANs .
    def add_vlan(opts)
      check_params(opts,[:vlans])
      super
    end

    ##
    # Creates a route domain.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :vlans The lists of VLANs .
    def create(opts)
      check_params(opts,[:vlans])
      super
    end

    ##
    # Deletes all route domain.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_route_domains
      super
    end

    ##
    # Deletes this route domain.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_route_domain
      super
    end

    ##
    # Gets the descriptions for the this route domain.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def description
      super
    end

    ##
    # Gets a list of all route domain on this device.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the parent ids for this route domain.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def parent_id
      super
    end

    ##
    # Gets the state to enforce cross-domain routing restrictions for a set of route domain.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def strict_state
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Gets the lists of VLANs for this route domain.
    # @return [String[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def vlan
      super
    end

    ##
    # Removes all VLANs from this route domain.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_vlans
      super
    end

    ##
    # Removes this VLANs from this route domain.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :vlans The lists of child VLANs .
    def remove_vlan(opts)
      check_params(opts,[:vlans])
      super
    end

    ##
    # Sets the descriptions for the this route domain.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :descriptions The descriptions to set for the specified route domains.
    def set_description(opts)
      check_params(opts,[:descriptions])
      super
    end

    ##
    # Sets the parent ids for this route domain.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :parent_ids The route domain parent ids.
    def set_parent_id(opts)
      check_params(opts,[:parent_ids])
      super
    end

    ##
    # Sets the state to enforce cross-domain routing restrictions for a set of route domain. NOTES = If set, packets cannot cross route domain boundaries, i.e., they are strictly isolated to the current route domain. = For example, if not set, you can add a route to the routing table where the destination is 10.0.0.0%20 (route domain 20) and the gateway is 172.27.84.29%32 (route domain 32). = If set, the system may find invalid iRules that passed validation.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states State to enforce cross-domain routing restrictions for each specified route domain (default: enabled)
    def set_strict_state(opts)
      check_params(opts,[:states])
      super
    end


  end
end
