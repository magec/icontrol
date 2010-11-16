module IControl::Networking
  ##
  # The VLAN interface enables you to work with the definitions and attributes contained
  # in a device's VLAN.
  class VLAN < IControl::Base
    class ForwardingTableEntry < IControl::Base::Struct; end
    class MemberEntry < IControl::Base::Struct; end    ## A sequence of forwarding table entries.
    class ForwardingTableSequence < IControl::Base::Sequence ; end## A sequence of sequence of forwarding table entries.
    class ForwardingTableSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of member entries.
    class MemberSequence < IControl::Base::Sequence ; end## A sequence of sequence of member entries.
    class MemberSequenceSequence < IControl::Base::SequenceSequence ; end##
    # A struct that describes a forwarding table entry.
    class ForwardingTableEntry < IControl::Base::Struct
      # The MAC address.
      icontrol_attribute :mac_address, String
      # The interface/trunk name.
      icontrol_attribute :interface_name, String
      # Whether the interface_name is an interface or trunk.
      icontrol_attribute :interface_type, IControl::Networking::MemberType
    end

    ##
    # A struct that describes a member entry.
    class MemberEntry < IControl::Base::Struct
      # The member name.
      icontrol_attribute :member_name, String
      # The member type.
      icontrol_attribute :member_type, IControl::Networking::MemberType
      # The tagged/untagged state of the member.
      icontrol_attribute :tag_state, IControl::Networking::MemberTagType
    end

    ##
    # Adds the specified member interfaces/trunks to the specified VLANs.
    # :method: add_member
    # :call-seq:
    # add_member(vlans ,members)
    #
    # Parameters:
    # - vlans String[] The VLAN names.
    # - members MemberEntry[][] The lists of member interfaces/trunks to put on the specified VLANs .

    ##
    # Adds the static forwarding entries for the specified VLANs.
    # :method: add_static_forwarding
    # :call-seq:
    # add_static_forwarding(vlans ,forwarding_entries)
    #
    # Parameters:
    # - vlans String[] The VLAN names.
    # - forwarding_entries ForwardingTableEntry[][] The static forwarding entries to add to the specified VLANs .

    ##
    # Creates the specified VLANs with extended attributes.
    # :method: create
    # :call-seq:
    # create(vlans ,vlan_ids ,members ,failsafe_states ,timeouts ,mac_masquerade_addresses)
    #
    # Parameters:
    # - vlans String[] The VLAN names.
    # - vlan_ids long[] The VLAN tag numbers or IDs (valid range is 1-4095).
    # - members MemberEntry[][] The lists of interfaces/trunks that will be members of the VLANs .
    # - failsafe_states EnabledState[] The failsafe states.
    # - timeouts long[] The failsafe timeouts.
    # - mac_masquerade_addresses String[] The MAC masquerade addresses.

    ##
    # Deletes all VLANs.
    # :method: delete_all_vlans

    ##
    # Deletes the specified VLANs.
    # :method: delete_vlan
    # :call-seq:
    # delete_vlan(vlans)
    #
    # Parameters:
    # - vlans String[] The VLAN names.

    ##
    # Retrieves the dynamic forwarding entries for the specified VLANs.
    # :method: get_dynamic_forwarding
    # :call-seq:
    # get_dynamic_forwarding(vlans)
    #
    # Parameters:
    # - vlans String[] The VLAN names.

    ##
    # Gets the failsafe actions for the specified VLANs.
    # :method: get_failsafe_action
    # :call-seq:
    # get_failsafe_action(vlans)
    #
    # Parameters:
    # - vlans String[] The VLAN names.

    ##
    # Gets the failsafe states for the specified VLANs.
    # :method: get_failsafe_state
    # :call-seq:
    # get_failsafe_state(vlans)
    #
    # Parameters:
    # - vlans String[] The VLAN names.

    ##
    # Gets the failsafe timeouts for the specified VLANs.
    # :method: get_failsafe_timeout
    # :call-seq:
    # get_failsafe_timeout(vlans)
    #
    # Parameters:
    # - vlans String[] The VLAN names.

    ##
    # Gets the configured learning modes of the specified VLANs.
    # :method: get_learning_mode
    # :call-seq:
    # get_learning_mode(vlans)
    #
    # Parameters:
    # - vlans String[] The VLAN names.

    ##
    # Gets a list of all VLANs on this device.
    # :method: get_list

    ##
    # Gets the MAC masquerade addresses for the specified VLANs.
    # :method: get_mac_masquerade_address
    # :call-seq:
    # get_mac_masquerade_address(vlans)
    #
    # Parameters:
    # - vlans String[] The VLAN names.

    ##
    # Gets the members of the specified VLANs.
    # :method: get_member
    # :call-seq:
    # get_member(vlans)
    #
    # Parameters:
    # - vlans String[] The VLAN names.

    ##
    # Gets the MTUs for the specified VLANs.
    # :method: get_mtu
    # :call-seq:
    # get_mtu(vlans)
    #
    # Parameters:
    # - vlans String[] The VLAN names.

    ##
    # Gets the source checking states for the specified VLANs. If enabled and auto lasthop
    # is disabled, check that the source of the first packet of a connection is correct
    # (correct VLAN, router, node). This is equivalent to BSD's net.inet.sourcecheck sysctl
    # variable.
    # :method: get_source_check_state
    # :call-seq:
    # get_source_check_state(vlans)
    #
    # Parameters:
    # - vlans String[] The VLAN names.

    ##
    # Retrieves the static forwarding entries for the specified VLANs.
    # :method: get_static_forwarding
    # :call-seq:
    # get_static_forwarding(vlans)
    #
    # Parameters:
    # - vlans String[] The VLAN names.

    ##
    # Gets the true MAC addresses used by the specified VLANs.
    # :method: get_true_mac_address
    # :call-seq:
    # get_true_mac_address(vlans)
    #
    # Parameters:
    # - vlans String[] The VLAN names.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Gets the ids for the specified VLANs.
    # :method: get_vlan_id
    # :call-seq:
    # get_vlan_id(vlans)
    #
    # Parameters:
    # - vlans String[] The VLAN names.

    ##
    # Removes all dynamic forwarding entries from the specified VLANs.
    # :method: remove_all_dynamic_forwardings
    # :call-seq:
    # remove_all_dynamic_forwardings(vlans)
    #
    # Parameters:
    # - vlans String[] The VLAN names.

    ##
    # Removes all member interfaces/trunks from the specified VLANs.
    # :method: remove_all_members
    # :call-seq:
    # remove_all_members(vlans)
    #
    # Parameters:
    # - vlans String[] The VLAN names.

    ##
    # Removes all static forwarding entries from the specified VLANs.
    # :method: remove_all_static_forwardings
    # :call-seq:
    # remove_all_static_forwardings(vlans)
    #
    # Parameters:
    # - vlans String[] The VLAN names.

    ##
    # Removes the specified member interfaces/trunks from the specified VLANs.
    # :method: remove_member
    # :call-seq:
    # remove_member(vlans ,members)
    #
    # Parameters:
    # - vlans String[] The VLAN names.
    # - members MemberEntry[][] The lists of member interfaces/trunks to remove from the specified VLANs .

    ##
    # Removes the static forwarding entries from the specified VLANs.
    # :method: remove_static_forwarding
    # :call-seq:
    # remove_static_forwarding(vlans ,forwarding_entries)
    #
    # Parameters:
    # - vlans String[] The VLAN names.
    # - forwarding_entries ForwardingTableEntry[][] The static forwarding entries to remove from the specified VLANs .

    ##
    # Sets the failsafe actions for the specified VLANs.
    # :method: set_failsafe_action
    # :call-seq:
    # set_failsafe_action(vlans ,actions)
    #
    # Parameters:
    # - vlans String[] The VLAN names.
    # - actions HAAction[] The failsafe actions to set for the specified VLAN names.

    ##
    # Sets the failsafe states for the specified VLANs.
    # :method: set_failsafe_state
    # :call-seq:
    # set_failsafe_state(vlans ,states)
    #
    # Parameters:
    # - vlans String[] The VLAN names.
    # - states EnabledState[] The failsafe states to set for the specified VLAN names.

    ##
    # Sets the failsafe timeouts for the specified VLANs.
    # :method: set_failsafe_timeout
    # :call-seq:
    # set_failsafe_timeout(vlans ,timeouts)
    #
    # Parameters:
    # - vlans String[] The VLAN names.
    # - timeouts long[] The failsafe timeouts to set for the specified VLAN names.

    ##
    # Sets the learning modes for the specified VLANs.
    # :method: set_learning_mode
    # :call-seq:
    # set_learning_mode(vlans ,modes)
    #
    # Parameters:
    # - vlans String[] The VLAN names.
    # - modes LearningMode[] The learning modes to set for the specified VLANs .

    ##
    # Sets the MAC masquerade addresses for the specified VLANs.
    # :method: set_mac_masquerade_address
    # :call-seq:
    # set_mac_masquerade_address(vlans ,mac_masquerade_addresses)
    #
    # Parameters:
    # - vlans String[] The VLAN names.
    # - mac_masquerade_addresses String[] The MAC masquerade addresses to set for the specified VLAN names.

    ##
    # Sets the MTUs for the specified VLANs.
    # :method: set_mtu
    # :call-seq:
    # set_mtu(vlans ,mtus)
    #
    # Parameters:
    # - vlans String[] The VLAN names.
    # - mtus long[] The MTUs to set for the specified VLAN names.

    ##
    # Sets the the source checking states for the specified VLANs. If enabled and auto
    # lasthop is disabled, check that the source of the first packet of a connection is
    # correct (correct VLAN, router, node). This is equivalent to BSD's net.inet.sourcecheck
    # sysctl variable.
    # :method: set_source_check_state
    # :call-seq:
    # set_source_check_state(vlans ,states)
    #
    # Parameters:
    # - vlans String[] The VLAN names.
    # - states EnabledState[] The source checking states to set for the specified VLAN names.

    ##
    # Sets the tag ids for the specified VLANs. Note: Currently (9.4.0+), this method is
    # not supported; delete and re-create the VLAN instead.
    # :method: set_vlan_id
    # :call-seq:
    # set_vlan_id(vlans ,vlan_ids)
    #
    # Parameters:
    # - vlans String[] The VLAN names.
    # - vlan_ids long[] The VLAN ID/tag numbers (valid range is 1-4095).


  end
end
