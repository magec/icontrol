module IControl::Management
  ##
  # The KeyCertificate interface exposes methods that enable you to manage keys, certificates,
  # and certificate requests. All methods in this interface are atomic operations, such
  # that each operation involves creating a session context with the key/certificate
  # management library, performing the required action, and cleaning up and/or destroying
  # the session context when completed. Therefore, all operations are stateless. Note
  # that all operations on keys, certificates, and certificate requests are performed
  # in the directory location containing keys, certs, csr's... as structured for Apache,
  # which is currently /config/ssl. For archiving operations, you have the option of
  # exporting or importing archives to/from other locations. If the location is not specified,
  # the default location of /config/ssl will be used.
  class KeyCertificate < IControl::Base
    class CertificateType < IControl::Base::Enumeration; end
    class KeyType < IControl::Base::Enumeration; end
    class ManagementModeType < IControl::Base::Enumeration; end
    class SecurityType < IControl::Base::Enumeration; end
    class ValidityType < IControl::Base::Enumeration; end
    class Certificate < IControl::Base::Struct; end
    class CertificateDetail < IControl::Base::Struct; end
    class CertificateInformation < IControl::Base::Struct; end
    class CertificateRequest < IControl::Base::Struct; end
    class CertificateRequestInformation < IControl::Base::Struct; end
    class Key < IControl::Base::Struct; end
    class KeyInformation < IControl::Base::Struct; end
    class X509Data < IControl::Base::Struct; end    ## A sequence of CertificateDetail structures.
    class CertificateDetailSequence < IControl::Base::Sequence ; end## An alias for a sequence of CertificateDetail structures.
    class CertificateDetailSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of CertificateInformation structures.
    class CertificateInformationSequence < IControl::Base::Sequence ; end## A sequence of CertificateRequestInformation structures.
    class CertificateRequestInformationSequence < IControl::Base::Sequence ; end## A sequence of CertificateRequest structures.
    class CertificateRequestSequence < IControl::Base::Sequence ; end## A sequence of Certificate structures.
    class CertificateSequence < IControl::Base::Sequence ; end## A sequence of KeyInformation structures.
    class KeyInformationSequence < IControl::Base::Sequence ; end## A sequence of Key structures.
    class KeySequence < IControl::Base::Sequence ; end## A sequence of ValidityType enumeration.
    class ValidityTypeSequence < IControl::Base::Sequence ; end## A sequence of X509Data structures.
    class X509DataSequence < IControl::Base::Sequence ; end##
    # An enumerated type that will describe the certificate type.
    class CertificateType < IControl::Base::Enumeration
      # A CA-signed certificate.
      CTYPE_CA_SIGNED_YES = :CTYPE_CA_SIGNED_YES
      # A certificate signed by others.
      CTYPE_CA_SIGNED_NO = :CTYPE_CA_SIGNED_NO
      # Unknown.
      CTYPE_CA_SIGNED_UNKNOWN = :CTYPE_CA_SIGNED_UNKNOWN
    end

    ##
    # An enumerated type that will describe the key type being used in the key/certificate.
    class KeyType < IControl::Base::Enumeration
      # An RSA private key type.
      KTYPE_RSA_PRIVATE = :KTYPE_RSA_PRIVATE
      # An RSA public key type.
      KTYPE_RSA_PUBLIC = :KTYPE_RSA_PUBLIC
      # A DSA private key type
      KTYPE_DSA_PRIVATE = :KTYPE_DSA_PRIVATE
      # A DSA public key type.
      KTYPE_DSA_PUBLIC = :KTYPE_DSA_PUBLIC
    end

    ##
    # An enumerated type that will describe what mode of key/cert management to use.
    class ManagementModeType < IControl::Base::Enumeration
      # Management of keys/certs used in SSL profiles.
      MANAGEMENT_MODE_DEFAULT = :MANAGEMENT_MODE_DEFAULT
      # Management of keys/certs used by the web server.
      MANAGEMENT_MODE_WEBSERVER = :MANAGEMENT_MODE_WEBSERVER
      # Management of keys/certs used by enterprise management
      MANAGEMENT_MODE_EM = :MANAGEMENT_MODE_EM
      # Management of keys/certs used by GTM's iQuery, gtm directory.
      MANAGEMENT_MODE_IQUERY = :MANAGEMENT_MODE_IQUERY
      # Management of keys/certs used by GTM's iQuery, big3d directory.
      MANAGEMENT_MODE_IQUERY_BIG3D = :MANAGEMENT_MODE_IQUERY_BIG3D
    end

    ##
    # An enumerated type that will describe the security type being used in the key. You
    # can use this enumeration when creating the key to indicate whether you are creating
    # a normal key, or FIPS-enabled key.
    class SecurityType < IControl::Base::Enumeration
      # A normal key.
      STYPE_NORMAL = :STYPE_NORMAL
      # A FIPS-enabled key.
      STYPE_FIPS = :STYPE_FIPS
      # A Password-encrypted key
      STYPE_PASSWORD = :STYPE_PASSWORD
    end

    ##
    # An enumerated type that will describe the validity of the certificates.
    class ValidityType < IControl::Base::Enumeration
      # The certificate is valid.
      VTYPE_CERTIFICATE_VALID = :VTYPE_CERTIFICATE_VALID
      # The certificate is expired.
      VTYPE_CERTIFICATE_EXPIRED = :VTYPE_CERTIFICATE_EXPIRED
      # The certificate will expire soon.
      VTYPE_CERTIFICATE_WILL_EXPIRE = :VTYPE_CERTIFICATE_WILL_EXPIRE
      # The certificate is invalid.
      VTYPE_CERTIFICATE_INVALID = :VTYPE_CERTIFICATE_INVALID
    end

    ##
    # A struct that describes the basic information of a certificate, typically used when
    # creating the certificate.
    class Certificate < IControl::Base::Struct
      # The string identification of this certificate.
      icontrol_attribute :id, String
      # The email address of the certificate's owner.
      icontrol_attribute :email, String
    end

    ##
    # A struct that describes the detailed information of a certificate.
    class CertificateDetail < IControl::Base::Struct
      # The basic information of the certificate.
      icontrol_attribute :cert_info, IControl::Management::KeyCertificate::Certificate
      # The certificate type.
      icontrol_attribute :cert_type, IControl::Management::KeyCertificate::CertificateType
      # The key type of the key used when the certificate is created.
      icontrol_attribute :key_type, IControl::Management::KeyCertificate::KeyType
      # The bit length of the key used when the certificate is created.
      icontrol_attribute :bit_length, Numeric
      # The version of the certificate.
      icontrol_attribute :version, Numeric
      # The serial number of the certificate (if assigned).
      icontrol_attribute :serial_number, String
      # The string representation of the expiration date.
      icontrol_attribute :expiration_string, String
      # The numeric representation of the expiration date.
      icontrol_attribute :expiration_date, Numeric
      # The x509 data of the certificate's owner.
      icontrol_attribute :subject, IControl::Management::KeyCertificate::X509Data
      # The x509 data of the authority who signs this certificate.
      icontrol_attribute :issuer, IControl::Management::KeyCertificate::X509Data
    end

    ##
    # A struct that describes the full information of a certificate.
    class CertificateInformation < IControl::Base::Struct
      # The flag indicating whether there are multiple certs in this file.
      icontrol_attribute :is_bundled, Object
      # The full path/file name of the certificate on disk.
      icontrol_attribute :file_name, String
      # The detailed information of the certificate.
      icontrol_attribute :certificate, IControl::Management::KeyCertificate::CertificateDetail
    end

    ##
    # A struct that describes the basic information of a certificate request, typically
    # used when creating the certificate request.
    class CertificateRequest < IControl::Base::Struct
      # The string identification of this certificate request.
      icontrol_attribute :id, String
      # The email address of the certificate request's owner.
      icontrol_attribute :email, String
      # The challenge password.
      icontrol_attribute :challenge_password, String
    end

    ##
    # A struct that describes the full information of a certificate request.
    class CertificateRequestInformation < IControl::Base::Struct
      # The basic information of the certificate request.
      icontrol_attribute :csr_info, IControl::Management::KeyCertificate::CertificateRequest
      # The title of the certificate request.
      icontrol_attribute :title, String
      # The serial number of the certificate request (if assigned).
      icontrol_attribute :serial_number, String
      # The full path/file name of the certificate request on disk.
      icontrol_attribute :file_name, String
      # The key type of the key used when the certificate request is created.
      icontrol_attribute :key_type, IControl::Management::KeyCertificate::KeyType
      # The bit length of the key used when the certificate request is created.
      icontrol_attribute :bit_length, Numeric
      # The x509 data of the certificate request's owner.
      icontrol_attribute :subject, IControl::Management::KeyCertificate::X509Data
    end

    ##
    # A struct that describes the basic information of a key, typically used when creating
    # the key.
    class Key < IControl::Base::Struct
      # The string identification of this key.
      icontrol_attribute :id, String
      # The key type used by this key.
      icontrol_attribute :key_type, IControl::Management::KeyCertificate::KeyType
      # The bit length used by this key
      icontrol_attribute :bit_length, Numeric
      # The security type used by this key.
      icontrol_attribute :security, IControl::Management::KeyCertificate::SecurityType
    end

    ##
    # A struct that describes the full information of a key, typically returned when querying
    # the key.
    class KeyInformation < IControl::Base::Struct
      # The basic information of the key.
      icontrol_attribute :key_info, IControl::Management::KeyCertificate::Key
      # The full path/file name of the key on disk.
      icontrol_attribute :file_name, String
      # Reserved for future use.
      icontrol_attribute :flags, Numeric
    end

    ##
    # A struct that describes the information of the x509 data that our key/certificate
    # management library will read from or include in a certificate.
    class X509Data < IControl::Base::Struct
      # The common name of the certificate, normally a domain name.
      icontrol_attribute :common_name, String
      # The country name.
      icontrol_attribute :country_name, String
      # The state name.
      icontrol_attribute :state_name, String
      # The locality or city name.
      icontrol_attribute :locality_name, String
      # The organization or company name.
      icontrol_attribute :organization_name, String
      # The department or division name.
      icontrol_attribute :division_name, String
    end

    ##
    # Adds certificates identified by &amp;quot;certificate_files" to the certificate bundles,
    # which are presumed to exist already. Each of the original certificate bundle can
    # theoretically be a normal certificate, i.e. a certificate bundle of one. After the
    # add operation, the bundles will contain more than one certificate.
    # :method: certificate_add_file_to_bundle
    # :call-seq:
    # certificate_add_file_to_bundle(mode ,cert_ids ,certificate_files)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - cert_ids String[] The existing certificate bundles to which additional certificates will be added.
    # - certificate_files String[] The file names of the certificates to add to the bundles.

    ##
    # Adds certificates identified by &amp;quot;pem_data" to the certificate bundles, which
    # are presumed to exist already. Each of the original certificate bundle can theoretically
    # be a normal certificate, i.e. a certificate bundle of one. After the add operation,
    # the bundles will contain more than one certificate.
    # :method: certificate_add_pem_to_bundle
    # :call-seq:
    # certificate_add_pem_to_bundle(mode ,cert_ids ,pem_data)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - cert_ids String[] The existing certificate bundles to which additional certificates will be added.
    # - pem_data String[] The PEM formatted data of the certificates to add to the bundles.

    ##
    # Binds/associates the specified keys and certificates.
    # :method: certificate_bind
    # :call-seq:
    # certificate_bind(mode ,cert_ids ,key_ids)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - cert_ids String[] The string identifications of the certificates.
    # - key_ids String[] The string identifications of the keys

    ##
    # Gets the validity of the specified certificates.
    # :method: certificate_check_validity
    # :call-seq:
    # certificate_check_validity(mode ,cert_ids ,watermark_days)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - cert_ids String[] The string identifications of the certificates to check for validity.
    # - watermark_days long[] The watermarks in number of days to use in checking the validity.

    ##
    # Deletes/uninstalls the specified certificates.
    # :method: certificate_delete
    # :call-seq:
    # certificate_delete(mode ,cert_ids)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - cert_ids String[] The string identifications of the certificates to delete/uninstall.

    ##
    # Deletes certificates, identified by their subject's X509 data, from the certificate
    # bundles. If the last certificate has been deleted from the bundle, the certificate
    # file will automatically be deleted.
    # :method: certificate_delete_from_bundle
    # :call-seq:
    # certificate_delete_from_bundle(mode ,cert_ids ,x509_data)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - cert_ids String[] The existing certificate bundles from which certificates will be removed.
    # - x509_data X509Data[] The X509 data of the subjects of the certificates to be deleted from the bundle.

    ##
    # Exports the specified certificates to the given files.
    # :method: certificate_export_to_file
    # :call-seq:
    # certificate_export_to_file(mode ,cert_ids ,file_names ,overwrite)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - cert_ids String[] The string identifications of the certificates to export.
    # - file_names String[] The files associated with the specified certificates to export to.
    # - overwrite boolean The boolean indicating whether we should overwrite the certificate files on		 disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.

    ##
    # Exports the specified certificates to PEM-formatted data.
    # :method: certificate_export_to_pem
    # :call-seq:
    # certificate_export_to_pem(mode ,cert_ids)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - cert_ids String[] The string identifications of the certificates to export.

    ##
    # Generates the specified certificates. This assumes that each of the associated keys,
    # having the same identification as each certificate, has already been created.
    # :method: certificate_generate
    # :call-seq:
    # certificate_generate(mode ,certs ,x509_data ,lifetime_days ,overwrite)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - certs Certificate[] The certificates to generate.
    # - x509_data X509Data[] The x509 data associated with the specified certificates.
    # - lifetime_days long[] The number of days the certificates will be valid.
    # - overwrite boolean The boolean indicating whether we should overwrite the certificate files		 on disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.

    ##
    # Imports/installs the specified certificates from the given files.
    # :method: certificate_import_from_file
    # :call-seq:
    # certificate_import_from_file(mode ,cert_ids ,file_names ,overwrite)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - cert_ids String[] The string identifications of the certificates to import/install.
    # - file_names String[] The certificate files associated with the specified certificates from which to import.
    # - overwrite boolean The boolean indicating whether we should overwrite the certificate files on		 disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.

    ##
    # Imports/installs the specified certificates from the given PEM-formatted data.
    # :method: certificate_import_from_pem
    # :call-seq:
    # certificate_import_from_pem(mode ,cert_ids ,pem_data ,overwrite)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - cert_ids String[] The string identifications of the certificates to import/install.
    # - pem_data String[] The PEM-formatted data associated with the specified certificates.
    # - overwrite boolean The boolean indicating whether we should overwrite the certificate files		 on disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.

    ##
    # Deletes the specified CSRs.
    # :method: certificate_request_delete
    # :call-seq:
    # certificate_request_delete(mode ,csr_ids)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - csr_ids String[] The certificate requests to delete.

    ##
    # Exports the specified certificate requests to the given files.
    # :method: certificate_request_export_to_file
    # :call-seq:
    # certificate_request_export_to_file(mode ,csr_ids ,file_names ,overwrite)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - csr_ids String[] The string identifications of the certificate requests to export.
    # - file_names String[] The files associated with the specified certificates to export to.
    # - overwrite boolean The boolean indicating whether we should overwrite the certificate files on		 disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.

    ##
    # Exports the specified certificate requests to PEM-formatted data.
    # :method: certificate_request_export_to_pem
    # :call-seq:
    # certificate_request_export_to_pem(mode ,csr_ids)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - csr_ids String[] The string identifications of the certificate requests to export.

    ##
    # Generates the specified certificate signing requests. This assumes that each of the
    # associated keys, having the same identification as each certificate request, has
    # already been created.
    # :method: certificate_request_generate
    # :call-seq:
    # certificate_request_generate(mode ,csrs ,x509_data ,overwrite)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - csrs CertificateRequest[] The certificate requests to generate.
    # - x509_data X509Data[] The x509 data associated with the specified certificate requests.
    # - overwrite boolean The boolean indicating whether we should overwrite the CSR files		 on disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.

    ##
    # Imports/installs the specified certificate requests from the given files.
    # :method: certificate_request_import_from_file
    # :call-seq:
    # certificate_request_import_from_file(mode ,csr_ids ,file_names ,overwrite)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - csr_ids String[] The string identifications of the certificate requests to import/install.
    # - file_names String[] The files associated with the specified certificate requests from which to import.
    # - overwrite boolean The boolean indicating whether we should overwrite the certificate files on		 disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.

    ##
    # Imports/installs the specified certificate requests from the given PEM-formatted
    # data.
    # :method: certificate_request_import_from_pem
    # :call-seq:
    # certificate_request_import_from_pem(mode ,csr_ids ,pem_data ,overwrite)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - csr_ids String[] The string identifications of the certificate requests to import/install.
    # - pem_data String[] The PEM-formatted data associated with the specified certificates.
    # - overwrite boolean The boolean indicating whether we should overwrite the certificate request files		 on disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.

    ##
    # Exports all currently installed keys and certificates into the specified archive
    # file. The archive file is a .tgz file that will contain all keys and certificates.
    # :method: export_all_to_archive_file
    # :call-seq:
    # export_all_to_archive_file(mode ,archive_location ,archive_name)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - archive_location String The location of the archive file.
    # - archive_name String The archive file name.

    ##
    # Exports all currently installed keys and certificates into the returned archive stream.
    # The returned archive stream is basically the contents of a .tgz file that contains
    # all keys and certificates.
    # :method: export_all_to_archive_stream
    # :call-seq:
    # export_all_to_archive_stream(mode)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.

    ##
    # Exports the specified keys and certificates into the specified archive file. The
    # archive file is a .tgz file that will contain only the specified keys and certificates
    # that have been exported.
    # :method: export_to_archive_file
    # :call-seq:
    # export_to_archive_file(mode ,archive_location ,archive_name ,keys ,certs)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - archive_location String The location of the archive file.
    # - archive_name String The archive file name.
    # - keys String[] The string identifications of the keys to be exported.
    # - certs String[] The string identifications of the certificates to be exported.

    ##
    # Exports the specified keys and certificates into the returned archive stream. The
    # returned archive stream is basically the contents of a .tgz file that contains the
    # exported keys and certificates.
    # :method: export_to_archive_stream
    # :call-seq:
    # export_to_archive_stream(mode ,keys ,certs)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - keys String[] The string identifications of the keys to be exported.
    # - certs String[] The string identifications of the certificates to be exported.

    ##
    # Gets the list of all certificates bundled in the certificate files as specified by
    # the file_names. Each file_name will contain multiple certficates. Note: only call
    # this method when the results of get_certificate_list indicate that there are multiple
    # certificated bundled in a particular file.
    # :method: get_certificate_bundle
    # :call-seq:
    # get_certificate_bundle(mode ,file_names)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - file_names String[] The file names of the certificate bundles.

    ##
    # Gets the list of all installed certificates and their information. If there's a certificate
    # bundle, only the first certificate in the bundle is returned, and and is_bundle flag
    # will be set to true for the correponding bundle file name.
    # :method: get_certificate_list
    # :call-seq:
    # get_certificate_list(mode)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.

    ##
    # Gets the list of all CSRs and their information.
    # :method: get_certificate_request_list
    # :call-seq:
    # get_certificate_request_list(mode)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.

    ##
    # Gets the list of all installed keys and their information.
    # :method: get_key_list
    # :call-seq:
    # get_key_list(mode)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Imports/installs all keys and certificates from the specified archive file. The archive
    # file should be a .tgz file that contains all keys and certificates.
    # :method: import_all_from_archive_file
    # :call-seq:
    # import_all_from_archive_file(mode ,archive_location ,archive_name)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - archive_location String The location of the archive file.
    # - archive_name String The archive file name.

    ##
    # Imports/installs all keys and certificates from the incoming archive stream. The
    # archive stream should be the contents of a .tgz file that contains all keys and certificates.
    # :method: import_all_from_archive_stream
    # :call-seq:
    # import_all_from_archive_stream(mode ,archive_stream)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - archive_stream char[] The archive stream from which to import keys and certificates.

    ##
    # Imports/installs the specified keys and certificates from the specified archive file.
    # The archive file should be a .tgz file that may contain more keys and certificates
    # than what will be imported/installed.
    # :method: import_from_archive_file
    # :call-seq:
    # import_from_archive_file(mode ,archive_location ,archive_name ,keys ,certs)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - archive_location String The location of the archive file.
    # - archive_name String The archive file name.
    # - keys String[] The string identifications of the keys to be imported/installed.
    # - certs String[] The string identifications of the certificates to be imported/installed.

    ##
    # Imports/installs the specified keys and certificates from the incoming archive stream.
    # The archive stream should be the contents of a .tgz file that may contain more keys
    # and certificates than what will be imported/installed.
    # :method: import_from_archive_stream
    # :call-seq:
    # import_from_archive_stream(mode ,archive_stream ,keys ,certs)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - archive_stream char[] The archive stream from which to import keys and certificates.
    # - keys String[] The string identifications of the keys to be imported/installed.
    # - certs String[] The string identifications of the certificates to be imported/installed.

    ##
    # Checks to see if the device supports FIPS security.
    # :method: is_fips_available
    # :call-seq:
    # is_fips_available(mode)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.

    ##
    # Deletes/uninstalls the specified keys.
    # :method: key_delete
    # :call-seq:
    # key_delete(mode ,key_ids)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - key_ids String[] The string identifications of the keys to delete/uninstall.

    ##
    # Exports the specified keys to the given files.
    # :method: key_export_to_file
    # :call-seq:
    # key_export_to_file(mode ,key_ids ,file_names ,overwrite)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - key_ids String[] The string identifications of the keys to export.
    # - file_names String[] The files associated with the specified keys to export to.
    # - overwrite boolean The boolean indicating whether we should overwrite the key files on		 disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.

    ##
    # Exports the specified keys to PEM-formatted data.
    # :method: key_export_to_pem
    # :call-seq:
    # key_export_to_pem(mode ,key_ids)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - key_ids String[] The string identifications of the keys to export.

    ##
    # Generates the specified keys.
    # :method: key_generate
    # :call-seq:
    # key_generate(mode ,keys ,x509_data ,create_optional_cert_csr ,overwrite)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - keys Key[] The keys to generate.
    # - x509_data X509Data[] The x509 data associated with the specified keys.
    # - create_optional_cert_csr boolean The boolean indicating whether we should optionally create				 the associated certificate and certificate request (CSR).
    # - overwrite boolean The boolean indicating whether we should overwrite the key files on		 disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.

    ##
    # Imports/installs the specified keys from the given files.
    # :method: key_import_from_file
    # :call-seq:
    # key_import_from_file(mode ,key_ids ,file_names ,overwrite)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - key_ids String[] The string identifications of the keys to import/install.
    # - file_names String[] The key files associated with the specified keys from which to import.
    # - overwrite boolean The boolean indicating whether we should overwrite the key files on		 disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.

    ##
    # Imports/installs the specified keys from the given PEM-formatted data.
    # :method: key_import_from_pem
    # :call-seq:
    # key_import_from_pem(mode ,key_ids ,pem_data ,overwrite)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - key_ids String[] The string identifications of the keys to import/install.
    # - pem_data String[] The PEM-formatted data associated with the specified keys.
    # - overwrite boolean The boolean indicating whether we should overwrite the key files on		 disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.

    ##
    # Converts the specified keys to FIPS-enabled keys.
    # :method: key_to_fips
    # :call-seq:
    # key_to_fips(mode ,key_ids)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - key_ids String[] The string identifications of the keys to convert.

    ##
    # Imports/installs the specified pkcs12 (Public Key Cryptography Standard #12) information
    # from the given files. This includes keys and certificates, and each file is optionally
    # password-encrypted.
    # :method: pkcs12_import_from_file
    # :call-seq:
    # pkcs12_import_from_file(mode ,ids ,file_names ,passwords ,overwrite)
    #
    # Parameters:
    # - mode ManagementModeType The key/cert management mode.
    # - ids String[] The string identifications of the keys & certificates to import/install.
    # - file_names String[] The files from which to import.
    # - passwords String[] The passwords associated with the specified files (empty string means no password).
    # - overwrite boolean The boolean indicating whether we should overwrite the key & certificate files on		 disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.


  end
end
