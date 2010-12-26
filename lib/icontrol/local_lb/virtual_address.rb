module IControl::LocalLB
  ##
  # The VirtualAddress interface enables you to work with the states, statistics, limits, availability, and settings of a local load balancer's virtual address.
  class VirtualAddress < IControl::Base

    set_id_name "virtual_addresses"

    class VirtualAddressStatisticEntry < IControl::Base::Struct; end
    class VirtualAddressStatistics < IControl::Base::Struct; end    ##
    # Deletes this virtual addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_virtual_address
      super
    end

    ##
    # Gets the statistics for all the virtual addresse.
    # @return [VirtualAddressStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the ARP states for this virtual addresse.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def arp_state
      super
    end

    ##
    # Gets the connection limits for this virtual addresse.
    # @return [ULong64]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def connection_limit
      super
    end

    ##
    # Gets the enabled states of this virtual addresse.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def enabled_state
      super
    end

    ##
    # Gets the the states that indicate whether these virtual addresse should be shared between the redundant pair. This is typically used in one-armed Combo pair, where GTM is only licensed on one of the boxes. Default is TRUE.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def is_floating_state
      super
    end

    ##
    # Gets a list of virtual addresse.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the status of each of this virtual addresse.
    # @return [ObjectStatus]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def object_status
      super
    end

    ##
    # Gets the route advertisement states for this virtual addresse.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def route_advertisement_state
      super
    end

    ##
    # Gets the statistics for this virtual addresse.
    # @return [VirtualAddressStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Gets the status dependency scopes that are used to calculate the virtual addresse' status based on the related virtual servers' status.
    # @return [VirtualAddressStatusDependency]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def status_dependency_scope
      super
    end

    ##
    # Gets the list of unit IDs used by this virtual addresse.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def unit_id
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Resets the statistics for this virtual addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the ARP states for this virtual addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The ARP states to set.
    def set_arp_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the connection limits of this virtual addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::ULong64] :limits The connection limits to set.
    def set_connection_limit(opts)
      check_params(opts,[:limits])
      super
    end

    ##
    # Sets the enabled states of this virtual addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The enabled states to set.
    def set_enabled_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the states that indicate whether these virtual addresse should be shared between the redundant pair. This is typically used in one-armed Combo pair, where GTM is only licensed on one of the boxes. Default is TRUE.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set.
    def set_is_floating_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the route advertisement states for this virtual addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The route advertisement states to set.
    def set_route_advertisement_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the status dependency scopes that are used to calculate the virtual addresse' status based on the related virtual servers' status.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::VirtualAddressStatusDependency] :scopes The status dependency scopes to set.
    def set_status_dependency_scope(opts)
      check_params(opts,[:scopes])
      super
    end

    ##
    # Sets the unit IDs for this virtual addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :unit_ids The unit IDs to set.
    def set_unit_id(opts)
      check_params(opts,[:unit_ids])
      super
    end

    ##
    # A struct that describes a virtual address and its statistics.
    # @attr [String] virtual_address The virtual address.
    # @attr [IControl::Common::Statistic] statistics The statistics of the virtual server.
    class VirtualAddressStatisticEntry < IControl::Base::Struct
      icontrol_attribute :virtual_address, String
      icontrol_attribute :statistics, IControl::Common::Statistic
    end

    ##
    # A struct that describes virtual address statistics and timestamp.
    # @attr [IControl::LocalLB::VirtualAddress::VirtualAddressStatisticEntry] statistics The statistics for a sequence of virtual addresses.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class VirtualAddressStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::VirtualAddress::VirtualAddressStatisticEntry
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of virtual address statistics.
    class VirtualAddressStatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
