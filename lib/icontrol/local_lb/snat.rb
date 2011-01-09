module IControl::LocalLB
  ##
  # The SNAT interface enables you to work with the definitions contained in a local
  # load balancer's top-level secure network address translations (SNAT) object. The
  # top-level SNAT configuration object is a named object in the definition of a standard
  # or a selective SNAT. Standard SNATs translate to a single address, while selective
  # SNATs translate to a pool of translation addresses, i.e. SNAT pool.
  class SNAT < IControl::Base

    set_id_name "snats"

    class SNATDefinition < IControl::Base::Struct; end
    class SNATOriginalAddress < IControl::Base::Struct; end
    class SNATStatisticEntry < IControl::Base::Struct; end
    class SNATStatistics < IControl::Base::Struct; end
    class Translation < IControl::Base::Struct; end
    class SNATDefinitionSequence < IControl::Base::Sequence ; end
    class SNATOriginalAddressSequence < IControl::Base::Sequence ; end
    class SNATOriginalAddressSequenceSequence < IControl::Base::SequenceSequence ; end
    class SNATStatisticEntrySequence < IControl::Base::Sequence ; end
    class TranslationSequence < IControl::Base::Sequence ; end    ##
    # Adds original client addresses to the filters used to match incoming traffic.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::SNAT::SNATOriginalAddress[]] :addresses The list of original addresses to add to the filters.
    def add_original_address(opts)
      check_params(opts,[:addresses])
      super
    end

    ##
    # Creates this top-level SNAT objects.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::SNAT::SNATOriginalAddress[]] :original_addresses The list of original client addresses used to filter traffic to the SNATs .
    # @option opts [IControl::Common::VLANFilterList] :vlans The list of VLANs used to filter the client connections on ingress VLAN.
    def create(opts)
      check_params(opts,[:original_addresses,:vlans])
      super
    end

    ##
    # Deletes all SNATs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_snats
      super
    end

    ##
    # Deletes a specified list of SNATs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_snat
      super
    end

    ##
    # Gets the statistics for all top-level SNATs.
    # @rspec_example
    # @return [SNATStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the connection mirror states for a specified SNATs.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def connection_mirror_state
      super
    end

    ##
    # Gets a list of all top-level SNAT configuration objects.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the list of original client addresses used to filter the traffic to the SNATs.
    # @rspec_example
    # @return [SNATOriginalAddress[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def original_address
      super
    end

    ##
    # Gets the source port behavior for this SNATs.
    # @rspec_example
    # @return [SourcePortBehavior]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def source_port_behavior
      super
    end

    ##
    # Gets the statistics for a list of top-level SNATs.
    # @rspec_example
    # @return [SNATStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Gets the translation targets for this SNATs. If the target type is SNAT_TYPE_AUTOMAP,
    # then the translation object should be empty.
    # @rspec_example
    # @return [Translation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def translation_target
      super
    end

    ##
    # Get the version information for this interface.
    # @rspec_example
    # @return [String]
    def version
      super
    end

    ##
    # Gets the list of VLANs on which access to this SNATs is disabled/enabled.
    # @rspec_example
    # @return [VLANFilterList]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def vlan
      super
    end

    ##
    # Removes all original client addresses in the filters.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_original_addresses
      super
    end

    ##
    # Removes original client addresses from the filters used to match incoming traffic.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::SNAT::SNATOriginalAddress[]] :addresses The list of original addresses to remove from the filters.
    def remove_original_address(opts)
      check_params(opts,[:addresses])
      super
    end

    ##
    # Resets the statistics for a list of top-level SNATs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the connection mirror state for this SNATs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The connection mirror states to set.
    def set_connection_mirror_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the source port behavior for this SNATs.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::SourcePortBehavior] :source_port_behaviors The source port behaviors to set.
    def set_source_port_behavior(opts)
      check_params(opts,[:source_port_behaviors])
      super
    end

    ##
    # Sets the translation targets for this SNATs. If the target type is SNAT_TYPE_AUTOMAP,
    # then the translation object should be empty.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::SNAT::Translation] :targets The translation targets to set.
    def set_translation_target(opts)
      check_params(opts,[:targets])
      super
    end

    ##
    # Sets the VLANSs on which access to this SNATs is disabled/enabled.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::VLANFilterList] :vlans The list of VLANs used to filter the ingress VLAN.
    def set_vlan(opts)
      check_params(opts,[:vlans])
      super
    end

    ##
    # A struct that describes a definition for a SNAT.
    # @attr [String] name The snat name.
    # @attr [IControl::LocalLB::SNAT::Translation] target The snat type and its translation target.
    class SNATDefinition < IControl::Base::Struct
      icontrol_attribute :name, String
      icontrol_attribute :target, IControl::LocalLB::SNAT::Translation
    end

    ##
    # A struct that describes a SNAT original address filter.
    # @attr [String] original_address The original client address.
    # @attr [String] wildmask The wildcard mask associated with the original address.
    class SNATOriginalAddress < IControl::Base::Struct
      icontrol_attribute :original_address, String
      icontrol_attribute :wildmask, String
    end

    ##
    # A struct that describes statistics for a specified top-level SNAT object.
    # @attr [IControl::LocalLB::SNAT::SNATDefinition] snat The SNAT name.
    # @attr [IControl::Common::StatisticSequence] statistics The SNAT statistics.
    class SNATStatisticEntry < IControl::Base::Struct
      icontrol_attribute :snat, IControl::LocalLB::SNAT::SNATDefinition
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes SNAT pool statistics and timestamp.
    # @attr [IControl::LocalLB::SNAT::SNATStatisticEntrySequence] statistics The statistics for a sequence of SNAT pools.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class SNATStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::SNAT::SNATStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes a translation target.
    # @attr [IControl::LocalLB::SnatType] type The snat type. For SNAT_TYPE_AUTOMAP, the translation_object attribute	 should be empty.
    # @attr [String] translation_object Whether it's a translation address or a SNAT pool name.
    class Translation < IControl::Base::Struct
      icontrol_attribute :type, IControl::LocalLB::SnatType
      icontrol_attribute :translation_object, String
    end


    ## A sequence of SNATDefinition's.
    class SNATDefinitionSequence < IControl::Base::Sequence ; end
    ## A sequence of SNATOriginalAddress's.
    class SNATOriginalAddressSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of SNATOriginalAddress's.
    class SNATOriginalAddressSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of SNAT statistics.
    class SNATStatisticEntrySequence < IControl::Base::Sequence ; end
    ## A sequence of Translation's.
    class TranslationSequence < IControl::Base::Sequence ; end
  end
end
