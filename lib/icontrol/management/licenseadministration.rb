module IControl::Management
  ##
  # The LicenseAdministration interface exposes methods that enable you to authorize
  # the system, either manually or in an automated fashion. This interface allows you
  # to generate license files, install previously generated licenses, and view other
  # licensing characteristics.
  class LicenseAdministration < IControl::Base
    class EvaluationExpiration < IControl::Base::Struct; end
    class ModuleExpiry < IControl::Base::Struct; end
    class ModuleKey < IControl::Base::Struct; end
    class ModuleKeyTimeLimits < IControl::Base::Struct; end
    class TimeLimitedModuleKey < IControl::Base::Struct; end    ## A sequence of module expiry items.
    class ModuleExpirySequence < IControl::Base::Sequence ; end## A sequence of module keys.
    class ModuleKeySequence < IControl::Base::Sequence ; end## A sequence of time limited module keys.
    class TimeLimitedModuleKeySequence < IControl::Base::Sequence ; end##
    # A struct that describes an evaluation license expiration date.
    class EvaluationExpiration < IControl::Base::Struct
      # The current system time.
      icontrol_attribute :current_system_time, Numeric
      # The time when the evaluation takes effect.
      icontrol_attribute :evaluation_start, Numeric
      # The time when the evaluation expires.
      icontrol_attribute :evaluation_expire, Numeric
    end

    ##
    # A struct that describes expiry information for a module.
    class ModuleExpiry < IControl::Base::Struct
      # A boolean indicating whether the module is enabled.
      icontrol_attribute :enabled, IControl::Common::EnabledState
      # A boolean indicating whether the module expires.
      icontrol_attribute :expires, Object
      # The time at which the modules expires (valid only if expires is true).
      icontrol_attribute :expiry_time, Numeric
    end

    ##
    # A struct that describes a module key. Note: description fields in this structure
    # are for information only and content in them is not guaranteed to remain constant.
    # The primary programmatic use of this structure is to obtain license keys.
    class ModuleKey < IControl::Base::Struct
      # A description of the module.
      icontrol_attribute :description, String
      # The license key.
      icontrol_attribute :key, String
      # A sequence of strings giving child module descriptions.
      icontrol_attribute :child_description, StringSequence
      # The key status (active or inactive).
      icontrol_attribute :active, Object
    end

    ##
    # A struct that describes time limits for a module key.
    class ModuleKeyTimeLimits < IControl::Base::Struct
      # The current system time.
      icontrol_attribute :current_system_time, Numeric
      # The start time for the module key.
      icontrol_attribute :start_time, Numeric
      # The end time for the module key.
      icontrol_attribute :end_time, Numeric
    end

    ##
    # A struct that describes a time limited module key. Note: description fields in this
    # structure are for information only and content in them is not guaranteed to remain
    # constant. The primary programmatic use of this structure is to obtain license keys.
    class TimeLimitedModuleKey < IControl::Base::Struct
      # A description of the module.
      icontrol_attribute :description, String
      # The license key.
      icontrol_attribute :key, String
      # The time limits for the module key.
      icontrol_attribute :limits, IControl::Management::LicenseAdministration::ModuleKeyTimeLimits
      # The key status (active or inactive).
      icontrol_attribute :active, Object
    end

    ##
    # Checks to see if the specified registration keys will pass the CRC validation.
    # :method: check_registration_key_crc
    # :call-seq:
    # check_registration_key_crc(registration_keys)
    #
    # Parameters:
    # - registration_keys String[] The list of registration keys to do a CRC check.

    ##
    # Retrieves the copyright file.
    # :method: get_copyright_file

    ##
    # Retrieves the EULA agreement file.
    # :method: get_eula_file

    ##
    # Gets information on when the evaluation license will expire.
    # :method: get_evaluation_license_expiration

    ##
    # Checks to see whether the device has been licensed.
    # :method: get_license_activation_status

    ##
    # Retrieves the active license file.
    # :method: get_license_file

    ##
    # Gets information indicating whether the given modules are enabled in the license.
    # Caution! This enabled state is what is specified in the license for the modules without
    # regard for whether the module is provisionable or provisioned under this hardware
    # and configuration. See the Provision interface.
    # :method: get_module_enabled_state
    # :call-seq:
    # get_module_enabled_state(modules)
    #
    # Parameters:
    # - modules TMOSModule[] The list of modules for which to get enabled state.

    ##
    # Gets information about expiry of the given modules. Caution! The expiry information
    # does not indicate whether a module is provisionable or provisioned. See the Provision
    # interface. Note: This returns the enabled state as well. When getting the module
    # expiry information, we suggest making use of the enabled state returned here rather
    # than getting enabled state separately.
    # :method: get_module_expiry
    # :call-seq:
    # get_module_expiry(modules)
    #
    # Parameters:
    # - modules TMOSModule[] The list of modules for which to get expiry information.

    ##
    # Gets the module keys used to license the device, including descriptive information
    # about them. You will get active and inactive keys (and the record has a field describing
    # whether it is active). See also get_time_limited_module_keys.
    # :method: get_module_keys

    ##
    # Gets the list of registration keys used to license the device. This returns the base
    # key first, then add-on keys. As of v10.0.0, there are new add-on keys that are time
    # limited; with this method you can tell they are there but not when they expire. If
    # that matters, you should use the newer method get_time_limited_module_keys. All of
    # the keys returned are active keys.
    # :method: get_registration_keys

    ##
    # Gets the kernel dossier based on the specified registration keys.
    # :method: get_system_dossier
    # :call-seq:
    # get_system_dossier(registration_keys)
    #
    # Parameters:
    # - registration_keys String[] The list of registration keys used to get the kernel dossier.

    ##
    # Gets the time limited module keys used to license the device, including descriptive
    # information about them. You will get active and inactive keys (and the record has
    # a field describing whether it is active).
    # :method: get_time_limited_module_keys

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Installs and authorizes the device using the specified stream of license file data.
    # :method: install_license
    # :call-seq:
    # install_license(license_file_data)
    #
    # Parameters:
    # - license_file_data char[] The license file data.

    ##
    # Installs and authorizes the device using the specified license file somewhere on
    # the device.
    # :method: install_license_from_file
    # :call-seq:
    # install_license_from_file(license_file)
    #
    # Parameters:
    # - license_file String The license file location.

    ##
    # Checks to see whether the device is running with an evaluation license.
    # :method: is_evaluation_license


  end
end
