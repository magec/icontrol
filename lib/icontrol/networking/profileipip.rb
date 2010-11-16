module IControl::Networking
  ##
  # The ProfileIPIP interface enables you to manipulate an IP-IP tunnel profile to configure
  # the IP-within-IP tunneling protocol. The IP-within-IP protocol (RFC2003) specifies
  # how to encapsulate an IP packet within another IP packet.
  class ProfileIPIP < IControl::Base
    ##
    # Creates a set of IP-IP tunnel profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the IP-IP tunnel profiles to create

    ##
    # Deletes all non-system IP-IP tunnel profiles.
    # :method: delete_all_profiles

    ##
    # Deletes a set of IP-IP tunnel profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the IP-IP tunnel profiles to delete

    ##
    # Gets the existing IP-IP tunnel profile from which this set of IP-IP profiles inherits
    # its unspecified attribute values.
    # :method: get_default_profile
    # :call-seq:
    # get_default_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the IP-IP tunnel profiles to query

    ##
    # Gets the names for all IP-IP tunnel profiles.
    # :method: get_list

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Determines whether a set of IP-IP tunnel profiles are base/pre-configured (vs user-defined)
    # profiles.
    # :method: is_base_profile
    # :call-seq:
    # is_base_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] Names of the IP-IP tunnel profiles to query

    ##
    # Sets the existing IP-IP tunnel profile from which this set of IP-IP tunnel profiles
    # inherits their unspecified attribute values.
    # :method: set_default_profile
    # :call-seq:
    # set_default_profile(profile_names ,defaults)
    #
    # Parameters:
    # - profile_names String[] Names of the IP-IP tunnel profiles to query
    # - defaults String[] IP-IP tunnel profile from which each specified IP-IP tunnel profile inherits its unspecified attribute values (default: ipip)


  end
end
