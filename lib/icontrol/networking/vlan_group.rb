module IControl::Networking
  ##
  # The VLANGroup interface enables you to work with the definitions and attributes contained
  # in a device's VLAN group.
  class VLANGroup < IControl::Base

    set_id_name "vlan_groups"

    class VLANGroupTransparencySequence < IControl::Base::Sequence ; end
    # A list of possible transparency values for VLAN groups.
    class VLANGroupTransparency < IControl::Base::Enumeration; end    ##
    # Adds this IP addresses to the global proxy ARP exclusion list that applies to all
    # VLAN groups.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :addresses The lists of IP addresses.
    def add_global_proxy_exclusion(opts)
      opts = check_params(opts,[:addresses])
      super(opts)
    end

    ##
    # Adds this children VLANs to this VLAN groups.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :member_vlans The lists of child VLANs .
    def add_member(opts)
      opts = check_params(opts,[:member_vlans])
      super(opts)
    end

    ##
    # Adds this IP addresses to the proxy ARP exclusion lists of this VLAN groups.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :addresses The lists of IP addresses.
    def add_proxy_exclusion(opts)
      opts = check_params(opts,[:addresses])
      super(opts)
    end

    ##
    # This method has been deprecated; please use create_v2 instead. Creates a VLAN group.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :vlan_ids The VLAN tag numbers or IDs (valid range is 1-4095).
    # @option opts [String[]] :member_vlans The lists of member VLANs .
    def create(opts)
      opts = check_params(opts,[:vlan_ids,:member_vlans])
      super(opts)
    end

    ##
    # Creates a VLAN group.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :member_vlans The lists of member VLANs .
    def create_v2(opts)
      opts = check_params(opts,[:member_vlans])
      super(opts)
    end

    ##
    # Deletes all VLAN groups.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_vlan_groups
      super
    end

    ##
    # Deletes this VLAN groups.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_vlan_group
      super
    end

    ##
    # Gets the states to indicate whether to bridge non-IP traffic as well as IP traffic
    # for this VLAN groups.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def bridge_all_traffic_state
      super
    end

    ##
    # Gets the states to indicate whether to bridge while unit is in standby mode for this
    # VLAN groups.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def bridge_in_standby_state
      super
    end

    ##
    # Gets the states to indicate whether to bridge multicast/broadcast traffic for this
    # VLAN groups.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def bridge_multicast_state
      super
    end

    ##
    # Gets the global lists of IP addresses that proxy ARP will ignore for all VLAN groups.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def global_proxy_exclusion
      super
    end

    ##
    # Gets a list of all VLAN groups on this device.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the MAC masquerade addresses for this VLAN groups.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def mac_masquerade_address
      super
    end

    ##
    # Gets the lists of children VLANs of this VLAN groups.
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def member
      super
    end

    ##
    # Gets the lists of IP addresses that proxy ARP will ignore for this VLAN groups.
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def proxy_exclusion
      super
    end

    ##
    # Gets the transparency modes for this VLAN groups.
    # @rspec_example
    # @return [VLANGroupTransparency]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def transparency_mode
      super
    end

    ##
    # Gets the true MAC addresses used by this VLAN groups.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def true_mac_address
      super
    end

    ##
    # Gets the version information for this interface.
    # @rspec_example
    # @return [String]
    def version
      super
    end

    ##
    # This method has been deprecated; accessing VLAN id for a VLAN group was unnecessary
    # and misleading. The method now returns 0s. Please don't use in the future. Gets the
    # ids for this VLAN groups.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def vlan_id
      super
    end

    ##
    # Removes all IP addresses from the global proxy ARP exclusion list for all VLAN groups.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_global_proxy_exclusions
      super
    end

    ##
    # Removes all children VLANs from this VLAN groups.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_members
      super
    end

    ##
    # Removes all IP addresses from the proxy ARP exclusion lists of this VLAN groups.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_proxy_exclusions
      super
    end

    ##
    # Removes this IP addresses from the global proxy ARP exclusion list that applies to
    # all VLAN groups.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :addresses The lists of IP addresses.
    def remove_global_proxy_exclusion(opts)
      opts = check_params(opts,[:addresses])
      super(opts)
    end

    ##
    # Removes this children VLANs from this VLAN groups.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :member_vlans The lists of child VLANs .
    def remove_member(opts)
      opts = check_params(opts,[:member_vlans])
      super(opts)
    end

    ##
    # Removes this IP addresses from the proxy ARP exclusion lists of this VLAN groups.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :addresses The lists of IP addresses.
    def remove_proxy_exclusion(opts)
      opts = check_params(opts,[:addresses])
      super(opts)
    end

    ##
    # Sets the states to indicate whether to bridge non-IP traffic as well as IP traffic
    # for this VLAN groups.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set for the specified VLAN group names.
    def set_bridge_all_traffic_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the states to indicate whether to bridge while unit is in standby mode for this
    # VLAN groups.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set for the specified VLAN group names.
    def set_bridge_in_standby_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the states to indicate whether to bridge multicast/broadcast traffic for this
    # VLAN groups.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set for the specified VLAN group names.
    def set_bridge_multicast_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the MAC masquerade addresses for this VLAN groups.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :mac_masquerade_addresses The MAC masquerade addresses to set for the specified VLAN groups.
    def set_mac_masquerade_address(opts)
      opts = check_params(opts,[:mac_masquerade_addresses])
      super(opts)
    end

    ##
    # Sets the transparency modes for this VLAN groups.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::VLANGroup::VLANGroupTransparency] :modes The transparency modes for the specified VLAN groups.
    def set_transparency_mode(opts)
      opts = check_params(opts,[:modes])
      super(opts)
    end

    ##
    # This method has been deprecated; setting VLAN id for a VLAN group had and will have
    # no effect. Please don't use in the future. Sets the tag ids for this VLAN groups.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :vlan_ids The VLAN ID/tag numbers (valid range is 1-4095).
    def set_vlan_id(opts)
      opts = check_params(opts,[:vlan_ids])
      super(opts)
    end


    ## A sequence of transparency values.
    class VLANGroupTransparencySequence < IControl::Base::Sequence ; end
    # A list of possible transparency values for VLAN groups.
    class VLANGroupTransparency < IControl::Base::Enumeration
      # Transparent level, bridging with no modifications.
      VLANGROUP_TRANSPARENT = :VLANGROUP_TRANSPARENT
      # Opaque level, bridging using proxy-arp.
      VLANGROUP_OPAQUE = :VLANGROUP_OPAQUE
      # Translucent level, toggling locally-modified bit of source MAC.
      VLANGROUP_TRANSLUCENT = :VLANGROUP_TRANSLUCENT
    end


  end
end
