module IControl::System
  ##
  # The ConfigSync interface enables you to work with configuration files. For example,
  # use the ConfigSync interface to retrieve a configuration file list, roll up and save
  # a specified configuration, install a configuration on a device, synchronize configuration
  # setups, roll back a configuration, and upload or download a configuration.
  class ConfigSync < IControl::Base
    class ConfigExcludeComponent < IControl::Base::Enumeration; end
    class ConfigIncludeComponent < IControl::Base::Enumeration; end
    class LoadMode < IControl::Base::Enumeration; end
    class SaveMode < IControl::Base::Enumeration; end
    class SyncMode < IControl::Base::Enumeration; end
    class ConfigFileEntry < IControl::Base::Struct; end
    class FileTransferContext < IControl::Base::Struct; end    ## A sequence of excluded configuration components.
    class ConfigExcludeComponentSequence < IControl::Base::Sequence ; end## A sequence of configuration files.
    class ConfigFileSequence < IControl::Base::Sequence ; end## A sequence of included configuration components.
    class ConfigIncludeComponentSequence < IControl::Base::Sequence ; end##
    # An enumeration of excluded component flags used in configuration save.
    class ConfigExcludeComponent < IControl::Base::Enumeration
      # used to exclude private keys from the saved configuration
      CONFIG_EXCLUDE_PRIVATE_KEYS = :CONFIG_EXCLUDE_PRIVATE_KEYS
    end

    ##
    # An enumeration of included component flags used in configuration save.
    class ConfigIncludeComponent < IControl::Base::Enumeration
      # used to include EM ISO images in the saved configuration
      CONFIG_INCLUDE_EM_IMAGES = :CONFIG_INCLUDE_EM_IMAGES
    end

    ##
    # An enumeration that indicates different loading modes.
    class LoadMode < IControl::Base::Enumeration
      # Load the high-level configuration, such as objects in /config/bigip.conf.
      LOAD_HIGH_LEVEL_CONFIG = :LOAD_HIGH_LEVEL_CONFIG
      # Load the base configuration ( VLANs , self IPs ...).
      LOAD_BASE_LEVEL_CONFIG = :LOAD_BASE_LEVEL_CONFIG
    end

    ##
    # An enumeration of save flags used in configuration save.
    class SaveMode < IControl::Base::Enumeration
      # Saves a complete configuration that can be used to set up a device from scratch.		 This mode is used to save a configuration that can be used in a configsync process.		 The filename specified when used with this mode should NOT have any path information,		 since the file will be restricted to a specific directory used in configsync. If the		 specified file does not end with the ".ucs" suffix, a ".ucs" will be automatically		 appended to the file.
      SAVE_FULL = :SAVE_FULL
      # Saves only the high-level configuration (virtual servers, pools,				 members, monitors...). The filename specified when used with this				 mode will be ignored, since configuration will be saved to				 /config/bigip.conf by default.
      SAVE_HIGH_LEVEL_CONFIG = :SAVE_HIGH_LEVEL_CONFIG
      # Saves only the base configuration ( VLANs , self IPs ...). The filename				 specified when used with this mode will be ignored, since configuration				 will be saved to /config/bigip_base.conf by default.
      SAVE_BASE_LEVEL_CONFIG = :SAVE_BASE_LEVEL_CONFIG
    end

    ##
    # An enumeration of synchronization flags used in configuration sync.
    class SyncMode < IControl::Base::Enumeration
      # Synchronizes only basic configuration, such as /config/bigip.conf.
      CONFIGSYNC_BASIC = :CONFIGSYNC_BASIC
      # Synchronizes all common files in /config, all common files in /etc,			 all common BIG/db keys, and any other information deemed necessary			 for a complete system configuration.
      CONFIGSYNC_ALL = :CONFIGSYNC_ALL
    end

    ##
    # A struct that describes a configuration file entry.
    class ConfigFileEntry < IControl::Base::Struct
      # The configuration file name. its length limit is 255
      icontrol_attribute :file_name, String
      # The creation date/time string associated with the configuration file.
      icontrol_attribute :file_datetime, String
    end

    ##
    # A struct that describes a file transfer context.
    class FileTransferContext < IControl::Base::Struct
      # The actual file content for the transfer operation.
      icontrol_attribute :file_data, StringSequence
      # The flag used to indicate whether this is FIRST, MIDDLE, or LAST chunk of the file
      # data.
      icontrol_attribute :chain_type, IControl::Common::FileChainType
    end

    ##
    # Deletes the specified configuration from the archive directory. If the specified
    # file doesn't exist, an exception will be raised. The specified configuration should
    # not contain any path information since it is restricted to be in the archive directory.
    # NOTE: File names containing the following characters will be considered invalid:
    # ` ~ / \ : ; * ? &amp;quot; &amp;lt; &amp;gt; | &amp;amp;
    # :method: delete_configuration
    # :call-seq:
    # delete_configuration(filename)
    #
    # Parameters:
    # - filename String The archive to be deleted. length limit: 255.

    ##
    # Deletes the specified file from the device. If the specified file doesn't exist,
    # an exception will be raised. NOTE: File names containing the following characters
    # will be considered invalid: ` ~ \ : ; * ? &amp;quot; &amp;lt; &amp;gt; | &amp;amp;
    # :method: delete_file
    # :call-seq:
    # delete_file(filename)
    #
    # Parameters:
    # - filename String The file to be deleted.

    ##
    # Downloads the configurations from the device.
    # :method: download_configuration
    # :call-seq:
    # download_configuration(config_name ,chunk_size ,file_offset)
    #
    # Parameters:
    # - config_name String The name of the configuration file to be retrieved from the device. Length limit: 255.		 The configuration name should not include any path information, since it will		 be retrieved automatically from a designated directory.
    # - chunk_size long The chunk/block size of the file data to read from the device.
    # - file_offset long The file offset that indicates where to read the next chunk of file data from.

    ##
    # A generic file download mechanism to download a file from the device.
    # :method: download_file
    # :call-seq:
    # download_file(file_name ,chunk_size ,file_offset)
    #
    # Parameters:
    # - file_name String The name of the file to be retrieved from the device. Length limit: 255.
    # - chunk_size long The chunk/block size of the file data to read from the device.
    # - file_offset long The file offset that indicates where to read the next chunk of file data from.

    ##
    # Gets a list of all available configuration archives on the system.
    # :method: get_configuration_list

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Installs the configurations contained in the specified archive to the local device
    # using the &amp;apos;all' flag.
    # :method: install_all_configuration
    # :call-seq:
    # install_all_configuration(filename)
    #
    # Parameters:
    # - filename String The file name of the configuration file to install. length limit: 255.

    ##
    # Installs the encrypted configurations contained in the specified archive to the local
    # device using the &amp;apos;all' flag. If the specified archive is not already encrypted,
    # then the passphrase is ignored, and installation will take place as normal.
    # :method: install_all_encrypted_configuration
    # :call-seq:
    # install_all_encrypted_configuration(filename ,passphrase)
    #
    # Parameters:
    # - filename String The file name of the configuration file to install. length limit: 255.
    # - passphrase String The passphrase used to decrypt the archive so we can install it.

    ##
    # Installs the configurations contained in the specified archive to the local device.
    # :method: install_configuration
    # :call-seq:
    # install_configuration(filename)
    #
    # Parameters:
    # - filename String The file name of the configuration file to install. length limit: 255.

    ##
    # Installs the encrypted configurations contained in the specified archive to the local
    # device. If the specified archive is not already encrypted, then the passphrase is
    # ignored, and installation will take place as normal.
    # :method: install_encrypted_configuration
    # :call-seq:
    # install_encrypted_configuration(filename ,passphrase)
    #
    # Parameters:
    # - filename String The file name of the configuration file to install. length limit: 255.
    # - passphrase String The passphrase used to decrypt the archive so we can install it.

    ##
    # Load the specified configuration. If the specified configuration in &amp;quot;filename"
    # is empty, then by default, /config/bigip.conf will be loaded if the &amp;quot;load_flag"
    # is LOAD_HIGH_LEVEL_CONFIG, and /config/bigip_base.conf will be loaded if the &amp;quot;load_flag"
    # is LOAD_BASE_LEVEL_CONFIG.
    # :method: load_configuration
    # :call-seq:
    # load_configuration(filename ,load_flag)
    #
    # Parameters:
    # - filename String The file name of the saved configuration. length limit: 255.
    # - load_flag LoadMode The flag specifying the type of load to perform.

    ##
    # A generic file move mechanism to move files on a device. This call does a rename
    # of the file and will not work across filesystem boundaries.
    # :method: move_file
    # :call-seq:
    # move_file(from_path ,to_path)
    #
    # Parameters:
    # - from_path String The full path of the file to be moved.
    # - to_path String The full path for the file to moved to.

    ##
    # Rolls back to the previous configuration.
    # :method: rollback_configuration

    ##
    # Saves the current configurations to the specified archive. If the &amp;quot;save_flag"
    # is either SAVE_HIGH_LEVEL_CONFIG or SAVE_BASE_LEVEL_CONFIG, the specified filename
    # will be ignored, since by default, configuration will be saved into /config/bigip.conf
    # or /config/bigip_base.conf respectively.
    # :method: save_configuration
    # :call-seq:
    # save_configuration(filename ,save_flag)
    #
    # Parameters:
    # - filename String The file name of the saved configuration file. length limit: 255.
    # - save_flag SaveMode The flag specifying the type of save to perform.

    ##
    # Saves and encrypts the current configurations to the specified archive. This method
    # is used to save whole configuration archive, not just what's in bigip.conf or bigip_base.conf.
    # :method: save_encrypted_configuration
    # :call-seq:
    # save_encrypted_configuration(filename ,passphrase)
    #
    # Parameters:
    # - filename String The file name of the saved configuration archive. length limit: 255.
    # - passphrase String The passphrase used to encrypt the saved archive.

    ##
    # Saves the current configurations to the specified archive. If the &amp;quot;save_flag"
    # is either SAVE_HIGH_LEVEL_CONFIG or SAVE_BASE_LEVEL_CONFIG, the specified filename
    # will be ignored, since by default, configuration will be saved into /config/bigip.conf
    # or /config/bigip_base.conf respectively. If any &amp;quot;features_to_exclude" components
    # are specified, those components are excluded from the configuration. If any &amp;quot;features_to_include"
    # components are specified, those components are included from the configuration. Note
    # that feature inclusion/exclusion will only work when the save flag is &amp;quot;SAVE_FULL".
    # :method: save_partial_configuration
    # :call-seq:
    # save_partial_configuration(filename ,save_flag ,features_to_exclude ,features_to_include)
    #
    # Parameters:
    # - filename String The file name of the saved configuration file. length limit: 255.
    # - save_flag SaveMode The flag specifying the type of save to perform.
    # - features_to_exclude ConfigExcludeComponent[] standard features to be excluded from saved configuration
    # - features_to_include ConfigIncludeComponent[] non-standard features to be included in the saved configuration

    ##
    # Saves and encrypts the current configurations to the specified archive. This method
    # is used to save whole configuration archive, not just what's in bigip.conf or bigip_base.conf.
    # If any &amp;quot;features_to_exclude" components are specified, those components
    # are excluded from the configuration. If any &amp;quot;features_to_include" components
    # are specified, those components are included from the configuration. Note that feature
    # inclusion/exclusion will only work when the save flag is &amp;quot;SAVE_FULL".
    # :method: save_partial_encrypted_configuration
    # :call-seq:
    # save_partial_encrypted_configuration(filename ,passphrase ,features_to_exclude ,features_to_include)
    #
    # Parameters:
    # - filename String The file name of the saved configuration archive. length limit: 255.
    # - passphrase String The passphrase used to encrypt the saved archive.
    # - features_to_exclude ConfigExcludeComponent[] standard features to be excluded from saved configuration
    # - features_to_include ConfigIncludeComponent[] non-standard features to be included in the saved configuration

    ##
    # Synchronizes the configurations between the two devices in a redundant system. In
    # the case of cache devices, synchronizes the configurations across the cluster.
    # :method: synchronize_configuration
    # :call-seq:
    # synchronize_configuration(sync_flag)
    #
    # Parameters:
    # - sync_flag SyncMode The mode of synchronization between the devices.

    ##
    # Uploads the configurations to the device.
    # :method: upload_configuration
    # :call-seq:
    # upload_configuration(config_name ,file_context)
    #
    # Parameters:
    # - config_name String The name of the configuration archive to be saved on the device. Length limit: 255.		 The configuration name should not include any path information, since it will		 be saved automatically to a designated directory.		 The file chunk size is implicitly known by calculating the length of		 the contents of the configuration data ( see file_data parameter) being uploaded.
    # - file_context FileTransferContext The context of the transfer operation.

    ##
    # A generic file upload mechanism to transfer a file to the device.
    # :method: upload_file
    # :call-seq:
    # upload_file(file_name ,file_context)
    #
    # Parameters:
    # - file_name String The name of the file to be saved on the device. Length limit: 255.		 The file chunk size is implicitly known by calculating the length of		 the contents of the file data ( see file_data parameter) being uploaded.
    # - file_context FileTransferContext The context of the transfer operation.


  end
end
