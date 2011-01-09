module IControl::Networking
  ##
  # The STPInstance interface enables you to work with the definitions and attributes
  # associated with an STP instance.
  class STPInstance < IControl::Base

    set_id_name "stp_instances"

    class InterfacePathCost < IControl::Base::Struct; end
    class InterfacePriority < IControl::Base::Struct; end
    class InterfaceSTPRole < IControl::Base::Struct; end
    class InterfaceSTPState < IControl::Base::Struct; end
    class PathCost < IControl::Base::Struct; end
    class InterfacePathCostSequence < IControl::Base::Sequence ; end
    class InterfacePathCostSequenceSequence < IControl::Base::SequenceSequence ; end
    class InterfacePrioritySequence < IControl::Base::Sequence ; end
    class InterfacePrioritySequenceSequence < IControl::Base::SequenceSequence ; end
    class InterfaceSTPRoleSequence < IControl::Base::Sequence ; end
    class InterfaceSTPRoleSequenceSequence < IControl::Base::SequenceSequence ; end
    class InterfaceSTPStateSequence < IControl::Base::Sequence ; end
    class InterfaceSTPStateSequenceSequence < IControl::Base::SequenceSequence ; end
    class PathCostSequence < IControl::Base::Sequence ; end
    class PathCostTypeSequence < IControl::Base::Sequence ; end
    class PathCostTypeSequenceSequence < IControl::Base::SequenceSequence ; end
    # A list of path cost types.
    class PathCostType < IControl::Base::Enumeration; end    ##
    # Adds/associates VLANs to this spanning tree instances. This method may be used only
    # in MSTP mode. In STP or RSTP mode, all VLANs automatically belong to spanning tree
    # instance 0.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :vlan_names The VLAN names to add to the spanning tree instances.
    def add_vlan(opts)
      check_params(opts,[:vlan_names])
      super
    end

    ##
    # Creates this spanning tree instances.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :priorities The per-instance bridge priorities.
    # @option opts [String[]] :vlan_names The VLAN members that are under the control of the STP instances.
    def create(opts)
      check_params(opts,[:priorities,:vlan_names])
      super
    end

    ##
    # Deletes all spanning tree instances.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_instances
      super
    end

    ##
    # Deletes this spanning tree instances.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_instance
      super
    end

    ##
    # Gets the bridge priorities of this spanning tree instances. Each bridge in a spanning
    # tree instance has a priority value, which controls the topoloty of the spanning tree
    # chosen by the protocol. The bridge with the lowest priority value will become the
    # root of the spanning tree. Priority values range from 0-61440 in steps of 4096. Hence,
    # the supported priorities are: 0 16384 32768 49152 4096 20480 36864 53248 8192 24576
    # 40960 57344 12288 28672 45056 61440 The default bridge priority is 61440, which will
    # prevent BIGIP from being chosen as the root bridge. If this bridge priority is not
    # one of the allowed values listed above, it is rounded down to the next lower value
    # in the list. In STP or RSTP mode, only STP intance 0 is valid.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def bridge_priority
      super
    end

    ##
    # Gets the STP active states for this STP port objects.
    # @rspec_example
    # @return [InterfaceSTPState[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :interfaces The interfaces/trunks from which to get the active states.
    def interface_active_state(opts)
      check_params(opts,[:interfaces])
      super
    end

    ##
    # Gets the path costs for this network interfaces in this spanning tree instances.
    # An interface path cost represents the relative cost of sending network traffic through
    # that interface. In calculating the spanning tree, the algorithm tries to minimize
    # the total path cost between each point and the root bridge. By manipulating the path
    # costs of different interfaces, it's possible to steer traffic toward paths that are
    # faster, more reliable, and/or more economical. Path costs have a range of 1-200,000,000,
    # and the default path cost for an interface is based on the interface's maximum speed
    # (not the actual speed). Max interface speed	 Default path cost	 10 Gb/s		 2,000
    # 1 Gb/s		 20,000	 100 Mb/s		 200,000	 10 MB/s		 2,000,000 The default path cost is
    # a function of the interface's maximum speed, not its actual speed, so the default
    # path cost of a 10/100/1000 Mb/s interface will be 20,000 even if the interface is
    # running at 10 Mb/s. Changes in link speed don't cause path costs to change. Link
    # aggregation doesn't affect the default path cost, i.e. a trunk of four 1 Gb/s interfaces
    # will still have a default path cost of 20,000. In STP or RSTP mode, only STP intance
    # 0 is valid.
    # @rspec_example
    # @return [InterfacePathCost[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :interfaces The interfaces from which to get the interface path costs.
    # @option opts [IControl::Networking::STPInstance::PathCostType[]] :path_cost_types The types of path costs (internal/external) to query.
    def interface_path_cost(opts)
      check_params(opts,[:interfaces,:path_cost_types])
      super
    end

    ##
    # Gets the priorities for this network interfaces in this spanning tree instances.
    # These priority values influence which interfaces are chosen to carry network traffic.
    # Interfaces with numerically lower values are favored to carry traffic. Interface
    # priorities have values in the range from 0-240 in steps of 166. Hence, the supported
    # priorities are: 0	64 128 192 16	80 144 208 32	96 160 224 48 112 176 240 The default
    # interface priority is 128. If this interface priority is not one of the allowed values
    # listed above, it is rounded down to the next lower value in the list. In STP or RSTP
    # mode, only STP intance 0 is valid.
    # @rspec_example
    # @return [InterfacePriority[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :interfaces The interfaces from which to get the interface priorities.
    def interface_priority(opts)
      check_params(opts,[:interfaces])
      super
    end

    ##
    # Gets the STP requested/configured states for this STP port objects.
    # @rspec_example
    # @return [InterfaceSTPState[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :interfaces The interfaces/trunks from which to get the active states.
    def interface_requested_state(opts)
      check_params(opts,[:interfaces])
      super
    end

    ##
    # Gets the STP roles for this STP port objects.
    # @rspec_example
    # @return [InterfaceSTPRole[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :interfaces The interfaces/trunks from which to get the active states.
    def interface_role(opts)
      check_params(opts,[:interfaces])
      super
    end

    ##
    # Gets a list of all spanning tree instances.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the MAC addresses of the regional root bridges.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def regional_root_bridge_mac_address
      super
    end

    ##
    # Gets the MAC addresses of the root bridges.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def root_bridge_mac_address
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
    # Gets the lists of VLANs this spanning tree instances are associated with. This method
    # may be used only in MSTP mode. In STP or RSTP mode, all VLANs automatically belong
    # to spanning tree instance 0.
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def vlan
      super
    end

    ##
    # Removes all VLANs from this spanning tree instances. This method may be used only
    # in MSTP mode. In STP or RSTP mode, all VLANs automatically belong to spanning tree
    # instance 0, and they can not be deleted from it.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_vlans
      super
    end

    ##
    # Removes VLANs from this spanning tree instances. This method may be used only in
    # MSTP mode. In STP or RSTP mode, all VLANs automatically belong to spanning tree instance
    # 0, and they can not be deleted from it.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :vlan_names The VLAN names to remove from the spanning tree instances.
    def remove_vlan(opts)
      check_params(opts,[:vlan_names])
      super
    end

    ##
    # Sets the bridge priorities of this spanning tree instances. Each bridge in a spanning
    # tree instance has a priority value, which controls the topoloty of the spanning tree
    # chosen by the protocol. The bridge with the lowest priority value will become the
    # root of the spanning tree. Priority values range from 0-61440 in steps of 4096. Hence,
    # the supported priorities are: 0 16384 32768 49152 4096 20480 36864 53248 8192 24576
    # 40960 57344 12288 28672 45056 61440 The default bridge priority is 61440, which will
    # prevent BIGIP from being chosen as the root bridge. If this bridge priority is not
    # one of the allowed values listed above, it is rounded down to the next lower value
    # in the list. In STP or RSTP mode, only STP intance 0 is valid.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :priorities The bridge priorities of the specified spanning tree instances.
    def set_bridge_priority(opts)
      check_params(opts,[:priorities])
      super
    end

    ##
    # Sets the path costs for this network interfaces in this spanning tree instances.
    # An interface path cost represents the relative cost of sending network traffic through
    # that interface. In calculating the spanning tree, the algorithm tries to minimize
    # the total path cost between each point and the root bridge. By manipulating the path
    # costs of different interfaces, it's possible to steer traffic toward paths that are
    # faster, more reliable, and/or more economical. Path costs have a range of 1-200,000,000,
    # and the default path cost for an interface is based on the interface's maximum speed
    # (not the actual speed). Max interface speed	 Default path cost	 10 Gb/s		 2,000
    # 1 Gb/s		 20,000	 100 Mb/s		 200,000	 10 MB/s		 2,000,000 The default path cost is
    # a function of the interface's maximum speed, not its actual speed, so the default
    # path cost of a 10/100/1000 Mb/s interface will be 20,000 even if the interface is
    # running at 10 Mb/s. Changes in link speed don't cause path costs to change. Link
    # aggregation doesn't affect the default path cost, i.e. a trunk of four 1 Gb/s interfaces
    # will still have a default path cost of 20,000. In STP or RSTP mode, only STP intance
    # 0 is valid.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::STPInstance::InterfacePathCost[]] :path_costs The interface path costs of the specified interfaces in the spanning tree instances.
    def set_interface_path_cost(opts)
      check_params(opts,[:path_costs])
      super
    end

    ##
    # Sets the priorities for this network interfaces in this spanning tree instances.
    # These priority values influence which interfaces are chosen to carry network traffic.
    # Interfaces with numerically lower values are favored to carry traffic. Interface
    # priorities have values in the range from 0-240 in steps of 166. Hence, the supported
    # priorities are: 0	64 128 192 16	80 144 208 32	96 160 224 48 112 176 240 The default
    # interface priority is 128. If this interface priority is not one of the allowed values
    # listed above, it is rounded down to the next lower value in the list. In STP or RSTP
    # mode, only STP intance 0 is valid.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::STPInstance::InterfacePriority[]] :priorities The interface priorities of the specified interfaces in the spanning tree instances.
    def set_interface_priority(opts)
      check_params(opts,[:priorities])
      super
    end

    ##
    # An struct that specifies an interface/trunk path cost.
    # @attr [String] name The interface/trunk name.
    # @attr [IControl::Networking::STPInstance::PathCost] path_cost The associated path cost of the network interface/trunk within a spanning tree instance.
    class InterfacePathCost < IControl::Base::Struct
      icontrol_attribute :name, String
      icontrol_attribute :path_cost, IControl::Networking::STPInstance::PathCost
    end

    ##
    # An struct that specifies an interface/trunk priority.
    # @attr [String] name The interface/trunk name.
    # @attr [Numeric] priority The associated priority of the network interface/trunk within a spanning tree instance.
    class InterfacePriority < IControl::Base::Struct
      icontrol_attribute :name, String
      icontrol_attribute :priority, Numeric
    end

    ##
    # An struct that specifies an interface/trunk STP role.
    # @attr [String] name The interface/trunk name.
    # @attr [IControl::Networking::STPRoleType] role The STP role of the network interface/trunk within a spanning tree instance.
    class InterfaceSTPRole < IControl::Base::Struct
      icontrol_attribute :name, String
      icontrol_attribute :role, IControl::Networking::STPRoleType
    end

    ##
    # An struct that specifies an interface/trunk STP state.
    # @attr [String] name The interface/trunk name.
    # @attr [IControl::Networking::STPStateType] state The STP state of the network interface/trunk within a spanning tree instance.
    class InterfaceSTPState < IControl::Base::Struct
      icontrol_attribute :name, String
      icontrol_attribute :state, IControl::Networking::STPStateType
    end

    ##
    # An struct that specifies an unit of interface/trunk path cost.
    # @attr [IControl::Networking::STPInstance::PathCostType] type The type of the path cost.
    # @attr [Numeric] value The value of the path cost.
    class PathCost < IControl::Base::Struct
      icontrol_attribute :type, IControl::Networking::STPInstance::PathCostType
      icontrol_attribute :value, Numeric
    end


    ## A sequence of interface path costs.
    class InterfacePathCostSequence < IControl::Base::Sequence ; end
    ## A alias for sequence of interface path costs.
    class InterfacePathCostSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of interface priorities.
    class InterfacePrioritySequence < IControl::Base::Sequence ; end
    ## A alias for sequence of interface priorities.
    class InterfacePrioritySequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of interface STP roles.
    class InterfaceSTPRoleSequence < IControl::Base::Sequence ; end
    ## A alias for sequence of interface STP roles.
    class InterfaceSTPRoleSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of interface active STP states.
    class InterfaceSTPStateSequence < IControl::Base::Sequence ; end
    ## A alias for sequence of interface active STP states.
    class InterfaceSTPStateSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of path cost data structures.
    class PathCostSequence < IControl::Base::Sequence ; end
    ## A sequence of path cost types.
    class PathCostTypeSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of path cost types.
    class PathCostTypeSequenceSequence < IControl::Base::SequenceSequence ; end
    # A list of path cost types.
    class PathCostType < IControl::Base::Enumeration
      # The internal path cost. It's only valid in MSTP mode, and applicable to all spanning tree instance interfaces.
      PATH_COST_INTERNAL = :PATH_COST_INTERNAL
      # The external path cost. It's valid in all modes, and applicable only to spanning tree instance 0 interfaces.
      PATH_COST_EXTERNAL = :PATH_COST_EXTERNAL
    end


  end
end
