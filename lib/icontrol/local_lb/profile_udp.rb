module IControl::LocalLB
  ##
  # The ProfileUDP interface enables you to manipulate a local load balancer's UDP profile.
  class ProfileUDP < IControl::Base

    set_id_name "profile_names"

    class ProfileUDPStatisticEntry < IControl::Base::Struct; end
    class ProfileUDPStatistics < IControl::Base::Struct; end    ##
    # Creates this UDP profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def create
      super
    end

    ##
    # Deletes all UDP profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_profiles
      super
    end

    ##
    # Deletes this UDP profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_profile
      super
    end

    ##
    # Gets the statistics for all the profile.
    # @return [ProfileUDPStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the states that if true, will allow UDP packets with no payload (just the UDP header) to propagate through the system.
    # @return [ProfileEnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def allow_no_payload_state
      super
    end

    ##
    # Gets the states that if true, will load balance each UDP datagram separately.
    # @return [ProfileEnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def datagram_lb_state
      super
    end

    ##
    # Gets the names of the default profile from which this profile will derive default values for its attributes.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def default_profile
      super
    end

    ##
    # Gets the idle timeout for this UDP profile.
    # @return [ProfileULong]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def idle_timeout
      super
    end

    ##
    # Gets the client-side IP TOS values for this UDP profile.
    # @return [ProfileULong]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def ip_tos_to_client
      super
    end

    ##
    # Gets the client-side link QoS values for this UDP profile.
    # @return [ProfileULong]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def link_qos_to_client
      super
    end

    ##
    # Gets a list of all UDP profile.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the states that if true, disables checksum processing (note: if the datagram is IPv6, the system always performs checksum processing).
    # @return [ProfileEnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def no_checksum_state
      super
    end

    ##
    # Gets the statistics for this profile.
    # @return [ProfileUDPStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Determines whether this profile are base/pre-configured profile, or user-defined profile.
    # @return [boolean]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def is_base_profile
      super
    end

    ##
    # Resets the statistics for this profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the states that if true, will allow UDP packets with no payload (just the UDP header) to propagate through the system.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states for the specified UDP profiles.
    def set_allow_no_payload_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the states that if true, will load balance each UDP datagram separately.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states for the specified UDP profiles.
    def set_datagram_lb_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the names of the default profile from which this profile will derive default values for its attributes.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :defaults The default profiles from which the specified profiles will get default values.
    def set_default_profile(opts)
      check_params(opts,[:defaults])
      super
    end

    ##
    # Sets the idle timeout for this UDP profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :timeouts The idle timeout for the specified UDP profiles.
    def set_idle_timeout(opts)
      check_params(opts,[:timeouts])
      super
    end

    ##
    # Sets the client-side IP TOS values for this UDP profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :values The client-side IP TOS values.
    def set_ip_tos_to_client(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the client-side link QoS values for this UDP profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :values The client-side link QoS values.
    def set_link_qos_to_client(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the states that if true, disables checksum processing (note: if the datagram is IPv6, the system always performs checksum processing).
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states for the specified UDP profiles.
    def set_no_checksum_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # A struct that describes statistics for a particular profile.
    # @attr [String] profile_name The profile name.
    # @attr [IControl::Common::Statistic] statistics The statistics for the profile.
    class ProfileUDPStatisticEntry < IControl::Base::Struct
      icontrol_attribute :profile_name, String
      icontrol_attribute :statistics, IControl::Common::Statistic
    end

    ##
    # A struct that describes profile statistics and timestamp.
    # @attr [IControl::LocalLB::ProfileUDP::ProfileUDPStatisticEntry] statistics The statistics for a sequence of profiles.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class ProfileUDPStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::ProfileUDP::ProfileUDPStatisticEntry
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of ProfileUDP statistics.
    class ProfileUDPStatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
