module IControl::System
  ##
  # The ConfigSync interface enables you to work with configuration files. For example,
  # use the ConfigSync interface to retrieve a configuration file list, roll up and save
  # a specified configuration, install a configuration on a device, synchronize configuration
  # setups, roll back a configuration, and upload or download a configuration.
  class ConfigSync < IControl::Base

    set_id_name "filename"

    class ConfigFileEntry < IControl::Base::Struct; end
    class FileTransferContext < IControl::Base::Struct; end
    class ConfigExcludeComponentSequence < IControl::Base::Sequence ; end
    class ConfigFileSequence < IControl::Base::Sequence ; end
    class ConfigIncludeComponentSequence < IControl::Base::Sequence ; end
    # An enumeration of excluded component flags used in configuration save.
    class ConfigExcludeComponent < IControl::Base::Enumeration; end
    # An enumeration of included component flags used in configuration save.
    class ConfigIncludeComponent < IControl::Base::Enumeration; end
    # An enumeration that indicates different loading modes.
    class LoadMode < IControl::Base::Enumeration; end
    # An enumeration of save flags used in configuration save.
    class SaveMode < IControl::Base::Enumeration; end
    # An enumeration of synchronization flags used in configuration sync.
    class SyncMode < IControl::Base::Enumeration; end    ##
    # Deletes this configuration from the archive directory. If this file doesn't exist,
    # an exception will be raised. The specified configuration should not contain any path
    # information since it is restricted to be in the archive directory. NOTE: File names
    # containing the following characters will be considered invalid: ` ~ / \ : ; * ? &amp;quot;
    # &amp;lt; &amp;gt; | &amp;amp;
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_configuration
      super
    end

    ##
    # Deletes this file from the device. If this file doesn't exist, an exception will
    # be raised. NOTE: File names containing the following characters will be considered
    # invalid: ` ~ \ : ; * ? &amp;quot; &amp;lt; &amp;gt; | &amp;amp;
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_file
      super
    end

    ##
    # Downloads the configurations from the device.
    # @rspec_example
    # @return [FileTransferContext]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :config_name The name of the configuration file to be retrieved from the device. Length limit: 255.		 The configuration name should not include any path information, since it will		 be retrieved automatically from a designated directory.
    # @option opts [long] :chunk_size The chunk/block size of the file data to read from the device.
    # @option opts [long] :file_offset The file offset that indicates where to read the next chunk of file data from.
    def download_configuration(opts)
      check_params(opts,[:config_name,:chunk_size,:file_offset])
      super
    end

    ##
    # A generic file download mechanism to download a file from the device.
    # @rspec_example
    # @return [FileTransferContext]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :file_name The name of the file to be retrieved from the device. Length limit: 255.
    # @option opts [long] :chunk_size The chunk/block size of the file data to read from the device.
    # @option opts [long] :file_offset The file offset that indicates where to read the next chunk of file data from.
    def download_file(opts)
      check_params(opts,[:file_name,:chunk_size,:file_offset])
      super
    end

    ##
    # Gets a list of all available configuration archives on the system.
    # @rspec_example
    # @return [ConfigFileEntry]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def configuration_list
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
    # Installs the configurations contained in this archive to the local device using the
    # &amp;apos;all' flag.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def install_all_configuration
      super
    end

    ##
    # Installs the encrypted configurations contained in this archive to the local device
    # using the &amp;apos;all' flag. If this archive is not already encrypted, then the
    # passphrase is ignored, and installation will take place as normal.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :passphrase The passphrase used to decrypt the archive so we can install it.
    def install_all_encrypted_configuration(opts)
      check_params(opts,[:passphrase])
      super
    end

    ##
    # Installs the configurations contained in this archive to the local device.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def install_configuration
      super
    end

    ##
    # Installs the encrypted configurations contained in this archive to the local device.
    # If this archive is not already encrypted, then the passphrase is ignored, and installation
    # will take place as normal.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :passphrase The passphrase used to decrypt the archive so we can install it.
    def install_encrypted_configuration(opts)
      check_params(opts,[:passphrase])
      super
    end

    ##
    # Load this configuration. If this configuration in &amp;quot;filenam" is empty, then
    # by default, /config/bigip.conf will be loaded if the &amp;quot;load_flag" is LOAD_HIGH_LEVEL_CONFIG,
    # and /config/bigip_base.conf will be loaded if the &amp;quot;load_flag" is LOAD_BASE_LEVEL_CONFIG.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::System::ConfigSync::LoadMode] :load_flag The flag specifying the type of load to perform.
    def load_configuration(opts)
      check_params(opts,[:load_flag])
      super
    end

    ##
    # A generic file move mechanism to move files on a device. This call does a rename
    # of the file and will not work across filesystem boundaries.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :from_path The full path of the file to be moved.
    # @option opts [String] :to_path The full path for the file to moved to.
    def move_file(opts)
      check_params(opts,[:from_path,:to_path])
      super
    end

    ##
    # Rolls back to the previous configuration.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def rollback_configuration
      super
    end

    ##
    # Saves the current configurations to this archive. If the &amp;quot;save_flag" is
    # either SAVE_HIGH_LEVEL_CONFIG or SAVE_BASE_LEVEL_CONFIG, this filenam will be ignored,
    # since by default, configuration will be saved into /config/bigip.conf or /config/bigip_base.conf
    # respectively.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::System::ConfigSync::SaveMode] :save_flag The flag specifying the type of save to perform.
    def save_configuration(opts)
      check_params(opts,[:save_flag])
      super
    end

    ##
    # Saves and encrypts the current configurations to this archive. This method is used
    # to save whole configuration archive, not just what's in bigip.conf or bigip_base.conf.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :passphrase The passphrase used to encrypt the saved archive.
    def save_encrypted_configuration(opts)
      check_params(opts,[:passphrase])
      super
    end

    ##
    # Saves the current configurations to this archive. If the &amp;quot;save_flag" is
    # either SAVE_HIGH_LEVEL_CONFIG or SAVE_BASE_LEVEL_CONFIG, this filenam will be ignored,
    # since by default, configuration will be saved into /config/bigip.conf or /config/bigip_base.conf
    # respectively. If any &amp;quot;features_to_exclude" components are specified, those
    # components are excluded from the configuration. If any &amp;quot;features_to_include"
    # components are specified, those components are included from the configuration. Note
    # that feature inclusion/exclusion will only work when the save flag is &amp;quot;SAVE_FULL".
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::System::ConfigSync::SaveMode] :save_flag The flag specifying the type of save to perform.
    # @option opts [IControl::System::ConfigSync::ConfigExcludeComponent] :features_to_exclude standard features to be excluded from saved configuration
    # @option opts [IControl::System::ConfigSync::ConfigIncludeComponent] :features_to_include non-standard features to be included in the saved configuration
    def save_partial_configuration(opts)
      check_params(opts,[:save_flag,:features_to_exclude,:features_to_include])
      super
    end

    ##
    # Saves and encrypts the current configurations to this archive. This method is used
    # to save whole configuration archive, not just what's in bigip.conf or bigip_base.conf.
    # If any &amp;quot;features_to_exclude" components are specified, those components
    # are excluded from the configuration. If any &amp;quot;features_to_include" components
    # are specified, those components are included from the configuration. Note that feature
    # inclusion/exclusion will only work when the save flag is &amp;quot;SAVE_FULL".
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :passphrase The passphrase used to encrypt the saved archive.
    # @option opts [IControl::System::ConfigSync::ConfigExcludeComponent] :features_to_exclude standard features to be excluded from saved configuration
    # @option opts [IControl::System::ConfigSync::ConfigIncludeComponent] :features_to_include non-standard features to be included in the saved configuration
    def save_partial_encrypted_configuration(opts)
      check_params(opts,[:passphrase,:features_to_exclude,:features_to_include])
      super
    end

    ##
    # Synchronizes the configurations between the two devices in a redundant system. In
    # the case of cache devices, synchronizes the configurations across the cluster.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::System::ConfigSync::SyncMode] :sync_flag The mode of synchronization between the devices.
    def synchronize_configuration(opts)
      check_params(opts,[:sync_flag])
      super
    end

    ##
    # Uploads the configurations to the device.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :config_name The name of the configuration archive to be saved on the device. Length limit: 255.		 The configuration name should not include any path information, since it will		 be saved automatically to a designated directory.		 The file chunk size is implicitly known by calculating the length of		 the contents of the configuration data ( see file_data parameter) being uploaded.
    # @option opts [IControl::System::ConfigSync::FileTransferContext] :file_context The context of the transfer operation.
    def upload_configuration(opts)
      check_params(opts,[:config_name,:file_context])
      super
    end

    ##
    # A generic file upload mechanism to transfer a file to the device.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :file_name The name of the file to be saved on the device. Length limit: 255.		 The file chunk size is implicitly known by calculating the length of		 the contents of the file data ( see file_data parameter) being uploaded.
    # @option opts [IControl::System::ConfigSync::FileTransferContext] :file_context The context of the transfer operation.
    def upload_file(opts)
      check_params(opts,[:file_name,:file_context])
      super
    end

    ##
    # A struct that describes a configuration file entry.
    # @attr [String] file_name The configuration file name. its length limit is 255
    # @attr [String] file_datetime The creation date/time string associated with the configuration file.
    class ConfigFileEntry < IControl::Base::Struct
      icontrol_attribute :file_name, String
      icontrol_attribute :file_datetime, String
    end

    ##
    # A struct that describes a file transfer context.
    # @attr [StringSequence] file_data The actual file content for the transfer operation.
    # @attr [IControl::Common::FileChainType] chain_type The flag used to indicate whether this is FIRST, MIDDLE, or LAST chunk of the file data.
    class FileTransferContext < IControl::Base::Struct
      icontrol_attribute :file_data, StringSequence
      icontrol_attribute :chain_type, IControl::Common::FileChainType
    end


    ## A sequence of excluded configuration components.
    class ConfigExcludeComponentSequence < IControl::Base::Sequence ; end
    ## A sequence of configuration files.
    class ConfigFileSequence < IControl::Base::Sequence ; end
    ## A sequence of included configuration components.
    class ConfigIncludeComponentSequence < IControl::Base::Sequence ; end
    # An enumeration of excluded component flags used in configuration save.
    class ConfigExcludeComponent < IControl::Base::Enumeration
      # used to exclude private keys from the saved configuration
      CONFIG_EXCLUDE_PRIVATE_KEYS = :CONFIG_EXCLUDE_PRIVATE_KEYS
    end


    # An enumeration of included component flags used in configuration save.
    class ConfigIncludeComponent < IControl::Base::Enumeration
      # used to include EM ISO images in the saved configuration
      CONFIG_INCLUDE_EM_IMAGES = :CONFIG_INCLUDE_EM_IMAGES
    end


    # An enumeration that indicates different loading modes.
    class LoadMode < IControl::Base::Enumeration
      # Load the high-level configuration, such as objects in /config/bigip.conf.
      LOAD_HIGH_LEVEL_CONFIG = :LOAD_HIGH_LEVEL_CONFIG
      # Load the base configuration ( VLANs , self IPs ...).
      LOAD_BASE_LEVEL_CONFIG = :LOAD_BASE_LEVEL_CONFIG
    end


    # An enumeration of save flags used in configuration save.
    class SaveMode < IControl::Base::Enumeration
      # Saves a complete configuration that can be used to set up a device from scratch.		 This mode is used to save a configuration that can be used in a configsync process.		 The filename specified when used with this mode should NOT have any path information,		 since the file will be restricted to a specific directory used in configsync. If the		 specified file does not end with the ".ucs" suffix, a ".ucs" will be automatically		 appended to the file.
      SAVE_FULL = :SAVE_FULL
      # Saves only the high-level configuration (virtual servers, pools,				 members, monitors...). The filename specified when used with this				 mode will be ignored, since configuration will be saved to				 /config/bigip.conf by default.
      SAVE_HIGH_LEVEL_CONFIG = :SAVE_HIGH_LEVEL_CONFIG
      # Saves only the base configuration ( VLANs , self IPs ...). The filename				 specified when used with this mode will be ignored, since configuration				 will be saved to /config/bigip_base.conf by default.
      SAVE_BASE_LEVEL_CONFIG = :SAVE_BASE_LEVEL_CONFIG
    end


    # An enumeration of synchronization flags used in configuration sync.
    class SyncMode < IControl::Base::Enumeration
      # Synchronizes only basic configuration, such as /config/bigip.conf.
      CONFIGSYNC_BASIC = :CONFIGSYNC_BASIC
      # Synchronizes all common files in /config, all common files in /etc,			 all common BIG/db keys, and any other information deemed necessary			 for a complete system configuration.
      CONFIGSYNC_ALL = :CONFIGSYNC_ALL
    end


  end
end
