module IControl::Management
  ##
  # The ResourceRecord interface contains all the calls necessary for manipulating Resource
  # Records: adding/deleting/updating
  class ResourceRecord < IControl::Base
    ##
    # Adds DNS &amp;quot;A" Records.
    # :method: add_a
    # :call-seq:
    # add_a(view_zones ,a_records ,sync_ptrs)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - a_records ARecord[][] The list of A Records.
    # - sync_ptrs boolean[] Boolean sequence to indicate if PTR records should be automatically generated from these A Records. This is one per VIEW_ZONE, not one per a_record

    ##
    # Adds DNS &amp;quot;AAAA" Records.
    # :method: add_aaaa
    # :call-seq:
    # add_aaaa(view_zones ,aaaa_records ,sync_ptrs)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - aaaa_records AAAARecord[][] The list of AAAA records.
    # - sync_ptrs boolean[] A list containing sequences of states indicating whether PTR records should		 automatically be generated.

    ##
    # Adds DNS &amp;quot;CNAME" Records.
    # :method: add_cname
    # :call-seq:
    # add_cname(view_zones ,cname_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - cname_records CNAMERecord[][] The list of CNAME records.

    ##
    # Adds DNS &amp;quot;DNAME" Records.
    # :method: add_dname
    # :call-seq:
    # add_dname(view_zones ,dname_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - dname_records DNAMERecord[][] The list of DNAME records.

    ##
    # Adds DNS &amp;quot;HINFO" Records.
    # :method: add_hinfo
    # :call-seq:
    # add_hinfo(view_zones ,hinfo_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - hinfo_records HINFORecord[][] The list of HINFO records.

    ##
    # Adds DNS &amp;quot;MX" Records.
    # :method: add_mx
    # :call-seq:
    # add_mx(view_zones ,mx_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - mx_records MXRecord[][] The list of MX records.

    ##
    # Adds DNS &amp;quot;NS" Records.
    # :method: add_ns
    # :call-seq:
    # add_ns(view_zones ,ns_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - ns_records NSRecord[][] The list of NS records.

    ##
    # Adds DNS &amp;quot;PTR" Records.
    # :method: add_ptr
    # :call-seq:
    # add_ptr(view_zones ,ptr_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - ptr_records PTRRecord[][] The list of PTF records.

    ##
    # Adds a list of RRS to a view/zone
    # :method: add_rrs
    # :call-seq:
    # add_rrs(view_zones ,rr_lists ,sync_ptrs)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - rr_lists RRList[] A list containing sequences of all the RR types to add.
    # - sync_ptrs boolean[] A list containing sequences of states indicating whether PTR records should		 automatically be generated.

    ##
    # Adds DNS &amp;quot;SOA" Records.
    # :method: add_soa
    # :call-seq:
    # add_soa(view_zones ,soa_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - soa_records SOARecord[][] The list of SOA records.

    ##
    # Adds DNS &amp;quot;SRV" Records.
    # :method: add_srv
    # :call-seq:
    # add_srv(view_zones ,srv_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - srv_records SRVRecord[][] The list of SRV records.

    ##
    # Adds DNS &amp;quot;TXT" Records.
    # :method: add_txt
    # :call-seq:
    # add_txt(view_zones ,txt_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - txt_records TXTRecord[][] The list of TXT records.

    ##
    # Deletes DNS &amp;quot;A" Records.
    # :method: delete_a
    # :call-seq:
    # delete_a(view_zones ,a_records ,sync_ptrs)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - a_records ARecord[][] The list of A records.
    # - sync_ptrs boolean[] A list containing sequences of states indicating whether PTR records should		 automatically be generated.

    ##
    # deletes DNS &amp;quot;A6" Records.
    # :method: delete_a6
    # :call-seq:
    # delete_a6(view_zones ,a6_records ,sync_ptrs)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - a6_records A6Record[][] The list of A6 records.
    # - sync_ptrs boolean[] A list containing sequences of states indicating whether PTR records should		 automatically be generated.

    ##
    # Deletes DNS &amp;quot;AAAA" Records.
    # :method: delete_aaaa
    # :call-seq:
    # delete_aaaa(view_zones ,aaaa_records ,sync_ptrs)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - aaaa_records AAAARecord[][] The list of AAAA records.
    # - sync_ptrs boolean[] A list containing sequences of states indicating whether PTR records should		 automatically be generated.

    ##
    # Deletes DNS &amp;quot;CNAME" Records.
    # :method: delete_cname
    # :call-seq:
    # delete_cname(view_zones ,cname_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - cname_records CNAMERecord[][] The list of CNAME records.

    ##
    # Deletes DNS &amp;quot;DNAME" Records.
    # :method: delete_dname
    # :call-seq:
    # delete_dname(view_zones ,dname_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - dname_records DNAMERecord[][] The list of DNAME records.

    ##
    # Deletes DNS &amp;quot;HINFO" Records.
    # :method: delete_hinfo
    # :call-seq:
    # delete_hinfo(view_zones ,hinfo_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - hinfo_records HINFORecord[][] The list of HINFO records.

    ##
    # Deletes DNS &amp;quot;KEY" Records.
    # :method: delete_key
    # :call-seq:
    # delete_key(view_zones ,key_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - key_records KEYRecord[][] The list of KEY records.

    ##
    # Deletes DNS &amp;quot;MX" Records.
    # :method: delete_mx
    # :call-seq:
    # delete_mx(view_zones ,mx_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - mx_records MXRecord[][] The list of MX records.

    ##
    # Deletes DNS &amp;quot;NS" Records.
    # :method: delete_ns
    # :call-seq:
    # delete_ns(view_zones ,ns_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - ns_records NSRecord[][] The list of NS records.

    ##
    # deletes DNS &amp;quot;NXT" Records.
    # :method: delete_nxt
    # :call-seq:
    # delete_nxt(view_zones ,nxt_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - nxt_records NXTRecord[][] The list of NXT records.

    ##
    # Deletes DNS &amp;quot;PTR" Records.
    # :method: delete_ptr
    # :call-seq:
    # delete_ptr(view_zones ,ptr_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - ptr_records PTRRecord[][] The list of PTR records.

    ##
    # deletes DNS &amp;quot;SIG" Records.
    # :method: delete_sig
    # :call-seq:
    # delete_sig(view_zones ,sig_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - sig_records SIGRecord[][] The list of SIG records.

    ##
    # Deletes DNS &amp;quot;SOA" Records.
    # :method: delete_soa
    # :call-seq:
    # delete_soa(view_zones ,soa_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - soa_records SOARecord[][] The list of SOA records.

    ##
    # Deletes DNS &amp;quot;SRV" Records.
    # :method: delete_srv
    # :call-seq:
    # delete_srv(view_zones ,srv_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - srv_records SRVRecord[][] The list of SRV records.

    ##
    # Deletes DNS &amp;quot;TXT" Records.
    # :method: delete_txt
    # :call-seq:
    # delete_txt(view_zones ,txt_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - txt_records TXTRecord[][] The list of TXT records.

    ##
    # Gets a list of resource records for a specified view/zone
    # :method: get_rrs
    # :call-seq:
    # get_rrs(view_zones)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.

    ##
    # Gets a list of resource records for the specified view/zone information.
    # :method: get_rrs_detailed
    # :call-seq:
    # get_rrs_detailed(view_zones)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Updates or changes DNS &amp;quot;A" Records.
    # :method: update_a
    # :call-seq:
    # update_a(view_zones ,old_records ,new_records ,sync_ptrs)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - old_records ARecord[][] The list of old records to be replaced.
    # - new_records ARecord[][] The list of new records to update with.
    # - sync_ptrs boolean[] A list containing sequences of states indicating whether PTR records should		 automatically be generated.

    ##
    # Updates or changes DNS &amp;quot;AAAA" Records.
    # :method: update_aaaa
    # :call-seq:
    # update_aaaa(view_zones ,old_records ,new_records ,sync_ptrs)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - old_records AAAARecord[][] The list of old records to be replaced.
    # - new_records AAAARecord[][] The list of new records to update with.
    # - sync_ptrs boolean[] A list containing sequences of states indicating whether PTR records should		 automatically be generated.

    ##
    # Updates or changes DNS &amp;quot;CNAME" Records.
    # :method: update_cname
    # :call-seq:
    # update_cname(view_zones ,old_records ,new_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - old_records CNAMERecord[][] The list of old records to be replaced.
    # - new_records CNAMERecord[][] The list of new records to update with.

    ##
    # Updates or changes DNS &amp;quot;DNAME" Records.
    # :method: update_dname
    # :call-seq:
    # update_dname(view_zones ,old_records ,new_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - old_records DNAMERecord[][] The list of old records to be replaced.
    # - new_records DNAMERecord[][] The list of new records to update with.

    ##
    # Updates or changes DNS &amp;quot;HINFO" Records.
    # :method: update_hinfo
    # :call-seq:
    # update_hinfo(view_zones ,old_records ,new_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - old_records HINFORecord[][] The list of old records to be replaced.
    # - new_records HINFORecord[][] The list of new records to update with.

    ##
    # Updates or changes DNS &amp;quot;MX" Records.
    # :method: update_mx
    # :call-seq:
    # update_mx(view_zones ,old_records ,new_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - old_records MXRecord[][] The list of old records to be replaced.
    # - new_records MXRecord[][] The list of new records to update with.

    ##
    # Updates or changes DNS &amp;quot;NS" Records.
    # :method: update_ns
    # :call-seq:
    # update_ns(view_zones ,old_records ,new_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - old_records NSRecord[][] The list of old records to be replaced.
    # - new_records NSRecord[][] The list of new records to update with.

    ##
    # Updates or changes DNS &amp;quot;PTR" Records.
    # :method: update_ptr
    # :call-seq:
    # update_ptr(view_zones ,old_records ,new_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - old_records PTRRecord[][] The list of old records to be replaced.
    # - new_records PTRRecord[][] The list of new records to update with.

    ##
    # Updates or changes DNS &amp;quot;SOA" Records.
    # :method: update_soa
    # :call-seq:
    # update_soa(view_zones ,old_records ,new_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - old_records SOARecord[][] The list of old records to be replaced.
    # - new_records SOARecord[][] The list of new records to update with.

    ##
    # Updates or changes DNS &amp;quot;SRV" Records.
    # :method: update_srv
    # :call-seq:
    # update_srv(view_zones ,old_records ,new_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - old_records SRVRecord[][] The list of old records to be replaced.
    # - new_records SRVRecord[][] The list of new records to update with.

    ##
    # Updates or changes DNS &amp;quot;TXT" Records.
    # :method: update_txt
    # :call-seq:
    # update_txt(view_zones ,old_records ,new_records)
    #
    # Parameters:
    # - view_zones ViewZone[] The view/zone information.
    # - old_records TXTRecord[][] The list of old records to be replaced.
    # - new_records TXTRecord[][] The list of new records to update with.


  end
end
