module IControl::Management
  ##
  # The LicenseAdministration interface exposes methods that enable you to authorize the system, either manually or in an automated fashion. This interface allows you to generate license files, install previously generated licenses, and view other licensing characteristics.
  class LicenseAdministration < IControl::Base

    set_id_name "modules"

    class EvaluationExpiration < IControl::Base::Struct; end
    class ModuleExpiry < IControl::Base::Struct; end
    class ModuleKey < IControl::Base::Struct; end
    class ModuleKeyTimeLimits < IControl::Base::Struct; end
    class TimeLimitedModuleKey < IControl::Base::Struct; end    ##
    # Checks to see if this registration keys will pass the CRC validation.
    # @return [boolean]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :registration_keys The list of registration keys to do a CRC check.
    def check_registration_key_crc(opts)
      check_params(opts,[:registration_keys])
      super
    end

    ##
    # Retrieves the copyright file.
    # @return [char]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def copyright_file
      super
    end

    ##
    # Retrieves the EULA agreement file.
    # @return [char]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def eula_file
      super
    end

    ##
    # Gets information on when the evaluation license will expire.
    # @return [EvaluationExpiration]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def evaluation_license_expiration
      super
    end

    ##
    # Checks to see whether the device has been licensed.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def license_activation_status
      super
    end

    ##
    # Retrieves the active license file.
    # @return [char]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def license_file
      super
    end

    ##
    # Gets information indicating whether the given module are enabled in the license. Caution! This enabled state is what is specified in the license for the module without regard for whether the module is provisionable or provisioned under this hardware and configuration. See the Provision interface.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def module_enabled_state
      super
    end

    ##
    # Gets information about expiry of the given module. Caution! The expiry information does not indicate whether a module is provisionable or provisioned. See the Provision interface. Note: This returns the enabled state as well. When getting the module expiry information, we suggest making use of the enabled state returned here rather than getting enabled state separately.
    # @return [ModuleExpiry]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def module_expiry
      super
    end

    ##
    # Gets the module keys used to license the device, including descriptive information about them. You will get active and inactive keys (and the record has a field describing whether it is active). See also get_time_limited_module_keys.
    # @return [ModuleKey]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def module_keys
      super
    end

    ##
    # Gets the list of registration keys used to license the device. This returns the base key first, then add-on keys. As of v10.0.0, there are new add-on keys that are time limited; with this method you can tell they are there but not when they expire. If that matters, you should use the newer method get_time_limited_module_keys. All of the keys returned are active keys.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def registration_keys
      super
    end

    ##
    # Gets the kernel dossier based on this registration keys.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :registration_keys The list of registration keys used to get the kernel dossier.
    def system_dossier(opts)
      check_params(opts,[:registration_keys])
      super
    end

    ##
    # Gets the time limited module keys used to license the device, including descriptive information about them. You will get active and inactive keys (and the record has a field describing whether it is active).
    # @return [TimeLimitedModuleKey]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def time_limited_module_keys
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Installs and authorizes the device using this stream of license file data.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [char] :license_file_data The license file data.
    def install_license(opts)
      check_params(opts,[:license_file_data])
      super
    end

    ##
    # Installs and authorizes the device using this license file somewhere on the device.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :license_file The license file location.
    def install_license_from_file(opts)
      check_params(opts,[:license_file])
      super
    end

    ##
    # Checks to see whether the device is running with an evaluation license.
    # @return [boolean]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def is_evaluation_license
      super
    end

    ##
    # A struct that describes an evaluation license expiration date.
    # @attr [Numeric] current_system_time The current system time.
    # @attr [Numeric] evaluation_start The time when the evaluation takes effect.
    # @attr [Numeric] evaluation_expire The time when the evaluation expires.
    class EvaluationExpiration < IControl::Base::Struct
      icontrol_attribute :current_system_time, Numeric
      icontrol_attribute :evaluation_start, Numeric
      icontrol_attribute :evaluation_expire, Numeric
    end

    ##
    # A struct that describes expiry information for a module.
    # @attr [IControl::Common::EnabledState] enabled A boolean indicating whether the module is enabled.
    # @attr [Object] expires A boolean indicating whether the module expires.
    # @attr [Numeric] expiry_time The time at which the modules expires (valid only if expires is true).
    class ModuleExpiry < IControl::Base::Struct
      icontrol_attribute :enabled, IControl::Common::EnabledState
      icontrol_attribute :expires, Object
      icontrol_attribute :expiry_time, Numeric
    end

    ##
    # A struct that describes a module key. Note: description fields in this structure are for information only and content in them is not guaranteed to remain constant. The primary programmatic use of this structure is to obtain license keys.
    # @attr [String] description A description of the module.
    # @attr [String] key The license key.
    # @attr [String] child_description A sequence of strings giving child module descriptions.
    # @attr [Object] active The key status (active or inactive).
    class ModuleKey < IControl::Base::Struct
      icontrol_attribute :description, String
      icontrol_attribute :key, String
      icontrol_attribute :child_description, String
      icontrol_attribute :active, Object
    end

    ##
    # A struct that describes time limits for a module key.
    # @attr [Numeric] current_system_time The current system time.
    # @attr [Numeric] start_time The start time for the module key.
    # @attr [Numeric] end_time The end time for the module key.
    class ModuleKeyTimeLimits < IControl::Base::Struct
      icontrol_attribute :current_system_time, Numeric
      icontrol_attribute :start_time, Numeric
      icontrol_attribute :end_time, Numeric
    end

    ##
    # A struct that describes a time limited module key. Note: description fields in this structure are for information only and content in them is not guaranteed to remain constant. The primary programmatic use of this structure is to obtain license keys.
    # @attr [String] description A description of the module.
    # @attr [String] key The license key.
    # @attr [IControl::Management::LicenseAdministration::ModuleKeyTimeLimits] limits The time limits for the module key.
    # @attr [Object] active The key status (active or inactive).
    class TimeLimitedModuleKey < IControl::Base::Struct
      icontrol_attribute :description, String
      icontrol_attribute :key, String
      icontrol_attribute :limits, IControl::Management::LicenseAdministration::ModuleKeyTimeLimits
      icontrol_attribute :active, Object
    end


    ## A sequence of module expiry items.
    class ModuleExpirySequence < IControl::Base::Sequence ; end
    ## A sequence of module keys.
    class ModuleKeySequence < IControl::Base::Sequence ; end
    ## A sequence of time limited module keys.
    class TimeLimitedModuleKeySequence < IControl::Base::Sequence ; end
  end
end
