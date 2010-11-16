module IControl::LocalLB
  ##
  # The ProfileClientSSL interface enables you to manipulate a local load balancer's
  # client SSL profile.
  class ProfileClientSSL < IControl::Base
    class ProfileClientSSLStatisticEntry < IControl::Base::Struct; end
    class ProfileClientSSLStatistics < IControl::Base::Struct; end    ## A sequence of ProfileClientSSL statistics.
    class ProfileClientSSLStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a particular client SSL profile.
    class ProfileClientSSLStatisticEntry < IControl::Base::Struct
      # The profile name.
      icontrol_attribute :profile_name, String
      # The statistics for the profile.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    class ProfileClientSSLStatistics < IControl::Base::Struct
      # The statistics for a sequence of profiles.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileClientSSL::ProfileClientSSLStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified client SSL profiles.
    # :method: create
    # :call-seq:
    # create(profile_names ,keys ,certs)
    #
    # Parameters:
    # - profile_names String[] The client SSL profiles to create.
    # - keys ProfileString[] The key filenames to be used by BIG-IP acting as an SSL server.
    # - certs ProfileString[] The certificate filenames to be used by BIG-IP acting as an SSL server.

    ##
    # Deletes all client SSL profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified client SSL profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles to delete.

    ##
    # Gets the connection timeouts (in seconds) after sending an alert for the specified
    # client SSL profiles.
    # :method: get_alert_timeout
    # :call-seq:
    # get_alert_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the statistics for all the client SSL profiles.
    # :method: get_all_statistics

    ##
    # Gets the states to indicate whether to allow non-SSL connections to pass through
    # as cleartext.
    # :method: get_allow_nonssl_state
    # :call-seq:
    # get_allow_nonssl_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the client certificate chain maximum traversal depth for the specified client
    # SSL profiles.
    # :method: get_authenticate_depth
    # :call-seq:
    # get_authenticate_depth(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the states to request the client certificate once for the specified client SSL
    # profiles.
    # :method: get_authenticate_once_state
    # :call-seq:
    # get_authenticate_once_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the CA filenames for the specified client SSL profiles.
    # :method: get_ca_file
    # :call-seq:
    # get_ca_file(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the SSL session cache sizes for the specified client SSL profiles.
    # :method: get_cache_size
    # :call-seq:
    # get_cache_size(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the SSL session cache timeouts for the specified client SSL profiles.
    # :method: get_cache_timeout
    # :call-seq:
    # get_cache_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the certificate filenames to be used by BIG-IP acting as an SSL server.
    # :method: get_certificate_file
    # :call-seq:
    # get_certificate_file(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the certificate chain filenames for the specified client SSL profiles.
    # :method: get_chain_file
    # :call-seq:
    # get_chain_file(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the cipher lists for the specified client SSL profiles.
    # :method: get_cipher_list
    # :call-seq:
    # get_cipher_list(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the client certificate CA filenames for the specified client SSL profiles.
    # :method: get_client_certificate_ca_file
    # :call-seq:
    # get_client_certificate_ca_file(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the CRL filenames for the specified client SSL profiles.
    # :method: get_crl_file
    # :call-seq:
    # get_crl_file(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

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
    # client SSL profiles.
    # :method: get_handshake_timeout
    # :call-seq:
    # get_handshake_timeout(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the key filenames to be used by BIG-IP acting as an SSL server.
    # :method: get_key_file
    # :call-seq:
    # get_key_file(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets a list of all client SSL profiles.
    # :method: get_list

    ##
    # Gets the states to emulate modSSL for the specified client SSL profiles.
    # :method: get_modssl_emulation_state
    # :call-seq:
    # get_modssl_emulation_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the key passphrases (if any) for the specified client SSL profiles.
    # :method: get_passphrase
    # :call-seq:
    # get_passphrase(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the peer certification modes for the specified client SSL profiles.
    # :method: get_peer_certification_mode
    # :call-seq:
    # get_peer_certification_mode(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the modes for the specified client SSL profiles.
    # :method: get_profile_mode
    # :call-seq:
    # get_profile_mode(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the SSL renegotiation maximum record delay for the specified client SSL profiles.
    # :method: get_renegotiation_maximum_record_delay
    # :call-seq:
    # get_renegotiation_maximum_record_delay(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the SSL renegotiation periods for the specified client SSL profiles.
    # :method: get_renegotiation_period
    # :call-seq:
    # get_renegotiation_period(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the states controlling whether mid-stream renegotiation is allowed for the specified
    # client SSL profiles.
    # :method: get_renegotiation_state
    # :call-seq:
    # get_renegotiation_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the SSL renegotiation throughputs for the specified client SSL profiles.
    # :method: get_renegotiation_throughput
    # :call-seq:
    # get_renegotiation_throughput(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the SSL options for the specified client SSL profiles.
    # :method: get_ssl_option
    # :call-seq:
    # get_ssl_option(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the statistics for the specified client SSL profiles.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The client SSL profiles to get the statistics from.

    ##
    # Gets the states to enforce strict SSL session resumption per RFC2246 for the specified
    # client SSL profiles.
    # :method: get_strict_resume_state
    # :call-seq:
    # get_strict_resume_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Gets the states to do an unclean shutdown for the specified client SSL profiles.
    # :method: get_unclean_shutdown_state
    # :call-seq:
    # get_unclean_shutdown_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

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
    # Resets the statistics for the specified client SSL profiles.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.

    ##
    # Sets the connection timeouts (in seconds) after sending an alert for the specified
    # client SSL profiles.
    # :method: set_alert_timeout
    # :call-seq:
    # set_alert_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - timeouts ProfileULong[] The connection timeouts (in seconds) after sending an alert for the specified client SSL profiles.

    ##
    # Sets the states to indicate whether to allow non-SSL connections to pass through
    # as cleartext.
    # :method: set_allow_nonssl_state
    # :call-seq:
    # set_allow_nonssl_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - states ProfileEnabledState[] The states to indicate whether to allow non-SSL connections to pass through as cleartext.

    ##
    # Sets the client certificate chain maximum traversal depth for the specified client
    # SSL profiles.
    # :method: set_authenticate_depth
    # :call-seq:
    # set_authenticate_depth(profile_names ,depths)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - depths ProfileULong[] The client certificate chain maximum traversal depth for the specified client SSL profiles.

    ##
    # Sets the states to request the client certificate once for the specified client SSL
    # profiles. If the state is false/disabled, client certificate is requested for each
    # SSL session renegotiation.
    # :method: set_authenticate_once_state
    # :call-seq:
    # set_authenticate_once_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - states ProfileEnabledState[] The states to request the client certificate once for the specified client SSL profiles.

    ##
    # Sets the CA filenames for the specified client SSL profiles.
    # :method: set_ca_file
    # :call-seq:
    # set_ca_file(profile_names ,cas)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - cas ProfileString[] The CA filenames for the specified client SSL profiles.

    ##
    # Sets the SSL session cache sizes for the specified client SSL profiles.
    # :method: set_cache_size
    # :call-seq:
    # set_cache_size(profile_names ,cache_sizes)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - cache_sizes ProfileULong[] The SSL session cache sizes for the specified client SSL profiles.

    ##
    # Sets the SSL session cache timeouts for the specified client SSL profiles.
    # :method: set_cache_timeout
    # :call-seq:
    # set_cache_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - timeouts ProfileULong[] The SSL session cache timeouts for the specified client SSL profiles.

    ##
    # Sets the certificate filenames to be used by BIG-IP acting as an SSL server.
    # :method: set_certificate_file
    # :call-seq:
    # set_certificate_file(profile_names ,certs)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - certs ProfileString[] The certificate filenames to be used by BIG-IP acting as an SSL server.

    ##
    # Sets the certificate chain filenames for the specified client SSL profiles.
    # :method: set_chain_file
    # :call-seq:
    # set_chain_file(profile_names ,chains)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - chains ProfileString[] The certificate chain filenames for the specified client SSL profiles.

    ##
    # Sets the cipher lists for the specified client SSL profiles.
    # :method: set_cipher_list
    # :call-seq:
    # set_cipher_list(profile_names ,ciphers)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - ciphers ProfileStringArray[] The cipher lists for the specified client SSL profiles.

    ##
    # Sets the client certificate CA filenames for the specified client SSL profiles.
    # :method: set_client_certificate_ca_file
    # :call-seq:
    # set_client_certificate_ca_file(profile_names ,client_cert_cas)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - client_cert_cas ProfileString[] The client certificate CA filenames for the specified client SSL profiles.

    ##
    # Sets the CRL filenames for the specified client SSL profiles.
    # :method: set_crl_file
    # :call-seq:
    # set_crl_file(profile_names ,crls)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - crls ProfileString[] The CRL filenames to be used by BIG-IP acting as an SSL server.

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
    # client SSL profiles.
    # :method: set_handshake_timeout
    # :call-seq:
    # set_handshake_timeout(profile_names ,timeouts)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - timeouts ProfileULong[] The connection timeouts (in seconds) during handshake phase for the specified client SSL profiles.

    ##
    # Sets the key filenames to be used by BIG-IP acting as an SSL server.
    # :method: set_key_file
    # :call-seq:
    # set_key_file(profile_names ,keys)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - keys ProfileString[] The key filenames to be used by BIG-IP acting as an SSL server.

    ##
    # Sets the states to emulate modSSL for the specified client SSL profiles.
    # :method: set_modssl_emulation_state
    # :call-seq:
    # set_modssl_emulation_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - states ProfileEnabledState[] The states to emulate modSSL for the specified client SSL profiles.

    ##
    # Sets the key passphrases (if any) for the specified client SSL profiles.
    # :method: set_passphrase
    # :call-seq:
    # set_passphrase(profile_names ,passphrases)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - passphrases ProfileString[] The key passphrases (if any) for the specified client SSL profiles.

    ##
    # Sets the peer certification modes for the specified client SSL profiles.
    # :method: set_peer_certificate_mode
    # :call-seq:
    # set_peer_certificate_mode(profile_names ,modes)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - modes ProfileClientSSLCertificateMode[] The peer certification modes for the specified client SSL profiles.

    ##
    # Sets the modes for the specified client SSL profiles.
    # :method: set_profile_mode
    # :call-seq:
    # set_profile_mode(profile_names ,modes)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - modes ProfileProfileMode[] The modes of the specified client SSL profiles.

    ##
    # Sets the SSL renegotiation maximum record delay for the specified client SSL profiles.
    # :method: set_renegotiation_maximum_record_delay
    # :call-seq:
    # set_renegotiation_maximum_record_delay(profile_names ,delays)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - delays ProfileULong[] The SSL renegotiation maximum record delay for the specified client SSL profiles.

    ##
    # Sets the SSL renegotiation periods for the specified client SSL profiles.
    # :method: set_renegotiation_period
    # :call-seq:
    # set_renegotiation_period(profile_names ,periods)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - periods ProfileULong[] The SSL renegotiation periods for the specified client SSL profiles.

    ##
    # Sets the states controlling whether mid-stream renegotiation is allowed for the specified
    # client SSL profiles. If renegotiations are enabled, the behavior is unchanged from
    # previous releases, and mid-stream SSL renegotiations are allowed. If renegotiations
    # are disabled, and we are acting as an SSL server, we will abort the connection. For
    # ClientSSL, renegotiations are disabled by default.
    # :method: set_renegotiation_state
    # :call-seq:
    # set_renegotiation_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - states ProfileEnabledState[] The states to set.

    ##
    # Sets the SSL renegotiation throughputs for the specified client SSL profiles.
    # :method: set_renegotiation_throughput
    # :call-seq:
    # set_renegotiation_throughput(profile_names ,throughputs)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - throughputs ProfileULong[] The SSL renegotiation throughputs for the specified client SSL profiles.

    ##
    # Sets the SSL options for the specified client SSL profiles.
    # :method: set_ssl_option
    # :call-seq:
    # set_ssl_option(profile_names ,options)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - options ProfileSSLOption[] The list of SSL options for the specified client SSL profiles.

    ##
    # Sets the states to enforce strict SSL session resumption per RFC2246 for the specified
    # client SSL profiles. If the state is true/enabled, don't send a close notify alert
    # when closing connection.
    # :method: set_strict_resume_state
    # :call-seq:
    # set_strict_resume_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - states ProfileEnabledState[] The states to enforce strict SSL session resumption per RFC2246 for the specified client SSL profiles.

    ##
    # Sets the states to do an unclean shutdown for the specified client SSL profiles.
    # If the state is true/enabled, don't send a close notify alert when closing connection.
    # :method: set_unclean_shutdown_state
    # :call-seq:
    # set_unclean_shutdown_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the client SSL profiles.
    # - states ProfileEnabledState[] The states to do an unclean shutdown for the specified client SSL profiles.


  end
end
