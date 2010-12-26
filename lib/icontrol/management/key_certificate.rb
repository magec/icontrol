module IControl::Management
  ##
  # The KeyCertificate interface exposes methods that enable you to manage keys, certificates, and certificate requests. All methods in this interface are atomic operations, such that each operation involves creating a session context with the key/certificate management library, performing the required action, and cleaning up and/or destroying the session context when completed. Therefore, all operations are stateless. Note that all operations on keys, certificates, and certificate requests are performed in the directory location containing keys, certs, csr's... as structured for Apache, which is currently /config/ssl. For archiving operations, you have the option of exporting or importing archives to/from other locations. If the location is not specified, the default location of /config/ssl will be used.
  class KeyCertificate < IControl::Base

    set_id_name "mode"

    class Certificate < IControl::Base::Struct; end
    class CertificateDetail < IControl::Base::Struct; end
    class CertificateInformation < IControl::Base::Struct; end
    class CertificateRequest < IControl::Base::Struct; end
    class CertificateRequestInformation < IControl::Base::Struct; end
    class Key < IControl::Base::Struct; end
    class KeyInformation < IControl::Base::Struct; end
    class X509Data < IControl::Base::Struct; end
    # An enumerated type that will describe the certificate type.
    class CertificateType < IControl::Base::Enumeration; end
    # An enumerated type that will describe the key type being used in the key/certificate.
    class KeyType < IControl::Base::Enumeration; end
    # An enumerated type that will describe what mode of key/cert management to use.
    class ManagementModeType < IControl::Base::Enumeration; end
    # An enumerated type that will describe the security type being used in the key. You can use this enumeration when creating the key to indicate whether you are creating a normal key, or FIPS-enabled key.
    class SecurityType < IControl::Base::Enumeration; end
    # An enumerated type that will describe the validity of the certificates.
    class ValidityType < IControl::Base::Enumeration; end    ##
    # Adds certificates identified by &amp;quot;certificate_files" to the certificate bundles, which are presumed to exist already. Each of the original certificate bundle can theoretically be a normal certificate, i.e. a certificate bundle of one. After the add operation, the bundles will contain more than one certificate.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :cert_ids The existing certificate bundles to which additional certificates will be added.
    # @option opts [String] :certificate_files The file names of the certificates to add to the bundles.
    def certificate_add_file_to_bundle(opts)
      check_params(opts,[:cert_ids,:certificate_files])
      super
    end

    ##
    # Adds certificates identified by &amp;quot;pem_data" to the certificate bundles, which are presumed to exist already. Each of the original certificate bundle can theoretically be a normal certificate, i.e. a certificate bundle of one. After the add operation, the bundles will contain more than one certificate.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :cert_ids The existing certificate bundles to which additional certificates will be added.
    # @option opts [String] :pem_data The PEM formatted data of the certificates to add to the bundles.
    def certificate_add_pem_to_bundle(opts)
      check_params(opts,[:cert_ids,:pem_data])
      super
    end

    ##
    # Binds/associates this keys and certificates.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :cert_ids The string identifications of the certificates.
    # @option opts [String] :key_ids The string identifications of the keys
    def certificate_bind(opts)
      check_params(opts,[:cert_ids,:key_ids])
      super
    end

    ##
    # Gets the validity of this certificates.
    # @return [ValidityType]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :cert_ids The string identifications of the certificates to check for validity.
    # @option opts [long] :watermark_days The watermarks in number of days to use in checking the validity.
    def certificate_check_validity(opts)
      check_params(opts,[:cert_ids,:watermark_days])
      super
    end

    ##
    # Deletes/uninstalls this certificates.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :cert_ids The string identifications of the certificates to delete/uninstall.
    def certificate_delete(opts)
      check_params(opts,[:cert_ids])
      super
    end

    ##
    # Deletes certificates, identified by their subject's X509 data, from the certificate bundles. If the last certificate has been deleted from the bundle, the certificate file will automatically be deleted.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :cert_ids The existing certificate bundles from which certificates will be removed.
    # @option opts [IControl::Management::KeyCertificate::X509Data] :x509_data The X509 data of the subjects of the certificates to be deleted from the bundle.
    def certificate_delete_from_bundle(opts)
      check_params(opts,[:cert_ids,:x509_data])
      super
    end

    ##
    # Exports this certificates to the given files.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :cert_ids The string identifications of the certificates to export.
    # @option opts [String] :file_names The files associated with the specified certificates to export to.
    # @option opts [boolean] :overwrite The boolean indicating whether we should overwrite the certificate files on		 disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.
    def certificate_export_to_file(opts)
      check_params(opts,[:cert_ids,:file_names,:overwrite])
      super
    end

    ##
    # Exports this certificates to PEM-formatted data.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :cert_ids The string identifications of the certificates to export.
    def certificate_export_to_pem(opts)
      check_params(opts,[:cert_ids])
      super
    end

    ##
    # Generates this certificates. This assumes that each of the associated keys, having the same identification as each certificate, has already been created.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::KeyCertificate::Certificate] :certs The certificates to generate.
    # @option opts [IControl::Management::KeyCertificate::X509Data] :x509_data The x509 data associated with the specified certificates.
    # @option opts [long] :lifetime_days The number of days the certificates will be valid.
    # @option opts [boolean] :overwrite The boolean indicating whether we should overwrite the certificate files		 on disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.
    def certificate_generate(opts)
      check_params(opts,[:certs,:x509_data,:lifetime_days,:overwrite])
      super
    end

    ##
    # Imports/installs this certificates from the given files.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :cert_ids The string identifications of the certificates to import/install.
    # @option opts [String] :file_names The certificate files associated with the specified certificates from which to import.
    # @option opts [boolean] :overwrite The boolean indicating whether we should overwrite the certificate files on		 disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.
    def certificate_import_from_file(opts)
      check_params(opts,[:cert_ids,:file_names,:overwrite])
      super
    end

    ##
    # Imports/installs this certificates from the given PEM-formatted data.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :cert_ids The string identifications of the certificates to import/install.
    # @option opts [String] :pem_data The PEM-formatted data associated with the specified certificates.
    # @option opts [boolean] :overwrite The boolean indicating whether we should overwrite the certificate files		 on disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.
    def certificate_import_from_pem(opts)
      check_params(opts,[:cert_ids,:pem_data,:overwrite])
      super
    end

    ##
    # Deletes this CSRs.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :csr_ids The certificate requests to delete.
    def certificate_request_delete(opts)
      check_params(opts,[:csr_ids])
      super
    end

    ##
    # Exports this certificate requests to the given files.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :csr_ids The string identifications of the certificate requests to export.
    # @option opts [String] :file_names The files associated with the specified certificates to export to.
    # @option opts [boolean] :overwrite The boolean indicating whether we should overwrite the certificate files on		 disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.
    def certificate_request_export_to_file(opts)
      check_params(opts,[:csr_ids,:file_names,:overwrite])
      super
    end

    ##
    # Exports this certificate requests to PEM-formatted data.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :csr_ids The string identifications of the certificate requests to export.
    def certificate_request_export_to_pem(opts)
      check_params(opts,[:csr_ids])
      super
    end

    ##
    # Generates this certificate signing requests. This assumes that each of the associated keys, having the same identification as each certificate request, has already been created.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::KeyCertificate::CertificateRequest] :csrs The certificate requests to generate.
    # @option opts [IControl::Management::KeyCertificate::X509Data] :x509_data The x509 data associated with the specified certificate requests.
    # @option opts [boolean] :overwrite The boolean indicating whether we should overwrite the CSR files		 on disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.
    def certificate_request_generate(opts)
      check_params(opts,[:csrs,:x509_data,:overwrite])
      super
    end

    ##
    # Imports/installs this certificate requests from the given files.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :csr_ids The string identifications of the certificate requests to import/install.
    # @option opts [String] :file_names The files associated with the specified certificate requests from which to import.
    # @option opts [boolean] :overwrite The boolean indicating whether we should overwrite the certificate files on		 disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.
    def certificate_request_import_from_file(opts)
      check_params(opts,[:csr_ids,:file_names,:overwrite])
      super
    end

    ##
    # Imports/installs this certificate requests from the given PEM-formatted data.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :csr_ids The string identifications of the certificate requests to import/install.
    # @option opts [String] :pem_data The PEM-formatted data associated with the specified certificates.
    # @option opts [boolean] :overwrite The boolean indicating whether we should overwrite the certificate request files		 on disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.
    def certificate_request_import_from_pem(opts)
      check_params(opts,[:csr_ids,:pem_data,:overwrite])
      super
    end

    ##
    # Exports all currently installed keys and certificates into this archive file. The archive file is a .tgz file that will contain all keys and certificates.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :archive_location The location of the archive file.
    # @option opts [String] :archive_name The archive file name.
    def export_all_to_archive_file(opts)
      check_params(opts,[:archive_location,:archive_name])
      super
    end

    ##
    # Exports all currently installed keys and certificates into the returned archive stream. The returned archive stream is basically the contents of a .tgz file that contains all keys and certificates.
    # @return [char]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def export_all_to_archive_stream
      super
    end

    ##
    # Exports this keys and certificates into this archive file. The archive file is a .tgz file that will contain only this keys and certificates that have been exported.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :archive_location The location of the archive file.
    # @option opts [String] :archive_name The archive file name.
    # @option opts [String] :keys The string identifications of the keys to be exported.
    # @option opts [String] :certs The string identifications of the certificates to be exported.
    def export_to_archive_file(opts)
      check_params(opts,[:archive_location,:archive_name,:keys,:certs])
      super
    end

    ##
    # Exports this keys and certificates into the returned archive stream. The returned archive stream is basically the contents of a .tgz file that contains the exported keys and certificates.
    # @return [char]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :keys The string identifications of the keys to be exported.
    # @option opts [String] :certs The string identifications of the certificates to be exported.
    def export_to_archive_stream(opts)
      check_params(opts,[:keys,:certs])
      super
    end

    ##
    # Gets the list of all certificates bundled in the certificate files as specified by the file_names. Each file_name will contain multiple certficates. Note: only call this method when the results of get_certificate_list indicate that there are multiple certificated bundled in a particular file.
    # @return [CertificateDetail[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :file_names The file names of the certificate bundles.
    def certificate_bundle(opts)
      check_params(opts,[:file_names])
      super
    end

    ##
    # Gets the list of all installed certificates and their information. If there's a certificate bundle, only the first certificate in the bundle is returned, and and is_bundle flag will be set to true for the correponding bundle file name.
    # @return [CertificateInformation]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def certificate_list
      super
    end

    ##
    # Gets the list of all CSRs and their information.
    # @return [CertificateRequestInformation]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def certificate_request_list
      super
    end

    ##
    # Gets the list of all installed keys and their information.
    # @return [KeyInformation]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def key_list
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Imports/installs all keys and certificates from this archive file. The archive file should be a .tgz file that contains all keys and certificates.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :archive_location The location of the archive file.
    # @option opts [String] :archive_name The archive file name.
    def import_all_from_archive_file(opts)
      check_params(opts,[:archive_location,:archive_name])
      super
    end

    ##
    # Imports/installs all keys and certificates from the incoming archive stream. The archive stream should be the contents of a .tgz file that contains all keys and certificates.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [char] :archive_stream The archive stream from which to import keys and certificates.
    def import_all_from_archive_stream(opts)
      check_params(opts,[:archive_stream])
      super
    end

    ##
    # Imports/installs this keys and certificates from this archive file. The archive file should be a .tgz file that may contain more keys and certificates than what will be imported/installed.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :archive_location The location of the archive file.
    # @option opts [String] :archive_name The archive file name.
    # @option opts [String] :keys The string identifications of the keys to be imported/installed.
    # @option opts [String] :certs The string identifications of the certificates to be imported/installed.
    def import_from_archive_file(opts)
      check_params(opts,[:archive_location,:archive_name,:keys,:certs])
      super
    end

    ##
    # Imports/installs this keys and certificates from the incoming archive stream. The archive stream should be the contents of a .tgz file that may contain more keys and certificates than what will be imported/installed.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [char] :archive_stream The archive stream from which to import keys and certificates.
    # @option opts [String] :keys The string identifications of the keys to be imported/installed.
    # @option opts [String] :certs The string identifications of the certificates to be imported/installed.
    def import_from_archive_stream(opts)
      check_params(opts,[:archive_stream,:keys,:certs])
      super
    end

    ##
    # Checks to see if the device supports FIPS security.
    # @return [boolean]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def is_fips_available
      super
    end

    ##
    # Deletes/uninstalls this keys.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :key_ids The string identifications of the keys to delete/uninstall.
    def key_delete(opts)
      check_params(opts,[:key_ids])
      super
    end

    ##
    # Exports this keys to the given files.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :key_ids The string identifications of the keys to export.
    # @option opts [String] :file_names The files associated with the specified keys to export to.
    # @option opts [boolean] :overwrite The boolean indicating whether we should overwrite the key files on		 disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.
    def key_export_to_file(opts)
      check_params(opts,[:key_ids,:file_names,:overwrite])
      super
    end

    ##
    # Exports this keys to PEM-formatted data.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :key_ids The string identifications of the keys to export.
    def key_export_to_pem(opts)
      check_params(opts,[:key_ids])
      super
    end

    ##
    # Generates this keys.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::KeyCertificate::Key] :keys The keys to generate.
    # @option opts [IControl::Management::KeyCertificate::X509Data] :x509_data The x509 data associated with the specified keys.
    # @option opts [boolean] :create_optional_cert_csr The boolean indicating whether we should optionally create				 the associated certificate and certificate request (CSR).
    # @option opts [boolean] :overwrite The boolean indicating whether we should overwrite the key files on		 disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.
    def key_generate(opts)
      check_params(opts,[:keys,:x509_data,:create_optional_cert_csr,:overwrite])
      super
    end

    ##
    # Imports/installs this keys from the given files.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :key_ids The string identifications of the keys to import/install.
    # @option opts [String] :file_names The key files associated with the specified keys from which to import.
    # @option opts [boolean] :overwrite The boolean indicating whether we should overwrite the key files on		 disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.
    def key_import_from_file(opts)
      check_params(opts,[:key_ids,:file_names,:overwrite])
      super
    end

    ##
    # Imports/installs this keys from the given PEM-formatted data.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :key_ids The string identifications of the keys to import/install.
    # @option opts [String] :pem_data The PEM-formatted data associated with the specified keys.
    # @option opts [boolean] :overwrite The boolean indicating whether we should overwrite the key files on		 disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.
    def key_import_from_pem(opts)
      check_params(opts,[:key_ids,:pem_data,:overwrite])
      super
    end

    ##
    # Converts this keys to FIPS-enabled keys.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :key_ids The string identifications of the keys to convert.
    def key_to_fips(opts)
      check_params(opts,[:key_ids])
      super
    end

    ##
    # Imports/installs this pkcs12 (Public Key Cryptography Standard #12) information from the given files. This includes keys and certificates, and each file is optionally password-encrypted.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :ids The string identifications of the keys & certificates to import/install.
    # @option opts [String] :file_names The files from which to import.
    # @option opts [String] :passwords The passwords associated with the specified files (empty string means no password).
    # @option opts [boolean] :overwrite The boolean indicating whether we should overwrite the key & certificate files on		 disk if they existed. If this parameter is false, and the files already		 exist, then a "Would overwrite" exception will be generated.
    def pkcs12_import_from_file(opts)
      check_params(opts,[:ids,:file_names,:passwords,:overwrite])
      super
    end

    ##
    # A struct that describes the basic information of a certificate, typically used when creating the certificate.
    # @attr [String] id The string identification of this certificate.
    # @attr [String] email The email address of the certificate's owner.
    class Certificate < IControl::Base::Struct
      icontrol_attribute :id, String
      icontrol_attribute :email, String
    end

    ##
    # A struct that describes the detailed information of a certificate.
    # @attr [IControl::Management::KeyCertificate::Certificate] cert_info The basic information of the certificate.
    # @attr [IControl::Management::KeyCertificate::CertificateType] cert_type The certificate type.
    # @attr [IControl::Management::KeyCertificate::KeyType] key_type The key type of the key used when the certificate is created.
    # @attr [Numeric] bit_length The bit length of the key used when the certificate is created.
    # @attr [Numeric] version The version of the certificate.
    # @attr [String] serial_number The serial number of the certificate (if assigned).
    # @attr [String] expiration_string The string representation of the expiration date.
    # @attr [Numeric] expiration_date The numeric representation of the expiration date.
    # @attr [IControl::Management::KeyCertificate::X509Data] subject The x509 data of the certificate's owner.
    # @attr [IControl::Management::KeyCertificate::X509Data] issuer The x509 data of the authority who signs this certificate.
    class CertificateDetail < IControl::Base::Struct
      icontrol_attribute :cert_info, IControl::Management::KeyCertificate::Certificate
      icontrol_attribute :cert_type, IControl::Management::KeyCertificate::CertificateType
      icontrol_attribute :key_type, IControl::Management::KeyCertificate::KeyType
      icontrol_attribute :bit_length, Numeric
      icontrol_attribute :version, Numeric
      icontrol_attribute :serial_number, String
      icontrol_attribute :expiration_string, String
      icontrol_attribute :expiration_date, Numeric
      icontrol_attribute :subject, IControl::Management::KeyCertificate::X509Data
      icontrol_attribute :issuer, IControl::Management::KeyCertificate::X509Data
    end

    ##
    # A struct that describes the full information of a certificate.
    # @attr [Object] is_bundled The flag indicating whether there are multiple certs in this file.
    # @attr [String] file_name The full path/file name of the certificate on disk.
    # @attr [IControl::Management::KeyCertificate::CertificateDetail] certificate The detailed information of the certificate.
    class CertificateInformation < IControl::Base::Struct
      icontrol_attribute :is_bundled, Object
      icontrol_attribute :file_name, String
      icontrol_attribute :certificate, IControl::Management::KeyCertificate::CertificateDetail
    end

    ##
    # A struct that describes the basic information of a certificate request, typically used when creating the certificate request.
    # @attr [String] id The string identification of this certificate request.
    # @attr [String] email The email address of the certificate request's owner.
    # @attr [String] challenge_password The challenge password.
    class CertificateRequest < IControl::Base::Struct
      icontrol_attribute :id, String
      icontrol_attribute :email, String
      icontrol_attribute :challenge_password, String
    end

    ##
    # A struct that describes the full information of a certificate request.
    # @attr [IControl::Management::KeyCertificate::CertificateRequest] csr_info The basic information of the certificate request.
    # @attr [String] title The title of the certificate request.
    # @attr [String] serial_number The serial number of the certificate request (if assigned).
    # @attr [String] file_name The full path/file name of the certificate request on disk.
    # @attr [IControl::Management::KeyCertificate::KeyType] key_type The key type of the key used when the certificate request is created.
    # @attr [Numeric] bit_length The bit length of the key used when the certificate request is created.
    # @attr [IControl::Management::KeyCertificate::X509Data] subject The x509 data of the certificate request's owner.
    class CertificateRequestInformation < IControl::Base::Struct
      icontrol_attribute :csr_info, IControl::Management::KeyCertificate::CertificateRequest
      icontrol_attribute :title, String
      icontrol_attribute :serial_number, String
      icontrol_attribute :file_name, String
      icontrol_attribute :key_type, IControl::Management::KeyCertificate::KeyType
      icontrol_attribute :bit_length, Numeric
      icontrol_attribute :subject, IControl::Management::KeyCertificate::X509Data
    end

    ##
    # A struct that describes the basic information of a key, typically used when creating the key.
    # @attr [String] id The string identification of this key.
    # @attr [IControl::Management::KeyCertificate::KeyType] key_type The key type used by this key.
    # @attr [Numeric] bit_length The bit length used by this key
    # @attr [IControl::Management::KeyCertificate::SecurityType] security The security type used by this key.
    class Key < IControl::Base::Struct
      icontrol_attribute :id, String
      icontrol_attribute :key_type, IControl::Management::KeyCertificate::KeyType
      icontrol_attribute :bit_length, Numeric
      icontrol_attribute :security, IControl::Management::KeyCertificate::SecurityType
    end

    ##
    # A struct that describes the full information of a key, typically returned when querying the key.
    # @attr [IControl::Management::KeyCertificate::Key] key_info The basic information of the key.
    # @attr [String] file_name The full path/file name of the key on disk.
    # @attr [Numeric] flags Reserved for future use.
    class KeyInformation < IControl::Base::Struct
      icontrol_attribute :key_info, IControl::Management::KeyCertificate::Key
      icontrol_attribute :file_name, String
      icontrol_attribute :flags, Numeric
    end

    ##
    # A struct that describes the information of the x509 data that our key/certificate management library will read from or include in a certificate.
    # @attr [String] common_name The common name of the certificate, normally a domain name.
    # @attr [String] country_name The country name.
    # @attr [String] state_name The state name.
    # @attr [String] locality_name The locality or city name.
    # @attr [String] organization_name The organization or company name.
    # @attr [String] division_name The department or division name.
    class X509Data < IControl::Base::Struct
      icontrol_attribute :common_name, String
      icontrol_attribute :country_name, String
      icontrol_attribute :state_name, String
      icontrol_attribute :locality_name, String
      icontrol_attribute :organization_name, String
      icontrol_attribute :division_name, String
    end


    ## A sequence of CertificateDetail structures.
    class CertificateDetailSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of CertificateDetail structures.
    class CertificateDetailSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of CertificateInformation structures.
    class CertificateInformationSequence < IControl::Base::Sequence ; end
    ## A sequence of CertificateRequestInformation structures.
    class CertificateRequestInformationSequence < IControl::Base::Sequence ; end
    ## A sequence of CertificateRequest structures.
    class CertificateRequestSequence < IControl::Base::Sequence ; end
    ## A sequence of Certificate structures.
    class CertificateSequence < IControl::Base::Sequence ; end
    ## A sequence of KeyInformation structures.
    class KeyInformationSequence < IControl::Base::Sequence ; end
    ## A sequence of Key structures.
    class KeySequence < IControl::Base::Sequence ; end
    ## A sequence of ValidityType enumeration.
    class ValidityTypeSequence < IControl::Base::Sequence ; end
    ## A sequence of X509Data structures.
    class X509DataSequence < IControl::Base::Sequence ; end
    # An enumerated type that will describe the certificate type.
    class CertificateType < IControl::Base::Enumeration
      # A CA-signed certificate.
      CTYPE_CA_SIGNED_YES = :CTYPE_CA_SIGNED_YES
      # A certificate signed by others.
      CTYPE_CA_SIGNED_NO = :CTYPE_CA_SIGNED_NO
      # Unknown.
      CTYPE_CA_SIGNED_UNKNOWN = :CTYPE_CA_SIGNED_UNKNOWN
    end


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


    # An enumerated type that will describe the security type being used in the key. You can use this enumeration when creating the key to indicate whether you are creating a normal key, or FIPS-enabled key.
    class SecurityType < IControl::Base::Enumeration
      # A normal key.
      STYPE_NORMAL = :STYPE_NORMAL
      # A FIPS-enabled key.
      STYPE_FIPS = :STYPE_FIPS
      # A Password-encrypted key
      STYPE_PASSWORD = :STYPE_PASSWORD
    end


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


  end
end
