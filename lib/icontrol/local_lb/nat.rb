module IControl::LocalLB
  ##
  # The NAT interface enables you to work with the statistics and definitions contained
  # in a local load balancer's network address translations (NAT). For example, use the
  # NAT interface to both get and set the NAT statistics and attributes of a local load
  # balancer.
  class NAT < IControl::Base

    set_id_name "nat_definitions"

    class NATDefinition < IControl::Base::Struct; end
    class NATStatisticEntry < IControl::Base::Struct; end
    class NATStatistics < IControl::Base::Struct; end
    class NATDefinitionSequence < IControl::Base::Sequence ; end
    class NATStatisticEntrySequence < IControl::Base::Sequence ; end    ##
    # Creates this NATs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :unit_ids The controller for the NATs in an active-active, redundant load balancer configuration.
    # @option opts [IControl::Common::VLANFilterList] :vlans The list of VLANs used to filter the client connections on ingress VLAN.
    def create(opts)
      opts = check_params(opts,[:unit_ids,:vlans])
      super(opts)
    end

    ##
    # Deletes all NATs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_nats
      super
    end

    ##
    # Deletes this NATs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_nat
      super
    end

    ##
    # Gets statistics for all NATs.
    # @rspec_example
    # @return [NATStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the ARP states for this NATs.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def arp_state
      super
    end

    ##
    # Gets the states of this NAT addresses.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def enabled_state
      super
    end

    ##
    # Gets a sequence of all NAT definitions.
    # @rspec_example
    # @return [NATDefinition]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets statistics for a sequence of NATs.
    # @rspec_example
    # @return [NATStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Gets the controller to which this NATs apply in an active-active, redundant load
    # balancer configuration.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def unit_id
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
    # Gets the lists of VLANs on which access to this NATs is disabled.
    # @rspec_example
    # @return [VLANFilterList]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def vlan
      super
    end

    ##
    # Resets statistics for a NAT.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the ARP states for this NATs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The ARP states to set.
    def set_arp_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the state for a list of NAT addresses.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states Enable or disable the specified SNAT translation addresses.
    def set_enabled_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the Unit IDs for this NATs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :unit_ids The Unit IDs to set.
    def set_unit_id(opts)
      opts = check_params(opts,[:unit_ids])
      super(opts)
    end

    ##
    # Adds VLANSs to the list of VLANs on which access to this NATs is disabled.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::VLANFilterList] :vlans The VLAN names to add to the list of enabled/disabled VLANs .
    def set_vlan(opts)
      opts = check_params(opts,[:vlans])
      super(opts)
    end

    ##
    # A struct that describes a NAT definition for translation and original IP addresses.
    # @attr [String] translation_address A translation IP address.
    # @attr [String] original_address An original IP address.
    class NATDefinition < IControl::Base::Struct
      icontrol_attribute :translation_address, String
      icontrol_attribute :original_address, String
    end

    ##
    # A struct that describes a NAT statistic entry for a particular NAT address.
    # @attr [IControl::LocalLB::NAT::NATDefinition] nat The NAT address.
    # @attr [IControl::Common::StatisticSequence] statistics The NAT statistics.
    class NATStatisticEntry < IControl::Base::Struct
      icontrol_attribute :nat, IControl::LocalLB::NAT::NATDefinition
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes NAT statistics and timestamp.
    # @attr [IControl::LocalLB::NAT::NATStatisticEntrySequence] statistics The statistics for a sequence of NATs .
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class NATStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::NAT::NATStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of NAT definitions.
    class NATDefinitionSequence < IControl::Base::Sequence ; end
    ## A sequence of NAT statistics.
    class NATStatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
