module IControl::LocalLB
  ##
  # The ProfileServerSSL interface enables you to manipulate a local load balancer's
  # server SSL profile.
  class ProfileServerSSL < IControl::Base
    class ProfileServerSSLStatisticEntry < IControl::Base::Struct; end
    class ProfileServerSSLStatistics < IControl::Base::Struct; end    ## A sequence of ProfileServerSSL statistics.
    class ProfileServerSSLStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a particular server SSL profile.
    class ProfileServerSSLStatisticEntry < IControl::Base::Struct
      # The profile name.
      icontrol_attribute :profile_name, String
      # The statistics for the profile.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    class ProfileServerSSLStatistics < IControl::Base::Struct
      # The statistics for a sequence of profiles.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileServerSSL::ProfileServerSSLStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified server SSL profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] The server SSL profiles to create.

    ##
    # Deletes all server SSL profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified server SSL profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles to delete.

    ##
    # Gets the connection timeouts (in seconds) after sending an alert for the specified
    # server SSL profiles.
    # :method: get_alert_timeout
    # :call-seq:
    # get_alert_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Gets the statistics for all the server SSL profiles.
    # :method: get_all_statistics

    ##
    # Gets the client certificate chain maximum traversal depth for the specified server
    # SSL profiles.
    # :method: get_authenticate_depth
    # :call-seq:
    # get_authenticate_depth(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Gets the expected server certificate distinguished name (DN) for the specified server
    # SSL profiles.
    # :method: get_authenticate_name
    # :call-seq:
    # get_authenticate_name(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Gets the states to request the client certificate once for the specified server SSL
    # profiles.
    # :method: get_authenticate_once_state
    # :call-seq:
    # get_authenticate_once_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Gets the CA filenames for the specified server SSL profiles.
    # :method: get_ca_file
    # :call-seq:
    # get_ca_file(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Gets the SSL session cache sizes for the specified server SSL profiles.
    # :method: get_cache_size
    # :call-seq:
    # get_cache_size(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Gets the SSL session cache timeouts for the specified server SSL profiles.
    # :method: get_cache_timeout
    # :call-seq:
    # get_cache_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Gets the certificate filenames to be used by the specified server SSL profiles.
    # :method: get_certificate_file
    # :call-seq:
    # get_certificate_file(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Gets the certificate chain filenames for the specified server SSL profiles.
    # :method: get_chain_file
    # :call-seq:
    # get_chain_file(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Gets the cipher lists for the specified server SSL profiles.
    # :method: get_cipher_list
    # :call-seq:
    # get_cipher_list(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Gets the CRL filenames for the specified server SSL profiles.
    # :method: get_crl_file
    # :call-seq:
    # get_crl_file(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

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
    # Gets the connection timeouts (in seconds) during handshake phase for the specified
    # server SSL profiles.
    # :method: get_handshake_timeout
    # :call-seq:
    # get_handshake_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Gets the key filenames to be used by the specified server SSL profiles.
    # :method: get_key_file
    # :call-seq:
    # get_key_file(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Gets a list of all server SSL profiles.
    # :method: get_list

    ##
    # Gets the states to emulate modSSL for the specified server SSL profiles.
    # :method: get_modssl_emulation_state
    # :call-seq:
    # get_modssl_emulation_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Gets the key passphrases (if any) for the specified server SSL profiles.
    # :method: get_passphrase
    # :call-seq:
    # get_passphrase(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Gets the peer certification modes for the specified server SSL profiles.
    # :method: get_peer_certification_mode
    # :call-seq:
    # get_peer_certification_mode(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Gets the modes for the specified server SSL profiles.
    # :method: get_profile_mode
    # :call-seq:
    # get_profile_mode(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Gets the SSL renegotiation periods for the specified server SSL profiles.
    # :method: get_renegotiation_period
    # :call-seq:
    # get_renegotiation_period(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Gets the states controlling whether mid-stream renegotiation is allowed for the specified
    # server SSL profiles.
    # :method: get_renegotiation_state
    # :call-seq:
    # get_renegotiation_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Gets the SSL renegotiation throughputs for the specified server SSL profiles.
    # :method: get_renegotiation_throughput
    # :call-seq:
    # get_renegotiation_throughput(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Gets the SSL options for the specified server SSL profiles.
    # :method: get_ssl_option
    # :call-seq:
    # get_ssl_option(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Gets the statistics for the specified server SSL profiles.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The server SSL profiles to get the statistics from.

    ##
    # Gets the states to enforce strict SSL session resumption per RFC2246 for the specified
    # server SSL profiles.
    # :method: get_strict_resume_state
    # :call-seq:
    # get_strict_resume_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Gets the states to do an unclean shutdown for the specified server SSL profiles.
    # :method: get_unclean_shutdown_state
    # :call-seq:
    # get_unclean_shutdown_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

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
    # Resets the statistics for the specified server SSL profiles.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.

    ##
    # Sets the connection timeouts (in seconds) after sending an alert for the specified
    # server SSL profiles.
    # :method: set_alert_timeout
    # :call-seq:
    # set_alert_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - timeouts ProfileULong[] The connection timeouts (in seconds) after sending an alert for the specified server SSL profiles.

    ##
    # Sets the client certificate chain maximum traversal depth for the specified server
    # SSL profiles.
    # :method: set_authenticate_depth
    # :call-seq:
    # set_authenticate_depth(profile_names ,depths)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - depths ProfileULong[] The client certificate chain maximum traversal depth for the specified server SSL profiles.

    ##
    # Sets the expected server certificate distinguished name (DN) for the specified server
    # SSL profiles.
    # :method: set_authenticate_name
    # :call-seq:
    # set_authenticate_name(profile_names ,dn_names)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - dn_names ProfileString[] The expected server certificate distinguished name (DN) to be used by the specified server SSL profiles.

    ##
    # Sets the states to request the client certificate once for the specified server SSL
    # profiles. If the state is false/disabled, client certificate is requested for each
    # SSL session renegotiation.
    # :method: set_authenticate_once_state
    # :call-seq:
    # set_authenticate_once_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - states ProfileEnabledState[] The states to request the client certificate once for the specified server SSL profiles.

    ##
    # Sets the CA filenames for the specified server SSL profiles.
    # :method: set_ca_file
    # :call-seq:
    # set_ca_file(profile_names ,cas)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - cas ProfileString[] The CA filenames for the specified server SSL profiles.

    ##
    # Sets the SSL session cache sizes for the specified server SSL profiles.
    # :method: set_cache_size
    # :call-seq:
    # set_cache_size(profile_names ,sizes)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - sizes ProfileULong[] The SSL session cache sizes for the specified server SSL profiles.

    ##
    # Sets the SSL session cache timeouts for the specified server SSL profiles.
    # :method: set_cache_timeout
    # :call-seq:
    # set_cache_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - timeouts ProfileULong[] The SSL session cache timeouts for the specified server SSL profiles.

    ##
    # Sets the certificate filenames to be used by the specified server SSL profiles.
    # :method: set_certificate_file
    # :call-seq:
    # set_certificate_file(profile_names ,certs)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - certs ProfileString[] The certificate filenames to be used by the specified server SSL profiles.

    ##
    # Sets the certificate chain filenames for the specified server SSL profiles.
    # :method: set_chain_file
    # :call-seq:
    # set_chain_file(profile_names ,chains)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - chains ProfileString[] The certificate chain filenames for the specified server SSL profiles.

    ##
    # Sets the cipher lists for the specified server SSL profiles.
    # :method: set_cipher_list
    # :call-seq:
    # set_cipher_list(profile_names ,ciphers)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - ciphers ProfileStringArray[] The cipher lists for the specified server SSL profiles.

    ##
    # Sets the CRL filenames for the specified server SSL profiles.
    # :method: set_crl_file
    # :call-seq:
    # set_crl_file(profile_names ,crls)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - crls ProfileString[] The CRL filenames to be used by the specified server SSL profiles.

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
    # Sets the connection timeouts (in seconds) during handshake phase for the specified
    # server SSL profiles.
    # :method: set_handshake_timeout
    # :call-seq:
    # set_handshake_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - timeouts ProfileULong[] The connection timeouts (in seconds) during handshake phase for the specified server SSL profiles.

    ##
    # Sets the key filenames to be used by the specified server SSL profiles.
    # :method: set_key_file
    # :call-seq:
    # set_key_file(profile_names ,keys)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - keys ProfileString[] The key filenames to be used by the specified server SSL profiles.

    ##
    # Sets the states to emulate modSSL for the specified server SSL profiles.
    # :method: set_modssl_emulation_state
    # :call-seq:
    # set_modssl_emulation_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - states ProfileEnabledState[] The states to emulate modSSL for the specified server SSL profiles.

    ##
    # Sets the key passphrases (if any) for the specified server SSL profiles.
    # :method: set_passphrase
    # :call-seq:
    # set_passphrase(profile_names ,passphrases)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - passphrases ProfileString[] The key passphrases (if any) for the specified server SSL profiles.

    ##
    # Sets the peer certification modes for the specified server SSL profiles.
    # :method: set_peer_certificate_mode
    # :call-seq:
    # set_peer_certificate_mode(profile_names ,modes)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - modes ProfileServerSSLCertificateMode[] The peer certification modes for the specified server SSL profiles.

    ##
    # Sets the modes for the specified server SSL profiles.
    # :method: set_profile_mode
    # :call-seq:
    # set_profile_mode(profile_names ,modes)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - modes ProfileProfileMode[] The modes of the specified server SSL profiles.

    ##
    # Sets the SSL renegotiation periods for the specified server SSL profiles.
    # :method: set_renegotiation_period
    # :call-seq:
    # set_renegotiation_period(profile_names ,periods)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - periods ProfileULong[] The SSL renegotiation periods for the specified server SSL profiles.

    ##
    # Sets the states controlling whether mid-stream renegotiation is allowed for the specified
    # server SSL profiles. If renegotiations are enabled, the behavior is unchanged from
    # previous releases, and mid-stream SSL renegotiations are allowed. If renegotiations
    # are disabled, and we are acting as an SSL client, we ignore the server's HelloRequest
    # messages. For ServerSSL, renegotiations are enabled by default.
    # :method: set_renegotiation_state
    # :call-seq:
    # set_renegotiation_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - states ProfileEnabledState[] The states to set.

    ##
    # Sets the SSL renegotiation throughputs for the specified server SSL profiles.
    # :method: set_renegotiation_throughput
    # :call-seq:
    # set_renegotiation_throughput(profile_names ,throughputs)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - throughputs ProfileULong[] The SSL renegotiation throughputs for the specified server SSL profiles.

    ##
    # Sets the SSL options for the specified server SSL profiles.
    # :method: set_ssl_option
    # :call-seq:
    # set_ssl_option(profile_names ,options)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - options ProfileSSLOption[] The list of SSL options for the specified server SSL profiles.

    ##
    # Sets the states to enforce strict SSL session resumption per RFC2246 for the specified
    # server SSL profiles. If the state is true/enabled, don't send a close notify alert
    # when closing connection.
    # :method: set_strict_resume_state
    # :call-seq:
    # set_strict_resume_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - states ProfileEnabledState[] The states to enforce strict SSL session resumption per RFC2246 for the specified server SSL profiles.

    ##
    # Sets the states to do an unclean shutdown for the specified server SSL profiles.
    # If the state is true/enabled, don't send a close notify alert when closing connection.
    # :method: set_unclean_shutdown_state
    # :call-seq:
    # set_unclean_shutdown_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the server SSL profiles.
    # - states ProfileEnabledState[] The states to do an unclean shutdown for the specified server SSL profiles.


  end
end
