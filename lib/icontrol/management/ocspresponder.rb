module IControl::Management
  ##
  # The OCSPResponder interface enables you to manage OCSP responder configuration.
  class OCSPResponder < IControl::Base
    class ResponderDefinition < IControl::Base::Struct; end
    class SignInformation < IControl::Base::Struct; end    ## A sequence of OCSP responders.
    class ResponderDefinitionSequence < IControl::Base::Sequence ; end## A sequence of signing information.
    class SignInformationSequence < IControl::Base::Sequence ; end##
    # A struct that describes an OCSP responder.
    class ResponderDefinition < IControl::Base::Struct
      # The OSCP responder's name.
      icontrol_attribute :name, String
      # The responder URL.
      icontrol_attribute :url, String
    end

    ##
    # A struct that describes information necessary to sign the OCSP request.
    class SignInformation < IControl::Base::Struct
      # The file containing the certificate used to sign the OCSP request.
      icontrol_attribute :signer_certificate, String
      # The private key. If not specified, then private key is read from same file		 specified
      # in the signer_certificate.
      icontrol_attribute :private_key, String
      # The pass phrase used to decrypt the private key.
      icontrol_attribute :pass_phrase, String
      # The additional certificates used to sign the request.
      icontrol_attribute :other_certificate, String
      # The digest algorithm for signing the request.
      icontrol_attribute :digest_method, IControl::Management::OCSPDigestMethod
    end

    ##
    # Creates the specified OCSP responders.
    # :method: create
    # :call-seq:
    # create(responders)
    #
    # Parameters:
    # - responders ResponderDefinition[] The list of OCSP responders.

    ##
    # Deletes all OCSP responders.
    # :method: delete_all_responders

    ##
    # Deletes the specified OCSP responders.
    # :method: delete_responder
    # :call-seq:
    # delete_responder(responders)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders to delete.

    ##
    # Gets the states that that indicate whether to allow the addition of certificates
    # to the OCSP request. This option should normally only be used for testing purposes.
    # :method: get_allow_additional_certificate_state
    # :call-seq:
    # get_allow_additional_certificate_state(responders)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.

    ##
    # Gets the names of the trusted CA certificates used by the responders to verify the
    # signature on the OCSP response.
    # :method: get_ca_file
    # :call-seq:
    # get_ca_file(responders)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.

    ##
    # Gets the paths of the trusted CA certificates used by the responders to verify the
    # signature on the OCSP response.
    # :method: get_ca_path
    # :call-seq:
    # get_ca_path(responders)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.

    ##
    # Gets the states that indicate whether to perform any additional checks on the OCSP
    # response signers certificate. If false, do not make any checks to see if the signers
    # certificate is authorized to provide the necessary status information: as a result
    # this option should only be used for testing purposes.
    # :method: get_certificate_check_state
    # :call-seq:
    # get_certificate_check_state(responders)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.

    ##
    # Gets the digest algorithm for hashing the certificate information used to create
    # the certificate ID that is sent to the responder.
    # :method: get_certificate_id_digest_method
    # :call-seq:
    # get_certificate_id_digest_method(responders)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.

    ##
    # Gets the states that indicate whether to check the certificates in the OCSP responses.
    # :method: get_certificate_verification_state
    # :call-seq:
    # get_certificate_verification_state(responders)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.

    ##
    # Gets the states that indicate whether to use certificates in the response as additional
    # untrusted CA certificates.
    # :method: get_chain_state
    # :call-seq:
    # get_chain_state(responders)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.

    ##
    # Gets the states that indicate whether to explicitly trust the OCSP response signers
    # certificate as authorized for OCSP response signing. Specifying this option causes
    # a response to be untrusted if the signers certificate does not contain the &amp;quot;OCSPSigning"
    # extension.
    # :method: get_explicit_state
    # :call-seq:
    # get_explicit_state(responders)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.

    ##
    # Gets the states that if true, then always use the URL specified in the configuration
    # file, and ignore any URL contained in the client certificates' authorityInfoAccess
    # OCSP field. If this option is not set (the default) AND the client certificate has
    # a valid AIA OCSP field set, then first attempt to connect to the responder in the
    # client's AIA OCSP field, and fall back to the URL in the responder definition if
    # that server is not available. See RFC2560 for more detail of the authorityInfoAccess
    # x509 extension and its intended usage.
    # :method: get_ignore_aia_state
    # :call-seq:
    # get_ignore_aia_state(responders)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.

    ##
    # Gets the states that that indicate whether to ignore certificates contained in the
    # OCSP response when searching for the signers certificate. With this option the signers
    # certificate must be specified with either the -verify_certs or -VAfile options.
    # :method: get_intern_state
    # :call-seq:
    # get_intern_state(responders)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.

    ##
    # Gets a list of all OCSP responders.
    # :method: get_list

    ##
    # Gets the state that indicates whether to send a nonce in the OCSP request.
    # :method: get_nonce_state
    # :call-seq:
    # get_nonce_state(responders)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.

    ##
    # Gets the files containing additional certificates to search when attempting to locate
    # the OCSP response signing certificate. Some responders omit the actual signer's certificates
    # from the response: this option can be used to supply the necessary certificates in
    # such cases.
    # :method: get_other_certificate_file
    # :call-seq:
    # get_other_certificate_file(responders)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.

    ##
    # Gets the states that indicate whether to check the signature on the OCSP response.
    # Since this option tolerates invalid signatures on OCSP responses it will normally
    # only be used for testing purposes.
    # :method: get_signature_verification_state
    # :call-seq:
    # get_signature_verification_state(responders)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.

    ##
    # Gets the signing information necessary to sign the OCSP requests.
    # :method: get_signing_information
    # :call-seq:
    # get_signing_information(responders)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.

    ##
    # Gets the status ages (sec) for the OCSP response. If the notAfter time is omitted
    # from a response then this means that new status information is immediately available.
    # In this case the age of the notBefore field is checked to see it is not older than
    # age seconds old. By default this additional check is not performed when -status_age
    # is not specified.
    # :method: get_status_age
    # :call-seq:
    # get_status_age(responders)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.

    ##
    # Gets the states indicating whether to be explicitly trust the other certificates
    # specified via set_other_certificate_file and no additional checks will be performed
    # on them. This is useful when the complete responder certificate chain is not available
    # or trusting a root CA is not appropriate.
    # :method: get_trust_other_certificate_state
    # :call-seq:
    # get_trust_other_certificate_state(responders)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.

    ##
    # Gets the URL or hostnames of the responders.
    # :method: get_url
    # :call-seq:
    # get_url(responders)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.

    ##
    # Gets the files containing explicitly trusted responder certificates. This functionality
    # is equivalent to having the other certificates specified via set_other_certificate_file,
    # and setting the state via set_trust_other_certificate_state.
    # :method: get_va_file
    # :call-seq:
    # get_va_file(responders)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.

    ##
    # Gets the range of times, in seconds, which will be tolerated in an OCSP response.
    # Each certificate status response includes a notBefore time and an optional notAfter
    # time. The current time should fall between these two values, but the interval between
    # the two times may be only a few seconds. In practice the OCSP responder and clients
    # clocks may not be precisely synchronized and so such a check may fail. To avoid this
    # the -validity_period option can be used to specify an acceptable error range in seconds,
    # the default value is 300 seconds.
    # :method: get_validity_period
    # :call-seq:
    # get_validity_period(responders)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.

    ##
    # Gets the states that indicate whether to attempt to verify the OCSP response signature
    # or the nonce values. This option will normally only be used for debugging since it
    # disables all verification of the responders certificate.
    # :method: get_verification_state
    # :call-seq:
    # get_verification_state(responders)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Sets the states that indicate whether to allow the addition of certificates to the
    # OCSP request. This option should normally only be used for testing purposes.
    # :method: set_allow_additional_certificate_state
    # :call-seq:
    # set_allow_additional_certificate_state(responders ,states)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.
    # - states EnabledState[] The states of the specified responders.

    ##
    # Sets the names of the trusted CA certificates used by the responders to verify the
    # signature on the OCSP response.
    # :method: set_ca_file
    # :call-seq:
    # set_ca_file(responders ,ca_files)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.
    # - ca_files String[] The CA file names used by the responders.

    ##
    # Sets the paths of the trusted CA certificates used by the responders to verify the
    # signature on the OCSP response.
    # :method: set_ca_path
    # :call-seq:
    # set_ca_path(responders ,ca_paths)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.
    # - ca_paths String[] The CA paths used by the responders.

    ##
    # Sets the states that indicate whether to perform any additional checks on the OCSP
    # response signers certificate. If false, do not make any checks to see if the signers
    # certificate is authorized to provide the necessary status information: as a result
    # this option should only be used for testing purposes.
    # :method: set_certificate_check_state
    # :call-seq:
    # set_certificate_check_state(responders ,states)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.
    # - states EnabledState[] The states of the specified responders.

    ##
    # Sets the digest algorithm for hashing the certificate information used to create
    # the certificate ID that is sent to the responder.
    # :method: set_certificate_id_digest_method
    # :call-seq:
    # set_certificate_id_digest_method(responders ,digest_methods)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.
    # - digest_methods OCSPDigestMethod[] The signing information to sign the OCSP requests.

    ##
    # Sets the states that indicate whether to check the certificates in the OCSP responses.
    # :method: set_certificate_verification_state
    # :call-seq:
    # set_certificate_verification_state(responders ,states)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.
    # - states EnabledState[] The states of the specified responders.

    ##
    # Sets the states that indicate whether to use certificates in the response as additional
    # untrusted CA certificates.
    # :method: set_chain_state
    # :call-seq:
    # set_chain_state(responders ,states)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.
    # - states EnabledState[] The states of the specified responders.

    ##
    # Sets the states that indicate whether to explicitly trust the OCSP response signers
    # certificate as authorized for OCSP response signing. Specifying this option causes
    # a response to be untrusted if the signers certificate does not contain the &amp;quot;OCSPSigning"
    # extension.
    # :method: set_explicit_state
    # :call-seq:
    # set_explicit_state(responders ,states)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.
    # - states EnabledState[] The states of the specified responders.

    ##
    # Sets the states that if true, then always use the URL specified in the configuration
    # file, and ignore any URL contained in the client certificates' authorityInfoAccess
    # OCSP field. If this option is not set (the default) AND the client certificate has
    # a valid AIA OCSP field set, then first attempt to connect to the responder in the
    # client's AIA OCSP field, and fall back to the URL in the responder definition if
    # that server is not available. See RFC2560 for more detail of the authorityInfoAccess
    # x509 extension and its intended usage.
    # :method: set_ignore_aia_state
    # :call-seq:
    # set_ignore_aia_state(responders ,states)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.
    # - states EnabledState[] The states of the specified responders.

    ##
    # Sets the states that indicate whether to ignore certificates contained in the OCSP
    # response when searching for the signers certificate. With this option the signers
    # certificate must be specified with either the -verify_certs or -VAfile options.
    # :method: set_intern_state
    # :call-seq:
    # set_intern_state(responders ,states)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.
    # - states EnabledState[] The states of the specified responders.

    ##
    # Sets the state that indicates whether to send a nonce in the OCSP request.
    # :method: set_nonce_state
    # :call-seq:
    # set_nonce_state(responders ,states)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.
    # - states EnabledState[] The states of the specified responders.

    ##
    # Sets the files containing additional certificates to search when attempting to locate
    # the OCSP response signing certificate. Some responders omit the actual signer's certificates
    # from the response: this option can be used to supply the necessary certificates in
    # such cases.
    # :method: set_other_certificate_file
    # :call-seq:
    # set_other_certificate_file(responders ,other_files)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.
    # - other_files String[] The files containing other certificates used by the responders.

    ##
    # Sets the states that indicate whether to check the signature on the OCSP response.
    # Since this option tolerates invalid signatures on OCSP responses it will normally
    # only be used for testing purposes.
    # :method: set_signature_verification_state
    # :call-seq:
    # set_signature_verification_state(responders ,states)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.
    # - states EnabledState[] The states of the specified responders.

    ##
    # Sets the signing information necessary to sign the OCSP requests.
    # :method: set_signing_information
    # :call-seq:
    # set_signing_information(responders ,signers)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.
    # - signers SignInformation[] The signing information to sign the OCSP requests.

    ##
    # Sets the status ages (sec) for the OCSP response. If the notAfter time is omitted
    # from a response then this means that new status information is immediately available.
    # In this case the age of the notBefore field is checked to see it is not older than
    # age seconds old. By default this additional check is not performed when -status_age
    # is not specified.
    # :method: set_status_age
    # :call-seq:
    # set_status_age(responders ,ages)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.
    # - ages long[] The status ages for OCSP responses for the specified responders.

    ##
    # Sets the states indicating whether to be explicitly trust the other certificates
    # specified via set_other_certificate_file and no additional checks will be performed
    # on them. This is useful when the complete responder certificate chain is not available
    # or trusting a root CA is not appropriate.
    # :method: set_trust_other_certificate_state
    # :call-seq:
    # set_trust_other_certificate_state(responders ,states)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.
    # - states EnabledState[] The states of the specified responders.

    ##
    # Sets the URLs of the responders.
    # :method: set_url
    # :call-seq:
    # set_url(responders ,urls)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.
    # - urls String[] The URLs used by the responders.

    ##
    # Sets the files containing explicitly trusted responder certificates. This functionality
    # is equivalent to having the other certificates specified via set_other_certificate_file,
    # and setting the state via set_trust_other_certificate_state.
    # :method: set_va_file
    # :call-seq:
    # set_va_file(responders ,va_files)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.
    # - va_files String[] The files containing explicitly trusted responder certificates.

    ##
    # Sets the range of times, in seconds, which will be tolerated in an OCSP response.
    # Each certificate status response includes a notBefore time and an optional notAfter
    # time. The current time should fall between these two values, but the interval between
    # the two times may be only a few seconds. In practice the OCSP responder and clients
    # clocks may not be precisely synchronized and so such a check may fail. To avoid this
    # the -validity_period option can be used to specify an acceptable error range in seconds,
    # the default value is 300 seconds.
    # :method: set_validity_period
    # :call-seq:
    # set_validity_period(responders ,ranges)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.
    # - ranges long[] The validity range of times for OCSP responses for the specified responders.

    ##
    # Sets the states that indicate whether to attempt to verify the OCSP response signature
    # or the nonce values. This option will normally only be used for debugging since it
    # disables all verification of the responders certificate.
    # :method: set_verification_state
    # :call-seq:
    # set_verification_state(responders ,states)
    #
    # Parameters:
    # - responders String[] The names of the OCSP responders.
    # - states EnabledState[] The states of the specified responders.


  end
end
