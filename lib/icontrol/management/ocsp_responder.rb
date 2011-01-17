module IControl::Management
  ##
  # The OCSPResponder interface enables you to manage OCSP responder configuration.
  class OCSPResponder < IControl::Base

    set_id_name "responders"

    class ResponderDefinition < IControl::Base::Struct; end
    class SignInformation < IControl::Base::Struct; end
    class ResponderDefinitionSequence < IControl::Base::Sequence ; end
    class SignInformationSequence < IControl::Base::Sequence ; end    ##
    # Creates this OCSP responder.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def create
      super
    end

    ##
    # Deletes all OCSP responder.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_responders
      super
    end

    ##
    # Deletes this OCSP responder.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_responder
      super
    end

    ##
    # Gets the states that that indicate whether to allow the addition of certificates
    # to the OCSP request. This option should normally only be used for testing purposes.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def allow_additional_certificate_state
      super
    end

    ##
    # Gets the names of the trusted CA certificates used by the responder to verify the
    # signature on the OCSP response.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ca_file
      super
    end

    ##
    # Gets the paths of the trusted CA certificates used by the responder to verify the
    # signature on the OCSP response.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ca_path
      super
    end

    ##
    # Gets the states that indicate whether to perform any additional checks on the OCSP
    # response signers certificate. If false, do not make any checks to see if the signers
    # certificate is authorized to provide the necessary status information: as a result
    # this option should only be used for testing purposes.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def certificate_check_state
      super
    end

    ##
    # Gets the digest algorithm for hashing the certificate information used to create
    # the certificate ID that is sent to the responder.
    # @rspec_example
    # @return [OCSPDigestMethod]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def certificate_id_digest_method
      super
    end

    ##
    # Gets the states that indicate whether to check the certificates in the OCSP responses.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def certificate_verification_state
      super
    end

    ##
    # Gets the states that indicate whether to use certificates in the response as additional
    # untrusted CA certificates.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def chain_state
      super
    end

    ##
    # Gets the states that indicate whether to explicitly trust the OCSP response signers
    # certificate as authorized for OCSP response signing. Specifying this option causes
    # a response to be untrusted if the signers certificate does not contain the &amp;quot;OCSPSigning"
    # extension.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def explicit_state
      super
    end

    ##
    # Gets the states that if true, then always use the URL specified in the configuration
    # file, and ignore any URL contained in the client certificates' authorityInfoAccess
    # OCSP field. If this option is not set (the default) AND the client certificate has
    # a valid AIA OCSP field set, then first attempt to connect to the responder in the
    # client's AIA OCSP field, and fall back to the URL in the responder definition if
    # that server is not available. See RFC2560 for more detail of the authorityInfoAccess
    # x509 extension and its intended usage.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ignore_aia_state
      super
    end

    ##
    # Gets the states that that indicate whether to ignore certificates contained in the
    # OCSP response when searching for the signers certificate. With this option the signers
    # certificate must be specified with either the -verify_certs or -VAfile options.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def intern_state
      super
    end

    ##
    # Gets a list of all OCSP responder.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the state that indicates whether to send a nonce in the OCSP request.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def nonce_state
      super
    end

    ##
    # Gets the files containing additional certificates to search when attempting to locate
    # the OCSP response signing certificate. Some responder omit the actual signer's certificates
    # from the response: this option can be used to supply the necessary certificates in
    # such cases.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def other_certificate_file
      super
    end

    ##
    # Gets the states that indicate whether to check the signature on the OCSP response.
    # Since this option tolerates invalid signatures on OCSP responses it will normally
    # only be used for testing purposes.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def signature_verification_state
      super
    end

    ##
    # Gets the signing information necessary to sign the OCSP requests.
    # @rspec_example
    # @return [SignInformation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def signing_information
      super
    end

    ##
    # Gets the status ages (sec) for the OCSP response. If the notAfter time is omitted
    # from a response then this means that new status information is immediately available.
    # In this case the age of the notBefore field is checked to see it is not older than
    # age seconds old. By default this additional check is not performed when -status_age
    # is not specified.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def status_age
      super
    end

    ##
    # Gets the states indicating whether to be explicitly trust the other certificates
    # specified via set_other_certificate_file and no additional checks will be performed
    # on them. This is useful when the complete responder certificate chain is not available
    # or trusting a root CA is not appropriate.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def trust_other_certificate_state
      super
    end

    ##
    # Gets the URL or hostnames of the responder.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def url
      super
    end

    ##
    # Gets the files containing explicitly trusted responder certificates. This functionality
    # is equivalent to having the other certificates specified via set_other_certificate_file,
    # and setting the state via set_trust_other_certificate_state.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def va_file
      super
    end

    ##
    # Gets the range of times, in seconds, which will be tolerated in an OCSP response.
    # Each certificate status response includes a notBefore time and an optional notAfter
    # time. The current time should fall between these two values, but the interval between
    # the two times may be only a few seconds. In practice the OCSP responder and clients
    # clocks may not be precisely synchronized and so such a check may fail. To avoid this
    # the -validity_period option can be used to specify an acceptable error range in seconds,
    # the default value is 300 seconds.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def validity_period
      super
    end

    ##
    # Gets the states that indicate whether to attempt to verify the OCSP response signature
    # or the nonce values. This option will normally only be used for debugging since it
    # disables all verification of the responder certificate.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def verification_state
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
    # Sets the states that indicate whether to allow the addition of certificates to the
    # OCSP request. This option should normally only be used for testing purposes.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states of the specified responders.
    def set_allow_additional_certificate_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the names of the trusted CA certificates used by the responder to verify the
    # signature on the OCSP response.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :ca_files The CA file names used by the responders.
    def set_ca_file(opts)
      opts = check_params(opts,[:ca_files])
      super(opts)
    end

    ##
    # Sets the paths of the trusted CA certificates used by the responder to verify the
    # signature on the OCSP response.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :ca_paths The CA paths used by the responders.
    def set_ca_path(opts)
      opts = check_params(opts,[:ca_paths])
      super(opts)
    end

    ##
    # Sets the states that indicate whether to perform any additional checks on the OCSP
    # response signers certificate. If false, do not make any checks to see if the signers
    # certificate is authorized to provide the necessary status information: as a result
    # this option should only be used for testing purposes.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states of the specified responders.
    def set_certificate_check_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the digest algorithm for hashing the certificate information used to create
    # the certificate ID that is sent to the responder.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::OCSPDigestMethod] :digest_methods The signing information to sign the OCSP requests.
    def set_certificate_id_digest_method(opts)
      opts = check_params(opts,[:digest_methods])
      super(opts)
    end

    ##
    # Sets the states that indicate whether to check the certificates in the OCSP responses.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states of the specified responders.
    def set_certificate_verification_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the states that indicate whether to use certificates in the response as additional
    # untrusted CA certificates.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states of the specified responders.
    def set_chain_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the states that indicate whether to explicitly trust the OCSP response signers
    # certificate as authorized for OCSP response signing. Specifying this option causes
    # a response to be untrusted if the signers certificate does not contain the &amp;quot;OCSPSigning"
    # extension.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states of the specified responders.
    def set_explicit_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the states that if true, then always use the URL specified in the configuration
    # file, and ignore any URL contained in the client certificates' authorityInfoAccess
    # OCSP field. If this option is not set (the default) AND the client certificate has
    # a valid AIA OCSP field set, then first attempt to connect to the responder in the
    # client's AIA OCSP field, and fall back to the URL in the responder definition if
    # that server is not available. See RFC2560 for more detail of the authorityInfoAccess
    # x509 extension and its intended usage.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states of the specified responders.
    def set_ignore_aia_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the states that indicate whether to ignore certificates contained in the OCSP
    # response when searching for the signers certificate. With this option the signers
    # certificate must be specified with either the -verify_certs or -VAfile options.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states of the specified responders.
    def set_intern_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the state that indicates whether to send a nonce in the OCSP request.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states of the specified responders.
    def set_nonce_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the files containing additional certificates to search when attempting to locate
    # the OCSP response signing certificate. Some responder omit the actual signer's certificates
    # from the response: this option can be used to supply the necessary certificates in
    # such cases.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :other_files The files containing other certificates used by the responders.
    def set_other_certificate_file(opts)
      opts = check_params(opts,[:other_files])
      super(opts)
    end

    ##
    # Sets the states that indicate whether to check the signature on the OCSP response.
    # Since this option tolerates invalid signatures on OCSP responses it will normally
    # only be used for testing purposes.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states of the specified responders.
    def set_signature_verification_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the signing information necessary to sign the OCSP requests.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::OCSPResponder::SignInformation] :signers The signing information to sign the OCSP requests.
    def set_signing_information(opts)
      opts = check_params(opts,[:signers])
      super(opts)
    end

    ##
    # Sets the status ages (sec) for the OCSP response. If the notAfter time is omitted
    # from a response then this means that new status information is immediately available.
    # In this case the age of the notBefore field is checked to see it is not older than
    # age seconds old. By default this additional check is not performed when -status_age
    # is not specified.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :ages The status ages for OCSP responses for the specified responders.
    def set_status_age(opts)
      opts = check_params(opts,[:ages])
      super(opts)
    end

    ##
    # Sets the states indicating whether to be explicitly trust the other certificates
    # specified via set_other_certificate_file and no additional checks will be performed
    # on them. This is useful when the complete responder certificate chain is not available
    # or trusting a root CA is not appropriate.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states of the specified responders.
    def set_trust_other_certificate_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the URLs of the responder.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :urls The URLs used by the responders.
    def set_url(opts)
      opts = check_params(opts,[:urls])
      super(opts)
    end

    ##
    # Sets the files containing explicitly trusted responder certificates. This functionality
    # is equivalent to having the other certificates specified via set_other_certificate_file,
    # and setting the state via set_trust_other_certificate_state.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :va_files The files containing explicitly trusted responder certificates.
    def set_va_file(opts)
      opts = check_params(opts,[:va_files])
      super(opts)
    end

    ##
    # Sets the range of times, in seconds, which will be tolerated in an OCSP response.
    # Each certificate status response includes a notBefore time and an optional notAfter
    # time. The current time should fall between these two values, but the interval between
    # the two times may be only a few seconds. In practice the OCSP responder and clients
    # clocks may not be precisely synchronized and so such a check may fail. To avoid this
    # the -validity_period option can be used to specify an acceptable error range in seconds,
    # the default value is 300 seconds.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :ranges The validity range of times for OCSP responses for the specified responders.
    def set_validity_period(opts)
      opts = check_params(opts,[:ranges])
      super(opts)
    end

    ##
    # Sets the states that indicate whether to attempt to verify the OCSP response signature
    # or the nonce values. This option will normally only be used for debugging since it
    # disables all verification of the responder certificate.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states of the specified responders.
    def set_verification_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # A struct that describes an OCSP responder.
    # @attr [String] name The OSCP responder's name.
    # @attr [String] url The responder URL.
    class ResponderDefinition < IControl::Base::Struct
      icontrol_attribute :name, String
      icontrol_attribute :url, String
    end

    ##
    # A struct that describes information necessary to sign the OCSP request.
    # @attr [String] signer_certificate The file containing the certificate used to sign the OCSP request.
    # @attr [String] private_key The private key. If not specified, then private key is read from same file		 specified in the signer_certificate.
    # @attr [String] pass_phrase The pass phrase used to decrypt the private key.
    # @attr [String] other_certificate The additional certificates used to sign the request.
    # @attr [IControl::Management::OCSPDigestMethod] digest_method The digest algorithm for signing the request.
    class SignInformation < IControl::Base::Struct
      icontrol_attribute :signer_certificate, String
      icontrol_attribute :private_key, String
      icontrol_attribute :pass_phrase, String
      icontrol_attribute :other_certificate, String
      icontrol_attribute :digest_method, IControl::Management::OCSPDigestMethod
    end


    ## A sequence of OCSP responders.
    class ResponderDefinitionSequence < IControl::Base::Sequence ; end
    ## A sequence of signing information.
    class SignInformationSequence < IControl::Base::Sequence ; end
  end
end
