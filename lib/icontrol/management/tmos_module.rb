module IControl::Management
  ##
  # The Module interface enables you to manage the system's TMOS modules (e.g. LTM, GTM, ASM). The methods and types here focus on the modules themselves; some of the specific questions you might ask about modules are broken out in other places, such as the Provision or LicenseAdministration interface.
  class TMOSModule < IControl::Base

    set_id_name "modules"

    ##
    # Gets a list of descriptive names for the module given
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def descriptive_name
      super
    end

    ##
    # Gets a list of all known module Caution! The list returned gives all module known, even if they are not licensed or provisionable on this system. You could use this to get a general picture of what module are possible, but this list is not specific to the system you have. To determine the licensing status of the module on your system, see the LicenseAdministration interface. To determine which module are supported (i.e., provisionable) under your system or currently provisioned to run on your system, see the Provision interface.
    # @return [TMOSModule]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def known_module_list
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end


  end
end
