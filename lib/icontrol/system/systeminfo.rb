module IControl::System
  ##
  # The SystemInfo interface enables you to query identifying attributes of the system.
  class SystemInfo < IControl::Base
    ##
    # Attempts to acquire lock with specified name for specified number of seconds. These
    # locks can be used to synchronize work of multiple clients working with this device.
    # This call returns immediately.
    # :method: acquire_lock
    # :call-seq:
    # acquire_lock(lock_name ,duration_sec ,comment)
    #
    # Parameters:
    # - lock_name String Name of the lock. It can be arbitrary name, the lock is identified by this name.
    # - duration_sec long Time for how long the system should keep the lock. The lock will be automatically released when duration time is over.
    # - comment String Additional user oriented information about this lock.

    ##
    # Gets the CPU usage extended information for this system by host ID for all hosts.
    # :method: get_all_cpu_usage_extended_information

    ##
    # Gets the system's base MAC address
    # :method: get_base_mac_address

    ##
    # Gets the temperatures recorded by the blade sensors
    # :method: get_blade_temperature

    ##
    # Gets connection information (see ConnectionInformation for more info).
    # :method: get_connection_information

    ##
    # Gets the CPU metrics for the CPU(s) on the platform.
    # :method: get_cpu_metrics

    ##
    # Gets the CPU usage extended information for this system by host ID.
    # :method: get_cpu_usage_extended_information
    # :call-seq:
    # get_cpu_usage_extended_information(host_ids)
    #
    # Parameters:
    # - host_ids String[] A list of host ids for which to get CPU usage extended information.

    ##
    # This method has been deprecated; use get_cpu_usage_extended_information and related
    # methods instead. Gets the CPU usage information for this system.
    # :method: get_cpu_usage_information

    ##
    # Gets the disk usage information for this system.
    # :method: get_disk_usage_information

    ##
    # Gets the Fan metrics for the Fan(s) on the platform.
    # :method: get_fan_metrics

    ##
    # Gets the global CPU usage extended information for this system. This gets one set
    # of combined ("rolled up") statistics for all hosts. It is not to be confused with
    # get_all_cpu_usage_extended_information, which gets all individual cpu usage statistics,
    # one for each host.
    # :method: get_global_cpu_usage_extended_information

    ##
    # Gets a globally unique identifier for the system.
    # :method: get_globally_unique_identifier

    ##
    # Gets the unique identifier for the configsync or sync group of which this device
    # is a member.
    # :method: get_group_id

    ##
    # Gets the information for the hardware in the system. This includes information about
    # CPUs, compression and encryption acceleration hardware, etc.
    # :method: get_hardware_information

    ##
    # Lists all names of currently acquired locks.
    # :method: get_lock_list

    ##
    # Gets lock statuses of specified locks
    # :method: get_lock_status
    # :call-seq:
    # get_lock_status(lock_names)
    #
    # Parameters:
    # - lock_names String[] sequence of lock names.

    ##
    # Gets the F5 marketing name for this platform
    # :method: get_marketing_name

    ##
    # This method has been deprecated; use get_host_statistics and related methods instead.
    # Gets the memory information for this system.
    # :method: get_memory_usage_information

    ##
    # Gets the Power Supply metrics for the Power Supplies on the platform.
    # :method: get_power_supply_metrics

    ##
    # Gets a list of attributes of installed product.
    # :method: get_product_information

    ##
    # Gets the PVA version
    # :method: get_pva_version

    ##
    # Gets the unique identifier for the system.
    # :method: get_system_id

    ##
    # Gets the system-identifying attributes of the operating system.
    # :method: get_system_information

    ##
    # Gets the current chassis temperatures.
    # :method: get_temperature_metrics

    ##
    # Gets the system time in UTC.
    # :method: get_time

    ##
    # Gets the local time zone information.
    # :method: get_time_zone

    ##
    # Gets the number of seconds the device has been running.
    # :method: get_uptime

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Attempts to release lock with specified name. These locks can be used to synchronize
    # work of multiple clients working with this device. This call returns immediately.
    # Nothing will happen if specified lock doesn't exist.
    # :method: release_lock
    # :call-seq:
    # release_lock(lock_name)
    #
    # Parameters:
    # - lock_name String Name of the lock.

    ##
    # Sets the unique identifier for the configsync or sync group of which this device
    # is a member.
    # :method: set_group_id
    # :call-seq:
    # set_group_id(group_id)
    #
    # Parameters:
    # - group_id String The group identifier.


  end
end
