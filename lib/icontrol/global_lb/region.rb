module IControl::GlobalLB
  ##
  # The Region interface enables you to work with user-defined region definitions.
  class Region < IControl::Base

    set_id_name "regions"

    class RegionDefinition < IControl::Base::Struct; end
    class RegionItem < IControl::Base::Struct; end
    class RegionDefinitionSequence < IControl::Base::Sequence ; end
    class RegionItemSequence < IControl::Base::Sequence ; end
    class RegionItemSequenceSequence < IControl::Base::SequenceSequence ; end    ##
    # Adds this region items to this region definitions.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Region::RegionItem[]] :items The region items to be added to the region definitions.
    def add_region_item(opts)
      check_params(opts,[:items])
      super
    end

    ##
    # Creates this region definitions with this region items.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Region::RegionItem[]] :items The region items that make up the region definitions.
    def create(opts)
      check_params(opts,[:items])
      super
    end

    ##
    # Deletes all region definitions.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_region_definitions
      super
    end

    ##
    # Deletes this region definitions.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_region_definition
      super
    end

    ##
    # Gets a list of of region definitions.
    # @rspec_example
    # @return [RegionDefinition]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the list of region items that define this region.
    # @rspec_example
    # @return [RegionItem[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def region_item
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
    # Removes any and all region items in this region.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_region_items
      super
    end

    ##
    # Removes this region items from this region definitions.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Region::RegionItem[]] :items The region items to be removed from the region definitions.
    def remove_region_item(opts)
      check_params(opts,[:items])
      super
    end

    ##
    # A struct that describes a region definition.
    # @attr [String] name The region name.
    # @attr [IControl::GlobalLB::RegionDBType] db_type The region's database type.
    class RegionDefinition < IControl::Base::Struct
      icontrol_attribute :name, String
      icontrol_attribute :db_type, IControl::GlobalLB::RegionDBType
    end

    ##
    # A struct that describes a region item.
    # @attr [String] content The region item's content.
    # @attr [IControl::GlobalLB::RegionType] type The region type.
    # @attr [Object] negate The state indicating whether the region member to be interpreted		 as not equal to the region member options selected.
    class RegionItem < IControl::Base::Struct
      icontrol_attribute :content, String
      icontrol_attribute :type, IControl::GlobalLB::RegionType
      icontrol_attribute :negate, Object
    end


    ## A sequence of region definitions.
    class RegionDefinitionSequence < IControl::Base::Sequence ; end
    ## A sequence of region items.
    class RegionItemSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of region items.
    class RegionItemSequenceSequence < IControl::Base::SequenceSequence ; end
  end
end
