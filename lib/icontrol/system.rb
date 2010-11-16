module IControl::System

  class CPUMetricType < IControl::Base::Enumeration; end
  class FanMetricType < IControl::Base::Enumeration; end
  class HardwareType < IControl::Base::Enumeration; end
  class PSMetricType < IControl::Base::Enumeration; end
  class TemperatureMetricType < IControl::Base::Enumeration; end
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
  class SystemInfo < IControl::Base; end## A sequence of sequence of blade temperature measurements
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
  ##
  # An enumeration for different types of CPU metrics.
  class CPUMetricType < IControl::Base::Enumeration
    # The CPU number.
    CPU_INDEX = :CPU_INDEX
    # The current temperature in degrees Fahrenheit.
    CPU_TEMPERATURE = :CPU_TEMPERATURE
    # The current FAN speed in rotations per minute.
    CPU_FAN_SPEED = :CPU_FAN_SPEED
  end

  ##
  # An enumeration for different types of chassis fan metrics.
  class FanMetricType < IControl::Base::Enumeration
    # The fan number.
    FAN_INDEX = :FAN_INDEX
    # The current status of the fan. Possible values:		 0 - Bad status		 1 - Good status		 2 - Not present
    FAN_STATE = :FAN_STATE
    # The fan speed. This is only available if the status is GOOD.
    FAN_SPEED = :FAN_SPEED
  end

  ##
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

  ##
  # An enumeration for different types of chassis power supply metrics.
  class PSMetricType < IControl::Base::Enumeration
    # The power supply number.
    PS_INDEX = :PS_INDEX
    # The current state of the power supply. Possible values:		 0 - Bad status		 1 - Good status		 2 - Not present
    PS_STATE = :PS_STATE
  end

  ##
  # An enumeration for different types of chassis temperature metrics.
  class TemperatureMetricType < IControl::Base::Enumeration
    # The chassis index.
    TEMPERATURE_INDEX = :TEMPERATURE_INDEX
    # The current temperature value.
    TEMPERATURE_VALUE = :TEMPERATURE_VALUE
  end

  ##
  # Blade temperature information structure The blades hold a number of temperature sensors,
  # keyed by their slot (i.e., blade) and sensor identifiers.
  class BladeTemperature < IControl::Base::Struct
    # Slot/blade identifier
    icontrol_attribute :slot, Numeric

    icontrol_attribute :sensor, Numeric
    # Sensor location
    icontrol_attribute :location, String
    # Temperature recorded by the sensor (deg C)
    icontrol_attribute :temperature, Numeric
  end

  ##
  # A structure that contains the CPU metric value.
  class CPUMetric < IControl::Base::Struct
    # The metric type.
    icontrol_attribute :metric_type, IControl::System::CPUMetricType
    # The metric value.
    icontrol_attribute :value, Numeric
  end

  ##
  # This structure has been deprecated; use CPUUsageExtendedInformation and related structures
  # instead. A struct that contains the CPU usage for each CPU.
  class CPUUsage < IControl::Base::Struct
    # The numeric ID of the processor, i.e. 1, 2, 3, 4 ....
    icontrol_attribute :cpu_id, Numeric
    # The time spent by the processor in user context.
    icontrol_attribute :user, IControl::Common::ULong64
    # The time spent by the processor running niced processes.
    icontrol_attribute :niced, IControl::Common::ULong64
    # The time spent by the processor servicing system calls.
    icontrol_attribute :system, IControl::Common::ULong64
    # The time spent by the processor doing nothing.
    icontrol_attribute :idle, IControl::Common::ULong64
    # The time spent by the processor servicing hardware interrupts.
    icontrol_attribute :irq, IControl::Common::ULong64
    # The time spent by the processor servicing soft interrupts.
    icontrol_attribute :softirq, IControl::Common::ULong64
    # The time spent by the processor waiting for external I/O to complete.
    icontrol_attribute :iowait, IControl::Common::ULong64
  end

  ##
  # A struct that contains extended CPU usage, per CPU, for a host. The extended CPU
  # usage goes beyond the basic material available in CPUUsage. This structure represents
  # the extended CPU usage as a sequence of sequences of statistics. For a host, there
  # is a sequence of statistics per CPU, and the statistics for a CPU are a sequence.
  class CPUUsageExtended < IControl::Base::Struct
    # The host id.
    icontrol_attribute :host_id, String
    # The statistics for the host (one sequence for each CPU).
    icontrol_attribute :statistics, IControl::Common::StatisticSequenceSequence
  end

  ##
  # A struct that contains the extended CPU usage information for a sequence of hosts.
  class CPUUsageExtendedInformation < IControl::Base::Struct
    # The statistics for a sequence of hosts.
    icontrol_attribute :hosts, IControl::System::CPUUsageExtendedSequence
    # The time stamp at the time the statistics are gathered.
    icontrol_attribute :time_stamp, IControl::Common::TimeStamp
  end

  ##
  # This structure has been deprecated; use CPUUsageExtendedInformation and related structures
  # instead. A struct that contains the CPU usage information.
  class CPUUsageInformation < IControl::Base::Struct
    # The list of CPU usage patterns.
    icontrol_attribute :usages, IControl::System::CPUUsageSequence
    # The time stamp at which the statistics are gathered.
    icontrol_attribute :time_stamp, IControl::Common::TimeStamp
  end

  ##
  # Connection information for the system. This contains the local and remote addresses
  # used to connect to the system when using a method that returns this structure. Normally
  # a client would know the &amp;quot;local" address on which it connected to the system,
  # but if network translation changes the destination address of the system, this method
  # can inform the client of the translation without the client having to code the mapping.
  # This is designed to address the scenario in which the system is behind a virtual
  # address or similar and the client needs to learn, for example, whether an address
  # matches the cluster address.
  class ConnectionInformation < IControl::Base::Struct
    # The address and port on which the system was contacted.
    icontrol_attribute :local, IControl::Common::IPPortDefinition
    # The address and port of the client.
    icontrol_attribute :remote, IControl::Common::IPPortDefinition
  end

  ##
  # A struct that contains the disk usage for each partition.
  class DiskUsage < IControl::Base::Struct
    # The name of the disk partition.
    icontrol_attribute :partition_name, String
    # The number of bytes in one block.
    icontrol_attribute :block_size, IControl::Common::ULong64
    # The total number of blocks in this partition.
    icontrol_attribute :total_blocks, IControl::Common::ULong64
    # The number of available blocks in this partition.
    icontrol_attribute :free_blocks, IControl::Common::ULong64
    # The total number of file nodes in this partition.
    icontrol_attribute :total_nodes, IControl::Common::ULong64
    # The number of free file nodes in this partition.
    icontrol_attribute :free_nodes, IControl::Common::ULong64
  end

  ##
  # A struct that contains the disk usage information.
  class DiskUsageInformation < IControl::Base::Struct
    # The list of disk usage patterns.
    icontrol_attribute :usages, IControl::System::DiskUsageSequence
    # The time stamp at which the statistics are gathered.
    icontrol_attribute :time_stamp, IControl::Common::TimeStamp
  end

  ##
  # A structure that contains the fan metric value.
  class FanMetric < IControl::Base::Struct
    # The metric type.
    icontrol_attribute :metric_type, IControl::System::FanMetricType
    # The metric value.
    icontrol_attribute :value, Numeric
  end

  ##
  # A struct that contains the global CPU usage information. This is one set of combined
  # ("rolled up") statistics for all hosts.
  class GlobalCPUUsageExtendedInformation < IControl::Base::Struct
    # The global CPU usage statistics.
    icontrol_attribute :statistics, IControl::Common::StatisticSequence
    # The time stamp at the time the statistics are gathered.
    icontrol_attribute :time_stamp, IControl::Common::TimeStamp
  end

  ##
  # This structure holds the information for an individual piece of hardware in the system.
  class HardwareInformation < IControl::Base::Struct
    # System name for the hardware
    icontrol_attribute :name, String
    # General hardware type
    icontrol_attribute :type, IControl::System::HardwareType
    # Identifier for the blade holding the hardware (zero for non-blade systems)
    icontrol_attribute :slot, Numeric
    # Model information
    icontrol_attribute :model, String
    # Miscellaneous information - an array of name/value pairs holding specific nuggets
    icontrol_attribute :versions, IControl::System::VersionInformationSequence
  end

  ##
  # A structure that describes device lock
  class LockStatus < IControl::Base::Struct
    # The name of the lock. Lock is identified by this name.
    icontrol_attribute :lock_name, String
    # TTL of the lock in seconds. The lock will be automatically removed after this time
    # expires.
    icontrol_attribute :time_left, Numeric
    # User oriented information about this lock
    icontrol_attribute :comment, String
  end

  ##
  # This structure has been deprecated; use get_host_statistics and related methods and
  # data instead. (As of 9.4.0, the system supports retrieving the overall memory attributes
  # by host; retrieving the detailed subsystem attributes by host is not supported).
  # A struct that contains the memory usage information.
  class MemoryUsageInformation < IControl::Base::Struct
    # The total amount of physical memory (bytes) in the host system.
    icontrol_attribute :total_memory, IControl::Common::ULong64
    # The total amount of memory currently in use (bytes) by the host system.
    icontrol_attribute :used_memory, IControl::Common::ULong64
    # The list of subsystem memory usage patterns.
    icontrol_attribute :usages, IControl::System::SubsystemMemoryUsageSequence
    # The time stamp at which the statistics are gathered.
    icontrol_attribute :time_stamp, IControl::Common::TimeStamp
  end

  ##
  # A structure that contains the power supply metric value.
  class PSMetric < IControl::Base::Struct
    # The metric type.
    icontrol_attribute :metric_type, IControl::System::PSMetricType
    # The metric value.
    icontrol_attribute :value, Numeric
  end

  ##
  # A structure that contains the platform CPU information and timestamp.
  class PlatformCPUs < IControl::Base::Struct
    # The platform CPU information.
    icontrol_attribute :cpus, IControl::System::CPUMetricSequenceSequence
    # The time stamp at which the statistics are gathered.
    icontrol_attribute :time_stamp, IControl::Common::TimeStamp
  end

  ##
  # A structure that contains the platform fan information and timestamp.
  class PlatformFans < IControl::Base::Struct
    # The platform fan information.
    icontrol_attribute :fans, IControl::System::FanMetricSequenceSequence
    # The time stamp at which the statistics are gathered.
    icontrol_attribute :time_stamp, IControl::Common::TimeStamp
  end

  ##
  # A structure that contains the platform power supply information and timestamp.
  class PlatformPowerSupplies < IControl::Base::Struct
    # The platform power supply information.
    icontrol_attribute :power_supplies, IControl::System::PSMetricSequenceSequence
    # The time stamp at which the statistics are gathered.
    icontrol_attribute :time_stamp, IControl::Common::TimeStamp
  end

  ##
  # A structure that contains the platform temperatures and timestamp.
  class PlatformTemperatures < IControl::Base::Struct
    # The platform temperatures.
    icontrol_attribute :temperatures, IControl::System::TemperatureMetricSequenceSequence
    # The time stamp at which the statistics are gathered.
    icontrol_attribute :time_stamp, IControl::Common::TimeStamp
  end

  ##
  # A struct that contains the identifying attributes of the installed products.
  class ProductInformation < IControl::Base::Struct
    # The identifier describing the installed product.
    icontrol_attribute :product_code, String
    # The version of the installed product.
    icontrol_attribute :product_version, String
    # The package version of the installed product.
    icontrol_attribute :package_version, String
    # The package edition of the installed product.
    icontrol_attribute :package_edition, String
    # A list of feature names available in the installed product.
    icontrol_attribute :product_features, StringSequence
  end

  ##
  # This structure has been deprecated; use get_host_statistics and related methods and
  # data instead. A struct that contains the memory usage for each subsystem.
  class SubsystemMemoryUsage < IControl::Base::Struct
    # The name of the subsystem using this memory.
    icontrol_attribute :subsystem_name, String
    # The number of bytes currently allocated for this subsystem.
    icontrol_attribute :current_allocated, IControl::Common::ULong64
    # The maximum number of bytes allocated for this subsystem.
    icontrol_attribute :maximum_allocated, IControl::Common::ULong64
    # The size in bytes of each object.
    icontrol_attribute :size, IControl::Common::ULong64
  end

  ##
  # A struct that contains the identifying attributes of the operating system.
  class SystemInformation < IControl::Base::Struct
    # The name of the operating system implementation.
    icontrol_attribute :system_name, String
    # The host name of the system.
    icontrol_attribute :host_name, String
    # The release level of the operating system.
    icontrol_attribute :os_release, String
    # The hardware platform CPU type.
    icontrol_attribute :os_machine, String
    # The version string for the release of the operating system.
    icontrol_attribute :os_version, String
    # The platform of the device.
    icontrol_attribute :platform, String
    # The product category of the device.
    icontrol_attribute :product_category, String
    # The chassis serial number.
    icontrol_attribute :chassis_serial, String
    # The serial number of the switch board.
    icontrol_attribute :switch_board_serial, String
    # The part revision number of the switch board.
    icontrol_attribute :switch_board_part_revision, String
    # The serial number of the host motherboard.
    icontrol_attribute :host_board_serial, String
    # The part revision number of the host board.
    icontrol_attribute :host_board_part_revision, String
    # The serial number of the annuciator board.
    icontrol_attribute :annunciator_board_serial, String
    # The part revision number of the annunciator board.
    icontrol_attribute :annunciator_board_part_revision, String
  end

  ##
  # A structure that contains the temperature metric value.
  class TemperatureMetric < IControl::Base::Struct
    # The metric type.
    icontrol_attribute :metric_type, IControl::System::TemperatureMetricType
    # The metric value.
    icontrol_attribute :value, Numeric
  end

  ##
  # This structure holds a name/value pair describing a characteristic of a piece of
  # hardware, especially items specific to the hardware. Examples include version information
  # and CPU speed.
  class VersionInformation < IControl::Base::Struct
    # Name of the characteristic
    icontrol_attribute :name, String
    # Value of the characteristic
    icontrol_attribute :value, String
  end


end
require "system/cluster"
require "system/configsync"
require "system/connections"
require "system/disk"
require "system/failover"
require "system/geoip"
require "system/inet"
require "system/internal"
require "system/services"
require "system/softwaremanagement"
require "system/statistics"
require "system/systeminfo"
