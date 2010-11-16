module IControl::LocalLB
  ##
  # The SNAT interface enables you to work with the definitions contained in a local
  # load balancer's top-level secure network address translations (SNAT) object. The
  # top-level SNAT configuration object is a named object in the definition of a standard
  # or a selective SNAT. Standard SNATs translate to a single address, while selective
  # SNATs translate to a pool of translation addresses, i.e. SNAT pool.
  class SNAT < IControl::Base
    class SNATDefinition < IControl::Base::Struct; end
    class SNATOriginalAddress < IControl::Base::Struct; end
    class SNATStatisticEntry < IControl::Base::Struct; end
    class SNATStatistics < IControl::Base::Struct; end
    class Translation < IControl::Base::Struct; end    ## A sequence of SNATDefinition's.
    class SNATDefinitionSequence < IControl::Base::Sequence ; end## A sequence of SNATOriginalAddress's.
    class SNATOriginalAddressSequence < IControl::Base::Sequence ; end## An alias for a sequence of SNATOriginalAddress's.
    class SNATOriginalAddressSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of SNAT statistics.
    class SNATStatisticEntrySequence < IControl::Base::Sequence ; end## A sequence of Translation's.
    class TranslationSequence < IControl::Base::Sequence ; end##
    # A struct that describes a definition for a SNAT.
    class SNATDefinition < IControl::Base::Struct
      # The snat name.
      icontrol_attribute :name, String
      # The snat type and its translation target.
      icontrol_attribute :target, IControl::LocalLB::SNAT::Translation
    end

    ##
    # A struct that describes a SNAT original address filter.
    class SNATOriginalAddress < IControl::Base::Struct
      # The original client address.
      icontrol_attribute :original_address, String
      # The wildcard mask associated with the original address.
      icontrol_attribute :wildmask, String
    end

    ##
    # A struct that describes statistics for a specified top-level SNAT object.
    class SNATStatisticEntry < IControl::Base::Struct
      # The SNAT name.
      icontrol_attribute :snat, IControl::LocalLB::SNAT::SNATDefinition
      # The SNAT statistics.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes SNAT pool statistics and timestamp.
    class SNATStatistics < IControl::Base::Struct
      # The statistics for a sequence of SNAT pools.
      icontrol_attribute :statistics, IControl::LocalLB::SNAT::SNATStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes a translation target.
    class Translation < IControl::Base::Struct
      # The snat type. For SNAT_TYPE_AUTOMAP, the translation_object attribute	 should be
      # empty.
      icontrol_attribute :type, IControl::LocalLB::SnatType
      # Whether it's a translation address or a SNAT pool name.
      icontrol_attribute :translation_object, String
    end

    ##
    # Adds original client addresses to the filters used to match incoming traffic.
    # :method: add_original_address
    # :call-seq:
    # add_original_address(snats ,addresses)
    #
    # Parameters:
    # - snats String[] The list of SNAT objects.
    # - addresses SNATOriginalAddress[][] The list of original addresses to add to the filters.

    ##
    # Creates the specified top-level SNAT objects.
    # :method: create
    # :call-seq:
    # create(snats ,original_addresses ,vlans)
    #
    # Parameters:
    # - snats SNATDefinition[] The list of SNAT objects to create.
    # - original_addresses SNATOriginalAddress[][] The list of original client addresses used to filter traffic to the SNATs .
    # - vlans VLANFilterList[] The list of VLANs used to filter the client connections on ingress VLAN.

    ##
    # Deletes all SNATs.
    # :method: delete_all_snats

    ##
    # Deletes a specified list of SNATs.
    # :method: delete_snat
    # :call-seq:
    # delete_snat(snats)
    #
    # Parameters:
    # - snats String[] The list of SNAT objects.

    ##
    # Gets the statistics for all top-level SNATs.
    # :method: get_all_statistics

    ##
    # Gets the connection mirror states for a specified SNATs.
    # :method: get_connection_mirror_state
    # :call-seq:
    # get_connection_mirror_state(snats)
    #
    # Parameters:
    # - snats String[] The list of SNAT objects.

    ##
    # Gets a list of all top-level SNAT configuration objects.
    # :method: get_list

    ##
    # Gets the list of original client addresses used to filter the traffic to the SNATs.
    # :method: get_original_address
    # :call-seq:
    # get_original_address(snats)
    #
    # Parameters:
    # - snats String[] The list of SNAT objects.

    ##
    # Gets the source port behavior for the specified SNATs.
    # :method: get_source_port_behavior
    # :call-seq:
    # get_source_port_behavior(snats)
    #
    # Parameters:
    # - snats String[] The list of SNAT objects.

    ##
    # Gets the statistics for a list of top-level SNATs.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(snats)
    #
    # Parameters:
    # - snats String[] The list of top-level SNATs .

    ##
    # Gets the translation targets for the specified SNATs. If the target type is SNAT_TYPE_AUTOMAP,
    # then the translation object should be empty.
    # :method: get_translation_target
    # :call-seq:
    # get_translation_target(snats)
    #
    # Parameters:
    # - snats String[] The list of SNAT objects.

    ##
    # Get the version information for this interface.
    # :method: get_version

    ##
    # Gets the list of VLANs on which access to the specified SNATs is disabled/enabled.
    # :method: get_vlan
    # :call-seq:
    # get_vlan(snats)
    #
    # Parameters:
    # - snats String[] The list of SNAT objects.

    ##
    # Removes all original client addresses in the filters.
    # :method: remove_all_original_addresses
    # :call-seq:
    # remove_all_original_addresses(snats)
    #
    # Parameters:
    # - snats String[] The list of SNAT objects.

    ##
    # Removes original client addresses from the filters used to match incoming traffic.
    # :method: remove_original_address
    # :call-seq:
    # remove_original_address(snats ,addresses)
    #
    # Parameters:
    # - snats String[] The list of SNAT objects.
    # - addresses SNATOriginalAddress[][] The list of original addresses to remove from the filters.

    ##
    # Resets the statistics for a list of top-level SNATs.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(snats)
    #
    # Parameters:
    # - snats String[] The list of top-level SNATs .

    ##
    # Sets the connection mirror state for the specified SNATs.
    # :method: set_connection_mirror_state
    # :call-seq:
    # set_connection_mirror_state(snats ,states)
    #
    # Parameters:
    # - snats String[] The list of SNAT objects.
    # - states EnabledState[] The connection mirror states to set.

    ##
    # Sets the source port behavior for the specified SNATs.
    # :method: set_source_port_behavior
    # :call-seq:
    # set_source_port_behavior(snats ,source_port_behaviors)
    #
    # Parameters:
    # - snats String[] The list of SNAT objects.
    # - source_port_behaviors SourcePortBehavior[] The source port behaviors to set.

    ##
    # Sets the translation targets for the specified SNATs. If the target type is SNAT_TYPE_AUTOMAP,
    # then the translation object should be empty.
    # :method: set_translation_target
    # :call-seq:
    # set_translation_target(snats ,targets)
    #
    # Parameters:
    # - snats String[] The list of SNAT objects.
    # - targets Translation[] The translation targets to set.

    ##
    # Sets the VLANSs on which access to the specified SNATs is disabled/enabled.
    # :method: set_vlan
    # :call-seq:
    # set_vlan(snats ,vlans)
    #
    # Parameters:
    # - snats String[] The list of SNAT objects.
    # - vlans VLANFilterList[] The list of VLANs used to filter the ingress VLAN.


  end
end
