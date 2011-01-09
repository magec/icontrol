module IControl::Management
  ##
  # The ResourceRecord interface contains all the calls necessary for manipulating Resource
  # Records: adding/deleting/updating
  class ResourceRecord < IControl::Base

    set_id_name "view_zones"

    ##
    # Adds DNS &amp;quot;A" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::ARecord[]] :a_records The list of A Records.
    # @option opts [boolean] :sync_ptrs Boolean sequence to indicate if PTR records should be automatically generated from these A Records. This is one per VIEW_ZONE, not one per a_record
    def add_a(opts)
      check_params(opts,[:a_records,:sync_ptrs])
      super
    end

    ##
    # Adds DNS &amp;quot;AAAA" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::AAAARecord[]] :aaaa_records The list of AAAA records.
    # @option opts [boolean] :sync_ptrs A list containing sequences of states indicating whether PTR records should		 automatically be generated.
    def add_aaaa(opts)
      check_params(opts,[:aaaa_records,:sync_ptrs])
      super
    end

    ##
    # Adds DNS &amp;quot;CNAME" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::CNAMERecord[]] :cname_records The list of CNAME records.
    def add_cname(opts)
      check_params(opts,[:cname_records])
      super
    end

    ##
    # Adds DNS &amp;quot;DNAME" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::DNAMERecord[]] :dname_records The list of DNAME records.
    def add_dname(opts)
      check_params(opts,[:dname_records])
      super
    end

    ##
    # Adds DNS &amp;quot;HINFO" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::HINFORecord[]] :hinfo_records The list of HINFO records.
    def add_hinfo(opts)
      check_params(opts,[:hinfo_records])
      super
    end

    ##
    # Adds DNS &amp;quot;MX" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::MXRecord[]] :mx_records The list of MX records.
    def add_mx(opts)
      check_params(opts,[:mx_records])
      super
    end

    ##
    # Adds DNS &amp;quot;NS" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::NSRecord[]] :ns_records The list of NS records.
    def add_ns(opts)
      check_params(opts,[:ns_records])
      super
    end

    ##
    # Adds DNS &amp;quot;PTR" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::PTRRecord[]] :ptr_records The list of PTF records.
    def add_ptr(opts)
      check_params(opts,[:ptr_records])
      super
    end

    ##
    # Adds a list of RRS to a view/zone
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::RRList] :rr_lists A list containing sequences of all the RR types to add.
    # @option opts [boolean] :sync_ptrs A list containing sequences of states indicating whether PTR records should		 automatically be generated.
    def add_rrs(opts)
      check_params(opts,[:rr_lists,:sync_ptrs])
      super
    end

    ##
    # Adds DNS &amp;quot;SOA" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SOARecord[]] :soa_records The list of SOA records.
    def add_soa(opts)
      check_params(opts,[:soa_records])
      super
    end

    ##
    # Adds DNS &amp;quot;SRV" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SRVRecord[]] :srv_records The list of SRV records.
    def add_srv(opts)
      check_params(opts,[:srv_records])
      super
    end

    ##
    # Adds DNS &amp;quot;TXT" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::TXTRecord[]] :txt_records The list of TXT records.
    def add_txt(opts)
      check_params(opts,[:txt_records])
      super
    end

    ##
    # Deletes DNS &amp;quot;A" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::ARecord[]] :a_records The list of A records.
    # @option opts [boolean] :sync_ptrs A list containing sequences of states indicating whether PTR records should		 automatically be generated.
    def delete_a(opts)
      check_params(opts,[:a_records,:sync_ptrs])
      super
    end

    ##
    # deletes DNS &amp;quot;A6" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::A6Record[]] :a6_records The list of A6 records.
    # @option opts [boolean] :sync_ptrs A list containing sequences of states indicating whether PTR records should		 automatically be generated.
    def delete_a6(opts)
      check_params(opts,[:a6_records,:sync_ptrs])
      super
    end

    ##
    # Deletes DNS &amp;quot;AAAA" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::AAAARecord[]] :aaaa_records The list of AAAA records.
    # @option opts [boolean] :sync_ptrs A list containing sequences of states indicating whether PTR records should		 automatically be generated.
    def delete_aaaa(opts)
      check_params(opts,[:aaaa_records,:sync_ptrs])
      super
    end

    ##
    # Deletes DNS &amp;quot;CNAME" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::CNAMERecord[]] :cname_records The list of CNAME records.
    def delete_cname(opts)
      check_params(opts,[:cname_records])
      super
    end

    ##
    # Deletes DNS &amp;quot;DNAME" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::DNAMERecord[]] :dname_records The list of DNAME records.
    def delete_dname(opts)
      check_params(opts,[:dname_records])
      super
    end

    ##
    # Deletes DNS &amp;quot;HINFO" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::HINFORecord[]] :hinfo_records The list of HINFO records.
    def delete_hinfo(opts)
      check_params(opts,[:hinfo_records])
      super
    end

    ##
    # Deletes DNS &amp;quot;KEY" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::KEYRecord[]] :key_records The list of KEY records.
    def delete_key(opts)
      check_params(opts,[:key_records])
      super
    end

    ##
    # Deletes DNS &amp;quot;MX" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::MXRecord[]] :mx_records The list of MX records.
    def delete_mx(opts)
      check_params(opts,[:mx_records])
      super
    end

    ##
    # Deletes DNS &amp;quot;NS" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::NSRecord[]] :ns_records The list of NS records.
    def delete_ns(opts)
      check_params(opts,[:ns_records])
      super
    end

    ##
    # deletes DNS &amp;quot;NXT" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::NXTRecord[]] :nxt_records The list of NXT records.
    def delete_nxt(opts)
      check_params(opts,[:nxt_records])
      super
    end

    ##
    # Deletes DNS &amp;quot;PTR" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::PTRRecord[]] :ptr_records The list of PTR records.
    def delete_ptr(opts)
      check_params(opts,[:ptr_records])
      super
    end

    ##
    # deletes DNS &amp;quot;SIG" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SIGRecord[]] :sig_records The list of SIG records.
    def delete_sig(opts)
      check_params(opts,[:sig_records])
      super
    end

    ##
    # Deletes DNS &amp;quot;SOA" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SOARecord[]] :soa_records The list of SOA records.
    def delete_soa(opts)
      check_params(opts,[:soa_records])
      super
    end

    ##
    # Deletes DNS &amp;quot;SRV" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SRVRecord[]] :srv_records The list of SRV records.
    def delete_srv(opts)
      check_params(opts,[:srv_records])
      super
    end

    ##
    # Deletes DNS &amp;quot;TXT" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::TXTRecord[]] :txt_records The list of TXT records.
    def delete_txt(opts)
      check_params(opts,[:txt_records])
      super
    end

    ##
    # Gets a list of resource records for a specified view/zone
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def rrs
      super
    end

    ##
    # Gets a list of resource records for this view/zone information.
    # @rspec_example
    # @return [RRList]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def rrs_detailed
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
    # Updates or changes DNS &amp;quot;A" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::ARecord[]] :old_records The list of old records to be replaced.
    # @option opts [IControl::Management::ARecord[]] :new_records The list of new records to update with.
    # @option opts [boolean] :sync_ptrs A list containing sequences of states indicating whether PTR records should		 automatically be generated.
    def update_a(opts)
      check_params(opts,[:old_records,:new_records,:sync_ptrs])
      super
    end

    ##
    # Updates or changes DNS &amp;quot;AAAA" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::AAAARecord[]] :old_records The list of old records to be replaced.
    # @option opts [IControl::Management::AAAARecord[]] :new_records The list of new records to update with.
    # @option opts [boolean] :sync_ptrs A list containing sequences of states indicating whether PTR records should		 automatically be generated.
    def update_aaaa(opts)
      check_params(opts,[:old_records,:new_records,:sync_ptrs])
      super
    end

    ##
    # Updates or changes DNS &amp;quot;CNAME" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::CNAMERecord[]] :old_records The list of old records to be replaced.
    # @option opts [IControl::Management::CNAMERecord[]] :new_records The list of new records to update with.
    def update_cname(opts)
      check_params(opts,[:old_records,:new_records])
      super
    end

    ##
    # Updates or changes DNS &amp;quot;DNAME" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::DNAMERecord[]] :old_records The list of old records to be replaced.
    # @option opts [IControl::Management::DNAMERecord[]] :new_records The list of new records to update with.
    def update_dname(opts)
      check_params(opts,[:old_records,:new_records])
      super
    end

    ##
    # Updates or changes DNS &amp;quot;HINFO" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::HINFORecord[]] :old_records The list of old records to be replaced.
    # @option opts [IControl::Management::HINFORecord[]] :new_records The list of new records to update with.
    def update_hinfo(opts)
      check_params(opts,[:old_records,:new_records])
      super
    end

    ##
    # Updates or changes DNS &amp;quot;MX" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::MXRecord[]] :old_records The list of old records to be replaced.
    # @option opts [IControl::Management::MXRecord[]] :new_records The list of new records to update with.
    def update_mx(opts)
      check_params(opts,[:old_records,:new_records])
      super
    end

    ##
    # Updates or changes DNS &amp;quot;NS" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::NSRecord[]] :old_records The list of old records to be replaced.
    # @option opts [IControl::Management::NSRecord[]] :new_records The list of new records to update with.
    def update_ns(opts)
      check_params(opts,[:old_records,:new_records])
      super
    end

    ##
    # Updates or changes DNS &amp;quot;PTR" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::PTRRecord[]] :old_records The list of old records to be replaced.
    # @option opts [IControl::Management::PTRRecord[]] :new_records The list of new records to update with.
    def update_ptr(opts)
      check_params(opts,[:old_records,:new_records])
      super
    end

    ##
    # Updates or changes DNS &amp;quot;SOA" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SOARecord[]] :old_records The list of old records to be replaced.
    # @option opts [IControl::Management::SOARecord[]] :new_records The list of new records to update with.
    def update_soa(opts)
      check_params(opts,[:old_records,:new_records])
      super
    end

    ##
    # Updates or changes DNS &amp;quot;SRV" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SRVRecord[]] :old_records The list of old records to be replaced.
    # @option opts [IControl::Management::SRVRecord[]] :new_records The list of new records to update with.
    def update_srv(opts)
      check_params(opts,[:old_records,:new_records])
      super
    end

    ##
    # Updates or changes DNS &amp;quot;TXT" Records.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::TXTRecord[]] :old_records The list of old records to be replaced.
    # @option opts [IControl::Management::TXTRecord[]] :new_records The list of new records to update with.
    def update_txt(opts)
      check_params(opts,[:old_records,:new_records])
      super
    end


  end
end
