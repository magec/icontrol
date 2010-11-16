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
    class ProvisionLevel < IControl::Base::Enumeration; end    ## A sequence of provisioning levels
    class ProvisionLevelSequence < IControl::Base::Sequence ; end##
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

    ##
    # Gets the ratios of CPU usage above the minimum which are allocated to the requested
    # modules. This value is only meaningful for the &amp;quot;custom" provisioning level.
    # :method: get_custom_cpu_ratio
    # :call-seq:
    # get_custom_cpu_ratio(modules)
    #
    # Parameters:
    # - modules TMOSModule[] Modules to query

    ##
    # Gets the ratios of disk space above the minimum which are allocated to the requested
    # modules. This value is only meaningful for the &amp;quot;custom" provisioning level.
    # :method: get_custom_disk_ratio
    # :call-seq:
    # get_custom_disk_ratio(modules)
    #
    # Parameters:
    # - modules TMOSModule[] Modules to query

    ##
    # Gets the ratios of system memory which are allocated to the requested modules. This
    # value is only meaningful for the &amp;quot;custom" provisioning level.
    # :method: get_custom_memory_ratio
    # :call-seq:
    # get_custom_memory_ratio(modules)
    #
    # Parameters:
    # - modules TMOSModule[] Modules to query

    ##
    # Gets the provisioning level for the requested modules.
    # :method: get_level
    # :call-seq:
    # get_level(modules)
    #
    # Parameters:
    # - modules TMOSModule[] Modules to query

    ##
    # Gets all provisionable modules
    # :method: get_list

    ##
    # Gets all provisioned modules, i.e., all modules which have resources to run on the
    # system, i.e., whose provisioning level is not &amp;quot;none".
    # :method: get_provisioned_list

    ##
    # Gets the version for this interface.
    # :method: get_version

    ##
    # Sets the ratios of CPU usage above the minimum levels which are allocated to the
    # requested modules. This value is only valid for the &amp;quot;custom" provisioning
    # level.
    # :method: set_custom_cpu_ratio
    # :call-seq:
    # set_custom_cpu_ratio(modules ,ratios)
    #
    # Parameters:
    # - modules TMOSModule[] Modules to modify
    # - ratios long[] CPU ratios (arbitrary units from 0 to 255) for the		 requested modules, where zero is equivalent to		 the "minimum" level (default: 0)

    ##
    # Sets the ratios of disk space above the minimum which are allocated to the requested
    # modules. This value is only used for the &amp;quot;custom" provisioning level.
    # :method: set_custom_disk_ratio
    # :call-seq:
    # set_custom_disk_ratio(modules ,ratios)
    #
    # Parameters:
    # - modules TMOSModule[] Modules to modify
    # - ratios long[] Disk space ratios (arbitrary units from 0 to 255)		 for the requested modules, where zero is		 equivalent to the "minimum" level (default: 0)

    ##
    # Sets the ratios of system memory above the minimum which are allocated to the requested
    # modules. This value is only valid for the &amp;quot;custom" provisioning level.
    # :method: set_custom_memory_ratio
    # :call-seq:
    # set_custom_memory_ratio(modules ,ratios)
    #
    # Parameters:
    # - modules TMOSModule[] Modules to modify
    # - ratios long[] System memory ratios (arbitrary units from 0 to		 255) for the requested modules, where zero is		 equivalent to the "minimum" level (default: 0)

    ##
    # Sets the provisioning level for the requested modules. Changing the level for one
    # module may require modifying the level of another module. For example, changing one
    # module to &amp;quot;dedicated" requires setting all others to &amp;quot;none", or
    # setting one module to &amp;quot;custom" requires setting all other modules to &amp;quot;custom"
    # or &amp;quot;none". Setting the level of a module to &amp;quot;none" means that the
    # module is not run.
    # :method: set_level
    # :call-seq:
    # set_level(modules ,levels)
    #
    # Parameters:
    # - modules TMOSModule[] Modules to modify
    # - levels ProvisionLevel[] Provisioning levels for the requested modules


  end
end
