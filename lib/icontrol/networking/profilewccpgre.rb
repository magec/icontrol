module IControl::Networking
  ##
  # The ProfileWCCPGRE interface allows you to manipulate a WCCP-GRE tunnel profile to
  # configure the General Routing Encapsulation (GRE - RFC2784) tunnel protocol in conjunction
  # with the Web-Cache Communication Protocol (WCCP). See the Networking/ProfileGRE interface
  # for additional information.
  class ProfileWCCPGRE < IControl::Base
    class WCCPGREForwarding < IControl::Base::Enumeration; end
    class ProfileWCCPGREForwarding < IControl::Base::Struct; end    ##
    class ProfileWCCPGREForwardingSequence < IControl::Base::Sequence ; end## Sequence of tunnel forwarding options
    class WCCPGREForwardingSequence < IControl::Base::Sequence ; end##
    # Forwarding options for packets leaving a WCCP-GRE tunnel
    class WCCPGREForwarding < IControl::Base::Enumeration
      #
      WCCP_GRE_FORWARD_UNKNOWN = :WCCP_GRE_FORWARD_UNKNOWN
      # The transmitted packet's nexthop is determined via a routing table lookup.
      WCCP_GRE_FORWARD_NORMAL = :WCCP_GRE_FORWARD_NORMAL
      # A packet received over the tunnel is forwarded to the L2 address specified in its lasthop record (as received on the tunnel), if the original packet needs to be sent back towards its source.
      WCCP_GRE_FORWARD_LASTHOP = :WCCP_GRE_FORWARD_LASTHOP
    end

    ##
    # A structure that specifies the WCCP-GRE tunnel forwarding options
    class ProfileWCCPGREForwarding < IControl::Base::Struct
      # WCCP-GRE tunnel forwarding options
      icontrol_attribute :value, IControl::Networking::ProfileWCCPGRE::WCCPGREForwarding
      # How to interpret "value". For queries, if true, "value" is the parent profile's value;
      # if false, "value" has been explicitly set. For creation and modification, if true,
      # the parent profile's value is used to set the attribute value, and "value" is thus
      # ignored; if false, "value" will be used.
      icontrol_attribute :default_flag, Object
    end

    ##
    # Creates a set of WCCP-GRE tunnel profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the WCCP-GRE tunnel profiles to create

    ##
    # Deletes all non-system WCCP-GRE tunnel profiles.
    # :method: delete_all_profiles

    ##
    # Deletes a set of WCCP-GRE tunnel profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the WCCP-GRE tunnel profiles to delete

    ##
    # Gets the existing WCCP-GRE tunnel profile from which this set of WCCP-GRE profiles
    # inherits its unspecified attribute values.
    # :method: get_default_profile
    # :call-seq:
    # get_default_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the WCCP-GRE tunnel profiles to query

    ##
    # Gets the forwarding specification for packets leaving a WCCP-GRE tunnel for a set
    # of WCCP-GRE tunnel profiles.
    # :method: get_egress_forwarding
    # :call-seq:
    # get_egress_forwarding(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the WCCP-GRE tunnel profiles to query

    ##
    # Gets whether the checksum should be included in the transmitted packets for a set
    # of WCCP-GRE tunnel profiles.
    # :method: get_include_checksum_state
    # :call-seq:
    # get_include_checksum_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the WCCP-GRE tunnel profiles to query

    ##
    # Gets the names for all WCCP-GRE tunnel profiles.
    # :method: get_list

    ##
    # Gets whether the checksum should be validated on the received packets for a set of
    # WCCP-GRE tunnel profiles.
    # :method: get_validate_checksum_state
    # :call-seq:
    # get_validate_checksum_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the WCCP-GRE tunnel profiles to query

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Gets the WCCP version currently in use for a set of WCCP-GRE tunnel profiles.
    # :method: get_wccp_version
    # :call-seq:
    # get_wccp_version(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the WCCP-GRE tunnel profiles to query

    ##
    # Determines whether a set of WCCP-GRE tunnel profiles are base/pre-configured (vs
    # user-defined) profiles.
    # :method: is_base_profile
    # :call-seq:
    # is_base_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the WCCP-GRE tunnel profiles to query

    ##
    # Sets the existing WCCP-GRE tunnel profile from which this set of WCCP-GRE tunnel
    # profiles inherits their unspecified attribute values.
    # :method: set_default_profile
    # :call-seq:
    # set_default_profile(profile_names ,defaults)
    #
    # Parameters:
    # - profile_names String[] Names of the WCCP-GRE tunnel profiles to query
    # - defaults String[] WCCP-GRE tunnel profile from which each specified WCCP-GRE tunnel profile inherits its unspecified attribute values (default: wccpgre)

    ##
    # Sets the forwarding specification for packets leaving a WCCP-GRE tunnel for a set
    # of WCCP-GRE tunnel profiles.
    # :method: set_egress_forwarding
    # :call-seq:
    # set_egress_forwarding(profile_names ,modes)
    #
    # Parameters:
    # - profile_names String[] Names of the WCCP-GRE tunnel profiles to query
    # - modes ProfileWCCPGREForwarding[] Forwarding specification for packets leaving a WCCP-GRE tunnel for each specified WCCP-GRE tunnel profile (default: WCCP_GRE_FORWARD_NORMAL)

    ##
    # Sets whether the checksum should be included in the transmitted packets for a set
    # of WCCP-GRE tunnel profiles.
    # :method: set_include_checksum_state
    # :call-seq:
    # set_include_checksum_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] Names of the WCCP-GRE tunnel profiles to modify
    # - states ProfileEnabledState[] Enabled state for including the checksum in the transmitted packets for each specified WCCP-GRE tunnel profile (default: disabled)

    ##
    # Sets whether the checksum should be validated on the received packets for a set of
    # WCCP-GRE tunnel profiles.
    # :method: set_validate_checksum_state
    # :call-seq:
    # set_validate_checksum_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] Names of the WCCP-GRE tunnel profiles to modify
    # - states ProfileEnabledState[] Enabled state for validating the checksum on the received packets for each specified WCCP-GRE tunnel profile

    ##
    # Sets the WCCP version currently in use for a set of WCCP-GRE tunnel profiles.
    # :method: set_wccp_version
    # :call-seq:
    # set_wccp_version(profile_names ,versions)
    #
    # Parameters:
    # - profile_names String[] Names of the WCCP-GRE tunnel profiles to query
    # - versions ProfileULong[] WCCP version currently in use for each specified WCCP-GRE tunnel profiles


  end
end
