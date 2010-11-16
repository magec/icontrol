module IControl::Networking
  ##
  # The STPInstance interface enables you to work with the definitions and attributes
  # associated with an STP instance.
  class STPInstance < IControl::Base
    class PathCostType < IControl::Base::Enumeration; end
    class InterfacePathCost < IControl::Base::Struct; end
    class InterfacePriority < IControl::Base::Struct; end
    class InterfaceSTPRole < IControl::Base::Struct; end
    class InterfaceSTPState < IControl::Base::Struct; end
    class PathCost < IControl::Base::Struct; end    ## A sequence of interface path costs.
    class InterfacePathCostSequence < IControl::Base::Sequence ; end## A alias for sequence of interface path costs.
    class InterfacePathCostSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of interface priorities.
    class InterfacePrioritySequence < IControl::Base::Sequence ; end## A alias for sequence of interface priorities.
    class InterfacePrioritySequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of interface STP roles.
    class InterfaceSTPRoleSequence < IControl::Base::Sequence ; end## A alias for sequence of interface STP roles.
    class InterfaceSTPRoleSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of interface active STP states.
    class InterfaceSTPStateSequence < IControl::Base::Sequence ; end## A alias for sequence of interface active STP states.
    class InterfaceSTPStateSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of path cost data structures.
    class PathCostSequence < IControl::Base::Sequence ; end## A sequence of path cost types.
    class PathCostTypeSequence < IControl::Base::Sequence ; end## An alias for a sequence of path cost types.
    class PathCostTypeSequenceSequence < IControl::Base::SequenceSequence ; end##
    # A list of path cost types.
    class PathCostType < IControl::Base::Enumeration
      # The internal path cost. It's only valid in MSTP mode, and applicable to all spanning tree instance interfaces.
      PATH_COST_INTERNAL = :PATH_COST_INTERNAL
      # The external path cost. It's valid in all modes, and applicable only to spanning tree instance 0 interfaces.
      PATH_COST_EXTERNAL = :PATH_COST_EXTERNAL
    end

    ##
    # An struct that specifies an interface/trunk path cost.
    class InterfacePathCost < IControl::Base::Struct
      # The interface/trunk name.
      icontrol_attribute :name, String
      # The associated path cost of the network interface/trunk within a spanning tree instance.
      icontrol_attribute :path_cost, IControl::Networking::STPInstance::PathCost
    end

    ##
    # An struct that specifies an interface/trunk priority.
    class InterfacePriority < IControl::Base::Struct
      # The interface/trunk name.
      icontrol_attribute :name, String
      # The associated priority of the network interface/trunk within a spanning tree instance.
      icontrol_attribute :priority, Numeric
    end

    ##
    # An struct that specifies an interface/trunk STP role.
    class InterfaceSTPRole < IControl::Base::Struct
      # The interface/trunk name.
      icontrol_attribute :name, String
      # The STP role of the network interface/trunk within a spanning tree instance.
      icontrol_attribute :role, IControl::Networking::STPRoleType
    end

    ##
    # An struct that specifies an interface/trunk STP state.
    class InterfaceSTPState < IControl::Base::Struct
      # The interface/trunk name.
      icontrol_attribute :name, String
      # The STP state of the network interface/trunk within a spanning tree instance.
      icontrol_attribute :state, IControl::Networking::STPStateType
    end

    ##
    # An struct that specifies an unit of interface/trunk path cost.
    class PathCost < IControl::Base::Struct
      # The type of the path cost.
      icontrol_attribute :type, IControl::Networking::STPInstance::PathCostType
      # The value of the path cost.
      icontrol_attribute :value, Numeric
    end

    ##
    # Adds/associates VLANs to the specified spanning tree instances. This method may be
    # used only in MSTP mode. In STP or RSTP mode, all VLANs automatically belong to spanning
    # tree instance 0.
    # :method: add_vlan
    # :call-seq:
    # add_vlan(stp_instances ,vlan_names)
    #
    # Parameters:
    # - stp_instances long[] The spanning tree instances identified by instance numbers.
    # - vlan_names String[][] The VLAN names to add to the spanning tree instances.

    ##
    # Creates the specified spanning tree instances.
    # :method: create
    # :call-seq:
    # create(stp_instances ,priorities ,vlan_names)
    #
    # Parameters:
    # - stp_instances long[] The spanning tree instances identified by instance numbers.
    # - priorities long[] The per-instance bridge priorities.
    # - vlan_names String[][] The VLAN members that are under the control of the STP instances.

    ##
    # Deletes all spanning tree instances.
    # :method: delete_all_instances

    ##
    # Deletes the specified spanning tree instances.
    # :method: delete_instance
    # :call-seq:
    # delete_instance(stp_instances)
    #
    # Parameters:
    # - stp_instances long[] The spanning tree instances identified by instance numbers.

    ##
    # Gets the bridge priorities of the specified spanning tree instances. Each bridge
    # in a spanning tree instance has a priority value, which controls the topoloty of
    # the spanning tree chosen by the protocol. The bridge with the lowest priority value
    # will become the root of the spanning tree. Priority values range from 0-61440 in
    # steps of 4096. Hence, the supported priorities are: 0 16384 32768 49152 4096 20480
    # 36864 53248 8192 24576 40960 57344 12288 28672 45056 61440 The default bridge priority
    # is 61440, which will prevent BIGIP from being chosen as the root bridge. If the specified
    # bridge priority is not one of the allowed values listed above, it is rounded down
    # to the next lower value in the list. In STP or RSTP mode, only STP intance 0 is valid.
    # :method: get_bridge_priority
    # :call-seq:
    # get_bridge_priority(stp_instances)
    #
    # Parameters:
    # - stp_instances long[] The spanning tree instances identified by instance numbers.

    ##
    # Gets the STP active states for the specified STP port objects.
    # :method: get_interface_active_state
    # :call-seq:
    # get_interface_active_state(stp_instances ,interfaces)
    #
    # Parameters:
    # - stp_instances long[] The spanning tree instances identified by instance numbers.
    # - interfaces String[][] The interfaces/trunks from which to get the active states.

    ##
    # Gets the path costs for the specified network interfaces in the specified spanning
    # tree instances. An interface path cost represents the relative cost of sending network
    # traffic through that interface. In calculating the spanning tree, the algorithm tries
    # to minimize the total path cost between each point and the root bridge. By manipulating
    # the path costs of different interfaces, it's possible to steer traffic toward paths
    # that are faster, more reliable, and/or more economical. Path costs have a range of
    # 1-200,000,000, and the default path cost for an interface is based on the interface's
    # maximum speed (not the actual speed). Max interface speed	 Default path cost	 10
    # Gb/s		 2,000	 1 Gb/s		 20,000	 100 Mb/s		 200,000	 10 MB/s		 2,000,000 The default
    # path cost is a function of the interface's maximum speed, not its actual speed, so
    # the default path cost of a 10/100/1000 Mb/s interface will be 20,000 even if the
    # interface is running at 10 Mb/s. Changes in link speed don't cause path costs to
    # change. Link aggregation doesn't affect the default path cost, i.e. a trunk of four
    # 1 Gb/s interfaces will still have a default path cost of 20,000. In STP or RSTP mode,
    # only STP intance 0 is valid.
    # :method: get_interface_path_cost
    # :call-seq:
    # get_interface_path_cost(stp_instances ,interfaces ,path_cost_types)
    #
    # Parameters:
    # - stp_instances long[] The spanning tree instances identified by instance numbers.
    # - interfaces String[][] The interfaces from which to get the interface path costs.
    # - path_cost_types PathCostType[][] The types of path costs (internal/external) to query.

    ##
    # Gets the priorities for the specified network interfaces in the specified spanning
    # tree instances. These priority values influence which interfaces are chosen to carry
    # network traffic. Interfaces with numerically lower values are favored to carry traffic.
    # Interface priorities have values in the range from 0-240 in steps of 166. Hence,
    # the supported priorities are: 0	64 128 192 16	80 144 208 32	96 160 224 48 112 176
    # 240 The default interface priority is 128. If the specified interface priority is
    # not one of the allowed values listed above, it is rounded down to the next lower
    # value in the list. In STP or RSTP mode, only STP intance 0 is valid.
    # :method: get_interface_priority
    # :call-seq:
    # get_interface_priority(stp_instances ,interfaces)
    #
    # Parameters:
    # - stp_instances long[] The spanning tree instances identified by instance numbers.
    # - interfaces String[][] The interfaces from which to get the interface priorities.

    ##
    # Gets the STP requested/configured states for the specified STP port objects.
    # :method: get_interface_requested_state
    # :call-seq:
    # get_interface_requested_state(stp_instances ,interfaces)
    #
    # Parameters:
    # - stp_instances long[] The spanning tree instances identified by instance numbers.
    # - interfaces String[][] The interfaces/trunks from which to get the active states.

    ##
    # Gets the STP roles for the specified STP port objects.
    # :method: get_interface_role
    # :call-seq:
    # get_interface_role(stp_instances ,interfaces)
    #
    # Parameters:
    # - stp_instances long[] The spanning tree instances identified by instance numbers.
    # - interfaces String[][] The interfaces/trunks from which to get the active states.

    ##
    # Gets a list of all spanning tree instances.
    # :method: get_list

    ##
    # Gets the MAC addresses of the regional root bridges.
    # :method: get_regional_root_bridge_mac_address
    # :call-seq:
    # get_regional_root_bridge_mac_address(stp_instances)
    #
    # Parameters:
    # - stp_instances long[] The spanning tree instances identified by instance numbers.

    ##
    # Gets the MAC addresses of the root bridges.
    # :method: get_root_bridge_mac_address
    # :call-seq:
    # get_root_bridge_mac_address(stp_instances)
    #
    # Parameters:
    # - stp_instances long[] The spanning tree instances identified by instance numbers.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Gets the lists of VLANs the specified spanning tree instances are associated with.
    # This method may be used only in MSTP mode. In STP or RSTP mode, all VLANs automatically
    # belong to spanning tree instance 0.
    # :method: get_vlan
    # :call-seq:
    # get_vlan(stp_instances)
    #
    # Parameters:
    # - stp_instances long[] The spanning tree instances identified by instance numbers.

    ##
    # Removes all VLANs from the specified spanning tree instances. This method may be
    # used only in MSTP mode. In STP or RSTP mode, all VLANs automatically belong to spanning
    # tree instance 0, and they can not be deleted from it.
    # :method: remove_all_vlans
    # :call-seq:
    # remove_all_vlans(stp_instances)
    #
    # Parameters:
    # - stp_instances long[] The spanning tree instances identified by instance numbers.

    ##
    # Removes VLANs from the specified spanning tree instances. This method may be used
    # only in MSTP mode. In STP or RSTP mode, all VLANs automatically belong to spanning
    # tree instance 0, and they can not be deleted from it.
    # :method: remove_vlan
    # :call-seq:
    # remove_vlan(stp_instances ,vlan_names)
    #
    # Parameters:
    # - stp_instances long[] The spanning tree instances identified by instance numbers.
    # - vlan_names String[][] The VLAN names to remove from the spanning tree instances.

    ##
    # Sets the bridge priorities of the specified spanning tree instances. Each bridge
    # in a spanning tree instance has a priority value, which controls the topoloty of
    # the spanning tree chosen by the protocol. The bridge with the lowest priority value
    # will become the root of the spanning tree. Priority values range from 0-61440 in
    # steps of 4096. Hence, the supported priorities are: 0 16384 32768 49152 4096 20480
    # 36864 53248 8192 24576 40960 57344 12288 28672 45056 61440 The default bridge priority
    # is 61440, which will prevent BIGIP from being chosen as the root bridge. If the specified
    # bridge priority is not one of the allowed values listed above, it is rounded down
    # to the next lower value in the list. In STP or RSTP mode, only STP intance 0 is valid.
    # :method: set_bridge_priority
    # :call-seq:
    # set_bridge_priority(stp_instances ,priorities)
    #
    # Parameters:
    # - stp_instances long[] The spanning tree instances identified by instance numbers.
    # - priorities long[] The bridge priorities of the specified spanning tree instances.

    ##
    # Sets the path costs for the specified network interfaces in the specified spanning
    # tree instances. An interface path cost represents the relative cost of sending network
    # traffic through that interface. In calculating the spanning tree, the algorithm tries
    # to minimize the total path cost between each point and the root bridge. By manipulating
    # the path costs of different interfaces, it's possible to steer traffic toward paths
    # that are faster, more reliable, and/or more economical. Path costs have a range of
    # 1-200,000,000, and the default path cost for an interface is based on the interface's
    # maximum speed (not the actual speed). Max interface speed	 Default path cost	 10
    # Gb/s		 2,000	 1 Gb/s		 20,000	 100 Mb/s		 200,000	 10 MB/s		 2,000,000 The default
    # path cost is a function of the interface's maximum speed, not its actual speed, so
    # the default path cost of a 10/100/1000 Mb/s interface will be 20,000 even if the
    # interface is running at 10 Mb/s. Changes in link speed don't cause path costs to
    # change. Link aggregation doesn't affect the default path cost, i.e. a trunk of four
    # 1 Gb/s interfaces will still have a default path cost of 20,000. In STP or RSTP mode,
    # only STP intance 0 is valid.
    # :method: set_interface_path_cost
    # :call-seq:
    # set_interface_path_cost(stp_instances ,path_costs)
    #
    # Parameters:
    # - stp_instances long[] The spanning tree instances identified by instance numbers.
    # - path_costs InterfacePathCost[][] The interface path costs of the specified interfaces in the spanning tree instances.

    ##
    # Sets the priorities for the specified network interfaces in the specified spanning
    # tree instances. These priority values influence which interfaces are chosen to carry
    # network traffic. Interfaces with numerically lower values are favored to carry traffic.
    # Interface priorities have values in the range from 0-240 in steps of 166. Hence,
    # the supported priorities are: 0	64 128 192 16	80 144 208 32	96 160 224 48 112 176
    # 240 The default interface priority is 128. If the specified interface priority is
    # not one of the allowed values listed above, it is rounded down to the next lower
    # value in the list. In STP or RSTP mode, only STP intance 0 is valid.
    # :method: set_interface_priority
    # :call-seq:
    # set_interface_priority(stp_instances ,priorities)
    #
    # Parameters:
    # - stp_instances long[] The spanning tree instances identified by instance numbers.
    # - priorities InterfacePriority[][] The interface priorities of the specified interfaces in the spanning tree instances.


  end
end
