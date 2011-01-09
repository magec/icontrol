module IControl::Common

  class Expiration < IControl::Base::Struct; end
  class IPHost < IControl::Base::Struct; end
  class IPNetmask < IControl::Base::Struct; end
  class IPPortDefinition < IControl::Base::Struct; end
  class KeyValue < IControl::Base::Struct; end
  class Long64 < IControl::Base::Struct; end
  class ObjectStatus < IControl::Base::Struct; end
  class Statistic < IControl::Base::Struct; end
  class TimeStamp < IControl::Base::Struct; end
  class TimeZone < IControl::Base::Struct; end
  class ULong64 < IControl::Base::Struct; end
  class VLANFilterList < IControl::Base::Struct; end
  class VirtualServerDefinition < IControl::Base::Struct; end
  class AnySequence < IControl::Base::Sequence ; end
  class ArmedStateSequence < IControl::Base::Sequence ; end
  class AuthenticationMethodSequence < IControl::Base::Sequence ; end
  class AvailabilityStatusSequence < IControl::Base::Sequence ; end
  class BooleanSequence < IControl::Base::Sequence ; end
  class BooleanSequenceSequence < IControl::Base::SequenceSequence ; end
  class CharSequence < IControl::Base::Sequence ; end
  class DoubleSequence < IControl::Base::Sequence ; end
  class EnabledStateSequence < IControl::Base::Sequence ; end
  class EnabledStateSequenceSequence < IControl::Base::SequenceSequence ; end
  class EnabledStatusSequence < IControl::Base::Sequence ; end
  class ExpirationSequence < IControl::Base::Sequence ; end
  class FloatSequence < IControl::Base::Sequence ; end
  class HAActionSequence < IControl::Base::Sequence ; end
  class HAStateSequence < IControl::Base::Sequence ; end
  class HAStateSequenceSequence < IControl::Base::SequenceSequence ; end
  class IPAddress < IControl::Base::Sequence ; end
  class IPAddressSequence < IControl::Base::Sequence ; end
  class IPAddressSequenceSequence < IControl::Base::SequenceSequence ; end
  class IPHostSequence < IControl::Base::Sequence ; end
  class IPNetmaskSequence < IControl::Base::Sequence ; end
  class IPNetmaskSequenceSequence < IControl::Base::SequenceSequence ; end
  class IPPortDefinitionSequence < IControl::Base::Sequence ; end
  class IPPortDefinitionSequenceSequence < IControl::Base::SequenceSequence ; end
  class KeyValueSequence < IControl::Base::Sequence ; end
  class Long64Sequence < IControl::Base::Sequence ; end
  class LongSequence < IControl::Base::Sequence ; end
  class ObjectStatusSequence < IControl::Base::Sequence ; end
  class OctetSequence < IControl::Base::Sequence ; end
  class PortNumber < IControl::Base::Sequence ; end
  class PortSequence < IControl::Base::Sequence ; end
  class ProtocolTypeSequence < IControl::Base::Sequence ; end
  class ShortSequence < IControl::Base::Sequence ; end
  class SourcePortBehaviorSequence < IControl::Base::Sequence ; end
  class StatisticSequence < IControl::Base::Sequence ; end
  class StatisticSequenceSequence < IControl::Base::SequenceSequence ; end
  class StringSequence < IControl::Base::Sequence ; end
  class StringSequenceSequence < IControl::Base::SequenceSequence ; end
  class TMOSModuleSequence < IControl::Base::Sequence ; end
  class TimeStampSequence < IControl::Base::Sequence ; end
  class ULong < IControl::Base::Sequence ; end
  class ULong64Sequence < IControl::Base::Sequence ; end
  class ULongSequence < IControl::Base::Sequence ; end
  class ULongSequenceSequence < IControl::Base::SequenceSequence ; end
  class UShort < IControl::Base::Sequence ; end
  class UShortSequence < IControl::Base::Sequence ; end
  class VLANFilterListSequence < IControl::Base::Sequence ; end
  class VirtualServerSequence < IControl::Base::Sequence ; end
  class VirtualServerSequenceSequence < IControl::Base::SequenceSequence ; end
  # A list of armed states.
  class ArmedState < IControl::Base::Enumeration; end
  # A list of different authentication methods.
  class AuthenticationMethod < IControl::Base::Enumeration; end
  # A list of possible values for an object's availability status.
  class AvailabilityStatus < IControl::Base::Enumeration; end
  # An enumeration of daemon status.
  class DaemonStatus < IControl::Base::Enumeration; end
  # A list of enabled states.
  class EnabledState < IControl::Base::Enumeration; end
  # A list of possible values for enabled status.
  class EnabledStatus < IControl::Base::Enumeration; end
  # An enumeration of chaining flags used in file transfers. This is used to avoid having
  # to transfer the whole file at one time.
  class FileChainType < IControl::Base::Enumeration; end
  # An enumeration of HA (High Availability) actions.
  class HAAction < IControl::Base::Enumeration; end
  # An enumeration of HA (High Availability) states.
  class HAState < IControl::Base::Enumeration; end
  # An enumeration to indicate whether the entry is an IP address or a hostname.
  class IPHostType < IControl::Base::Enumeration; end
  # An enumeration of protocol types.
  class ProtocolType < IControl::Base::Enumeration; end
  # An enumeration controlling source port behavior.
  class SourcePortBehavior < IControl::Base::Enumeration; end
  # An enumeration of different statistic types.
  class StatisticType < IControl::Base::Enumeration; end
  # A list of TMOS modules.
  class TMOSModule < IControl::Base::Enumeration; end






  # Raised if the credentials are not valid.
  class AccessDenied < IControl::Base::Exception; end
  # Raised if one of the arguments is invalid.
  class InvalidArgument < IControl::Base::Exception; end
  # Raised when the credentials cannot be validated.
  class InvalidUser < IControl::Base::Exception; end
  # Raised when the requested interface name is not found.
  class NoSuchInterface < IControl::Base::Exception; end
  # Raised if the method is not implemented yet.
  class NotImplemented < IControl::Base::Exception; end
  # Raised if the operation failed.
  class OperationFailed < IControl::Base::Exception; end
  # Raised if a memory allocation error occurs.
  class OutOfMemory < IControl::Base::Exception; end
  ##
  # A struct that describes an expiration period.
  # @attr [Numeric] days The number of days until expiration.
  # @attr [Numeric] hours The number of hours until expiration.
  # @attr [Numeric] minutes The number of minutes until expiration.
  # @attr [Numeric] seconds The number of seconds until expiration.
  class Expiration < IControl::Base::Struct
    icontrol_attribute :days, Numeric
    icontrol_attribute :hours, Numeric
    icontrol_attribute :minutes, Numeric
    icontrol_attribute :seconds, Numeric
  end

  ##
  # An struct that specifies either an explicit IP address, or a hostname.
  # @attr [IControl::Common::IPHostType] type An indicator of what type of value the ip_or_host string represents.
  # @attr [String] ip_or_host The string representing either an IP address or a hostname.
  class IPHost < IControl::Base::Struct
    icontrol_attribute :type, IControl::Common::IPHostType
    icontrol_attribute :ip_or_host, String
  end

  ##
  # A struct that describes an IP address/netmask.
  # @attr [String] address The IP Address.
  # @attr [String] netmask The netmask.
  class IPNetmask < IControl::Base::Struct
    icontrol_attribute :address, String
    icontrol_attribute :netmask, String
  end

  ##
  # A struct that describes an IP address/port pair.
  # @attr [String] address The IP Address.
  # @attr [Numeric] port The port number.
  class IPPortDefinition < IControl::Base::Struct
    icontrol_attribute :address, String
    icontrol_attribute :port, Numeric
  end

  ##
  # A key/value combination.
  # @attr [String] key The string identifying the pair.
  # @attr [String] value The value of the pair.
  class KeyValue < IControl::Base::Struct
    icontrol_attribute :key, String
    icontrol_attribute :value, String
  end

  ##
  # A 64-bit, signed integer.
  # @attr [Numeric] high The high-order 32-bit signed integer.
  # @attr [Numeric] low The low-order 32-bit signed integer.
  class Long64 < IControl::Base::Struct
    icontrol_attribute :high, Numeric
    icontrol_attribute :low, Numeric
  end

  ##
  # An struct that specifies an object status.
  # @attr [IControl::Common::AvailabilityStatus] availability_status The availability color status of the object.
  # @attr [IControl::Common::EnabledStatus] enabled_status The enabled status of the object.
  # @attr [String] status_description The textual description of the object's status.
  class ObjectStatus < IControl::Base::Struct
    icontrol_attribute :availability_status, IControl::Common::AvailabilityStatus
    icontrol_attribute :enabled_status, IControl::Common::EnabledStatus
    icontrol_attribute :status_description, String
  end

  ##
  # A statistic entry with type and value.
  # @attr [IControl::Common::StatisticType] type The type of the statistic.
  # @attr [IControl::Common::ULong64] value The value of the statistic.
  # @attr [Numeric] time_stamp The timestamp of the statistic (Not currently supported in 9.0, intended for future use)
  class Statistic < IControl::Base::Struct
    icontrol_attribute :type, IControl::Common::StatisticType
    icontrol_attribute :value, IControl::Common::ULong64
    icontrol_attribute :time_stamp, Numeric
  end

  ##
  # A struct that describes the current time.
  # @attr [Numeric] year The number of years since 0000.
  # @attr [Numeric] month The number of months since January, from 1 to 12.
  # @attr [Numeric] day The day of the month, from 1 to 31.
  # @attr [Numeric] hour The number of hours past midnight, from 0 to 23.
  # @attr [Numeric] minute The number of minutes after the hour, from 0 to 59.
  # @attr [Numeric] second The number of seconds after the minute, from 0 to 59 (can be up to 61 to allow for leap seconds).
  class TimeStamp < IControl::Base::Struct
    icontrol_attribute :year, Numeric
    icontrol_attribute :month, Numeric
    icontrol_attribute :day, Numeric
    icontrol_attribute :hour, Numeric
    icontrol_attribute :minute, Numeric
    icontrol_attribute :second, Numeric
  end

  ##
  # A struct that describes the current time zone.
  # @attr [Numeric] gmt_offset The number of hours east of UTC.
  # @attr [String] time_zone The timezone abbreviation.
  # @attr [Object] is_daylight_saving_time The daylight savings time is in effect.
  class TimeZone < IControl::Base::Struct
    icontrol_attribute :gmt_offset, Numeric
    icontrol_attribute :time_zone, String
    icontrol_attribute :is_daylight_saving_time, Object
  end

  ##
  # A 64-bit, unsigned integer.
  # @attr [Numeric] high The high-order 32-bit unsigned integer.
  # @attr [Numeric] low The low-order 32-bit unsigned integer.
  class ULong64 < IControl::Base::Struct
    icontrol_attribute :high, Numeric
    icontrol_attribute :low, Numeric
  end

  ##
  # A struct that specifies a list of VLAN names used as ingress VLAN filters.
  # @attr [IControl::Common::EnabledState] state An indicator of whether the VLAN list is a list of enabled or disabled VLANs .
  # @attr [StringSequence] vlans The list of VLAN names in the filter.
  class VLANFilterList < IControl::Base::Struct
    icontrol_attribute :state, IControl::Common::EnabledState
    icontrol_attribute :vlans, StringSequence
  end

  ##
  # A struct that uniquely identifies a virtual server.
  # @attr [String] name The virtual server's name.
  # @attr [String] address The virtual server's address.
  # @attr [Numeric] port The virtual server's port.
  # @attr [IControl::Common::ProtocolType] protocol The virtual server's protocol.
  class VirtualServerDefinition < IControl::Base::Struct
    icontrol_attribute :name, String
    icontrol_attribute :address, String
    icontrol_attribute :port, Numeric
    icontrol_attribute :protocol, IControl::Common::ProtocolType
  end


  ## A sequence of Any. Any provides a universal type that can hold a value of an arbitrary IDL type. You can use Any to send and receive values whose types are not fixed at compile time.
  class AnySequence < IControl::Base::Sequence ; end

  ## A sequence of armed states.
  class ArmedStateSequence < IControl::Base::Sequence ; end

  ## A sequence of authentication methods.
  class AuthenticationMethodSequence < IControl::Base::Sequence ; end

  ## A sequence of availability statuses.
  class AvailabilityStatusSequence < IControl::Base::Sequence ; end

  ## A sequence of Boolean values.
  class BooleanSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of Boolean values.
  class BooleanSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of Chars.
  class CharSequence < IControl::Base::Sequence ; end

  ## A sequence of double, floating-point integers.
  class DoubleSequence < IControl::Base::Sequence ; end

  ## A sequence of EnabledState's.
  class EnabledStateSequence < IControl::Base::Sequence ; end

  ## A sequence of sequences of member states.
  class EnabledStateSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of enabled statuses.
  class EnabledStatusSequence < IControl::Base::Sequence ; end

  ## A sequence of Expirations.
  class ExpirationSequence < IControl::Base::Sequence ; end

  ## A sequence of floating integers.
  class FloatSequence < IControl::Base::Sequence ; end

  ## A sequence of HA states.
  class HAActionSequence < IControl::Base::Sequence ; end

  ## A sequence of HA states.
  class HAStateSequence < IControl::Base::Sequence ; end

  ## A sequence of sequences of HA states.
  class HAStateSequenceSequence < IControl::Base::SequenceSequence ; end

  ## An IP address.
  class IPAddress < IControl::Base::Sequence ; end

  ## A sequence of IP addresses.
  class IPAddressSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of IP addresses.
  class IPAddressSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of IPHost entries.
  class IPHostSequence < IControl::Base::Sequence ; end

  ## A sequence of IP address/netmask definitions.
  class IPNetmaskSequence < IControl::Base::Sequence ; end

  ## An alias for sequence of sequence of IP address/netmask definitions.
  class IPNetmaskSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of IP address/port definitions.
  class IPPortDefinitionSequence < IControl::Base::Sequence ; end

  ## An alias for sequence of sequence of IP address/port definitions.
  class IPPortDefinitionSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of key/value pairs.
  class KeyValueSequence < IControl::Base::Sequence ; end

  ## A sequence of 64-bit, signed integers.
  class Long64Sequence < IControl::Base::Sequence ; end

  ## A sequence of long integers.
  class LongSequence < IControl::Base::Sequence ; end

  ## A sequence of object statuses.
  class ObjectStatusSequence < IControl::Base::Sequence ; end

  ## A sequence of octets (eight-bit bytes).
  class OctetSequence < IControl::Base::Sequence ; end

  ## An alias for port number.
  class PortNumber < IControl::Base::Sequence ; end

  ## A sequence of port numbers.
  class PortSequence < IControl::Base::Sequence ; end

  ## A sequence of Protocol types.
  class ProtocolTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of short integers.
  class ShortSequence < IControl::Base::Sequence ; end

  ## A sequence of source port behaviors.
  class SourcePortBehaviorSequence < IControl::Base::Sequence ; end

  ## A sequence of different statistics.
  class StatisticSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of different statistics.
  class StatisticSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of string values.
  class StringSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of string values.
  class StringSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of modules.
  class TMOSModuleSequence < IControl::Base::Sequence ; end

  ## A sequence of Timestamps.
  class TimeStampSequence < IControl::Base::Sequence ; end

  ## An unsigned long integer.
  class ULong < IControl::Base::Sequence ; end

  ## A sequence of 64-bit, unsigned integers.
  class ULong64Sequence < IControl::Base::Sequence ; end

  ## A sequence of unsigned long integers.
  class ULongSequence < IControl::Base::Sequence ; end

  ## A sequence of unsigned long integers.
  class ULongSequenceSequence < IControl::Base::SequenceSequence ; end

  ## An unsigned short integer.
  class UShort < IControl::Base::Sequence ; end

  ## A sequence of unsigned short integers.
  class UShortSequence < IControl::Base::Sequence ; end

  ## A sequence of VLANFilterLists.
  class VLANFilterListSequence < IControl::Base::Sequence ; end

  ## A sequence of virtual server definitions.
  class VirtualServerSequence < IControl::Base::Sequence ; end

  ## A alias for a sequence of virtual server definitions.
  class VirtualServerSequenceSequence < IControl::Base::SequenceSequence ; end

  # A list of armed states.
  class ArmedState < IControl::Base::Enumeration
    # The object is disarmed.
    STATE_DISARMED = :STATE_DISARMED
    # The object is armed.
    STATE_ARMED = :STATE_ARMED
  end


  # A list of different authentication methods.
  class AuthenticationMethod < IControl::Base::Enumeration
    # Authenticate users against a local user database.
    AUTHENTICATION_METHOD_LOCAL = :AUTHENTICATION_METHOD_LOCAL
    # Authenticate users against a remote LDAP server.
    AUTHENTICATION_METHOD_LDAP = :AUTHENTICATION_METHOD_LDAP
    # Authenticate users against a remote Active Directory server.
    AUTHENTICATION_METHOD_ACTIVE_DIRECTORY = :AUTHENTICATION_METHOD_ACTIVE_DIRECTORY
    # Authenticate users against a remote RADIUS server.
    AUTHENTICATION_METHOD_RADIUS = :AUTHENTICATION_METHOD_RADIUS
  end


  # A list of possible values for an object's availability status.
  class AvailabilityStatus < IControl::Base::Enumeration
    # Error scenario.
    AVAILABILITY_STATUS_NONE = :AVAILABILITY_STATUS_NONE
    # The object is available in some capacity.
    AVAILABILITY_STATUS_GREEN = :AVAILABILITY_STATUS_GREEN
    # The object is not available at the current moment, but may become				 available again even without user intervention.
    AVAILABILITY_STATUS_YELLOW = :AVAILABILITY_STATUS_YELLOW
    # The object is not available, and will require user intervention to make				 this object available again.
    AVAILABILITY_STATUS_RED = :AVAILABILITY_STATUS_RED
    # The object's availability status is unknown.
    AVAILABILITY_STATUS_BLUE = :AVAILABILITY_STATUS_BLUE
    # The object's is unlicensed.
    AVAILABILITY_STATUS_GRAY = :AVAILABILITY_STATUS_GRAY
  end


  # An enumeration of daemon status.
  class DaemonStatus < IControl::Base::Enumeration
    # daemon is enabled and running
    ENABLED_RUNNING = :ENABLED_RUNNING
    # daemon is enabled but not running
    ENABLED_NOT_RUNNING = :ENABLED_NOT_RUNNING
    # daemon is disabled but running
    DISABLED_RUNNING = :DISABLED_RUNNING
    # daemon is disabled and not running
    DISABLED_NOT_RUNNING = :DISABLED_NOT_RUNNING
  end


  # A list of enabled states.
  class EnabledState < IControl::Base::Enumeration
    # The object is disabled.
    STATE_DISABLED = :STATE_DISABLED
    # The object is enabled.
    STATE_ENABLED = :STATE_ENABLED
  end


  # A list of possible values for enabled status.
  class EnabledStatus < IControl::Base::Enumeration
    # Error scenario.
    ENABLED_STATUS_NONE = :ENABLED_STATUS_NONE
    # The object is active when in Green availability status. It may or may not				 be active when in Blue availability status.
    ENABLED_STATUS_ENABLED = :ENABLED_STATUS_ENABLED
    # The object is inactive regardless of availability status.
    ENABLED_STATUS_DISABLED = :ENABLED_STATUS_DISABLED
    # The object is inactive regardless of availability status because					 its parent has been disabled, but the object itself is still enabled.
    ENABLED_STATUS_DISABLED_BY_PARENT = :ENABLED_STATUS_DISABLED_BY_PARENT
  end


  # An enumeration of chaining flags used in file transfers. This is used to avoid having
  # to transfer the whole file at one time.
  class FileChainType < IControl::Base::Enumeration
    # Unitialized chain type flag.
    FILE_UNDEFINED = :FILE_UNDEFINED
    # The first chunk of the file being transferred.
    FILE_FIRST = :FILE_FIRST
    # The middle chunk of the file being transferred.
    FILE_MIDDLE = :FILE_MIDDLE
    # Unused enumeration.
    FILE_UNUSED = :FILE_UNUSED
    # The last chunk of the file being transferred.
    FILE_LAST = :FILE_LAST
    # The only chunk of the file being transferred.
    FILE_FIRST_AND_LAST = :FILE_FIRST_AND_LAST
  end


  # An enumeration of HA (High Availability) actions.
  class HAAction < IControl::Base::Enumeration
    # No action.
    HA_ACTION_NONE = :HA_ACTION_NONE
    # Reboot the system.
    HA_ACTION_REBOOT = :HA_ACTION_REBOOT
    # Restart the HA daemon.
    HA_ACTION_RESTART = :HA_ACTION_RESTART
    # Failover to the peer system.
    HA_ACTION_FAILOVER = :HA_ACTION_FAILOVER
    # Failover to the peer system, then restart.
    HA_ACTION_FAILOVER_RESTART = :HA_ACTION_FAILOVER_RESTART
    # Become the active device in a redundant pair.
    HA_ACTION_GO_ACTIVE = :HA_ACTION_GO_ACTIVE
    # Restart all daemons.
    HA_ACTION_RESTART_ALL = :HA_ACTION_RESTART_ALL
    # Failover and abort TMM and BCM56XXD .
    HA_ACTION_FAILOVER_ABORT_TRAFFIC_MGT = :HA_ACTION_FAILOVER_ABORT_TRAFFIC_MGT
  end


  # An enumeration of HA (High Availability) states.
  class HAState < IControl::Base::Enumeration
    # System is offline.
    HA_STATE_OFFLINE = :HA_STATE_OFFLINE
    # System has been forced offline manually.
    HA_STATE_FORCED_OFFLINE = :HA_STATE_FORCED_OFFLINE
    # System is in standby state.
    HA_STATE_STANDBY = :HA_STATE_STANDBY
    # System is in active state.
    HA_STATE_ACTIVE = :HA_STATE_ACTIVE
    # System state is unknown (or unsupported by iControl).
    HA_STATE_UNKNOWN = :HA_STATE_UNKNOWN
  end


  # An enumeration to indicate whether the entry is an IP address or a hostname.
  class IPHostType < IControl::Base::Enumeration
    # It's an IP address.
    IP_ADDRESS = :IP_ADDRESS
    # It's a hostname.
    HOSTNAME = :HOSTNAME
  end


  # An enumeration of protocol types.
  class ProtocolType < IControl::Base::Enumeration
    # Protocol is wildcard.
    PROTOCOL_ANY = :PROTOCOL_ANY
    # Protocol is IPv6 header.
    PROTOCOL_IPV6 = :PROTOCOL_IPV6
    # Protocol is IPv6 routing header.
    PROTOCOL_ROUTING = :PROTOCOL_ROUTING
    # Protocol is IPv6 no next header.
    PROTOCOL_NONE = :PROTOCOL_NONE
    # Protocol is IPv6 fragmentation header.
    PROTOCOL_FRAGMENT = :PROTOCOL_FRAGMENT
    # Protocol is IPv6 destination options.
    PROTOCOL_DSTOPTS = :PROTOCOL_DSTOPTS
    # Protocol is TCP.
    PROTOCOL_TCP = :PROTOCOL_TCP
    # Protocol is UDP.
    PROTOCOL_UDP = :PROTOCOL_UDP
    # Protocol is ICMP.
    PROTOCOL_ICMP = :PROTOCOL_ICMP
    # Protocol is ICMPv6 .
    PROTOCOL_ICMPV6 = :PROTOCOL_ICMPV6
    # Protocol is OSPF.
    PROTOCOL_OSPF = :PROTOCOL_OSPF
    # Protocol is SCTP.
    PROTOCOL_SCTP = :PROTOCOL_SCTP
  end


  # An enumeration controlling source port behavior.
  class SourcePortBehavior < IControl::Base::Enumeration
    # Attempt to preserve the source port (best effort). This is the default.
    SOURCE_PORT_PRESERVE = :SOURCE_PORT_PRESERVE
    # Preserve source port. Use of the preserve-strict setting should be restricted to UDP only under very special circumstances such as nPath or transparent (that is, no translation of any other L3/L4 field), where there is a 1:1 relationship between virtual IP addresses and node addresses, or when clustered multi-processing (CMP) is disabled.
    SOURCE_PORT_PRESERVE_STRICT = :SOURCE_PORT_PRESERVE_STRICT
    # The change setting is useful for obfuscating internal network addresses.
    SOURCE_PORT_CHANGE = :SOURCE_PORT_CHANGE
  end


  # An enumeration of different statistic types.
  class StatisticType < IControl::Base::Enumeration
    # Number of times a virtual server has been unabled to direct connection to a node.
    STATISTIC_NO_NODE_ERRORS = :STATISTIC_NO_NODE_ERRORS
    # The minimum duration of connection.
    STATISTIC_MINIMUM_CONNECTION_DURATION = :STATISTIC_MINIMUM_CONNECTION_DURATION
    # The mean duration of connection.
    STATISTIC_MEAN_CONNECTION_DURATION = :STATISTIC_MEAN_CONNECTION_DURATION
    # The maximum duration of connection.
    STATISTIC_MAXIMUM_CONNECTION_DURATION = :STATISTIC_MAXIMUM_CONNECTION_DURATION
    # Total number of requests.
    STATISTIC_TOTAL_REQUESTS = :STATISTIC_TOTAL_REQUESTS
    # Total number of connections assisted by PVA.
    STATISTIC_TOTAL_PVA_ASSISTED_CONNECTIONS = :STATISTIC_TOTAL_PVA_ASSISTED_CONNECTIONS
    # Current number of connections assisted by PVA.
    STATISTIC_CURRENT_PVA_ASSISTED_CONNECTIONS = :STATISTIC_CURRENT_PVA_ASSISTED_CONNECTIONS
    # Total number of timeout errors.
    STATISTIC_TIMEOUTS = :STATISTIC_TIMEOUTS
    # Total number of collisions.
    STATISTIC_COLLISIONS = :STATISTIC_COLLISIONS
    # Total number of dropped packets on ingress.
    STATISTIC_DROPPED_PACKETS_IN = :STATISTIC_DROPPED_PACKETS_IN
    # Total number of dropped packets on egress.
    STATISTIC_DROPPED_PACKETS_OUT = :STATISTIC_DROPPED_PACKETS_OUT
    # Total number of dropped packets.
    STATISTIC_DROPPED_PACKETS_TOTAL = :STATISTIC_DROPPED_PACKETS_TOTAL
    # Total number of errors on ingress.
    STATISTIC_ERRORS_IN = :STATISTIC_ERRORS_IN
    # Total number of errors on egress.
    STATISTIC_ERRORS_OUT = :STATISTIC_ERRORS_OUT
    # Total CPU cycles spent in traffic management. The actual				 CPU cycles spent handling traffic is Total - (Idle + Sleep).				 These numbers are cumulative since startup. The difference				 over an interval should be used to get the current load.
    STATISTIC_TM_TOTAL_CYCLES = :STATISTIC_TM_TOTAL_CYCLES
    # CPU cycles spent polling with no traffic. The actual CPU cycles				 spent handling traffic is Total - (Idle + Sleep). These numbers				 are cumulative since startup. The difference over an interval				 should be used to get the current load.
    STATISTIC_TM_IDLE_CYCLES = :STATISTIC_TM_IDLE_CYCLES
    # CPU cycles yielded to other processes (uniprocessor only). The				 actual CPU cycles spent handling traffic is Total - (Idle + Sleep).				 These numbers are cumulative since startup. The difference over				 an interval should be used to get the current load.
    STATISTIC_TM_SLEEP_CYCLES = :STATISTIC_TM_SLEEP_CYCLES
    # Connection requests rejected because the virtual server was in					 maintenance mode.
    STATISTIC_MAINTENANCE_MODE_DENIALS = :STATISTIC_MAINTENANCE_MODE_DENIALS
    # Connection requests rejected because they								exceeded the connection limit for a virtual address.
    STATISTIC_VIRTUAL_ADDRESS_MAXIMUM_CONNECTION_DENIALS = :STATISTIC_VIRTUAL_ADDRESS_MAXIMUM_CONNECTION_DENIALS
    # Connection requests rejected because they							 exceeded the connection limit for a virtual server.
    STATISTIC_VIRTUAL_SERVER_MAXIMUM_CONNECTION_DENIALS = :STATISTIC_VIRTUAL_SERVER_MAXIMUM_CONNECTION_DENIALS
    # Packets that are not connection requests and are destined for a						 virtual server that has no connection for the client address.
    STATISTIC_VIRTUAL_SERVER_NON_SYN_DENIALS = :STATISTIC_VIRTUAL_SERVER_NON_SYN_DENIALS
    # Incoming packets that could not be processed by a virtual server, NAT, or SNAT.
    STATISTIC_NO_HANDLER_DENIALS = :STATISTIC_NO_HANDLER_DENIALS
    # Number of dropped packets due to exceeding licensing limitations.
    STATISTIC_LICENSE_DENIALS = :STATISTIC_LICENSE_DENIALS
    # Connection could not be created because memory was not available.
    STATISTIC_CONNECTION_FAILED_MEMORY_ERRORS = :STATISTIC_CONNECTION_FAILED_MEMORY_ERRORS
    # Number of active CPUs on the system.
    STATISTIC_ACTIVE_CPU_COUNT = :STATISTIC_ACTIVE_CPU_COUNT
    # The processor mode the system is running in (0 = Uniprocessor, 1 = multiprocessor).
    STATISTIC_MULTI_PROCESSOR_MODE = :STATISTIC_MULTI_PROCESSOR_MODE
    # Total memory available to TMM.
    STATISTIC_MEMORY_TOTAL_BYTES = :STATISTIC_MEMORY_TOTAL_BYTES
    # Total memory in use by TMM.
    STATISTIC_MEMORY_USED_BYTES = :STATISTIC_MEMORY_USED_BYTES
    # Number of transmitted packets.
    STATISTIC_IP_TRANSMITTED_PACKETS = :STATISTIC_IP_TRANSMITTED_PACKETS
    # Number of received packets.
    STATISTIC_IP_RECEIVED_PACKETS = :STATISTIC_IP_RECEIVED_PACKETS
    # Number of dropped packets.
    STATISTIC_IP_DROPPED_PACKETS = :STATISTIC_IP_DROPPED_PACKETS
    # Number of transmitted fragments.
    STATISTIC_IP_TRANSMITTED_FRAGMENTS = :STATISTIC_IP_TRANSMITTED_FRAGMENTS
    # Number of dropped transmitted fragments.
    STATISTIC_IP_DROPPED_TRANSMITTED_FRAGMENTS = :STATISTIC_IP_DROPPED_TRANSMITTED_FRAGMENTS
    # Number of received fragments.
    STATISTIC_IP_RECEIVED_FRAGMENTS = :STATISTIC_IP_RECEIVED_FRAGMENTS
    # Number of dropped received fragments.
    STATISTIC_IP_DROPPED_RECEIVED_FRAGMENTS = :STATISTIC_IP_DROPPED_RECEIVED_FRAGMENTS
    # Number of reassembled packets.
    STATISTIC_IP_REASSEMBLED_PACKETS = :STATISTIC_IP_REASSEMBLED_PACKETS
    # Number of invalid checksum errors.
    STATISTIC_IP_INVALID_CHECKSUM_ERRORS = :STATISTIC_IP_INVALID_CHECKSUM_ERRORS
    # Number of invalid packet length errors.
    STATISTIC_IP_INVALID_LENGTH_ERRORS = :STATISTIC_IP_INVALID_LENGTH_ERRORS
    # Number of memory errors.
    STATISTIC_IP_MEMORY_ERRORS = :STATISTIC_IP_MEMORY_ERRORS
    # Number of retransmit errors.
    STATISTIC_IP_RETRANSMITTED_ERRORS = :STATISTIC_IP_RETRANSMITTED_ERRORS
    # Number of invalid protocol errors.
    STATISTIC_IP_INVALID_PROTOCOL_ERRORS = :STATISTIC_IP_INVALID_PROTOCOL_ERRORS
    # Number of options errors.
    STATISTIC_IP_OPTIONS_ERRORS = :STATISTIC_IP_OPTIONS_ERRORS
    # Number of reassembly errors.
    STATISTIC_IP_REASSEMBLED_TOO_LONG_ERRORS = :STATISTIC_IP_REASSEMBLED_TOO_LONG_ERRORS
    # Number of transmitted packets in IPv6
    STATISTIC_IPV6_TRANSMITTED_PACKETS = :STATISTIC_IPV6_TRANSMITTED_PACKETS
    # Number of received packets in IPv6 .
    STATISTIC_IPV6_RECEIVED_PACKETS = :STATISTIC_IPV6_RECEIVED_PACKETS
    # Number of dropped packets in IPv6 .
    STATISTIC_IPV6_DROPPED_PACKETS = :STATISTIC_IPV6_DROPPED_PACKETS
    # Number of transmitted fragments in IPv6 .
    STATISTIC_IPV6_TRANSMITTED_FRAGMENTS = :STATISTIC_IPV6_TRANSMITTED_FRAGMENTS
    # Number of dropped transmitted fragments in IPv6 .
    STATISTIC_IPV6_DROPPED_TRANSMITTED_FRAGMENTS = :STATISTIC_IPV6_DROPPED_TRANSMITTED_FRAGMENTS
    # Number of received fragments in IPv6 .
    STATISTIC_IPV6_RECEIVED_FRAGMENTS = :STATISTIC_IPV6_RECEIVED_FRAGMENTS
    # Number of dropped received fragments in IPv6 .
    STATISTIC_IPV6_DROPPED_RECEIVED_FRAGMENTS = :STATISTIC_IPV6_DROPPED_RECEIVED_FRAGMENTS
    # Number of reassembled packets in IPv6 .
    STATISTIC_IPV6_REASSEMBLED_PACKETS = :STATISTIC_IPV6_REASSEMBLED_PACKETS
    # Number of invalid checksum errors in IPv6 .
    STATISTIC_IPV6_INVALID_CHECKSUM_ERRORS = :STATISTIC_IPV6_INVALID_CHECKSUM_ERRORS
    # Number of invalid packet length errors in IPv6 .
    STATISTIC_IPV6_INVALID_LENGTH_ERRORS = :STATISTIC_IPV6_INVALID_LENGTH_ERRORS
    # Number of memory errors in IPv6 .
    STATISTIC_IPV6_MEMORY_ERRORS = :STATISTIC_IPV6_MEMORY_ERRORS
    # Number of retransmit errors in IPv6 .
    STATISTIC_IPV6_RETRANSMITTED_ERRORS = :STATISTIC_IPV6_RETRANSMITTED_ERRORS
    # Number of invalid protocol errors in IPv6 .
    STATISTIC_IPV6_INVALID_PROTOCOL_ERRORS = :STATISTIC_IPV6_INVALID_PROTOCOL_ERRORS
    # Number of options errors in IPv6 .
    STATISTIC_IPV6_OPTIONS_ERRORS = :STATISTIC_IPV6_OPTIONS_ERRORS
    # Number of reassembly errors in IPv6 .
    STATISTIC_IPV6_REASSEMBLED_TOO_LONG_ERRORS = :STATISTIC_IPV6_REASSEMBLED_TOO_LONG_ERRORS
    # Number of transmitted packets.
    STATISTIC_ICMP_TRANSMITTED_PACKETS = :STATISTIC_ICMP_TRANSMITTED_PACKETS
    # Number of re-transmitted packets.
    STATISTIC_ICMP_RETRANSMITTED_PACKETS = :STATISTIC_ICMP_RETRANSMITTED_PACKETS
    # Number of received packets.
    STATISTIC_ICMP_RECEIVED_PACKETS = :STATISTIC_ICMP_RECEIVED_PACKETS
    # Number of forwarded packets.
    STATISTIC_ICMP_FORWARDED_PACKETS = :STATISTIC_ICMP_FORWARDED_PACKETS
    # Number of dropped packets.
    STATISTIC_ICMP_DROPPED_PACKETS = :STATISTIC_ICMP_DROPPED_PACKETS
    # Number of invalid checksum errors.
    STATISTIC_ICMP_INVALID_CHECKSUM_ERRORS = :STATISTIC_ICMP_INVALID_CHECKSUM_ERRORS
    # Number of invalid packet length errors.
    STATISTIC_ICMP_INVALID_LENGTH_ERRORS = :STATISTIC_ICMP_INVALID_LENGTH_ERRORS
    # Number of memory errors.
    STATISTIC_ICMP_MEMORY_ERRORS = :STATISTIC_ICMP_MEMORY_ERRORS
    # Number of retransmit errors.
    STATISTIC_ICMP_RETRANSMITTED_ERRORS = :STATISTIC_ICMP_RETRANSMITTED_ERRORS
    # Number of invalid protocol errors.
    STATISTIC_ICMP_INVALID_PROTOCOL_ERRORS = :STATISTIC_ICMP_INVALID_PROTOCOL_ERRORS
    # Number of options errors.
    STATISTIC_ICMP_OPTIONS_ERRORS = :STATISTIC_ICMP_OPTIONS_ERRORS
    # Number of other types of errors.
    STATISTIC_ICMP_OTHER_ERRORS = :STATISTIC_ICMP_OTHER_ERRORS
    # Number of transmitted packets in ICMPv6 .
    STATISTIC_ICMPV6_TRANSMITTED_PACKETS = :STATISTIC_ICMPV6_TRANSMITTED_PACKETS
    # Number of re-transmitted packets in ICMPv6 .
    STATISTIC_ICMPV6_RETRANSMITTED_PACKETS = :STATISTIC_ICMPV6_RETRANSMITTED_PACKETS
    # Number of received packets in ICMPv6 .
    STATISTIC_ICMPV6_RECEIVED_PACKETS = :STATISTIC_ICMPV6_RECEIVED_PACKETS
    # Number of forwarded packets in ICMPv6 .
    STATISTIC_ICMPV6_FORWARDED_PACKETS = :STATISTIC_ICMPV6_FORWARDED_PACKETS
    # Number of dropped packets in ICMPv6 .
    STATISTIC_ICMPV6_DROPPED_PACKETS = :STATISTIC_ICMPV6_DROPPED_PACKETS
    # Number of invalid checksum errors in ICMPv6 .
    STATISTIC_ICMPV6_INVALID_CHECKSUM_ERRORS = :STATISTIC_ICMPV6_INVALID_CHECKSUM_ERRORS
    # Number of invalid packet length errors in ICMPv6 .
    STATISTIC_ICMPV6_INVALID_LENGTH_ERRORS = :STATISTIC_ICMPV6_INVALID_LENGTH_ERRORS
    # Number of memory errors in ICMPv6 .
    STATISTIC_ICMPV6_MEMORY_ERRORS = :STATISTIC_ICMPV6_MEMORY_ERRORS
    # Number of retransmit errors in ICMPv6 .
    STATISTIC_ICMPV6_RETRANSMITTED_ERRORS = :STATISTIC_ICMPV6_RETRANSMITTED_ERRORS
    # Number of invalid protocol errors in ICMPv6 .
    STATISTIC_ICMPV6_INVALID_PROTOCOL_ERRORS = :STATISTIC_ICMPV6_INVALID_PROTOCOL_ERRORS
    # Number of options errors in ICMPv6 .
    STATISTIC_ICMPV6_OPTIONS_ERRORS = :STATISTIC_ICMPV6_OPTIONS_ERRORS
    # Number of other types of errors in ICMPv6 .
    STATISTIC_ICMPV6_OTHER_ERRORS = :STATISTIC_ICMPV6_OTHER_ERRORS
    # Current open connections.
    STATISTIC_UDP_OPEN_CONNECTIONS = :STATISTIC_UDP_OPEN_CONNECTIONS
    # Current connections that have been accepted.
    STATISTIC_UDP_ACCEPTED_CONNECTIONS = :STATISTIC_UDP_ACCEPTED_CONNECTIONS
    # Number of accept failures.
    STATISTIC_UDP_ACCEPT_FAILURES = :STATISTIC_UDP_ACCEPT_FAILURES
    # Current connections that have been established, but not accepted.
    STATISTIC_UDP_ESTABLISHED_CONNECTIONS = :STATISTIC_UDP_ESTABLISHED_CONNECTIONS
    # Number of connection failures.
    STATISTIC_UDP_CONNECTION_FAILURES = :STATISTIC_UDP_CONNECTION_FAILURES
    # Expired connections due to idle timeout.
    STATISTIC_UDP_EXPIRED_CONNECTIONS = :STATISTIC_UDP_EXPIRED_CONNECTIONS
    # Number of transmitted datagrams.
    STATISTIC_UDP_TRANSMITTED_DATAGRAMS = :STATISTIC_UDP_TRANSMITTED_DATAGRAMS
    # Number of received datagrams.
    STATISTIC_UDP_RECEIVED_DATAGRAMS = :STATISTIC_UDP_RECEIVED_DATAGRAMS
    # Number of malformed datagrams received.
    STATISTIC_UDP_RECEIVED_MALFORMED_DATAGRAMS = :STATISTIC_UDP_RECEIVED_MALFORMED_DATAGRAMS
    # Number of ICMP unreachables received.
    STATISTIC_UDP_RECEIVED_UNREACHABLE_ICMP_DATAGRAMS = :STATISTIC_UDP_RECEIVED_UNREACHABLE_ICMP_DATAGRAMS
    # Number of bad checksum datagrams received.
    STATISTIC_UDP_RECEIVED_BAD_CHECKSUM_DATAGRAMS = :STATISTIC_UDP_RECEIVED_BAD_CHECKSUM_DATAGRAMS
    # Number of no-checksum datagrams received.
    STATISTIC_UDP_RECEIVED_NO_CHECKSUM_DATAGRAMS = :STATISTIC_UDP_RECEIVED_NO_CHECKSUM_DATAGRAMS
    # Current open connections.
    STATISTIC_TCP_OPEN_CONNECTIONS = :STATISTIC_TCP_OPEN_CONNECTIONS
    # Current connections in CLOSE-WAIT/LAST-ACK state.
    STATISTIC_TCP_CLOSE_WAIT_CONNECTIONS = :STATISTIC_TCP_CLOSE_WAIT_CONNECTIONS
    # Current connections in FIN-WAIT/CLOSING state.
    STATISTIC_TCP_FIN_WAIT_CONNECTIONS = :STATISTIC_TCP_FIN_WAIT_CONNECTIONS
    # Current connections in TIME-WAIT state.
    STATISTIC_TCP_TIME_WAIT_CONNECTIONS = :STATISTIC_TCP_TIME_WAIT_CONNECTIONS
    # Current connections that have been accepted.
    STATISTIC_TCP_ACCEPTED_CONNECTIONS = :STATISTIC_TCP_ACCEPTED_CONNECTIONS
    # Number of accept failures.
    STATISTIC_TCP_ACCEPT_FAILURES = :STATISTIC_TCP_ACCEPT_FAILURES
    # Current connections that have been established, but not accepted.
    STATISTIC_TCP_ESTABLISHED_CONNECTIONS = :STATISTIC_TCP_ESTABLISHED_CONNECTIONS
    # Number of connection failures.
    STATISTIC_TCP_CONNECTION_FAILURES = :STATISTIC_TCP_CONNECTION_FAILURES
    # Expired connections due to idle timeout.
    STATISTIC_TCP_EXPIRED_CONNECTIONS = :STATISTIC_TCP_EXPIRED_CONNECTIONS
    # Abandoned connections due to retries/keep-alives.
    STATISTIC_TCP_ABANDONED_CONNECTIONS = :STATISTIC_TCP_ABANDONED_CONNECTIONS
    # Number of RSTs received.
    STATISTIC_TCP_RECEIVED_RESETS = :STATISTIC_TCP_RECEIVED_RESETS
    # Number of bad checksum packets received.
    STATISTIC_TCP_RECEIVED_BAD_CHECKSUMS = :STATISTIC_TCP_RECEIVED_BAD_CHECKSUMS
    # Number of malformed segments received.
    STATISTIC_TCP_RECEIVED_BAD_SEGMENTS = :STATISTIC_TCP_RECEIVED_BAD_SEGMENTS
    # Number of out-of-order segments received.
    STATISTIC_TCP_RECEIVED_OUT_OF_ORDER_SEGMENTS = :STATISTIC_TCP_RECEIVED_OUT_OF_ORDER_SEGMENTS
    # Number of SYN cookies received.
    STATISTIC_TCP_RECEIVED_SYN_COOKIES = :STATISTIC_TCP_RECEIVED_SYN_COOKIES
    # Number of bad SYN cookies received.
    STATISTIC_TCP_RECEIVED_BAD_SYN_COOKIES = :STATISTIC_TCP_RECEIVED_BAD_SYN_COOKIES
    # Number of SYN cache overflows.
    STATISTIC_TCP_SYN_CACHE_OVERFLOWS = :STATISTIC_TCP_SYN_CACHE_OVERFLOWS
    # Number of retransmitted segments.
    STATISTIC_TCP_RETRANSMITTED_SEGMENTS = :STATISTIC_TCP_RETRANSMITTED_SEGMENTS
    # Total number of bytes in.
    STATISTIC_BYTES_IN = :STATISTIC_BYTES_IN
    # Total number of bytes out.
    STATISTIC_BYTES_OUT = :STATISTIC_BYTES_OUT
    # Total number of packets in.
    STATISTIC_PACKETS_IN = :STATISTIC_PACKETS_IN
    # Total number of packets out.
    STATISTIC_PACKETS_OUT = :STATISTIC_PACKETS_OUT
    # Total number of multicast packets in.
    STATISTIC_MULTICASTS_IN = :STATISTIC_MULTICASTS_IN
    # Total number of multicast packets out.
    STATISTIC_MULTICASTS_OUT = :STATISTIC_MULTICASTS_OUT
    # Total number of bytes in through the ephemeral port.
    STATISTIC_EPHEMERAL_BYTES_IN = :STATISTIC_EPHEMERAL_BYTES_IN
    # Total number of bytes out through the ephemeral port.
    STATISTIC_EPHEMERAL_BYTES_OUT = :STATISTIC_EPHEMERAL_BYTES_OUT
    # Total number of packets in through the ephemeral port.
    STATISTIC_EPHEMERAL_PACKETS_IN = :STATISTIC_EPHEMERAL_PACKETS_IN
    # Total number of packets out through the ephemeral port.
    STATISTIC_EPHEMERAL_PACKETS_OUT = :STATISTIC_EPHEMERAL_PACKETS_OUT
    # Current number of connections through the ephemeral port.
    STATISTIC_EPHEMERAL_CURRENT_CONNECTIONS = :STATISTIC_EPHEMERAL_CURRENT_CONNECTIONS
    # Maximum number of connections through the ephemeral port.
    STATISTIC_EPHEMERAL_MAXIMUM_CONNECTIONS = :STATISTIC_EPHEMERAL_MAXIMUM_CONNECTIONS
    # Total number of connections through the ephemeral port.
    STATISTIC_EPHEMERAL_TOTAL_CONNECTIONS = :STATISTIC_EPHEMERAL_TOTAL_CONNECTIONS
    # Total number of bytes in from the client-side of the object.
    STATISTIC_CLIENT_SIDE_BYTES_IN = :STATISTIC_CLIENT_SIDE_BYTES_IN
    # Total number of bytes out from the client-side of the object.
    STATISTIC_CLIENT_SIDE_BYTES_OUT = :STATISTIC_CLIENT_SIDE_BYTES_OUT
    # Total number of packets in from the client-side of the object.
    STATISTIC_CLIENT_SIDE_PACKETS_IN = :STATISTIC_CLIENT_SIDE_PACKETS_IN
    # Total number of packets out from the client-side of the object.
    STATISTIC_CLIENT_SIDE_PACKETS_OUT = :STATISTIC_CLIENT_SIDE_PACKETS_OUT
    # Current number of connections from the client-side of the object.
    STATISTIC_CLIENT_SIDE_CURRENT_CONNECTIONS = :STATISTIC_CLIENT_SIDE_CURRENT_CONNECTIONS
    # Maximum number of connections from the client-side of the object.
    STATISTIC_CLIENT_SIDE_MAXIMUM_CONNECTIONS = :STATISTIC_CLIENT_SIDE_MAXIMUM_CONNECTIONS
    # Total number of connections from the client-side of the object.
    STATISTIC_CLIENT_SIDE_TOTAL_CONNECTIONS = :STATISTIC_CLIENT_SIDE_TOTAL_CONNECTIONS
    # Total number of bytes in that are handled by PVA from the client-side of the object.
    STATISTIC_PVA_CLIENT_SIDE_BYTES_IN = :STATISTIC_PVA_CLIENT_SIDE_BYTES_IN
    # Total number of bytes out that are handled by PVA from the client-side of the object.
    STATISTIC_PVA_CLIENT_SIDE_BYTES_OUT = :STATISTIC_PVA_CLIENT_SIDE_BYTES_OUT
    # Total number of packets in that are handled by PVA from the client-side of the object.
    STATISTIC_PVA_CLIENT_SIDE_PACKETS_IN = :STATISTIC_PVA_CLIENT_SIDE_PACKETS_IN
    # Total number of packets out that are handled by PVA from the client-side of the object.
    STATISTIC_PVA_CLIENT_SIDE_PACKETS_OUT = :STATISTIC_PVA_CLIENT_SIDE_PACKETS_OUT
    # Current number of connections that are handled by PVA from the client-side of the object.
    STATISTIC_PVA_CLIENT_SIDE_CURRENT_CONNECTIONS = :STATISTIC_PVA_CLIENT_SIDE_CURRENT_CONNECTIONS
    # Maximum number of connections that are handled by PVA from the client-side of the object.
    STATISTIC_PVA_CLIENT_SIDE_MAXIMUM_CONNECTIONS = :STATISTIC_PVA_CLIENT_SIDE_MAXIMUM_CONNECTIONS
    # Total number of connections that are handled by PVA from the client-side of the object.
    STATISTIC_PVA_CLIENT_SIDE_TOTAL_CONNECTIONS = :STATISTIC_PVA_CLIENT_SIDE_TOTAL_CONNECTIONS
    # Total number of bytes in from the server-side of the object.
    STATISTIC_SERVER_SIDE_BYTES_IN = :STATISTIC_SERVER_SIDE_BYTES_IN
    # Total number of bytes out from the server-side of the object.
    STATISTIC_SERVER_SIDE_BYTES_OUT = :STATISTIC_SERVER_SIDE_BYTES_OUT
    # Total number of packets in from the server-side of the object.
    STATISTIC_SERVER_SIDE_PACKETS_IN = :STATISTIC_SERVER_SIDE_PACKETS_IN
    # Total number of packets out from the server-side of the object.
    STATISTIC_SERVER_SIDE_PACKETS_OUT = :STATISTIC_SERVER_SIDE_PACKETS_OUT
    # Current number of connections from the server-side of the object.
    STATISTIC_SERVER_SIDE_CURRENT_CONNECTIONS = :STATISTIC_SERVER_SIDE_CURRENT_CONNECTIONS
    # Maximum number of connections from the server-side of the object.
    STATISTIC_SERVER_SIDE_MAXIMUM_CONNECTIONS = :STATISTIC_SERVER_SIDE_MAXIMUM_CONNECTIONS
    # Total number of connections from the server-side of the object.
    STATISTIC_SERVER_SIDE_TOTAL_CONNECTIONS = :STATISTIC_SERVER_SIDE_TOTAL_CONNECTIONS
    # Total number of bytes in that are handled by PVA from the server-side of the object.
    STATISTIC_PVA_SERVER_SIDE_BYTES_IN = :STATISTIC_PVA_SERVER_SIDE_BYTES_IN
    # Total number of bytes out that are handled by PVA from the server-side of the object.
    STATISTIC_PVA_SERVER_SIDE_BYTES_OUT = :STATISTIC_PVA_SERVER_SIDE_BYTES_OUT
    # Total number of packets in that are handled by PVA from the server-side of the object.
    STATISTIC_PVA_SERVER_SIDE_PACKETS_IN = :STATISTIC_PVA_SERVER_SIDE_PACKETS_IN
    # Total number of packets out that are handled by PVA from the server-side of the object.
    STATISTIC_PVA_SERVER_SIDE_PACKETS_OUT = :STATISTIC_PVA_SERVER_SIDE_PACKETS_OUT
    # Current number of connections that are handled by PVA from the server-side of the object.
    STATISTIC_PVA_SERVER_SIDE_CURRENT_CONNECTIONS = :STATISTIC_PVA_SERVER_SIDE_CURRENT_CONNECTIONS
    # Maximum number of connections that are handled by PVA from the server-side of the object.
    STATISTIC_PVA_SERVER_SIDE_MAXIMUM_CONNECTIONS = :STATISTIC_PVA_SERVER_SIDE_MAXIMUM_CONNECTIONS
    # Total number of connections that are handled by PVA from the server-side of the object.
    STATISTIC_PVA_SERVER_SIDE_TOTAL_CONNECTIONS = :STATISTIC_PVA_SERVER_SIDE_TOTAL_CONNECTIONS
    # The number of times packet filter is invoked.
    STATISTIC_PACKET_FILTER_HITS = :STATISTIC_PACKET_FILTER_HITS
    # The number of replace operations completed.
    STATISTIC_STREAM_REPLACEMENTS = :STATISTIC_STREAM_REPLACEMENTS
    # The current number of idle connections in the pool.
    STATISTIC_ONECONNECT_CURRENT_IDLE_CONNECTIONS = :STATISTIC_ONECONNECT_CURRENT_IDLE_CONNECTIONS
    # The maximum number of idle connections in the pool.
    STATISTIC_ONECONNECT_MAXIMUM_IDLE_CONNECTIONS = :STATISTIC_ONECONNECT_MAXIMUM_IDLE_CONNECTIONS
    # The total number of times connections were reused from the pool.
    STATISTIC_ONECONNECT_TOTAL_REUSES = :STATISTIC_ONECONNECT_TOTAL_REUSES
    # The number of times a new connection was initiated.
    STATISTIC_ONECONNECT_NEW_CONNECTIONS = :STATISTIC_ONECONNECT_NEW_CONNECTIONS
    # Number of bytes at base rate
    STATISTIC_RATE_CLASS_BYTES_AT_BASE_RATE = :STATISTIC_RATE_CLASS_BYTES_AT_BASE_RATE
    # Number of bytes during bursting
    STATISTIC_RATE_CLASS_BYTES_DURING_BURST = :STATISTIC_RATE_CLASS_BYTES_DURING_BURST
    # Number of bytes dropped
    STATISTIC_RATE_CLASS_BYTES_DROPPED = :STATISTIC_RATE_CLASS_BYTES_DROPPED
    # Number of bytes queued
    STATISTIC_RATE_CLASS_BYTES_QUEUED = :STATISTIC_RATE_CLASS_BYTES_QUEUED
    # Number of bytes per second over last 4 secs
    STATISTIC_RATE_CLASS_BYTES_PER_SEC = :STATISTIC_RATE_CLASS_BYTES_PER_SEC
    # Number of rule failures.
    STATISTIC_RULE_FAILURES = :STATISTIC_RULE_FAILURES
    # Number of rule aborts due to TCL errors.
    STATISTIC_RULE_ABORTS = :STATISTIC_RULE_ABORTS
    # Number of rule event executions.
    STATISTIC_RULE_TOTAL_EXECUTIONS = :STATISTIC_RULE_TOTAL_EXECUTIONS
    # The average number of cycles spent during an execution of this rule event.
    STATISTIC_RULE_AVERAGE_CYCLES = :STATISTIC_RULE_AVERAGE_CYCLES
    # The maximum number of cycles spent during an execution of this rule event.
    STATISTIC_RULE_MAXIMUM_CYCLES = :STATISTIC_RULE_MAXIMUM_CYCLES
    # The minimum number of cycles spent during an execution of this rule event.
    STATISTIC_RULE_MINIMUM_CYCLES = :STATISTIC_RULE_MINIMUM_CYCLES
    # Number of Set-Cookie header insertions
    STATISTIC_HTTP_COOKIE_PERSIST_INSERTS = :STATISTIC_HTTP_COOKIE_PERSIST_INSERTS
    # Number of server-side responses in range of 200 to 206 (successful responses)
    STATISTIC_HTTP_2XX_RESPONSES = :STATISTIC_HTTP_2XX_RESPONSES
    # Number of server-side responses in range of 300 to 307 (redirection resposes)
    STATISTIC_HTTP_3XX_RESPONSES = :STATISTIC_HTTP_3XX_RESPONSES
    # Number of server-side responses in range of 400 to 417 (client errors)
    STATISTIC_HTTP_4XX_RESPONSES = :STATISTIC_HTTP_4XX_RESPONSES
    # Number of server-side responses in range of 500 to 505 (server errors)
    STATISTIC_HTTP_5XX_RESPONSES = :STATISTIC_HTTP_5XX_RESPONSES
    # Total number of HTTP requests
    STATISTIC_HTTP_TOTAL_REQUESTS = :STATISTIC_HTTP_TOTAL_REQUESTS
    # Total number of GET requests
    STATISTIC_HTTP_GET_REQUESTS = :STATISTIC_HTTP_GET_REQUESTS
    # Total number of POST requests
    STATISTIC_HTTP_POST_REQUESTS = :STATISTIC_HTTP_POST_REQUESTS
    # Total number of version 9 requests
    STATISTIC_HTTP_V9_REQUESTS = :STATISTIC_HTTP_V9_REQUESTS
    # Total number of version 10 requests
    STATISTIC_HTTP_V10_REQUESTS = :STATISTIC_HTTP_V10_REQUESTS
    # Total number of version 11 requests
    STATISTIC_HTTP_V11_REQUESTS = :STATISTIC_HTTP_V11_REQUESTS
    # Total number of version 9 responses
    STATISTIC_HTTP_V9_RESPONSES = :STATISTIC_HTTP_V9_RESPONSES
    # Total number of version 10 responses
    STATISTIC_HTTP_V10_RESPONSES = :STATISTIC_HTTP_V10_RESPONSES
    # Total number of version 11 responses
    STATISTIC_HTTP_V11_RESPONSES = :STATISTIC_HTTP_V11_RESPONSES
    # Maximum number of requests made in a connection
    STATISTIC_HTTP_MAXIMUM_KEEPALIVE_REQUESTS = :STATISTIC_HTTP_MAXIMUM_KEEPALIVE_REQUESTS
    # Number of responses under 1k
    STATISTIC_HTTP_BUCKET_1K_RESPONSES = :STATISTIC_HTTP_BUCKET_1K_RESPONSES
    # Number of responses from 1 - 4k
    STATISTIC_HTTP_BUCKET_4K_RESPONSES = :STATISTIC_HTTP_BUCKET_4K_RESPONSES
    # Number of responses from 4 - 16k
    STATISTIC_HTTP_BUCKET_16K_RESPONSES = :STATISTIC_HTTP_BUCKET_16K_RESPONSES
    # Number of responses from 16 - 32k
    STATISTIC_HTTP_BUCKET_32K_RESPONSES = :STATISTIC_HTTP_BUCKET_32K_RESPONSES
    # Number of responses from 32 - 64k
    STATISTIC_HTTP_BUCKET_64K_RESPONSES = :STATISTIC_HTTP_BUCKET_64K_RESPONSES
    # Total number of response bytes before compression has taken place
    STATISTIC_HTTP_PRE_COMPRESSION_BYTES = :STATISTIC_HTTP_PRE_COMPRESSION_BYTES
    # To number of response bytes after compression has taken place
    STATISTIC_HTTP_POST_COMPRESSION_BYTES = :STATISTIC_HTTP_POST_COMPRESSION_BYTES
    # Number of bytes subjected to NULL compression (for license enforcement).
    STATISTIC_HTTP_NULL_COMPRESSION_BYTES = :STATISTIC_HTTP_NULL_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for MIME type HTML.
    STATISTIC_HTTP_HTML_PRE_COMPRESSION_BYTES = :STATISTIC_HTTP_HTML_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for MIME type HTML.
    STATISTIC_HTTP_HTML_POST_COMPRESSION_BYTES = :STATISTIC_HTTP_HTML_POST_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for MIME type CSS.
    STATISTIC_HTTP_CSS_PRE_COMPRESSION_BYTES = :STATISTIC_HTTP_CSS_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for MIME type CSS.
    STATISTIC_HTTP_CSS_POST_COMPRESSION_BYTES = :STATISTIC_HTTP_CSS_POST_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for MIME type Javascript.
    STATISTIC_HTTP_JS_PRE_COMPRESSION_BYTES = :STATISTIC_HTTP_JS_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for MIME type Javascript.
    STATISTIC_HTTP_JS_POST_COMPRESSION_BYTES = :STATISTIC_HTTP_JS_POST_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for MIME type XML.
    STATISTIC_HTTP_XML_PRE_COMPRESSION_BYTES = :STATISTIC_HTTP_XML_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for MIME type XML.
    STATISTIC_HTTP_XML_POST_COMPRESSION_BYTES = :STATISTIC_HTTP_XML_POST_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for MIME type SGML.
    STATISTIC_HTTP_SGML_PRE_COMPRESSION_BYTES = :STATISTIC_HTTP_SGML_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for MIME type SGML.
    STATISTIC_HTTP_SGML_POST_COMPRESSION_BYTES = :STATISTIC_HTTP_SGML_POST_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for MIME type Plain text.
    STATISTIC_HTTP_PLAIN_PRE_COMPRESSION_BYTES = :STATISTIC_HTTP_PLAIN_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for MIME type Plain text.
    STATISTIC_HTTP_PLAIN_POST_COMPRESSION_BYTES = :STATISTIC_HTTP_PLAIN_POST_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for MIME type Octet.
    STATISTIC_HTTP_OCTET_PRE_COMPRESSION_BYTES = :STATISTIC_HTTP_OCTET_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for MIME type Octet.
    STATISTIC_HTTP_OCTET_POST_COMPRESSION_BYTES = :STATISTIC_HTTP_OCTET_POST_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for MIME type Image.
    STATISTIC_HTTP_IMAGE_PRE_COMPRESSION_BYTES = :STATISTIC_HTTP_IMAGE_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for MIME type Image.
    STATISTIC_HTTP_IMAGE_POST_COMPRESSION_BYTES = :STATISTIC_HTTP_IMAGE_POST_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for MIME type Video.
    STATISTIC_HTTP_VIDEO_PRE_COMPRESSION_BYTES = :STATISTIC_HTTP_VIDEO_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for MIME type Video.
    STATISTIC_HTTP_VIDEO_POST_COMPRESSION_BYTES = :STATISTIC_HTTP_VIDEO_POST_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for MIME type Audio.
    STATISTIC_HTTP_AUDIO_PRE_COMPRESSION_BYTES = :STATISTIC_HTTP_AUDIO_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for MIME type Audio.
    STATISTIC_HTTP_AUDIO_POST_COMPRESSION_BYTES = :STATISTIC_HTTP_AUDIO_POST_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for all other MIME types.
    STATISTIC_HTTP_OTHER_PRE_COMPRESSION_BYTES = :STATISTIC_HTTP_OTHER_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for all other MIME types.
    STATISTIC_HTTP_OTHER_POST_COMPRESSION_BYTES = :STATISTIC_HTTP_OTHER_POST_COMPRESSION_BYTES
    # Current entries in the SSL cache.
    STATISTIC_SSL_CACHE_CURRENT_ENTRIES = :STATISTIC_SSL_CACHE_CURRENT_ENTRIES
    # Maximum entries in the SSL cache.
    STATISTIC_SSL_CACHE_MAXIMUM_ENTRIES = :STATISTIC_SSL_CACHE_MAXIMUM_ENTRIES
    # Number of SSL cache overflows.
    STATISTIC_SSL_CACHE_OVERFLOWS = :STATISTIC_SSL_CACHE_OVERFLOWS
    # Anonymous Diffie-Hellman.
    STATISTIC_SSL_CIPHER_ADH_KEY_EXCHANGE = :STATISTIC_SSL_CIPHER_ADH_KEY_EXCHANGE
    # Deprecated in 9.2.0 - Diffie-Hellman w/ DSS certificate.
    STATISTIC_SSL_CIPHER_DH_DSS_KEY_EXCHANGE = :STATISTIC_SSL_CIPHER_DH_DSS_KEY_EXCHANGE
    # Diffie-Hellman w/ RSA certificate.
    STATISTIC_SSL_CIPHER_DH_RSA_KEY_EXCHANGE = :STATISTIC_SSL_CIPHER_DH_RSA_KEY_EXCHANGE
    # Deprecated in 9.2.0 - DSS certificate.
    STATISTIC_SSL_CIPHER_DSS_KEY_EXCHANGE = :STATISTIC_SSL_CIPHER_DSS_KEY_EXCHANGE
    # Deprecated in 9.2.0 - Ephemeral Diffie-Hellman w/ DSS cert.
    STATISTIC_SSL_CIPHER_EDH_DSS_KEY_EXCHANGE = :STATISTIC_SSL_CIPHER_EDH_DSS_KEY_EXCHANGE
    # Ephemeral Diffie-Hellman w/ RSA cert.
    STATISTIC_SSL_CIPHER_EDH_RSA_KEY_EXCHANGE = :STATISTIC_SSL_CIPHER_EDH_RSA_KEY_EXCHANGE
    # RSA certificate.
    STATISTIC_SSL_CIPHER_RSA_KEY_EXCHANGE = :STATISTIC_SSL_CIPHER_RSA_KEY_EXCHANGE
    # No encryption.
    STATISTIC_SSL_CIPHER_NULL_BULK = :STATISTIC_SSL_CIPHER_NULL_BULK
    # Advances Encryption Standard (CBC).
    STATISTIC_SSL_CIPHER_AES_BULK = :STATISTIC_SSL_CIPHER_AES_BULK
    # Digital Encryption Standard (CBC).
    STATISTIC_SSL_CIPHER_DES_BULK = :STATISTIC_SSL_CIPHER_DES_BULK
    # IDEA (old SSLv2 cipher).
    STATISTIC_SSL_CIPHER_IDEA_BULK = :STATISTIC_SSL_CIPHER_IDEA_BULK
    # Rivest Cipher 2.
    STATISTIC_SSL_CIPHER_RC2_BULK = :STATISTIC_SSL_CIPHER_RC2_BULK
    # Rivest Cipher 4.
    STATISTIC_SSL_CIPHER_RC4_BULK = :STATISTIC_SSL_CIPHER_RC4_BULK
    # No message authentication.
    STATISTIC_SSL_CIPHER_NULL_DIGEST = :STATISTIC_SSL_CIPHER_NULL_DIGEST
    # Message Digest 5.
    STATISTIC_SSL_CIPHER_MD5_DIGEST = :STATISTIC_SSL_CIPHER_MD5_DIGEST
    # Secure Hash Algorithm.
    STATISTIC_SSL_CIPHER_SHA_DIGEST = :STATISTIC_SSL_CIPHER_SHA_DIGEST
    # Total connections for SSLv2 protocol.
    STATISTIC_SSL_PROTOCOL_SSLV2 = :STATISTIC_SSL_PROTOCOL_SSLV2
    # Total connections for SSLv3 protocol.
    STATISTIC_SSL_PROTOCOL_SSLV3 = :STATISTIC_SSL_PROTOCOL_SSLV3
    # Total connections for TLSv1 protocol.
    STATISTIC_SSL_PROTOCOL_TLSV1 = :STATISTIC_SSL_PROTOCOL_TLSV1
    # Currently open connections.
    STATISTIC_SSL_COMMON_CURRENT_CONNECTIONS = :STATISTIC_SSL_COMMON_CURRENT_CONNECTIONS
    # Maximum simultaneous connections.
    STATISTIC_SSL_COMMON_MAXIMUM_CONNECTIONS = :STATISTIC_SSL_COMMON_MAXIMUM_CONNECTIONS
    # Currently open native connections.
    STATISTIC_SSL_COMMON_CURRENT_NATIVE_CONNECTIONS = :STATISTIC_SSL_COMMON_CURRENT_NATIVE_CONNECTIONS
    # Maximum simultaneous native connections.
    STATISTIC_SSL_COMMON_MAXIMUM_NATIVE_CONNECTIONS = :STATISTIC_SSL_COMMON_MAXIMUM_NATIVE_CONNECTIONS
    # Total native connections.
    STATISTIC_SSL_COMMON_TOTAL_NATIVE_CONNECTIONS = :STATISTIC_SSL_COMMON_TOTAL_NATIVE_CONNECTIONS
    # Currently open compatible-mode connections.
    STATISTIC_SSL_COMMON_CURRENT_COMPATIBLE_MODE_CONNECTIONS = :STATISTIC_SSL_COMMON_CURRENT_COMPATIBLE_MODE_CONNECTIONS
    # Maximum simultaneous compatible-mode connections.
    STATISTIC_SSL_COMMON_MAXIMUM_COMPATIBLE_MODE_CONNECTIONS = :STATISTIC_SSL_COMMON_MAXIMUM_COMPATIBLE_MODE_CONNECTIONS
    # Total compatible-mode connections.
    STATISTIC_SSL_COMMON_TOTAL_COMPATIBLE_MODE_CONNECTIONS = :STATISTIC_SSL_COMMON_TOTAL_COMPATIBLE_MODE_CONNECTIONS
    # Total encrypted bytes received.
    STATISTIC_SSL_COMMON_ENCRYPTED_BYTES_IN = :STATISTIC_SSL_COMMON_ENCRYPTED_BYTES_IN
    # Total encrypted bytes sent.
    STATISTIC_SSL_COMMON_ENCRYPTED_BYTES_OUT = :STATISTIC_SSL_COMMON_ENCRYPTED_BYTES_OUT
    # Total decrypted bytes received.
    STATISTIC_SSL_COMMON_DECRYPTED_BYTES_IN = :STATISTIC_SSL_COMMON_DECRYPTED_BYTES_IN
    # Total decrypted bytes sent.
    STATISTIC_SSL_COMMON_DECRYPTED_BYTES_OUT = :STATISTIC_SSL_COMMON_DECRYPTED_BYTES_OUT
    # Total records received.
    STATISTIC_SSL_COMMON_RECORDS_IN = :STATISTIC_SSL_COMMON_RECORDS_IN
    # Total records transmitted.
    STATISTIC_SSL_COMMON_RECORDS_OUT = :STATISTIC_SSL_COMMON_RECORDS_OUT
    # Total offloaded connections.
    STATISTIC_SSL_COMMON_FULLY_HW_ACCELERATED_CONNECTIONS = :STATISTIC_SSL_COMMON_FULLY_HW_ACCELERATED_CONNECTIONS
    # Total assisted connections.
    STATISTIC_SSL_COMMON_PARTIALLY_HW_ACCELERATED_CONNECTIONS = :STATISTIC_SSL_COMMON_PARTIALLY_HW_ACCELERATED_CONNECTIONS
    # Total software connections.
    STATISTIC_SSL_COMMON_NON_HW_ACCELERATED_CONNECTIONS = :STATISTIC_SSL_COMMON_NON_HW_ACCELERATED_CONNECTIONS
    # Total unclean shutdowns.
    STATISTIC_SSL_COMMON_PREMATURE_DISCONNECTS = :STATISTIC_SSL_COMMON_PREMATURE_DISCONNECTS
    # Total mid-connection handshakes.
    STATISTIC_SSL_COMMON_MIDSTREAM_RENEGOTIATIONS = :STATISTIC_SSL_COMMON_MIDSTREAM_RENEGOTIATIONS
    # Current entries in this cache.
    STATISTIC_SSL_COMMON_SESSION_CACHE_CURRENT_ENTRIES = :STATISTIC_SSL_COMMON_SESSION_CACHE_CURRENT_ENTRIES
    # Total cache hits.
    STATISTIC_SSL_COMMON_SESSION_CACHE_HITS = :STATISTIC_SSL_COMMON_SESSION_CACHE_HITS
    # Total cache lookups.
    STATISTIC_SSL_COMMON_SESSION_CACHE_LOOKUPS = :STATISTIC_SSL_COMMON_SESSION_CACHE_LOOKUPS
    # Total cache overflows.
    STATISTIC_SSL_COMMON_SESSION_CACHE_OVERFLOWS = :STATISTIC_SSL_COMMON_SESSION_CACHE_OVERFLOWS
    # Total session invalidations.
    STATISTIC_SSL_COMMON_SESSION_CACHE_INVALIDATIONS = :STATISTIC_SSL_COMMON_SESSION_CACHE_INVALIDATIONS
    # Total valid certificates.
    STATISTIC_SSL_COMMON_VALID_PEER_CERTIFICATES = :STATISTIC_SSL_COMMON_VALID_PEER_CERTIFICATES
    # Total invalid certificates.
    STATISTIC_SSL_COMMON_INVALID_PEER_CERTIFICATES = :STATISTIC_SSL_COMMON_INVALID_PEER_CERTIFICATES
    # Total connections without certificates.
    STATISTIC_SSL_COMMON_NO_PEER_CERTIFICATES = :STATISTIC_SSL_COMMON_NO_PEER_CERTIFICATES
    # Total handshake failures.
    STATISTIC_SSL_COMMON_HANDSHAKE_FAILURES = :STATISTIC_SSL_COMMON_HANDSHAKE_FAILURES
    # Total bad records.
    STATISTIC_SSL_COMMON_BAD_RECORDS = :STATISTIC_SSL_COMMON_BAD_RECORDS
    # Total fatal alerts.
    STATISTIC_SSL_COMMON_FATAL_ALERTS = :STATISTIC_SSL_COMMON_FATAL_ALERTS
    # Cumulative number of auth sessions.
    STATISTIC_AUTH_TOTAL_SESSIONS = :STATISTIC_AUTH_TOTAL_SESSIONS
    # Current number of auth sessions
    STATISTIC_AUTH_CURRENT_SESSIONS = :STATISTIC_AUTH_CURRENT_SESSIONS
    # Maximum number of concurrent auth sessions
    STATISTIC_AUTH_MAXIMUM_SESSIONS = :STATISTIC_AUTH_MAXIMUM_SESSIONS
    # Number of auth 'success' results
    STATISTIC_AUTH_SUCCESS_RESULTS = :STATISTIC_AUTH_SUCCESS_RESULTS
    # Number of auth 'failure' results
    STATISTIC_AUTH_FAILURE_RESULTS = :STATISTIC_AUTH_FAILURE_RESULTS
    # Number of auth 'wantcredential' results
    STATISTIC_AUTH_WANT_CREDENTIAL_RESULTS = :STATISTIC_AUTH_WANT_CREDENTIAL_RESULTS
    # Number of auth 'error' results
    STATISTIC_AUTH_ERROR_RESULTS = :STATISTIC_AUTH_ERROR_RESULTS
    # Number of XML errors
    STATISTIC_XML_TOTAL_ERRORS = :STATISTIC_XML_TOTAL_ERRORS
    # Total number of client SYN cookies generated.
    STATISTIC_FAST_HTTP_CLIENT_SYN_COOKIES = :STATISTIC_FAST_HTTP_CLIENT_SYN_COOKIES
    # Total number of client TCP accepts.
    STATISTIC_FAST_HTTP_CLIENT_ACCEPTS = :STATISTIC_FAST_HTTP_CLIENT_ACCEPTS
    # Total number of server TCP connects.
    STATISTIC_FAST_HTTP_SERVER_CONNECTS = :STATISTIC_FAST_HTTP_SERVER_CONNECTS
    # Number of available serverside flows in the reuse pool.
    STATISTIC_FAST_HTTP_CONNECTION_POOL_CURRENT_SIZE = :STATISTIC_FAST_HTTP_CONNECTION_POOL_CURRENT_SIZE
    # Maximum number of available serverside flows in the reuse pool.
    STATISTIC_FAST_HTTP_CONNECTION_POOL_MAXIMUM_SIZE = :STATISTIC_FAST_HTTP_CONNECTION_POOL_MAXIMUM_SIZE
    # Number of times a serverside flow was reused from the pool.
    STATISTIC_FAST_HTTP_CONNECTION_POOL_REUSES = :STATISTIC_FAST_HTTP_CONNECTION_POOL_REUSES
    # Number of times the reuse pool was exhausted.
    STATISTIC_FAST_HTTP_CONNECTION_POOL_EXHAUSTED = :STATISTIC_FAST_HTTP_CONNECTION_POOL_EXHAUSTED
    # Total number of HTTP requests.
    STATISTIC_FAST_HTTP_TOTAL_REQUESTS = :STATISTIC_FAST_HTTP_TOTAL_REQUESTS
    # Total number of unbuffered requests.
    STATISTIC_FAST_HTTP_UNBUFFERED_REQUESTS = :STATISTIC_FAST_HTTP_UNBUFFERED_REQUESTS
    # Total number of GET requests.
    STATISTIC_FAST_HTTP_GET_REQUESTS = :STATISTIC_FAST_HTTP_GET_REQUESTS
    # Total number of POST requests.
    STATISTIC_FAST_HTTP_POST_REQUESTS = :STATISTIC_FAST_HTTP_POST_REQUESTS
    # Total number of version 9 requests.
    STATISTIC_FAST_HTTP_V9_REQUESTS = :STATISTIC_FAST_HTTP_V9_REQUESTS
    # Total number of version 10 requests.
    STATISTIC_FAST_HTTP_V10_REQUESTS = :STATISTIC_FAST_HTTP_V10_REQUESTS
    # Total number of version 11 requests.
    STATISTIC_FAST_HTTP_V11_REQUESTS = :STATISTIC_FAST_HTTP_V11_REQUESTS
    # Number of server-side responses in range of 200 to 206 (successful responses)
    STATISTIC_FAST_HTTP_2XX_RESPONSES = :STATISTIC_FAST_HTTP_2XX_RESPONSES
    # Number of server-side responses in range of 300 to 307 (redirection resposes)
    STATISTIC_FAST_HTTP_3XX_RESPONSES = :STATISTIC_FAST_HTTP_3XX_RESPONSES
    # Number of server-side responses in range of 400 to 417 (client errors)
    STATISTIC_FAST_HTTP_4XX_RESPONSES = :STATISTIC_FAST_HTTP_4XX_RESPONSES
    # Number of server-side responses in range of 500 to 505 (server errors)
    STATISTIC_FAST_HTTP_5XX_RESPONSES = :STATISTIC_FAST_HTTP_5XX_RESPONSES
    # Number of request parse errors.
    STATISTIC_FAST_HTTP_REQUEST_PARSE_ERRORS = :STATISTIC_FAST_HTTP_REQUEST_PARSE_ERRORS
    # Number of response parse errors.
    STATISTIC_FAST_HTTP_RESPONSE_PARSE_ERRORS = :STATISTIC_FAST_HTTP_RESPONSE_PARSE_ERRORS
    # Number of bad clientside TCP segments dropped.
    STATISTIC_FAST_HTTP_CLIENTSIDE_BAD_SEGMENTS = :STATISTIC_FAST_HTTP_CLIENTSIDE_BAD_SEGMENTS
    # Number of bad serverside TCP segments dropped.
    STATISTIC_FAST_HTTP_SERVERSIDE_BAD_SEGMENTS = :STATISTIC_FAST_HTTP_SERVERSIDE_BAD_SEGMENTS
    # Number of pipelined HTTP requests detected.
    STATISTIC_FAST_HTTP_PIPELINED_REQUESTS = :STATISTIC_FAST_HTTP_PIPELINED_REQUESTS
    # Total bad client greetings.
    STATISTIC_SSL_COMMON_NOT_SSL_HANDSHAKE_FAILURES = :STATISTIC_SSL_COMMON_NOT_SSL_HANDSHAKE_FAILURES
    # RAM Cache hit count.
    STATISTIC_HTTP_RAM_CACHE_HITS = :STATISTIC_HTTP_RAM_CACHE_HITS
    # RAM Cache miss count, excluding uncacheable data.
    STATISTIC_HTTP_RAM_CACHE_MISSES = :STATISTIC_HTTP_RAM_CACHE_MISSES
    # Total RAM Cache miss count.
    STATISTIC_HTTP_RAM_CACHE_TOTAL_MISSES = :STATISTIC_HTTP_RAM_CACHE_TOTAL_MISSES
    # RAM Cache hit bytes.
    STATISTIC_HTTP_RAM_CACHE_HIT_BYTES = :STATISTIC_HTTP_RAM_CACHE_HIT_BYTES
    # RAM Cache miss bytes, excluding uncacheable data.
    STATISTIC_HTTP_RAM_CACHE_MISS_BYTES = :STATISTIC_HTTP_RAM_CACHE_MISS_BYTES
    # Total RAM Cache miss bytes.
    STATISTIC_HTTP_RAM_CACHE_TOTAL_MISS_BYTES = :STATISTIC_HTTP_RAM_CACHE_TOTAL_MISS_BYTES
    # RAM Cache size.
    STATISTIC_HTTP_RAM_CACHE_SIZE = :STATISTIC_HTTP_RAM_CACHE_SIZE
    # RAM Cache count.
    STATISTIC_HTTP_RAM_CACHE_COUNT = :STATISTIC_HTTP_RAM_CACHE_COUNT
    # RAM Cache evictions.
    STATISTIC_HTTP_RAM_CACHE_EVICTIONS = :STATISTIC_HTTP_RAM_CACHE_EVICTIONS
    # Total bytes waiting for virtual compression (deprecated 9.4.0).
    STATISTIC_VCOMPRESSION_QUEUED_BYTES = :STATISTIC_VCOMPRESSION_QUEUED_BYTES
    # Total bytes pre-compression (deprecated 9.4.0).
    STATISTIC_VCOMPRESSION_PRE_COMPRESSION_BYTES = :STATISTIC_VCOMPRESSION_PRE_COMPRESSION_BYTES
    # Total bytes post-compression (deprecated 9.4.0).
    STATISTIC_VCOMPRESSION_POST_COMPRESSION_BYTES = :STATISTIC_VCOMPRESSION_POST_COMPRESSION_BYTES
    # Total number of streams (deprecated 9.4.0).
    STATISTIC_VCOMPRESSION_TOTAL_STREAMS = :STATISTIC_VCOMPRESSION_TOTAL_STREAMS
    # Current number of streams (deprecated 9.4.0).
    STATISTIC_VCOMPRESSION_CURRENT_STREAMS = :STATISTIC_VCOMPRESSION_CURRENT_STREAMS
    # Total IIOP requests.
    STATISTIC_IIOP_TOTAL_REQUESTS = :STATISTIC_IIOP_TOTAL_REQUESTS
    # Total IIOP responses.
    STATISTIC_IIOP_TOTAL_RESPONSES = :STATISTIC_IIOP_TOTAL_RESPONSES
    # Total IIOP connection cancels.
    STATISTIC_IIOP_TOTAL_CANCELS = :STATISTIC_IIOP_TOTAL_CANCELS
    # Total IIOP errors.
    STATISTIC_IIOP_TOTAL_ERRORS = :STATISTIC_IIOP_TOTAL_ERRORS
    # Total IIOP fragments.
    STATISTIC_IIOP_TOTAL_FRAGMENTS = :STATISTIC_IIOP_TOTAL_FRAGMENTS
    # Total RTSP requests.
    STATISTIC_RTSP_TOTAL_REQUESTS = :STATISTIC_RTSP_TOTAL_REQUESTS
    # Total RTSP responses.
    STATISTIC_RTSP_TOTAL_RESPONSES = :STATISTIC_RTSP_TOTAL_RESPONSES
    # Total RTSP errors.
    STATISTIC_RTSP_TOTAL_ERRORS = :STATISTIC_RTSP_TOTAL_ERRORS
    # Total RTSP interleaved data packets.
    STATISTIC_RTSP_TOTAL_INTERLEAVED_DATA = :STATISTIC_RTSP_TOTAL_INTERLEAVED_DATA
    # CPU usage (in percentage) for the GTM object.
    STATISTIC_GTM_METRICS_CPU_USAGE = :STATISTIC_GTM_METRICS_CPU_USAGE
    # Memory available (in bytes) for the GTM object.
    STATISTIC_GTM_METRICS_MEMORY_AVAILABLE = :STATISTIC_GTM_METRICS_MEMORY_AVAILABLE
    # Inbound bits/sec for the GTM object.
    STATISTIC_GTM_METRICS_BITS_PER_SECOND_IN = :STATISTIC_GTM_METRICS_BITS_PER_SECOND_IN
    # Outbound bits/sec for the GTM object.
    STATISTIC_GTM_METRICS_BITS_PER_SECOND_OUT = :STATISTIC_GTM_METRICS_BITS_PER_SECOND_OUT
    # Inbound packets/sec for the GTM object.
    STATISTIC_GTM_METRICS_PACKETS_PER_SECOND_IN = :STATISTIC_GTM_METRICS_PACKETS_PER_SECOND_IN
    # Outbound packets/sec for the GTM object.
    STATISTIC_GTM_METRICS_PACKETS_PER_SECOND_OUT = :STATISTIC_GTM_METRICS_PACKETS_PER_SECOND_OUT
    # Total connections for the GTM object.
    STATISTIC_GTM_METRICS_TOTAL_CONNECTIONS = :STATISTIC_GTM_METRICS_TOTAL_CONNECTIONS
    # Connection rate for the GTM object.
    STATISTIC_GTM_METRICS_TOTAL_CONNECTION_RATE = :STATISTIC_GTM_METRICS_TOTAL_CONNECTION_RATE
    # Total bit rate through link.
    STATISTIC_GTM_LINK_TOTAL_BIT_RATE = :STATISTIC_GTM_LINK_TOTAL_BIT_RATE
    # Total gateway bit rate.
    STATISTIC_GTM_LINK_TOTAL_GATEWAY_BIT_RATE = :STATISTIC_GTM_LINK_TOTAL_GATEWAY_BIT_RATE
    # Inbound gateway bit rate.
    STATISTIC_GTM_LINK_INBOUND_GATEWAY_BIT_RATE = :STATISTIC_GTM_LINK_INBOUND_GATEWAY_BIT_RATE
    # Outbound gateway bit rate.
    STATISTIC_GTM_LINK_OUTBOUND_GATEWAY_BIT_RATE = :STATISTIC_GTM_LINK_OUTBOUND_GATEWAY_BIT_RATE
    # Sum of link VS bit rates.
    STATISTIC_GTM_LINK_TOTAL_VS_BIT_RATE = :STATISTIC_GTM_LINK_TOTAL_VS_BIT_RATE
    # Sum of inbound link VS bit rates.
    STATISTIC_GTM_LINK_INBOUND_VS_BIT_RATE = :STATISTIC_GTM_LINK_INBOUND_VS_BIT_RATE
    # Sum of outbound link VS bit rates.
    STATISTIC_GTM_LINK_OUTBOUND_VS_BIT_RATE = :STATISTIC_GTM_LINK_OUTBOUND_VS_BIT_RATE
    # Total inbound rate calculation for link.
    STATISTIC_GTM_LINK_TOTAL_INBOUND_BIT_RATE = :STATISTIC_GTM_LINK_TOTAL_INBOUND_BIT_RATE
    # Total outbound rate calculation for link.
    STATISTIC_GTM_LINK_TOTAL_OUTBOUND_BIT_RATE = :STATISTIC_GTM_LINK_TOTAL_OUTBOUND_BIT_RATE
    # This is used to set dynamic ratios on the outbound gateway pool members. This controls the outbound connections.
    STATISTIC_GTM_LINK_LCS_OUT = :STATISTIC_GTM_LINK_LCS_OUT
    # This is used to control inbound connections which are load-balanced through external virtual servers which are controlled by gtmd.
    STATISTIC_GTM_LINK_LCS_IN = :STATISTIC_GTM_LINK_LCS_IN
    # Number of times the preferred LB method was used.
    STATISTIC_GTM_POOL_PREFERRED_LB_METHODS = :STATISTIC_GTM_POOL_PREFERRED_LB_METHODS
    # Number of times the alternate LB method was used.
    STATISTIC_GTM_POOL_ALTERNATE_LB_METHODS = :STATISTIC_GTM_POOL_ALTERNATE_LB_METHODS
    # Number of times the fallback LB method was used.
    STATISTIC_GTM_POOL_FALLBACK_LB_METHODS = :STATISTIC_GTM_POOL_FALLBACK_LB_METHODS
    # Number of dropped connections.
    STATISTIC_GTM_POOL_DROPPED_CONNECTIONS = :STATISTIC_GTM_POOL_DROPPED_CONNECTIONS
    # Number of times this pool defaulted back to an explicit IP address.
    STATISTIC_GTM_POOL_EXPLICIT_IP = :STATISTIC_GTM_POOL_EXPLICIT_IP
    # Number of times the LB method chosen was LB_METHOD_RETURN_TO_DNS,					 i.e. we don't choose a pool, let DNS resolve the name.
    STATISTIC_GTM_POOL_RETURN_TO_DNS = :STATISTIC_GTM_POOL_RETURN_TO_DNS
    # Number of times the preferred LB method was used.
    STATISTIC_GTM_POOL_MEMBER_PREFERRED_LB_METHODS = :STATISTIC_GTM_POOL_MEMBER_PREFERRED_LB_METHODS
    # Number of times the alternate LB method was used.
    STATISTIC_GTM_POOL_MEMBER_ALTERNATE_LB_METHODS = :STATISTIC_GTM_POOL_MEMBER_ALTERNATE_LB_METHODS
    # Number of times the fallback LB method was used.
    STATISTIC_GTM_POOL_MEMBER_FALLBACK_LB_METHODS = :STATISTIC_GTM_POOL_MEMBER_FALLBACK_LB_METHODS
    # The sum of all the "picked" VSes used by this server.
    STATISTIC_GTM_SERVER_VS_PICKS = :STATISTIC_GTM_SERVER_VS_PICKS
    # Number of times this virtual server was selected by the LB logic.
    STATISTIC_GTM_VIRTUAL_SERVER_PICKS = :STATISTIC_GTM_VIRTUAL_SERVER_PICKS
    # Number of requests for resolution of this wide IP.
    STATISTIC_GTM_WIDEIP_REQUESTS = :STATISTIC_GTM_WIDEIP_REQUESTS
    # Number of times this wide IP was resolved successfully.
    STATISTIC_GTM_WIDEIP_RESOLUTIONS = :STATISTIC_GTM_WIDEIP_RESOLUTIONS
    # Number of times this wide IP was resolved as a persistent connection.
    STATISTIC_GTM_WIDEIP_PERSISTED = :STATISTIC_GTM_WIDEIP_PERSISTED
    # Number of times the preferred LB method was used on this wide IP.
    STATISTIC_GTM_WIDEIP_PREFERRED_LB_METHODS = :STATISTIC_GTM_WIDEIP_PREFERRED_LB_METHODS
    # Number of times the alternate LB method was used on this wide IP.
    STATISTIC_GTM_WIDEIP_ALTERNATE_LB_METHODS = :STATISTIC_GTM_WIDEIP_ALTERNATE_LB_METHODS
    # Number of times the fallback LB method was used on this wide IP.
    STATISTIC_GTM_WIDEIP_FALLBACK_LB_METHODS = :STATISTIC_GTM_WIDEIP_FALLBACK_LB_METHODS
    # Number of times requests for this wide IP were dropped.
    STATISTIC_GTM_WIDEIP_DROPPED_CONNECTIONS = :STATISTIC_GTM_WIDEIP_DROPPED_CONNECTIONS
    # Number of times this wide IP defaulted back to an explicit IP.
    STATISTIC_GTM_WIDEIP_EXPLICIT_IP = :STATISTIC_GTM_WIDEIP_EXPLICIT_IP
    # Number of times the LB method chosen was LB_METHOD_RETURN_TO_DNS,					 i.e. we don't choose a wide IP, let DNS resolve the name.
    STATISTIC_GTM_WIDEIP_RETURN_TO_DNS = :STATISTIC_GTM_WIDEIP_RETURN_TO_DNS
    # Total memory available to GTM.
    STATISTIC_GTM_MEMORY_TOTAL_BYTES = :STATISTIC_GTM_MEMORY_TOTAL_BYTES
    # Total memory in use by GTM.
    STATISTIC_GTM_MEMORY_USED_BYTES = :STATISTIC_GTM_MEMORY_USED_BYTES
    # Number of times an iQuery connection was closed and reopened.
    STATISTIC_GTM_IQUERY_RECONNECTS = :STATISTIC_GTM_IQUERY_RECONNECTS
    # Number of bytes received on this iQuery connections.
    STATISTIC_GTM_IQUERY_RECEIVED_BYTES = :STATISTIC_GTM_IQUERY_RECEIVED_BYTES
    # Number of bytes sent on this iQuery connections.
    STATISTIC_GTM_IQUERY_SENT_BYTES = :STATISTIC_GTM_IQUERY_SENT_BYTES
    # Number of times a send was backlogged.
    STATISTIC_GTM_BACKLOGGED_SENDS = :STATISTIC_GTM_BACKLOGGED_SENDS
    # Number of bytes dropped due to backlogged or unconnected.
    STATISTIC_GTM_DROPPED_BYTES = :STATISTIC_GTM_DROPPED_BYTES
    # The current (most recent) RTT for this path.
    STATISTIC_GTM_PATH_CURRENT_RTT = :STATISTIC_GTM_PATH_CURRENT_RTT
    # The average RTT for this path
    STATISTIC_GTM_PATH_AVERAGE_RTT = :STATISTIC_GTM_PATH_AVERAGE_RTT
    # Number of hops most recently used for this path.
    STATISTIC_GTM_PATH_CURRENT_HOPS = :STATISTIC_GTM_PATH_CURRENT_HOPS
    # Average number of hops used for this path.
    STATISTIC_GTM_PATH_AVERAGE_HOPS = :STATISTIC_GTM_PATH_AVERAGE_HOPS
    # Current "hit ratio" for this path.
    STATISTIC_GTM_PATH_CURRENT_COMPENSATION_RATE = :STATISTIC_GTM_PATH_CURRENT_COMPENSATION_RATE
    # Average "hit ratio" for this path.
    STATISTIC_GTM_PATH_AVERAGE_COMPENSATION_RATE = :STATISTIC_GTM_PATH_AVERAGE_COMPENSATION_RATE
    # Number of times a request has been received from this LDNS.
    STATISTIC_GTM_LDNS_REQUESTS = :STATISTIC_GTM_LDNS_REQUESTS
    # Number of Set-Cookie header insertions
    STATISTIC_HTTPCLASS_COOKIE_PERSIST_INSERTS = :STATISTIC_HTTPCLASS_COOKIE_PERSIST_INSERTS
    # Number of server-side responses in range of 200 to 206 (successful responses)
    STATISTIC_HTTPCLASS_2XX_RESPONSES = :STATISTIC_HTTPCLASS_2XX_RESPONSES
    # Number of server-side responses in range of 300 to 307 (redirection resposes)
    STATISTIC_HTTPCLASS_3XX_RESPONSES = :STATISTIC_HTTPCLASS_3XX_RESPONSES
    # Number of server-side responses in range of 400 to 417 (client errors)
    STATISTIC_HTTPCLASS_4XX_RESPONSES = :STATISTIC_HTTPCLASS_4XX_RESPONSES
    # Number of server-side responses in range of 500 to 505 (server errors)
    STATISTIC_HTTPCLASS_5XX_RESPONSES = :STATISTIC_HTTPCLASS_5XX_RESPONSES
    # Total number of HTTPCLASS requests
    STATISTIC_HTTPCLASS_TOTAL_REQUESTS = :STATISTIC_HTTPCLASS_TOTAL_REQUESTS
    # Total number of GET requests
    STATISTIC_HTTPCLASS_GET_REQUESTS = :STATISTIC_HTTPCLASS_GET_REQUESTS
    # Total number of POST requests
    STATISTIC_HTTPCLASS_POST_REQUESTS = :STATISTIC_HTTPCLASS_POST_REQUESTS
    # Total number of version 9 requests
    STATISTIC_HTTPCLASS_V9_REQUESTS = :STATISTIC_HTTPCLASS_V9_REQUESTS
    # Total number of version 10 requests
    STATISTIC_HTTPCLASS_V10_REQUESTS = :STATISTIC_HTTPCLASS_V10_REQUESTS
    # Total number of version 11 requests
    STATISTIC_HTTPCLASS_V11_REQUESTS = :STATISTIC_HTTPCLASS_V11_REQUESTS
    # Total number of version 9 responses
    STATISTIC_HTTPCLASS_V9_RESPONSES = :STATISTIC_HTTPCLASS_V9_RESPONSES
    # Total number of version 10 responses
    STATISTIC_HTTPCLASS_V10_RESPONSES = :STATISTIC_HTTPCLASS_V10_RESPONSES
    # Total number of version 11 responses
    STATISTIC_HTTPCLASS_V11_RESPONSES = :STATISTIC_HTTPCLASS_V11_RESPONSES
    # Maximum number of requests made in a connection
    STATISTIC_HTTPCLASS_MAXIMUM_KEEPALIVE_REQUESTS = :STATISTIC_HTTPCLASS_MAXIMUM_KEEPALIVE_REQUESTS
    # Number of responses under 1k
    STATISTIC_HTTPCLASS_BUCKET_1K_RESPONSES = :STATISTIC_HTTPCLASS_BUCKET_1K_RESPONSES
    # Number of responses from 1 - 4k
    STATISTIC_HTTPCLASS_BUCKET_4K_RESPONSES = :STATISTIC_HTTPCLASS_BUCKET_4K_RESPONSES
    # Number of responses from 4 - 16k
    STATISTIC_HTTPCLASS_BUCKET_16K_RESPONSES = :STATISTIC_HTTPCLASS_BUCKET_16K_RESPONSES
    # Number of responses from 16 - 32k
    STATISTIC_HTTPCLASS_BUCKET_32K_RESPONSES = :STATISTIC_HTTPCLASS_BUCKET_32K_RESPONSES
    # Number of responses from 32 - 64k
    STATISTIC_HTTPCLASS_BUCKET_64K_RESPONSES = :STATISTIC_HTTPCLASS_BUCKET_64K_RESPONSES
    # Total number of response bytes before compression has taken place
    STATISTIC_HTTPCLASS_PRE_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_PRE_COMPRESSION_BYTES
    # To number of response bytes after compression has taken place
    STATISTIC_HTTPCLASS_POST_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_POST_COMPRESSION_BYTES
    # Number of bytes subjected to NULL compression (for license enforcement).
    STATISTIC_HTTPCLASS_NULL_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_NULL_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for MIME type HTML.
    STATISTIC_HTTPCLASS_HTML_PRE_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_HTML_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for MIME type HTML.
    STATISTIC_HTTPCLASS_HTML_POST_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_HTML_POST_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for MIME type CSS.
    STATISTIC_HTTPCLASS_CSS_PRE_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_CSS_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for MIME type CSS.
    STATISTIC_HTTPCLASS_CSS_POST_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_CSS_POST_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for MIME type Javascript.
    STATISTIC_HTTPCLASS_JS_PRE_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_JS_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for MIME type Javascript.
    STATISTIC_HTTPCLASS_JS_POST_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_JS_POST_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for MIME type XML.
    STATISTIC_HTTPCLASS_XML_PRE_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_XML_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for MIME type XML.
    STATISTIC_HTTPCLASS_XML_POST_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_XML_POST_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for MIME type SGML.
    STATISTIC_HTTPCLASS_SGML_PRE_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_SGML_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for MIME type SGML.
    STATISTIC_HTTPCLASS_SGML_POST_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_SGML_POST_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for MIME type Plain text.
    STATISTIC_HTTPCLASS_PLAIN_PRE_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_PLAIN_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for MIME type Plain text.
    STATISTIC_HTTPCLASS_PLAIN_POST_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_PLAIN_POST_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for MIME type Octet.
    STATISTIC_HTTPCLASS_OCTET_PRE_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_OCTET_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for MIME type Octet.
    STATISTIC_HTTPCLASS_OCTET_POST_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_OCTET_POST_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for MIME type Image.
    STATISTIC_HTTPCLASS_IMAGE_PRE_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_IMAGE_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for MIME type Image.
    STATISTIC_HTTPCLASS_IMAGE_POST_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_IMAGE_POST_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for MIME type Video.
    STATISTIC_HTTPCLASS_VIDEO_PRE_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_VIDEO_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for MIME type Video.
    STATISTIC_HTTPCLASS_VIDEO_POST_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_VIDEO_POST_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for MIME type Audio.
    STATISTIC_HTTPCLASS_AUDIO_PRE_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_AUDIO_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for MIME type Audio.
    STATISTIC_HTTPCLASS_AUDIO_POST_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_AUDIO_POST_COMPRESSION_BYTES
    # Number of response bytes before compression has taken place for all other MIME types.
    STATISTIC_HTTPCLASS_OTHER_PRE_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_OTHER_PRE_COMPRESSION_BYTES
    # Number of response bytes after compression has taken place for all other MIME types.
    STATISTIC_HTTPCLASS_OTHER_POST_COMPRESSION_BYTES = :STATISTIC_HTTPCLASS_OTHER_POST_COMPRESSION_BYTES
    # RAM Cache hit count.
    STATISTIC_HTTPCLASS_RAM_CACHE_HITS = :STATISTIC_HTTPCLASS_RAM_CACHE_HITS
    # RAM Cache miss count, excluding uncacheable data.
    STATISTIC_HTTPCLASS_RAM_CACHE_MISSES = :STATISTIC_HTTPCLASS_RAM_CACHE_MISSES
    # Total RAM Cache miss count.
    STATISTIC_HTTPCLASS_RAM_CACHE_TOTAL_MISSES = :STATISTIC_HTTPCLASS_RAM_CACHE_TOTAL_MISSES
    # RAM Cache hit bytes.
    STATISTIC_HTTPCLASS_RAM_CACHE_HIT_BYTES = :STATISTIC_HTTPCLASS_RAM_CACHE_HIT_BYTES
    # RAM Cache miss bytes, excluding uncacheable data.
    STATISTIC_HTTPCLASS_RAM_CACHE_MISS_BYTES = :STATISTIC_HTTPCLASS_RAM_CACHE_MISS_BYTES
    # Total RAM Cache miss bytes.
    STATISTIC_HTTPCLASS_RAM_CACHE_TOTAL_MISS_BYTES = :STATISTIC_HTTPCLASS_RAM_CACHE_TOTAL_MISS_BYTES
    # Number of connections accepted.
    STATISTIC_SCTP_ACCEPTS = :STATISTIC_SCTP_ACCEPTS
    # Number of connections not accepted.
    STATISTIC_SCTP_FAILED_ACCEPT = :STATISTIC_SCTP_FAILED_ACCEPT
    # Number of connections completely established.
    STATISTIC_SCTP_CONNECTIONS = :STATISTIC_SCTP_CONNECTIONS
    # Number of connection failures.
    STATISTIC_SCTP_FAILED_CONNECTION = :STATISTIC_SCTP_FAILED_CONNECTION
    # Number of expired connections due to idle timeout.
    STATISTIC_SCTP_EXPIRED_CONNECTIONS = :STATISTIC_SCTP_EXPIRED_CONNECTIONS
    # Number of abandoned connections due to retries/keep-alives.
    STATISTIC_SCTP_ABANDONED_CONNECTIONS = :STATISTIC_SCTP_ABANDONED_CONNECTIONS
    # Number of resets received.
    STATISTIC_SCTP_RESETS = :STATISTIC_SCTP_RESETS
    # Number of times a bad checksum is encountered.
    STATISTIC_SCTP_BAD_CHECKSUMS = :STATISTIC_SCTP_BAD_CHECKSUMS
    # Number of SCTP cookies received.
    STATISTIC_SCTP_COOKIES = :STATISTIC_SCTP_COOKIES
    # Number of bad SCTP cookies received.
    STATISTIC_SCTP_BAD_COOKIES = :STATISTIC_SCTP_BAD_COOKIES
    # Total paths through link.
    STATISTIC_GTM_LINK_PATHS = :STATISTIC_GTM_LINK_PATHS
    # Total number of LDNSes .
    STATISTIC_GTM_TOTAL_LDNSES = :STATISTIC_GTM_TOTAL_LDNSES
    # Total number of paths.
    STATISTIC_GTM_TOTAL_PATHS = :STATISTIC_GTM_TOTAL_PATHS
    # Total number of SYN cookies generated by PVA ASIC.
    STATISTIC_HARDWARE_SYN_COOKIES_GENERATED = :STATISTIC_HARDWARE_SYN_COOKIES_GENERATED
    # Total number of SYN cookies detected by PVA ASIC.
    STATISTIC_HARDWARE_SYN_COOKIES_DETECTED = :STATISTIC_HARDWARE_SYN_COOKIES_DETECTED
    # Current open connections.
    STATISTIC_FASTL4_OPEN_CONNECTIONS = :STATISTIC_FASTL4_OPEN_CONNECTIONS
    # Current connections that have been accepted.
    STATISTIC_FASTL4_ACCEPTED_CONNECTIONS = :STATISTIC_FASTL4_ACCEPTED_CONNECTIONS
    # Number of accept failures.
    STATISTIC_FASTL4_ACCEPT_FAILURES = :STATISTIC_FASTL4_ACCEPT_FAILURES
    # Expired connections due to idle timeout.
    STATISTIC_FASTL4_EXPIRED_CONNECTIONS = :STATISTIC_FASTL4_EXPIRED_CONNECTIONS
    # Number of malformed packets received.
    STATISTIC_FASTL4_RECEIVED_BAD_PACKET = :STATISTIC_FASTL4_RECEIVED_BAD_PACKET
    # Number of ICMP unreachable or TCP RSTs received.
    STATISTIC_FASTL4_ACCEPTED_ICMP_UNREACH_OR_TCP_RST = :STATISTIC_FASTL4_ACCEPTED_ICMP_UNREACH_OR_TCP_RST
    # Number of TCP RSTs received out of window.
    STATISTIC_FASTL4_ACCEPTED_TCP_RST_OUT_OF_WIN = :STATISTIC_FASTL4_ACCEPTED_TCP_RST_OUT_OF_WIN
    # Number of times a bad checksum is encountered.
    STATISTIC_FASTL4_RECEIVED_BAD_CHECKSUMS = :STATISTIC_FASTL4_RECEIVED_BAD_CHECKSUMS
    # Number of transmit errors.
    STATISTIC_FASTL4_RECEIVED_BAD_TXERR = :STATISTIC_FASTL4_RECEIVED_BAD_TXERR
    # Number of syncookies issued.
    STATISTIC_FASTL4_RECEIVED_SYN_COOKIES_ISSUED = :STATISTIC_FASTL4_RECEIVED_SYN_COOKIES_ISSUED
    # Number of syncookies accepted.
    STATISTIC_FASTL4_RECEIVED_SYN_COOKIES_ACCEPTED = :STATISTIC_FASTL4_RECEIVED_SYN_COOKIES_ACCEPTED
    # Number of syncookies rejected.
    STATISTIC_FASTL4_RECEIVED_SYN_COOKIES_REJECTED = :STATISTIC_FASTL4_RECEIVED_SYN_COOKIES_REJECTED
    #
    STATISTIC_FASTL4_RECEIVED_SYN_COOKIES_SYN_TO_SERVER_RETRANS = :STATISTIC_FASTL4_RECEIVED_SYN_COOKIES_SYN_TO_SERVER_RETRANS
    # Process ID of TMOS processing agent.
    STATISTIC_TM_PID = :STATISTIC_TM_PID
    # TMOS processing agent CPU number.
    STATISTIC_TM_CPU = :STATISTIC_TM_CPU
    # TMOS processing agent instance.
    STATISTIC_TM_TMID = :STATISTIC_TM_TMID
    # Number of TMOS processing agents.
    STATISTIC_TM_NPUS = :STATISTIC_TM_NPUS
    # Number of connections that were redirected to a different TMOS processing agent in the cluster.
    STATISTIC_TM_CMP_CONN_REDIRECTED = :STATISTIC_TM_CMP_CONN_REDIRECTED
    # Number of CPUs on the system.
    STATISTIC_CPU_COUNT = :STATISTIC_CPU_COUNT
    # The numeric ID of the processor, i.e. 1, 2, 3, 4 ....
    STATISTIC_CPU_INFO_CPU_ID = :STATISTIC_CPU_INFO_CPU_ID
    # The time spent by the processor in user context.
    STATISTIC_CPU_INFO_USER = :STATISTIC_CPU_INFO_USER
    # The time spent by the processor running niced processes.
    STATISTIC_CPU_INFO_NICED = :STATISTIC_CPU_INFO_NICED
    # The time spent by the processor servicing system calls.
    STATISTIC_CPU_INFO_SYSTEM = :STATISTIC_CPU_INFO_SYSTEM
    # The time spent by the processor doing nothing.
    STATISTIC_CPU_INFO_IDLE = :STATISTIC_CPU_INFO_IDLE
    # The time spent by the processor servicing hardware interrupts.
    STATISTIC_CPU_INFO_IRQ = :STATISTIC_CPU_INFO_IRQ
    # The time spent by the processor servicing soft interrupts.
    STATISTIC_CPU_INFO_SOFTIRQ = :STATISTIC_CPU_INFO_SOFTIRQ
    # The time spent by the processor waiting for external I/O to complete.
    STATISTIC_CPU_INFO_IOWAIT = :STATISTIC_CPU_INFO_IOWAIT
    # The ratio of time spent in user,niced,system to total time spent by the processor for a recent 10 second period.
    STATISTIC_CPU_INFO_USAGE_RATIO = :STATISTIC_CPU_INFO_USAGE_RATIO
    # Number of request messages.
    STATISTIC_SIP_REQUESTS = :STATISTIC_SIP_REQUESTS
    # Number of response messages.
    STATISTIC_SIP_RESPONSES = :STATISTIC_SIP_RESPONSES
    # Number of messages which failed to parse correctly (connection is aborted).
    STATISTIC_SIP_BAD_MESSAGES = :STATISTIC_SIP_BAD_MESSAGES
    # Number of datagrams dropped (connection aborted).
    STATISTIC_SIP_DROPS = :STATISTIC_SIP_DROPS
  end


  # A list of TMOS modules.
  class TMOSModule < IControl::Base::Enumeration
    # The Application Security Module.
    TMOS_MODULE_ASM = :TMOS_MODULE_ASM
    # The Security Access Module.
    TMOS_MODULE_SAM = :TMOS_MODULE_SAM
    # The Web Accelerator Module.
    TMOS_MODULE_WAM = :TMOS_MODULE_WAM
  end


end
