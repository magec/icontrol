module IControl::Management
  ##
  # The Provision interface manages the partitioning of system memory, disk space, and
  # CPU usage among the modules (e.g., LTM, GTM, WOM) licensed to run on the system.
  # The modules and the &amp;quot;host" system (everything not dedicated to network traffic
  # processing) are first assigned a minimal set of resources, based on pre-determined
  # values and the available system memory. The remaining resources are distributed among
  # the modules, according to pre-determined rules, which can be modified by values which
  # can be set via this iControl interface. The pre-defined module resource allocation
  # handles a wide variety of circumstances, so this allocation should only need to be
  # changed for unusual circumstances, such as turning modules on or off and large network
  # traffic or configurations.
  class Provision < IControl::Base

    set_id_name "modules"

    class ProvisionLevelSequence < IControl::Base::Sequence ; end
    # module provisioning levels
    class ProvisionLevel < IControl::Base::Enumeration; end    ##
    # Gets the ratios of CPU usage above the minimum which are allocated to the requested
    # module. This value is only meaningful for the &amp;quot;custom" provisioning level.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def custom_cpu_ratio
      super
    end

    ##
    # Gets the ratios of disk space above the minimum which are allocated to the requested
    # module. This value is only meaningful for the &amp;quot;custom" provisioning level.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def custom_disk_ratio
      super
    end

    ##
    # Gets the ratios of system memory which are allocated to the requested module. This
    # value is only meaningful for the &amp;quot;custom" provisioning level.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def custom_memory_ratio
      super
    end

    ##
    # Gets the provisioning level for the requested module.
    # @rspec_example
    # @return [ProvisionLevel]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def level
      super
    end

    ##
    # Gets all provisionable module
    # @rspec_example
    # @return [TMOSModule]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets all provisioned module, i.e., all module which have resources to run on the
    # system, i.e., whose provisioning level is not &amp;quot;none".
    # @rspec_example
    # @return [TMOSModule]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def provisioned_list
      super
    end

    ##
    # Gets the version for this interface.
    # @rspec_example
    # @return [String]
    def version
      super
    end

    ##
    # Sets the ratios of CPU usage above the minimum levels which are allocated to the
    # requested module. This value is only valid for the &amp;quot;custom" provisioning
    # level.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :ratios CPU ratios (arbitrary units from 0 to 255) for the		 requested modules, where zero is equivalent to		 the "minimum" level (default: 0)
    def set_custom_cpu_ratio(opts)
      check_params(opts,[:ratios])
      super
    end

    ##
    # Sets the ratios of disk space above the minimum which are allocated to the requested
    # module. This value is only used for the &amp;quot;custom" provisioning level.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :ratios Disk space ratios (arbitrary units from 0 to 255)		 for the requested modules, where zero is		 equivalent to the "minimum" level (default: 0)
    def set_custom_disk_ratio(opts)
      check_params(opts,[:ratios])
      super
    end

    ##
    # Sets the ratios of system memory above the minimum which are allocated to the requested
    # module. This value is only valid for the &amp;quot;custom" provisioning level.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :ratios System memory ratios (arbitrary units from 0 to		 255) for the requested modules, where zero is		 equivalent to the "minimum" level (default: 0)
    def set_custom_memory_ratio(opts)
      check_params(opts,[:ratios])
      super
    end

    ##
    # Sets the provisioning level for the requested module. Changing the level for one
    # module may require modifying the level of another module. For example, changing one
    # module to &amp;quot;dedicated" requires setting all others to &amp;quot;none", or
    # setting one module to &amp;quot;custom" requires setting all other module to &amp;quot;custom"
    # or &amp;quot;none". Setting the level of a module to &amp;quot;none" means that the
    # module is not run.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::Provision::ProvisionLevel] :levels Provisioning levels for the requested modules
    def set_level(opts)
      check_params(opts,[:levels])
      super
    end


    ## A sequence of provisioning levels
    class ProvisionLevelSequence < IControl::Base::Sequence ; end
    # module provisioning levels
    class ProvisionLevel < IControl::Base::Enumeration
      # No resources
      PROVISION_LEVEL_NONE = :PROVISION_LEVEL_NONE
      # Minimal resources
      PROVISION_LEVEL_MINIMUM = :PROVISION_LEVEL_MINIMUM
      # Normal resources
      PROVISION_LEVEL_NOMINAL = :PROVISION_LEVEL_NOMINAL
      # Maximum resources
      PROVISION_LEVEL_DEDICATED = :PROVISION_LEVEL_DEDICATED
      # Resources above the minimum are divvied up according to user-specified ratios
      PROVISION_LEVEL_CUSTOM = :PROVISION_LEVEL_CUSTOM
    end


  end
end
