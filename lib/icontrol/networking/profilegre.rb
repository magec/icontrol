module IControl::Networking
  ##
  # The ProfileGRE interface allows you to manipulate a GRE tunnel profile to configure
  # the General Routing Encapsulation tunneling protocol. The General Routing Encapsulation
  # supports RFC2784, allowing the packets of any L3 protocol to be carried inside encapsulating
  # IP packets.
  class ProfileGRE < IControl::Base
    ##
    # Creates a set of GRE tunnel profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the GRE tunnel profiles to create

    ##
    # Deletes all non-system GRE tunnel profiles.
    # :method: delete_all_profiles

    ##
    # Deletes a set of GRE tunnel profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the GRE tunnel profiles to delete

    ##
    # Gets the existing GRE tunnel profile from which this set of GRE profiles inherits
    # its unspecified attribute values.
    # :method: get_default_profile
    # :call-seq:
    # get_default_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the GRE tunnel profiles to query

    ##
    # Gets whether the checksum should be included in the transmitted packets for a set
    # of GRE tunnel profiles.
    # :method: get_include_checksum_state
    # :call-seq:
    # get_include_checksum_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the GRE tunnel profiles to query

    ##
    # Gets the names for all GRE tunnel profiles.
    # :method: get_list

    ##
    # Gets whether the checksum should be validated on the received packets for a set of
    # GRE tunnel profiles.
    # :method: get_validate_checksum_state
    # :call-seq:
    # get_validate_checksum_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the GRE tunnel profiles to query

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Determines whether a set of GRE tunnel profiles are base/pre-configured (vs user-defined)
    # profiles.
    # :method: is_base_profile
    # :call-seq:
    # is_base_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the GRE tunnel profiles to query

    ##
    # Sets the existing GRE tunnel profile from which this set of GRE tunnel profiles inherits
    # their unspecified attribute values.
    # :method: set_default_profile
    # :call-seq:
    # set_default_profile(profile_names ,defaults)
    #
    # Parameters:
    # - profile_names String[] Names of the GRE tunnel profiles to query
    # - defaults String[] GRE tunnel profile from which each specified GRE tunnel profile inherits its unspecified attribute values (default: gre)

    ##
    # Sets whether the checksum should be included in the transmitted packets for a set
    # of GRE tunnel profiles.
    # :method: set_include_checksum_state
    # :call-seq:
    # set_include_checksum_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] Names of the GRE tunnel profiles to modify
    # - states ProfileEnabledState[] Enabled state for including the checksum in the transmitted packets for each specified GRE tunnel profile (default: disabled)

    ##
    # Sets whether the checksum should be validated on the received packets for a set of
    # GRE tunnel profiles.
    # :method: set_validate_checksum_state
    # :call-seq:
    # set_validate_checksum_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] Names of the GRE tunnel profiles to modify
    # - states ProfileEnabledState[] Enabled state for validating the checksum on the received packets for each specified GRE tunnel profile


  end
end
