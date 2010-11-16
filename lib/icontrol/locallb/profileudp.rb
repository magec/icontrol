module IControl::LocalLB
  ##
  # The ProfileUDP interface enables you to manipulate a local load balancer's UDP profile.
  class ProfileUDP < IControl::Base
    class ProfileUDPStatisticEntry < IControl::Base::Struct; end
    class ProfileUDPStatistics < IControl::Base::Struct; end    ## A sequence of ProfileUDP statistics.
    class ProfileUDPStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a particular profile.
    class ProfileUDPStatisticEntry < IControl::Base::Struct
      # The profile name.
      icontrol_attribute :profile_name, String
      # The statistics for the profile.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    class ProfileUDPStatistics < IControl::Base::Struct
      # The statistics for a sequence of profiles.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileUDP::ProfileUDPStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified UDP profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] The UDP profiles to create.

    ##
    # Deletes all UDP profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified UDP profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the UDP profiles to delete.

    ##
    # Gets the statistics for all the profiles.
    # :method: get_all_statistics

    ##
    # Gets the states that if true, will allow UDP packets with no payload (just the UDP
    # header) to propagate through the system.
    # :method: get_allow_no_payload_state
    # :call-seq:
    # get_allow_no_payload_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the UDP profiles.

    ##
    # Gets the states that if true, will load balance each UDP datagram separately.
    # :method: get_datagram_lb_state
    # :call-seq:
    # get_datagram_lb_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the UDP profiles.

    ##
    # Gets the names of the default profiles from which the specified profiles will derive
    # default values for its attributes.
    # :method: get_default_profile
    # :call-seq:
    # get_default_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the idle timeout for the specified UDP profiles.
    # :method: get_idle_timeout
    # :call-seq:
    # get_idle_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the UDP profiles.

    ##
    # Gets the client-side IP TOS values for the specified UDP profiles.
    # :method: get_ip_tos_to_client
    # :call-seq:
    # get_ip_tos_to_client(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the UDP profiles.

    ##
    # Gets the client-side link QoS values for the specified UDP profiles.
    # :method: get_link_qos_to_client
    # :call-seq:
    # get_link_qos_to_client(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the UDP profiles.

    ##
    # Gets a list of all UDP profiles.
    # :method: get_list

    ##
    # Gets the states that if true, disables checksum processing (note: if the datagram
    # is IPv6, the system always performs checksum processing).
    # :method: get_no_checksum_state
    # :call-seq:
    # get_no_checksum_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the UDP profiles.

    ##
    # Gets the statistics for the specified profiles.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The profiles to get the statistics from.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Determines whether the specified profiles are base/pre-configured profiles, or user-defined
    # profiles.
    # :method: is_base_profile
    # :call-seq:
    # is_base_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Resets the statistics for the specified profiles.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Sets the states that if true, will allow UDP packets with no payload (just the UDP
    # header) to propagate through the system.
    # :method: set_allow_no_payload_state
    # :call-seq:
    # set_allow_no_payload_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the UDP profiles.
    # - states ProfileEnabledState[] The states for the specified UDP profiles.

    ##
    # Sets the states that if true, will load balance each UDP datagram separately.
    # :method: set_datagram_lb_state
    # :call-seq:
    # set_datagram_lb_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the UDP profiles.
    # - states ProfileEnabledState[] The states for the specified UDP profiles.

    ##
    # Sets the names of the default profiles from which the specified profiles will derive
    # default values for its attributes.
    # :method: set_default_profile
    # :call-seq:
    # set_default_profile(profile_names ,defaults)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - defaults String[] The default profiles from which the specified profiles will get default values.

    ##
    # Sets the idle timeout for the specified UDP profiles.
    # :method: set_idle_timeout
    # :call-seq:
    # set_idle_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the UDP profiles.
    # - timeouts ProfileULong[] The idle timeout for the specified UDP profiles.

    ##
    # Sets the client-side IP TOS values for the specified UDP profiles.
    # :method: set_ip_tos_to_client
    # :call-seq:
    # set_ip_tos_to_client(profile_names ,values)
    #
    # Parameters:
    # - profile_names String[] The names of the UDP profiles.
    # - values ProfileULong[] The client-side IP TOS values.

    ##
    # Sets the client-side link QoS values for the specified UDP profiles.
    # :method: set_link_qos_to_client
    # :call-seq:
    # set_link_qos_to_client(profile_names ,values)
    #
    # Parameters:
    # - profile_names String[] The names of the UDP profiles.
    # - values ProfileULong[] The client-side link QoS values.

    ##
    # Sets the states that if true, disables checksum processing (note: if the datagram
    # is IPv6, the system always performs checksum processing).
    # :method: set_no_checksum_state
    # :call-seq:
    # set_no_checksum_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the UDP profiles.
    # - states ProfileEnabledState[] The states for the specified UDP profiles.


  end
end
