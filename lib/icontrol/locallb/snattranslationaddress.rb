module IControl::LocalLB
  ##
  # The SNATTranslationAddress interface enables you to work with the definitions contained
  # in a local load balancer's SNAT translation address. A translation address defines
  # an address to which a client address may be translated on the server side.
  class SNATTranslationAddress < IControl::Base
    class SNATTranslationAddressStatisticEntry < IControl::Base::Struct; end
    class SNATTranslationAddressStatistics < IControl::Base::Struct; end    ## A sequence of SNAT translation address statistics.
    class SNATTranslationAddressStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a specified SNAT translation address.
    class SNATTranslationAddressStatisticEntry < IControl::Base::Struct
      # The translation address.
      icontrol_attribute :translation_address, String
      # The SNAT translation address statistics.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes SNAT translation address statistics and timestamp.
    class SNATTranslationAddressStatistics < IControl::Base::Struct
      # The statistics for a sequence of SNAT translation addresses.
      icontrol_attribute :statistics, IControl::LocalLB::SNATTranslationAddress::SNATTranslationAddressStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified SNAT translation addresses.
    # :method: create
    # :call-seq:
    # create(translation_addresses ,unit_ids)
    #
    # Parameters:
    # - translation_addresses String[] The SNAT translation addresses.
    # - unit_ids long[] The unit IDs associated with the translation addresses. If the unit ID of a		 translation address is not active on a BIG-IP, the BIG-IP does not respond to		 ARP requests or send gratuitous ARPs for that translation address.

    ##
    # Deletes all SNAT translation addresses.
    # :method: delete_all_translation_addresses

    ##
    # Deletes a specified list of SNAT translation addresses.
    # :method: delete_translation_address
    # :call-seq:
    # delete_translation_address(translation_addresses)
    #
    # Parameters:
    # - translation_addresses String[] The SNAT translation addresses.

    ##
    # Gets the statistics for all SNAT translation addresses..
    # :method: get_all_statistics

    ##
    # Gets the ARP states for the specified translation SNAT addresses.
    # :method: get_arp_state
    # :call-seq:
    # get_arp_state(translation_addresses)
    #
    # Parameters:
    # - translation_addresses String[] The SNAT translation addresses.

    ##
    # Gets the connection limits of the specified original SNAT translation addresses.
    # :method: get_connection_limit
    # :call-seq:
    # get_connection_limit(translation_addresses)
    #
    # Parameters:
    # - translation_addresses String[] The SNAT translation addresses.

    ##
    # Gets the states of the specified SNAT translation addresses.
    # :method: get_enabled_state
    # :call-seq:
    # get_enabled_state(translation_addresses)
    #
    # Parameters:
    # - translation_addresses String[] The SNAT translation addresses.

    ##
    # Gets the IP idle timeouts of the specified SNAT translation addresses.
    # :method: get_ip_timeout
    # :call-seq:
    # get_ip_timeout(translation_addresses)
    #
    # Parameters:
    # - translation_addresses String[] The SNAT translation addresses.

    ##
    # Gets a list of all SNAT translation addresses.
    # :method: get_list

    ##
    # Gets the statistics for a list of SNAT translation addresses.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(translation_addresses)
    #
    # Parameters:
    # - translation_addresses String[] The SNAT translation addresses.

    ##
    # Gets the TCP idle timeouts of the specified SNAT translation addresses.
    # :method: get_tcp_timeout
    # :call-seq:
    # get_tcp_timeout(translation_addresses)
    #
    # Parameters:
    # - translation_addresses String[] The SNAT translation addresses.

    ##
    # Gets the UDP idle timeouts of the specified SNAT translation addresses.
    # :method: get_udp_timeout
    # :call-seq:
    # get_udp_timeout(translation_addresses)
    #
    # Parameters:
    # - translation_addresses String[] The SNAT translation addresses.

    ##
    # Gets the unit IDs for a specified SNAT translation addresses.
    # :method: get_unit_id
    # :call-seq:
    # get_unit_id(translation_addresses)
    #
    # Parameters:
    # - translation_addresses String[] The SNAT translation addresses.

    ##
    # Get the version information for this interface.
    # :method: get_version

    ##
    # Resets the statistics for a list of SNAT translation addresses.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(translation_addresses)
    #
    # Parameters:
    # - translation_addresses String[] The SNAT translation addresses.

    ##
    # Sets the ARP states for the specified tranlation SNAT addresses.
    # :method: set_arp_state
    # :call-seq:
    # set_arp_state(translation_addresses ,states)
    #
    # Parameters:
    # - translation_addresses String[] The SNAT translation addresses.
    # - states EnabledState[] The ARP states to set.

    ##
    # Sets the connection limits of the specified original SNAT translation addresses.
    # :method: set_connection_limit
    # :call-seq:
    # set_connection_limit(translation_addresses ,limits)
    #
    # Parameters:
    # - translation_addresses String[] The SNAT translation addresses.
    # - limits ULong64[] The connection limits to set.

    ##
    # Sets the state for a list of SNAT translation addresses.
    # :method: set_enabled_state
    # :call-seq:
    # set_enabled_state(translation_addresses ,states)
    #
    # Parameters:
    # - translation_addresses String[] The SNAT translation addresses.
    # - states EnabledState[] Enable or disable the specified SNAT translation addresses.

    ##
    # Sets the IP idle timeouts of the specified SNAT translation addresses.
    # :method: set_ip_timeout
    # :call-seq:
    # set_ip_timeout(translation_addresses ,timeouts)
    #
    # Parameters:
    # - translation_addresses String[] The SNAT translation addresses.
    # - timeouts long[] The IP timeouts to set.

    ##
    # Sets the TCP idle timeouts of the specified SNAT translation addresses.
    # :method: set_tcp_timeout
    # :call-seq:
    # set_tcp_timeout(translation_addresses ,timeouts)
    #
    # Parameters:
    # - translation_addresses String[] The SNAT translation addresses.
    # - timeouts long[] The TCP timeouts to set.

    ##
    # Sets the UDP idle timeouts of the specified SNAT translation addresses.
    # :method: set_udp_timeout
    # :call-seq:
    # set_udp_timeout(translation_addresses ,timeouts)
    #
    # Parameters:
    # - translation_addresses String[] The SNAT translation addresses.
    # - timeouts long[] The UDP timeouts to set.

    ##
    # Sets the unit IDs for the specified tranlation SNAT addresses.
    # :method: set_unit_id
    # :call-seq:
    # set_unit_id(translation_addresses ,unit_ids)
    #
    # Parameters:
    # - translation_addresses String[] The SNAT translation addresses.
    # - unit_ids long[] The unit IDs to set.


  end
end
