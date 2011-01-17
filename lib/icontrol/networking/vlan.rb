module IControl::Networking
  ##
  # The VLAN interface enables you to work with the definitions and attributes contained
  # in a device's VLAN.
  class VLAN < IControl::Base

    set_id_name "vlans"

    class ForwardingTableEntry < IControl::Base::Struct; end
    class MemberEntry < IControl::Base::Struct; end
    class ForwardingTableSequence < IControl::Base::Sequence ; end
    class ForwardingTableSequenceSequence < IControl::Base::SequenceSequence ; end
    class MemberSequence < IControl::Base::Sequence ; end
    class MemberSequenceSequence < IControl::Base::SequenceSequence ; end    ##
    # Adds this member interfaces/trunks to this VLANs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::VLAN::MemberEntry[]] :members The lists of member interfaces/trunks to put on the specified VLANs .
    def add_member(opts)
      opts = check_params(opts,[:members])
      super(opts)
    end

    ##
    # Adds the static forwarding entries for this VLANs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::VLAN::ForwardingTableEntry[]] :forwarding_entries The static forwarding entries to add to the specified VLANs .
    def add_static_forwarding(opts)
      opts = check_params(opts,[:forwarding_entries])
      super(opts)
    end

    ##
    # Creates this VLANs with extended attributes.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :vlan_ids The VLAN tag numbers or IDs (valid range is 1-4095).
    # @option opts [IControl::Networking::VLAN::MemberEntry[]] :members The lists of interfaces/trunks that will be members of the VLANs .
    # @option opts [IControl::Common::EnabledState] :failsafe_states The failsafe states.
    # @option opts [long] :timeouts The failsafe timeouts.
    # @option opts [String] :mac_masquerade_addresses The MAC masquerade addresses.
    def create(opts)
      opts = check_params(opts,[:vlan_ids,:members,:failsafe_states,:timeouts,:mac_masquerade_addresses])
      super(opts)
    end

    ##
    # Deletes all VLANs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_vlans
      super
    end

    ##
    # Deletes this VLANs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_vlan
      super
    end

    ##
    # Retrieves the dynamic forwarding entries for this VLANs.
    # @rspec_example
    # @return [ForwardingTableEntry[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def dynamic_forwarding
      super
    end

    ##
    # Gets the failsafe actions for this VLANs.
    # @rspec_example
    # @return [HAAction]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def failsafe_action
      super
    end

    ##
    # Gets the failsafe states for this VLANs.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def failsafe_state
      super
    end

    ##
    # Gets the failsafe timeouts for this VLANs.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def failsafe_timeout
      super
    end

    ##
    # Gets the configured learning modes of this VLANs.
    # @rspec_example
    # @return [LearningMode]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def learning_mode
      super
    end

    ##
    # Gets a list of all VLANs on this device.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the MAC masquerade addresses for this VLANs.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def mac_masquerade_address
      super
    end

    ##
    # Gets the members of this VLANs.
    # @rspec_example
    # @return [MemberEntry[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def member
      super
    end

    ##
    # Gets the MTUs for this VLANs.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def mtu
      super
    end

    ##
    # Gets the source checking states for this VLANs. If enabled and auto lasthop is disabled,
    # check that the source of the first packet of a connection is correct (correct VLAN,
    # router, node). This is equivalent to BSD's net.inet.sourcecheck sysctl variable.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def source_check_state
      super
    end

    ##
    # Retrieves the static forwarding entries for this VLANs.
    # @rspec_example
    # @return [ForwardingTableEntry[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def static_forwarding
      super
    end

    ##
    # Gets the true MAC addresses used by this VLANs.
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
    # Gets the ids for this VLANs.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def vlan_id
      super
    end

    ##
    # Removes all dynamic forwarding entries from this VLANs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_dynamic_forwardings
      super
    end

    ##
    # Removes all member interfaces/trunks from this VLANs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_members
      super
    end

    ##
    # Removes all static forwarding entries from this VLANs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_static_forwardings
      super
    end

    ##
    # Removes this member interfaces/trunks from this VLANs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::VLAN::MemberEntry[]] :members The lists of member interfaces/trunks to remove from the specified VLANs .
    def remove_member(opts)
      opts = check_params(opts,[:members])
      super(opts)
    end

    ##
    # Removes the static forwarding entries from this VLANs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::VLAN::ForwardingTableEntry[]] :forwarding_entries The static forwarding entries to remove from the specified VLANs .
    def remove_static_forwarding(opts)
      opts = check_params(opts,[:forwarding_entries])
      super(opts)
    end

    ##
    # Sets the failsafe actions for this VLANs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::HAAction] :actions The failsafe actions to set for the specified VLAN names.
    def set_failsafe_action(opts)
      opts = check_params(opts,[:actions])
      super(opts)
    end

    ##
    # Sets the failsafe states for this VLANs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The failsafe states to set for the specified VLAN names.
    def set_failsafe_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the failsafe timeouts for this VLANs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :timeouts The failsafe timeouts to set for the specified VLAN names.
    def set_failsafe_timeout(opts)
      opts = check_params(opts,[:timeouts])
      super(opts)
    end

    ##
    # Sets the learning modes for this VLANs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::LearningMode] :modes The learning modes to set for the specified VLANs .
    def set_learning_mode(opts)
      opts = check_params(opts,[:modes])
      super(opts)
    end

    ##
    # Sets the MAC masquerade addresses for this VLANs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :mac_masquerade_addresses The MAC masquerade addresses to set for the specified VLAN names.
    def set_mac_masquerade_address(opts)
      opts = check_params(opts,[:mac_masquerade_addresses])
      super(opts)
    end

    ##
    # Sets the MTUs for this VLANs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :mtus The MTUs to set for the specified VLAN names.
    def set_mtu(opts)
      opts = check_params(opts,[:mtus])
      super(opts)
    end

    ##
    # Sets the the source checking states for this VLANs. If enabled and auto lasthop is
    # disabled, check that the source of the first packet of a connection is correct (correct
    # VLAN, router, node). This is equivalent to BSD's net.inet.sourcecheck sysctl variable.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The source checking states to set for the specified VLAN names.
    def set_source_check_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the tag ids for this VLANs. Note: Currently (9.4.0+), this method is not supported;
    # delete and re-create the VLAN instead.
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

    ##
    # A struct that describes a forwarding table entry.
    # @attr [String] mac_address The MAC address.
    # @attr [String] interface_name The interface/trunk name.
    # @attr [IControl::Networking::MemberType] interface_type Whether the interface_name is an interface or trunk.
    class ForwardingTableEntry < IControl::Base::Struct
      icontrol_attribute :mac_address, String
      icontrol_attribute :interface_name, String
      icontrol_attribute :interface_type, IControl::Networking::MemberType
    end

    ##
    # A struct that describes a member entry.
    # @attr [String] member_name The member name.
    # @attr [IControl::Networking::MemberType] member_type The member type.
    # @attr [IControl::Networking::MemberTagType] tag_state The tagged/untagged state of the member.
    class MemberEntry < IControl::Base::Struct
      icontrol_attribute :member_name, String
      icontrol_attribute :member_type, IControl::Networking::MemberType
      icontrol_attribute :tag_state, IControl::Networking::MemberTagType
    end


    ## A sequence of forwarding table entries.
    class ForwardingTableSequence < IControl::Base::Sequence ; end
    ## A sequence of sequence of forwarding table entries.
    class ForwardingTableSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of member entries.
    class MemberSequence < IControl::Base::Sequence ; end
    ## A sequence of sequence of member entries.
    class MemberSequenceSequence < IControl::Base::SequenceSequence ; end
  end
end
