module IControl::Management
  ##
  # The Module interface enables you to manage the system's TMOS modules (e.g. LTM, GTM,
  # ASM). The methods and types here focus on the modules themselves; some of the specific
  # questions you might ask about modules are broken out in other places, such as the
  # Provision or LicenseAdministration interface.
  class TMOSModule < IControl::Base
    ##
    # Gets a list of descriptive names for the modules given
    # :method: get_descriptive_name
    # :call-seq:
    # get_descriptive_name(modules)
    #
    # Parameters:
    # - modules TMOSModule[] The list of modules for which to get descriptive names.

    ##
    # Gets a list of all known modules Caution! The list returned gives all modules known,
    # even if they are not licensed or provisionable on this system. You could use this
    # to get a general picture of what modules are possible, but this list is not specific
    # to the system you have. To determine the licensing status of the modules on your
    # system, see the LicenseAdministration interface. To determine which modules are supported
    # (i.e., provisionable) under your system or currently provisioned to run on your system,
    # see the Provision interface.
    # :method: get_known_module_list

    ##
    # Gets the version information for this interface.
    # :method: get_version


  end
end
