module IControl::LocalLB
  ##
  # The SNATTranslationAddress interface enables you to work with the definitions contained in a local load balancer's SNAT translation address. A translation address defines an address to which a client address may be translated on the server side.
  class SNATTranslationAddress < IControl::Base

    set_id_name "translation_addresses"

    class SNATTranslationAddressStatisticEntry < IControl::Base::Struct; end
    class SNATTranslationAddressStatistics < IControl::Base::Struct; end    ##
    # Creates this SNAT translation addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :unit_ids The unit IDs associated with the translation addresses. If the unit ID of a		 translation address is not active on a BIG-IP, the BIG-IP does not respond to		 ARP requests or send gratuitous ARPs for that translation address.
    def create(opts)
      check_params(opts,[:unit_ids])
      super
    end

    ##
    # Deletes all SNAT translation addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_translation_addresses
      super
    end

    ##
    # Deletes a specified list of SNAT translation addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_translation_address
      super
    end

    ##
    # Gets the statistics for all SNAT translation addresse..
    # @return [SNATTranslationAddressStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the ARP states for this translation SNAT addresses.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def arp_state
      super
    end

    ##
    # Gets the connection limits of this original SNAT translation addresse.
    # @return [ULong64]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def connection_limit
      super
    end

    ##
    # Gets the states of this SNAT translation addresse.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def enabled_state
      super
    end

    ##
    # Gets the IP idle timeouts of this SNAT translation addresse.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def ip_timeout
      super
    end

    ##
    # Gets a list of all SNAT translation addresse.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the statistics for a list of SNAT translation addresse.
    # @return [SNATTranslationAddressStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Gets the TCP idle timeouts of this SNAT translation addresse.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def tcp_timeout
      super
    end

    ##
    # Gets the UDP idle timeouts of this SNAT translation addresse.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def udp_timeout
      super
    end

    ##
    # Gets the unit IDs for a specified SNAT translation addresse.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def unit_id
      super
    end

    ##
    # Get the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Resets the statistics for a list of SNAT translation addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the ARP states for this tranlation SNAT addresses.
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
    # Sets the connection limits of this original SNAT translation addresse.
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
    # Sets the state for a list of SNAT translation addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states Enable or disable the specified SNAT translation addresses.
    def set_enabled_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the IP idle timeouts of this SNAT translation addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :timeouts The IP timeouts to set.
    def set_ip_timeout(opts)
      check_params(opts,[:timeouts])
      super
    end

    ##
    # Sets the TCP idle timeouts of this SNAT translation addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :timeouts The TCP timeouts to set.
    def set_tcp_timeout(opts)
      check_params(opts,[:timeouts])
      super
    end

    ##
    # Sets the UDP idle timeouts of this SNAT translation addresse.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :timeouts The UDP timeouts to set.
    def set_udp_timeout(opts)
      check_params(opts,[:timeouts])
      super
    end

    ##
    # Sets the unit IDs for this tranlation SNAT addresses.
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
    # A struct that describes statistics for a specified SNAT translation address.
    # @attr [String] translation_address The translation address.
    # @attr [IControl::Common::Statistic] statistics The SNAT translation address statistics.
    class SNATTranslationAddressStatisticEntry < IControl::Base::Struct
      icontrol_attribute :translation_address, String
      icontrol_attribute :statistics, IControl::Common::Statistic
    end

    ##
    # A struct that describes SNAT translation address statistics and timestamp.
    # @attr [IControl::LocalLB::SNATTranslationAddress::SNATTranslationAddressStatisticEntry] statistics The statistics for a sequence of SNAT translation addresses.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class SNATTranslationAddressStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::SNATTranslationAddress::SNATTranslationAddressStatisticEntry
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of SNAT translation address statistics.
    class SNATTranslationAddressStatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
