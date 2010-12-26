module IControl::System

  class BladeTemperature < IControl::Base::Struct; end
  class CPUMetric < IControl::Base::Struct; end
  class CPUUsage < IControl::Base::Struct; end
  class CPUUsageExtended < IControl::Base::Struct; end
  class CPUUsageExtendedInformation < IControl::Base::Struct; end
  class CPUUsageInformation < IControl::Base::Struct; end
  class ConnectionInformation < IControl::Base::Struct; end
  class DiskUsage < IControl::Base::Struct; end
  class DiskUsageInformation < IControl::Base::Struct; end
  class FanMetric < IControl::Base::Struct; end
  class GlobalCPUUsageExtendedInformation < IControl::Base::Struct; end
  class HardwareInformation < IControl::Base::Struct; end
  class LockStatus < IControl::Base::Struct; end
  class MemoryUsageInformation < IControl::Base::Struct; end
  class PSMetric < IControl::Base::Struct; end
  class PlatformCPUs < IControl::Base::Struct; end
  class PlatformFans < IControl::Base::Struct; end
  class PlatformPowerSupplies < IControl::Base::Struct; end
  class PlatformTemperatures < IControl::Base::Struct; end
  class ProductInformation < IControl::Base::Struct; end
  class SubsystemMemoryUsage < IControl::Base::Struct; end
  class SystemInformation < IControl::Base::Struct; end
  class TemperatureMetric < IControl::Base::Struct; end
  class VersionInformation < IControl::Base::Struct; end
  class Cluster < IControl::Base; end
  class ConfigSync < IControl::Base; end
  class Connections < IControl::Base; end
  class Disk < IControl::Base; end
  class Failover < IControl::Base; end
  class GeoIP < IControl::Base; end
  class Inet < IControl::Base; end
  class Internal < IControl::Base; end
  class Services < IControl::Base; end
  class SoftwareManagement < IControl::Base; end
  class Statistics < IControl::Base; end
  class SystemInfo < IControl::Base; end
  # An enumeration for different types of CPU metrics.
  class CPUMetricType < IControl::Base::Enumeration; end
  # An enumeration for different types of chassis fan metrics.
  class FanMetricType < IControl::Base::Enumeration; end
  # This enumeration represents a general category of hardware present in the system.
  class HardwareType < IControl::Base::Enumeration; end
  # An enumeration for different types of chassis power supply metrics.
  class PSMetricType < IControl::Base::Enumeration; end
  # An enumeration for different types of chassis temperature metrics.
  class TemperatureMetricType < IControl::Base::Enumeration; end##
  # Blade temperature information structure The blades hold a number of temperature sensors, keyed by their slot (i.e., blade) and sensor identifiers.
  # @attr [Numeric] slot Slot/blade identifier
  # @attr [Numeric] sensor
  # @attr [String] location Sensor location
  # @attr [Numeric] temperature Temperature recorded by the sensor (deg C)
  class BladeTemperature < IControl::Base::Struct
    icontrol_attribute :slot, Numeric
    icontrol_attribute :sensor, Numeric
    icontrol_attribute :location, String
    icontrol_attribute :temperature, Numeric
  end

  ##
  # A structure that contains the CPU metric value.
  # @attr [IControl::System::CPUMetricType] metric_type The metric type.
  # @attr [Numeric] value The metric value.
  class CPUMetric < IControl::Base::Struct
    icontrol_attribute :metric_type, IControl::System::CPUMetricType
    icontrol_attribute :value, Numeric
  end

  ##
  # This structure has been deprecated; use CPUUsageExtendedInformation and related structures instead. A struct that contains the CPU usage for each CPU.
  # @attr [Numeric] cpu_id The numeric ID of the processor, i.e. 1, 2, 3, 4 ....
  # @attr [IControl::Common::ULong64] user The time spent by the processor in user context.
  # @attr [IControl::Common::ULong64] niced The time spent by the processor running niced processes.
  # @attr [IControl::Common::ULong64] system The time spent by the processor servicing system calls.
  # @attr [IControl::Common::ULong64] idle The time spent by the processor doing nothing.
  # @attr [IControl::Common::ULong64] irq The time spent by the processor servicing hardware interrupts.
  # @attr [IControl::Common::ULong64] softirq The time spent by the processor servicing soft interrupts.
  # @attr [IControl::Common::ULong64] iowait The time spent by the processor waiting for external I/O to complete.
  class CPUUsage < IControl::Base::Struct
    icontrol_attribute :cpu_id, Numeric
    icontrol_attribute :user, IControl::Common::ULong64
    icontrol_attribute :niced, IControl::Common::ULong64
    icontrol_attribute :system, IControl::Common::ULong64
    icontrol_attribute :idle, IControl::Common::ULong64
    icontrol_attribute :irq, IControl::Common::ULong64
    icontrol_attribute :softirq, IControl::Common::ULong64
    icontrol_attribute :iowait, IControl::Common::ULong64
  end

  ##
  # A struct that contains extended CPU usage, per CPU, for a host. The extended CPU usage goes beyond the basic material available in CPUUsage. This structure represents the extended CPU usage as a sequence of sequences of statistics. For a host, there is a sequence of statistics per CPU, and the statistics for a CPU are a sequence.
  # @attr [String] host_id The host id.
  # @attr [IControl::Common::StatisticSequence] statistics The statistics for the host (one sequence for each CPU).
  class CPUUsageExtended < IControl::Base::Struct
    icontrol_attribute :host_id, String
    icontrol_attribute :statistics, IControl::Common::StatisticSequence
  end

  ##
  # A struct that contains the extended CPU usage information for a sequence of hosts.
  # @attr [IControl::System::CPUUsageExtended] hosts The statistics for a sequence of hosts.
  # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
  class CPUUsageExtendedInformation < IControl::Base::Struct
    icontrol_attribute :hosts, IControl::System::CPUUsageExtended
    icontrol_attribute :time_stamp, IControl::Common::TimeStamp
  end

  ##
  # This structure has been deprecated; use CPUUsageExtendedInformation and related structures instead. A struct that contains the CPU usage information.
  # @attr [IControl::System::CPUUsage] usages The list of CPU usage patterns.
  # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at which the statistics are gathered.
  class CPUUsageInformation < IControl::Base::Struct
    icontrol_attribute :usages, IControl::System::CPUUsage
    icontrol_attribute :time_stamp, IControl::Common::TimeStamp
  end

  ##
  # Connection information for the system. This contains the local and remote addresses used to connect to the system when using a method that returns this structure. Normally a client would know the &amp;quot;local" address on which it connected to the system, but if network translation changes the destination address of the system, this method can inform the client of the translation without the client having to code the mapping. This is designed to address the scenario in which the system is behind a virtual address or similar and the client needs to learn, for example, whether an address matches the cluster address.
  # @attr [IControl::Common::IPPortDefinition] local The address and port on which the system was contacted.
  # @attr [IControl::Common::IPPortDefinition] remote The address and port of the client.
  class ConnectionInformation < IControl::Base::Struct
    icontrol_attribute :local, IControl::Common::IPPortDefinition
    icontrol_attribute :remote, IControl::Common::IPPortDefinition
  end

  ##
  # A struct that contains the disk usage for each partition.
  # @attr [String] partition_name The name of the disk partition.
  # @attr [IControl::Common::ULong64] block_size The number of bytes in one block.
  # @attr [IControl::Common::ULong64] total_blocks The total number of blocks in this partition.
  # @attr [IControl::Common::ULong64] free_blocks The number of available blocks in this partition.
  # @attr [IControl::Common::ULong64] total_nodes The total number of file nodes in this partition.
  # @attr [IControl::Common::ULong64] free_nodes The number of free file nodes in this partition.
  class DiskUsage < IControl::Base::Struct
    icontrol_attribute :partition_name, String
    icontrol_attribute :block_size, IControl::Common::ULong64
    icontrol_attribute :total_blocks, IControl::Common::ULong64
    icontrol_attribute :free_blocks, IControl::Common::ULong64
    icontrol_attribute :total_nodes, IControl::Common::ULong64
    icontrol_attribute :free_nodes, IControl::Common::ULong64
  end

  ##
  # A struct that contains the disk usage information.
  # @attr [IControl::System::DiskUsage] usages The list of disk usage patterns.
  # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at which the statistics are gathered.
  class DiskUsageInformation < IControl::Base::Struct
    icontrol_attribute :usages, IControl::System::DiskUsage
    icontrol_attribute :time_stamp, IControl::Common::TimeStamp
  end

  ##
  # A structure that contains the fan metric value.
  # @attr [IControl::System::FanMetricType] metric_type The metric type.
  # @attr [Numeric] value The metric value.
  class FanMetric < IControl::Base::Struct
    icontrol_attribute :metric_type, IControl::System::FanMetricType
    icontrol_attribute :value, Numeric
  end

  ##
  # A struct that contains the global CPU usage information. This is one set of combined ("rolled up") statistics for all hosts.
  # @attr [IControl::Common::Statistic] statistics The global CPU usage statistics.
  # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
  class GlobalCPUUsageExtendedInformation < IControl::Base::Struct
    icontrol_attribute :statistics, IControl::Common::Statistic
    icontrol_attribute :time_stamp, IControl::Common::TimeStamp
  end

  ##
  # This structure holds the information for an individual piece of hardware in the system.
  # @attr [String] name System name for the hardware
  # @attr [IControl::System::HardwareType] type General hardware type
  # @attr [Numeric] slot Identifier for the blade holding the hardware (zero for non-blade systems)
  # @attr [String] model Model information
  # @attr [IControl::System::VersionInformation] versions Miscellaneous information - an array of name/value pairs holding specific nuggets
  class HardwareInformation < IControl::Base::Struct
    icontrol_attribute :name, String
    icontrol_attribute :type, IControl::System::HardwareType
    icontrol_attribute :slot, Numeric
    icontrol_attribute :model, String
    icontrol_attribute :versions, IControl::System::VersionInformation
  end

  ##
  # A structure that describes device lock
  # @attr [String] lock_name The name of the lock. Lock is identified by this name.
  # @attr [Numeric] time_left TTL of the lock in seconds. The lock will be automatically removed after this time expires.
  # @attr [String] comment User oriented information about this lock
  class LockStatus < IControl::Base::Struct
    icontrol_attribute :lock_name, String
    icontrol_attribute :time_left, Numeric
    icontrol_attribute :comment, String
  end

  ##
  # This structure has been deprecated; use get_host_statistics and related methods and data instead. (As of 9.4.0, the system supports retrieving the overall memory attributes by host; retrieving the detailed subsystem attributes by host is not supported). A struct that contains the memory usage information.
  # @attr [IControl::Common::ULong64] total_memory The total amount of physical memory (bytes) in the host system.
  # @attr [IControl::Common::ULong64] used_memory The total amount of memory currently in use (bytes) by the host system.
  # @attr [IControl::System::SubsystemMemoryUsage] usages The list of subsystem memory usage patterns.
  # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at which the statistics are gathered.
  class MemoryUsageInformation < IControl::Base::Struct
    icontrol_attribute :total_memory, IControl::Common::ULong64
    icontrol_attribute :used_memory, IControl::Common::ULong64
    icontrol_attribute :usages, IControl::System::SubsystemMemoryUsage
    icontrol_attribute :time_stamp, IControl::Common::TimeStamp
  end

  ##
  # A structure that contains the power supply metric value.
  # @attr [IControl::System::PSMetricType] metric_type The metric type.
  # @attr [Numeric] value The metric value.
  class PSMetric < IControl::Base::Struct
    icontrol_attribute :metric_type, IControl::System::PSMetricType
    icontrol_attribute :value, Numeric
  end

  ##
  # A structure that contains the platform CPU information and timestamp.
  # @attr [IControl::System::CPUMetricSequence] cpus The platform CPU information.
  # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at which the statistics are gathered.
  class PlatformCPUs < IControl::Base::Struct
    icontrol_attribute :cpus, IControl::System::CPUMetricSequence
    icontrol_attribute :time_stamp, IControl::Common::TimeStamp
  end

  ##
  # A structure that contains the platform fan information and timestamp.
  # @attr [IControl::System::FanMetricSequence] fans The platform fan information.
  # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at which the statistics are gathered.
  class PlatformFans < IControl::Base::Struct
    icontrol_attribute :fans, IControl::System::FanMetricSequence
    icontrol_attribute :time_stamp, IControl::Common::TimeStamp
  end

  ##
  # A structure that contains the platform power supply information and timestamp.
  # @attr [IControl::System::PSMetricSequence] power_supplies The platform power supply information.
  # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at which the statistics are gathered.
  class PlatformPowerSupplies < IControl::Base::Struct
    icontrol_attribute :power_supplies, IControl::System::PSMetricSequence
    icontrol_attribute :time_stamp, IControl::Common::TimeStamp
  end

  ##
  # A structure that contains the platform temperatures and timestamp.
  # @attr [IControl::System::TemperatureMetricSequence] temperatures The platform temperatures.
  # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at which the statistics are gathered.
  class PlatformTemperatures < IControl::Base::Struct
    icontrol_attribute :temperatures, IControl::System::TemperatureMetricSequence
    icontrol_attribute :time_stamp, IControl::Common::TimeStamp
  end

  ##
  # A struct that contains the identifying attributes of the installed products.
  # @attr [String] product_code The identifier describing the installed product.
  # @attr [String] product_version The version of the installed product.
  # @attr [String] package_version The package version of the installed product.
  # @attr [String] package_edition The package edition of the installed product.
  # @attr [String] product_features A list of feature names available in the installed product.
  class ProductInformation < IControl::Base::Struct
    icontrol_attribute :product_code, String
    icontrol_attribute :product_version, String
    icontrol_attribute :package_version, String
    icontrol_attribute :package_edition, String
    icontrol_attribute :product_features, String
  end

  ##
  # This structure has been deprecated; use get_host_statistics and related methods and data instead. A struct that contains the memory usage for each subsystem.
  # @attr [String] subsystem_name The name of the subsystem using this memory.
  # @attr [IControl::Common::ULong64] current_allocated The number of bytes currently allocated for this subsystem.
  # @attr [IControl::Common::ULong64] maximum_allocated The maximum number of bytes allocated for this subsystem.
  # @attr [IControl::Common::ULong64] size The size in bytes of each object.
  class SubsystemMemoryUsage < IControl::Base::Struct
    icontrol_attribute :subsystem_name, String
    icontrol_attribute :current_allocated, IControl::Common::ULong64
    icontrol_attribute :maximum_allocated, IControl::Common::ULong64
    icontrol_attribute :size, IControl::Common::ULong64
  end

  ##
  # A struct that contains the identifying attributes of the operating system.
  # @attr [String] system_name The name of the operating system implementation.
  # @attr [String] host_name The host name of the system.
  # @attr [String] os_release The release level of the operating system.
  # @attr [String] os_machine The hardware platform CPU type.
  # @attr [String] os_version The version string for the release of the operating system.
  # @attr [String] platform The platform of the device.
  # @attr [String] product_category The product category of the device.
  # @attr [String] chassis_serial The chassis serial number.
  # @attr [String] switch_board_serial The serial number of the switch board.
  # @attr [String] switch_board_part_revision The part revision number of the switch board.
  # @attr [String] host_board_serial The serial number of the host motherboard.
  # @attr [String] host_board_part_revision The part revision number of the host board.
  # @attr [String] annunciator_board_serial The serial number of the annuciator board.
  # @attr [String] annunciator_board_part_revision The part revision number of the annunciator board.
  class SystemInformation < IControl::Base::Struct
    icontrol_attribute :system_name, String
    icontrol_attribute :host_name, String
    icontrol_attribute :os_release, String
    icontrol_attribute :os_machine, String
    icontrol_attribute :os_version, String
    icontrol_attribute :platform, String
    icontrol_attribute :product_category, String
    icontrol_attribute :chassis_serial, String
    icontrol_attribute :switch_board_serial, String
    icontrol_attribute :switch_board_part_revision, String
    icontrol_attribute :host_board_serial, String
    icontrol_attribute :host_board_part_revision, String
    icontrol_attribute :annunciator_board_serial, String
    icontrol_attribute :annunciator_board_part_revision, String
  end

  ##
  # A structure that contains the temperature metric value.
  # @attr [IControl::System::TemperatureMetricType] metric_type The metric type.
  # @attr [Numeric] value The metric value.
  class TemperatureMetric < IControl::Base::Struct
    icontrol_attribute :metric_type, IControl::System::TemperatureMetricType
    icontrol_attribute :value, Numeric
  end

  ##
  # This structure holds a name/value pair describing a characteristic of a piece of hardware, especially items specific to the hardware. Examples include version information and CPU speed.
  # @attr [String] name Name of the characteristic
  # @attr [String] value Value of the characteristic
  class VersionInformation < IControl::Base::Struct
    icontrol_attribute :name, String
    icontrol_attribute :value, String
  end


  ## A sequence of sequence of blade temperature measurements
  class BladeTemperatureSequence < IControl::Base::Sequence ; end

  ## A sequence of CPU metrics for a CPU.
  class CPUMetricSequence < IControl::Base::Sequence ; end

  ## A sequence of CPUUsageExtended items.
  class CPUUsageExtendedSequence < IControl::Base::Sequence ; end

  ## This structure has been deprecated; use CPUUsageExtendedInformation and related structures instead. A sequence of CPUUsage's.
  class CPUUsageSequence < IControl::Base::Sequence ; end

  ## A sequence of DiskUsage's.
  class DiskUsageSequence < IControl::Base::Sequence ; end

  ## A sequence of fan metrics for a fan.
  class FanMetricSequence < IControl::Base::Sequence ; end

  ## A sequence of hardware information structures
  class HardwareInformationSequence < IControl::Base::Sequence ; end

  ## A sequence of hardware types
  class HardwareTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of lock status
  class LockStatusSequence < IControl::Base::Sequence ; end

  ## A sequence of fan metrics for a chassis power supply.
  class PSMetricSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of CPU metrics, as in for multiple CPUs.
  class PlatformCPUSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of fan metrics, as in for multiple fans.
  class PlatformFanSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of power supply metrics, as in for redundant power supplies.
  class PlatformPSSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of temperature metrics.
  class PlatformTemperatureSequence < IControl::Base::Sequence ; end

  ## This structure has been deprecated; use get_host_statistics and related methods and data instead. A sequence of SubsystemMemoryUsage's.
  class SubsystemMemoryUsageSequence < IControl::Base::Sequence ; end

  ## A sequence of temperature metrics.
  class TemperatureMetricSequence < IControl::Base::Sequence ; end

  ## A sequence of version information name/value pairs
  class VersionInformationSequence < IControl::Base::Sequence ; end

  # An enumeration for different types of CPU metrics.
  class CPUMetricType < IControl::Base::Enumeration
    # The CPU number.
    CPU_INDEX = :CPU_INDEX
    # The current temperature in degrees Fahrenheit.
    CPU_TEMPERATURE = :CPU_TEMPERATURE
    # The current FAN speed in rotations per minute.
    CPU_FAN_SPEED = :CPU_FAN_SPEED
  end


  # An enumeration for different types of chassis fan metrics.
  class FanMetricType < IControl::Base::Enumeration
    # The fan number.
    FAN_INDEX = :FAN_INDEX
    # The current status of the fan. Possible values:		 0 - Bad status		 1 - Good status		 2 - Not present
    FAN_STATE = :FAN_STATE
    # The fan speed. This is only available if the status is GOOD.
    FAN_SPEED = :FAN_SPEED
  end


  # This enumeration represents a general category of hardware present in the system.
  class HardwareType < IControl::Base::Enumeration
    # network traffic switching hardware, such as a disaggregator
    HARDWARE_SWITCH = :HARDWARE_SWITCH
    # hardware data compression accelerators
    HARDWARE_COMPRESSION = :HARDWARE_COMPRESSION
    # hardware data encryption/decryption accelerators
    HARDWARE_ENCRYPTION = :HARDWARE_ENCRYPTION
    # network-based devices, such as NICs and HSB
    HARDWARE_NETWORK = :HARDWARE_NETWORK
    # programmable controllers, such as serial and FPGA
    HARDWARE_PIC = :HARDWARE_PIC
    # chassis components, such as the annunciator and fan tray
    HARDWARE_CHASSIS = :HARDWARE_CHASSIS
    # mezzanine components, such as the mezzanine board of a blade
    HARDWARE_MEZZANINE = :HARDWARE_MEZZANINE
    # base board components, such as the main board of a blade
    HARDWARE_BASE_BOARD = :HARDWARE_BASE_BOARD
  end


  # An enumeration for different types of chassis power supply metrics.
  class PSMetricType < IControl::Base::Enumeration
    # The power supply number.
    PS_INDEX = :PS_INDEX
    # The current state of the power supply. Possible values:		 0 - Bad status		 1 - Good status		 2 - Not present
    PS_STATE = :PS_STATE
  end


  # An enumeration for different types of chassis temperature metrics.
  class TemperatureMetricType < IControl::Base::Enumeration
    # The chassis index.
    TEMPERATURE_INDEX = :TEMPERATURE_INDEX
    # The current temperature value.
    TEMPERATURE_VALUE = :TEMPERATURE_VALUE
  end


end
require "system/cluster"
require "system/config_sync"
require "system/connections"
require "system/disk"
require "system/failover"
require "system/geo_ip"
require "system/inet"
require "system/internal"
require "system/services"
require "system/software_management"
require "system/statistics"
require "system/system_info"
