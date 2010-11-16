module IControl::System
  ##
  # The Services interface enables you to manage the various supported services on the
  # device, such as SSHD, HTTPD, NTPD, SOD....
  class Services < IControl::Base
    class ServiceAction < IControl::Base::Enumeration; end
    class ServiceStatusType < IControl::Base::Enumeration; end
    class ServiceType < IControl::Base::Enumeration; end
    class SSHAccess < IControl::Base::Struct; end
    class SSHAccess_v2 < IControl::Base::Struct; end
    class ServiceStatus < IControl::Base::Struct; end    ## A sequence of service actions.
    class ServiceActionSequence < IControl::Base::Sequence ; end## A sequence of service status entries.
    class ServiceStatusSequence < IControl::Base::Sequence ; end## A sequence of service types.
    class ServiceTypeSequence < IControl::Base::Sequence ; end##
    # An enumeration for different service actions.
    class ServiceAction < IControl::Base::Enumeration
      # Start a service.
      SERVICE_ACTION_START = :SERVICE_ACTION_START
      # Stop a service.
      SERVICE_ACTION_STOP = :SERVICE_ACTION_STOP
      # Reinitialize a service.
      SERVICE_ACTION_REINIT = :SERVICE_ACTION_REINIT
      # Restart a service by stopping and starting the service
      SERVICE_ACTION_RESTART = :SERVICE_ACTION_RESTART
      # Add a service to the boot/reboot list. If on this list, the service will be started on bootup and stopped on reboot.
      SERVICE_ACTION_ADD_TO_BOOT_LIST = :SERVICE_ACTION_ADD_TO_BOOT_LIST
      # Remove a service from the boot/reboot list. If on this list, the service will be started on bootup and stopped on reboot.
      SERVICE_ACTION_REMOVE_FROM_BOOT_LIST = :SERVICE_ACTION_REMOVE_FROM_BOOT_LIST
      # Add a service to the default action list.
      SERVICE_ACTION_ADD_TO_DEFAULT_LIST = :SERVICE_ACTION_ADD_TO_DEFAULT_LIST
      # Remove a service from the default action list.
      SERVICE_ACTION_REMOVE_FROM_DEFAULT_LIST = :SERVICE_ACTION_REMOVE_FROM_DEFAULT_LIST
    end

    ##
    # An enumeration for different service statuses.
    class ServiceStatusType < IControl::Base::Enumeration
      # Service is not found.
      SERVICE_STATUS_NOT_FOUND = :SERVICE_STATUS_NOT_FOUND
      # Service is up and running.
      SERVICE_STATUS_UP = :SERVICE_STATUS_UP
      # Service is down.
      SERVICE_STATUS_DOWN = :SERVICE_STATUS_DOWN
    end

    ##
    # An enumeration for different services running in the system.
    class ServiceType < IControl::Base::Enumeration
      # An unknown service.
      SERVICE_UNKNOWN = :SERVICE_UNKNOWN
      # The ALERTD service.
      SERVICE_ALERTD = :SERVICE_ALERTD
      # The BCM56XXD service.
      SERVICE_BCM56XXD = :SERVICE_BCM56XXD
      # The BIG3D service.
      SERVICE_BIG3D = :SERVICE_BIG3D
      # The BIG3DSHIM service. This enum is deprecated.
      SERVICE_BIG3DSHIM = :SERVICE_BIG3DSHIM
      # The BIGD service.
      SERVICE_BIGD = :SERVICE_BIGD
      # The BIGDBD service.
      SERVICE_BIGDBD = :SERVICE_BIGDBD
      # The BIGSNMPD service. This enum is deprecated.
      SERVICE_BIGSNMPD = :SERVICE_BIGSNMPD
      # The CHMAND service.
      SERVICE_CHMAND = :SERVICE_CHMAND
      # The CSSD service.
      SERVICE_CSSD = :SERVICE_CSSD
      # The EVENTD service.
      SERVICE_EVENTD = :SERVICE_EVENTD
      # The FPDD service.
      SERVICE_FPDD = :SERVICE_FPDD
      # The HTTPD service.
      SERVICE_HTTPD = :SERVICE_HTTPD
      # The LACPD service.
      SERVICE_LACPD = :SERVICE_LACPD
      # The MCPD service.
      SERVICE_MCPD = :SERVICE_MCPD
      # The NAMED service.
      SERVICE_NAMED = :SERVICE_NAMED
      # The NOKIASNMPD service.
      SERVICE_NOKIASNMPD = :SERVICE_NOKIASNMPD
      # The NTPD service.
      SERVICE_NTPD = :SERVICE_NTPD
      # The OVERDOG service. This enum is deprecated.
      SERVICE_OVERDOG = :SERVICE_OVERDOG
      # The PVAD service.
      SERVICE_PVAD = :SERVICE_PVAD
      # The RADVD service.
      SERVICE_RADVD = :SERVICE_RADVD
      # The RMONSNMPD service.
      SERVICE_RMONSNMPD = :SERVICE_RMONSNMPD
      # The SNMPD service.
      SERVICE_SNMPD = :SERVICE_SNMPD
      # The SOD service.
      SERVICE_SOD = :SERVICE_SOD
      # The SSHD service.
      SERVICE_SSHD = :SERVICE_SSHD
      # The STATSD service.
      SERVICE_STATSD = :SERVICE_STATSD
      # The STPD service.
      SERVICE_STPD = :SERVICE_STPD
      # The SYSCALLD service.
      SERVICE_SYSCALLD = :SERVICE_SYSCALLD
      # The SYSLOGD service.
      SERVICE_SYSLOGD = :SERVICE_SYSLOGD
      # The TAMD service.
      SERVICE_TAMD = :SERVICE_TAMD
      # The TMM service.
      SERVICE_TMM = :SERVICE_TMM
      # The TMROUTED service.
      SERVICE_TMROUTED = :SERVICE_TMROUTED
      # The TMSNMPD service. This enum is deprecated.
      SERVICE_TMSNMPD = :SERVICE_TMSNMPD
      # The TOMCAT4 service.
      SERVICE_TOMCAT4 = :SERVICE_TOMCAT4
      # The ZEBOSD service.
      SERVICE_ZEBOSD = :SERVICE_ZEBOSD
      # The GTMD service.
      SERVICE_GTMD = :SERVICE_GTMD
      # The SUBSNMPD service.
      SERVICE_SUBSNMPD = :SERVICE_SUBSNMPD
      # The ZRD service.
      SERVICE_ZRD = :SERVICE_ZRD
      # The ASM service.
      SERVICE_ASM = :SERVICE_ASM
      # The PVAC service.
      SERVICE_PVAC = :SERVICE_PVAC
      # The COMM_SRV service.
      SERVICE_COMM_SRV = :SERVICE_COMM_SRV
      # The HDS_PRUNE service.
      SERVICE_HDS_PRUNE = :SERVICE_HDS_PRUNE
      # The TMZD service.
      SERVICE_TMZD = :SERVICE_TMZD
      # The WAICD service.
      SERVICE_WAICD = :SERVICE_WAICD
      # The CLUSTERD service.
      SERVICE_CLUSTERD = :SERVICE_CLUSTERD
      # The CSYNCD service.
      SERVICE_CSYNCD = :SERVICE_CSYNCD
      # The LIND service.
      SERVICE_LIND = :SERVICE_LIND
    end

    ##
    # Note: This structure is deprecated; please use SSHAccess_v2 in new applications.
    # A struct that contains information about SSH state and access settings Note: as of
    # v9.4.2, we have added &amp;quot;NONE" to this interface; as an address it means no
    # access. Also please note that this interface has represented and still represents
    # ALL access as &amp;quot;::". On the BIG-IP itself (as shown in the GUI, CLI, and
    # db variables, v9.4.2 changed &amp;quot;::" to mean no access (returned here as NONE),
    # and the word &amp;quot;ALL" means all access (still returned with this interface
    # as &amp;quot;::").
    class SSHAccess < IControl::Base::Struct
      # The state of the service, either 'enable' or 'disable'
      icontrol_attribute :state, IControl::Common::EnabledState
      # The addresses and address ranges allowed to access		 the device via SSH
      icontrol_attribute :addresses, StringSequence
    end

    ##
    # A struct that contains information about SSH state and access settings Note: In addresses,
    # &amp;quot;::" means no access, and &amp;quot;ALL" means all access. The semantics
    # for no access and all access are different than the previous SSHAccess interface.
    class SSHAccess_v2 < IControl::Base::Struct
      # The state of the service, either 'enable' or 'disable'
      icontrol_attribute :state, IControl::Common::EnabledState
      # The addresses and address ranges allowed to access		 the device via SSH
      icontrol_attribute :addresses, StringSequence
    end

    ##
    # A struct that contains information about the status of a service.
    class ServiceStatus < IControl::Base::Struct
      # The service enumeration.
      icontrol_attribute :service, IControl::System::Services::ServiceType
      # The service status.
      icontrol_attribute :status, IControl::System::Services::ServiceStatusType
    end

    ##
    # Determines whether the specified services are enabled or disabled on an ITCM appliance.
    # :method: get_all_service_statuses

    ##
    # Gets a list of all services supported on this device.
    # :method: get_list

    ##
    # Gets the statuses of the specified services
    # :method: get_service_status
    # :call-seq:
    # get_service_status(services)
    #
    # Parameters:
    # - services ServiceType[] The service enumerations.

    ##
    # Note: This method is deprecated; please use get_ssh_access_v2 in new applications.
    # Gets the ssl service state and allowed addresses.
    # :method: get_ssh_access

    ##
    # Gets the ssl service state and allowed addresses.
    # :method: get_ssh_access_v2

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Reboots the system. This method will reboot the system within specified number of
    # seconds. Once this method has been called, no further operations or requests should
    # be sent to the Portal, and make sure all pending operations are completed before
    # the reboot.
    # :method: reboot_system
    # :call-seq:
    # reboot_system(seconds_to_reboot)
    #
    # Parameters:
    # - seconds_to_reboot long The number of seconds before the reboot takes place.

    ##
    # Sets the action for all services to take. This method is asynchronous, meaning that
    # the method may return before the requested action is completed. NOTE: For this method,
    # the only valid values for service_action are: SERVICE_ACTION_START SERVICE_ACTION_STOP
    # SERVICE_ACTION_REINIT SERVICE_ACTION_RESTART
    # :method: set_all_services
    # :call-seq:
    # set_all_services(service_action)
    #
    # Parameters:
    # - service_action ServiceAction The action for the services to take.

    ##
    # Sets the action for the specified services to take. This method is asynchronous,
    # meaning that the method may return before the requested action is completed.
    # :method: set_service
    # :call-seq:
    # set_service(services ,service_action)
    #
    # Parameters:
    # - services ServiceType[] The service enumerations.
    # - service_action ServiceAction The action for the services to take.

    ##
    # Note: This method is deprecated; please use get_ssh_access_v2 in new applications.
    # Sets the ssl service state and allowed addresses.
    # :method: set_ssh_access
    # :call-seq:
    # set_ssh_access(access)
    #
    # Parameters:
    # - access SSHAccess Access structure indicating enable/disable state of the		SSH service and an address range allowed to access		the device via ssh.

    ##
    # Sets the ssl service state and allowed addresses.
    # :method: set_ssh_access_v2
    # :call-seq:
    # set_ssh_access_v2(access)
    #
    # Parameters:
    # - access SSHAccess_v2 Access structure indicating enable/disable state of the		SSH service and an address range allowed to access		the device via ssh.


  end
end
