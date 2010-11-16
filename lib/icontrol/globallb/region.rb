module IControl::GlobalLB
  ##
  # The Region interface enables you to work with user-defined region definitions.
  class Region < IControl::Base
    class RegionDefinition < IControl::Base::Struct; end
    class RegionItem < IControl::Base::Struct; end    ## A sequence of region definitions.
    class RegionDefinitionSequence < IControl::Base::Sequence ; end## A sequence of region items.
    class RegionItemSequence < IControl::Base::Sequence ; end## An alias for a sequence of region items.
    class RegionItemSequenceSequence < IControl::Base::SequenceSequence ; end##
    # A struct that describes a region definition.
    class RegionDefinition < IControl::Base::Struct
      # The region name.
      icontrol_attribute :name, String
      # The region's database type.
      icontrol_attribute :db_type, IControl::GlobalLB::RegionDBType
    end

    ##
    # A struct that describes a region item.
    class RegionItem < IControl::Base::Struct
      # The region item's content.
      icontrol_attribute :content, String
      # The region type.
      icontrol_attribute :type, IControl::GlobalLB::RegionType
      # The state indicating whether the region member to be interpreted		 as not equal to
      # the region member options selected.
      icontrol_attribute :negate, Object
    end

    ##
    # Adds the specified region items to the specified region definitions.
    # :method: add_region_item
    # :call-seq:
    # add_region_item(regions ,items)
    #
    # Parameters:
    # - regions RegionDefinition[] The region definitions.
    # - items RegionItem[][] The region items to be added to the region definitions.

    ##
    # Creates the specified region definitions with the specified region items.
    # :method: create
    # :call-seq:
    # create(regions ,items)
    #
    # Parameters:
    # - regions RegionDefinition[] The region definitions.
    # - items RegionItem[][] The region items that make up the region definitions.

    ##
    # Deletes all region definitions.
    # :method: delete_all_region_definitions

    ##
    # Deletes the specified region definitions.
    # :method: delete_region_definition
    # :call-seq:
    # delete_region_definition(regions)
    #
    # Parameters:
    # - regions RegionDefinition[] The region definitions.

    ##
    # Gets a list of of region definitions.
    # :method: get_list

    ##
    # Gets the list of region items that define the specified regions.
    # :method: get_region_item
    # :call-seq:
    # get_region_item(regions)
    #
    # Parameters:
    # - regions RegionDefinition[] The region definitions.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Removes any and all region items in the specified regions.
    # :method: remove_all_region_items
    # :call-seq:
    # remove_all_region_items(regions)
    #
    # Parameters:
    # - regions RegionDefinition[] The region definitions.

    ##
    # Removes the specified region items from the specified region definitions.
    # :method: remove_region_item
    # :call-seq:
    # remove_region_item(regions ,items)
    #
    # Parameters:
    # - regions RegionDefinition[] The region definitions.
    # - items RegionItem[][] The region items to be removed from the region definitions.


  end
end
