module IControl::GlobalLB

  class AddressType < IControl::Base::Enumeration; end
  class AutoConfigurationState < IControl::Base::Enumeration; end
  class AvailabilityDependency < IControl::Base::Enumeration; end
  class LBMethod < IControl::Base::Enumeration; end
  class LDNSProbeProtocol < IControl::Base::Enumeration; end
  class LinkWeightType < IControl::Base::Enumeration; end
  class MetricLimitType < IControl::Base::Enumeration; end
  class MonitorAssociationRemovalRule < IControl::Base::Enumeration; end
  class MonitorInstanceStateType < IControl::Base::Enumeration; end
  class MonitorRuleType < IControl::Base::Enumeration; end
  class RegionDBType < IControl::Base::Enumeration; end
  class RegionType < IControl::Base::Enumeration; end
  class ServerType < IControl::Base::Enumeration; end
  class MetricLimit < IControl::Base::Struct; end
  class MonitorIPPort < IControl::Base::Struct; end
  class MonitorInstance < IControl::Base::Struct; end
  class MonitorInstanceState < IControl::Base::Struct; end
  class MonitorRule < IControl::Base::Struct; end
  class VirtualServerDefinition < IControl::Base::Struct; end
  class Application < IControl::Base; end
  class DNSSECKey < IControl::Base; end
  class DNSSECZone < IControl::Base; end
  class DataCenter < IControl::Base; end
  class Globals < IControl::Base; end
  class Link < IControl::Base; end
  class Monitor < IControl::Base; end
  class Pool < IControl::Base; end
  class PoolMember < IControl::Base; end
  class Region < IControl::Base; end
  class Rule < IControl::Base; end
  class Server < IControl::Base; end
  class Topology < IControl::Base; end
  class VirtualServer < IControl::Base; end
  class WideIP < IControl::Base; end## A sequence of address types.
  class AddressTypeSequence < IControl::Base::Sequence ; end
  ## A sequence of AutoConfigurationState's.
  class AutoConfigurationStateSequence < IControl::Base::Sequence ; end
  ## A sequence of AvailabilityDependency.
  class AvailabilityDependencySequence < IControl::Base::Sequence ; end
  ## A sequence of LB methods.
  class LBMethodSequence < IControl::Base::Sequence ; end
  ## A sequence of LDNSProbeProtocol.
  class LDNSProbeProtocolSequence < IControl::Base::Sequence ; end
  ## A sequence of link weighting types.
  class LinkWeightTypeSequence < IControl::Base::Sequence ; end
  ## A sequence of metric limits.
  class MetricLimitSequence < IControl::Base::Sequence ; end
  ## A sequence of MonitorIPPort's.
  class MonitorIPPortSequence < IControl::Base::Sequence ; end
  ## A sequence of MonitorInstance's.
  class MonitorInstanceSequence < IControl::Base::Sequence ; end
  ## A sequence of MonitorInstanceState's.
  class MonitorInstanceStateSequence < IControl::Base::Sequence ; end
  ## A sequence of sequence of MonitorInstanceState's.
  class MonitorInstanceStateSequenceSequence < IControl::Base::SequenceSequence ; end
  ## A sequence of instance state types.
  class MonitorInstanceStateTypeSequence < IControl::Base::Sequence ; end
  ## A sequence of MonitorRule entries.
  class MonitorRuleSequence < IControl::Base::Sequence ; end
  ## A sequence of region database types.
  class RegionDBTypeSequence < IControl::Base::Sequence ; end
  ## A sequence of endpoint types.
  class RegionTypeSequence < IControl::Base::Sequence ; end
  ## A sequence of ServerType.
  class ServerTypeSequence < IControl::Base::Sequence ; end
  ## A sequence of virtual server definitions.
  class VirtualServerSequence < IControl::Base::Sequence ; end
  ## A alias for a sequence of virtual server definitions.
  class VirtualServerSequenceSequence < IControl::Base::SequenceSequence ; end
  ##
  # A list of address types used to differentiate various node definitions.
  class AddressType < IControl::Base::Enumeration
    # The address type is unknown.
    ATYPE_UNSET = :ATYPE_UNSET
    # For example, " : ".
    ATYPE_STAR_ADDRESS_STAR_PORT = :ATYPE_STAR_ADDRESS_STAR_PORT
    # For example, "*:80".
    ATYPE_STAR_ADDRESS_EXPLICIT_PORT = :ATYPE_STAR_ADDRESS_EXPLICIT_PORT
    # For example, "10.10.10.1:80".
    ATYPE_EXPLICIT_ADDRESS_EXPLICIT_PORT = :ATYPE_EXPLICIT_ADDRESS_EXPLICIT_PORT
    # For example, " : ".
    ATYPE_STAR_ADDRESS = :ATYPE_STAR_ADDRESS
    # For example, "10.10.10.1:80".
    ATYPE_EXPLICIT_ADDRESS = :ATYPE_EXPLICIT_ADDRESS
  end

  ##
  # A list of auto configuration states.
  class AutoConfigurationState < IControl::Base::Enumeration
    # Auto configuration is disabled.
    AUTOCONFIG_DISABLED = :AUTOCONFIG_DISABLED
    # Auto configuration is enabled
    AUTOCONFIG_ENABLED = :AUTOCONFIG_ENABLED
    # Auto configuration is enabled with auto deletion disabled.
    AUTOCONFIG_ENABLED_AUTODELETE_DISABLED = :AUTOCONFIG_ENABLED_AUTODELETE_DISABLED
  end

  ##
  # A list of availability dependencies.
  class AvailabilityDependency < IControl::Base::Enumeration
    # The object's availability depends on at least one wide IP member's being up.
    AVAILABILITY_DEPENDENCY_NONE = :AVAILABILITY_DEPENDENCY_NONE
    # The object's availability depends on at least one server's being up.
    AVAILABILITY_DEPENDENCY_SERVER = :AVAILABILITY_DEPENDENCY_SERVER
    # The object's availability depends on at least one link's being up.
    AVAILABILITY_DEPENDENCY_LINK = :AVAILABILITY_DEPENDENCY_LINK
    # The object's availability depends on at least one data center's being up.
    AVAILABILITY_DEPENDENCY_DATA_CENTER = :AVAILABILITY_DEPENDENCY_DATA_CENTER
    # The object's availability depends on all wide IP members' being up.
    AVAILABILITY_DEPENDENCY_WIDE_IP = :AVAILABILITY_DEPENDENCY_WIDE_IP
  end

  ##
  # A list of load balancing modes.
  class LBMethod < IControl::Base::Enumeration
    # Return to DNS.
    LB_METHOD_RETURN_TO_DNS = :LB_METHOD_RETURN_TO_DNS
    # No load balancing mode defined.
    LB_METHOD_NULL = :LB_METHOD_NULL
    # Round Robin load balancing mode.
    LB_METHOD_ROUND_ROBIN = :LB_METHOD_ROUND_ROBIN
    # Ratio load balancing mode.
    LB_METHOD_RATIO = :LB_METHOD_RATIO
    # Topology load balancing mode.
    LB_METHOD_TOPOLOGY = :LB_METHOD_TOPOLOGY
    # Static persist load balancing mode.
    LB_METHOD_STATIC_PERSIST = :LB_METHOD_STATIC_PERSIST
    # Global Availability load balancing mode.
    LB_METHOD_GLOBAL_AVAILABILITY = :LB_METHOD_GLOBAL_AVAILABILITY
    # Virtual Server (VS) Capacity load balancing mode.
    LB_METHOD_VS_CAPACITY = :LB_METHOD_VS_CAPACITY
    # Least Connections load balancing mode.
    LB_METHOD_LEAST_CONN = :LB_METHOD_LEAST_CONN
    # Lowest Round Trip Times load balancing mode.
    LB_METHOD_LOWEST_RTT = :LB_METHOD_LOWEST_RTT
    # Lowest hop count load balancing mode.
    LB_METHOD_LOWEST_HOPS = :LB_METHOD_LOWEST_HOPS
    # Packet rate load balancing mode.
    LB_METHOD_PACKET_RATE = :LB_METHOD_PACKET_RATE
    # CPU usage load balancing mode.
    LB_METHOD_CPU = :LB_METHOD_CPU
    # Hit ratio load balancing mode.
    LB_METHOD_HIT_RATIO = :LB_METHOD_HIT_RATIO
    # Quality of Service load balancing mode.
    LB_METHOD_QOS = :LB_METHOD_QOS
    # Bits per second load balancing mode.
    LB_METHOD_BPS = :LB_METHOD_BPS
    # Drop the request (don't answer).
    LB_METHOD_DROP_PACKET = :LB_METHOD_DROP_PACKET
    # Return an explicit IP address, specified by the user
    LB_METHOD_EXPLICIT_IP = :LB_METHOD_EXPLICIT_IP
    # This enum is deprecated.
    LB_METHOD_CONNECTION_RATE = :LB_METHOD_CONNECTION_RATE
    # Virtual Server (VS) Score load balancing mode.
    LB_METHOD_VS_SCORE = :LB_METHOD_VS_SCORE
  end

  ##
  # A list of LDNS probe protocol types.
  class LDNSProbeProtocol < IControl::Base::Enumeration
    # Use ICMP for LDNS probing.
    LDNS_PROBE_PROTOCOL_ICMP = :LDNS_PROBE_PROTOCOL_ICMP
    # Use TCP for LDNS probing.
    LDNS_PROBE_PROTOCOL_TCP = :LDNS_PROBE_PROTOCOL_TCP
    # Use UDP for LDNS probing.
    LDNS_PROBE_PROTOCOL_UDP = :LDNS_PROBE_PROTOCOL_UDP
    # Use DNS_DOT for LDNS probing.
    LDNS_PROBE_PROTOCOL_DNS_DOT = :LDNS_PROBE_PROTOCOL_DNS_DOT
    # Use DNS_REV for LDNS probing.
    LDNS_PROBE_PROTOCOL_DNS_REV = :LDNS_PROBE_PROTOCOL_DNS_REV
  end

  ##
  # A list of link weighting types.
  class LinkWeightType < IControl::Base::Enumeration
    # Choose link based on ratios entered.
    LINK_WEIGHT_TYPE_RATIO = :LINK_WEIGHT_TYPE_RATIO
    # Choose most cost-effective link based on cost information entered.
    LINK_WEIGHT_TYPE_COST = :LINK_WEIGHT_TYPE_COST
  end

  ##
  # A list of Metric Limit types.
  class MetricLimitType < IControl::Base::Enumeration
    # The CPU usage.
    METRIC_LIMIT_CPU_USAGE = :METRIC_LIMIT_CPU_USAGE
    # The memory available.
    METRIC_LIMIT_MEMORY_AVAILABLE = :METRIC_LIMIT_MEMORY_AVAILABLE
    # The bits per second.
    METRIC_LIMIT_BITS_PER_SECOND = :METRIC_LIMIT_BITS_PER_SECOND
    # The packets per second.
    METRIC_LIMIT_PACKETS_PER_SECOND = :METRIC_LIMIT_PACKETS_PER_SECOND
    # The current connections.
    METRIC_LIMIT_CONNECTIONS = :METRIC_LIMIT_CONNECTIONS
    # This enum is deprecated
    METRIC_LIMIT_CONNECTIONS_PER_SECOND = :METRIC_LIMIT_CONNECTIONS_PER_SECOND
  end

  ##
  # A list of rules on how the monitor association is removed.
  class MonitorAssociationRemovalRule < IControl::Base::Enumeration
    # Any explicit monitor association for the					 child object will be removed, and the child					 object will default to using any monitor rule					 associated with its parent object.
    REMOVE_EXPLICIT_MONITOR_ASSOCIATION = :REMOVE_EXPLICIT_MONITOR_ASSOCIATION
    # The child object will not be monitored at all, even if					 its parent object has an associated monitor rule.
    REMOVE_ALL_MONITOR_ASSOCIATION = :REMOVE_ALL_MONITOR_ASSOCIATION
  end

  ##
  # A list of monitor instance states.
  class MonitorInstanceStateType < IControl::Base::Enumeration
    # The instance state is unknown.
    INSTANCE_STATE_UNCHECKED = :INSTANCE_STATE_UNCHECKED
    # The instance state is CHECKING.
    INSTANCE_STATE_CHECKING = :INSTANCE_STATE_CHECKING
    # The instance state is UP.
    INSTANCE_STATE_UP = :INSTANCE_STATE_UP
    # The instance state is DOWN.
    INSTANCE_STATE_DOWN = :INSTANCE_STATE_DOWN
    # The instance state is FORCED_DOWN.
    INSTANCE_STATE_FORCED_DOWN = :INSTANCE_STATE_FORCED_DOWN
    # The instance state is DISABLED.
    INSTANCE_STATE_DISABLED = :INSTANCE_STATE_DISABLED
    # The instance state is DOWN, marked by an iRule.
    INSTANCE_STATE_DOWN_BY_IRULE = :INSTANCE_STATE_DOWN_BY_IRULE
    # The instance state is DOWN, and should						 only be marked up manually.
    INSTANCE_STATE_DOWN_WAIT_FOR_MANUAL_RESUME = :INSTANCE_STATE_DOWN_WAIT_FOR_MANUAL_RESUME
  end

  ##
  # An enumeration of different monitor rule types.
  class MonitorRuleType < IControl::Base::Enumeration
    # This monitor rule is undefined, uninitialized state.				 This value is returned in queries only, and an exception				 will be raised if used when creating monitor associations.
    MONITOR_RULE_TYPE_UNDEFINED = :MONITOR_RULE_TYPE_UNDEFINED
    # The object's monitoring is disabled, i.e. no explicit nor default monitor in use.				 This value is returned in queries only, and an exception				 will be raised if used when creating monitor associations.
    MONITOR_RULE_TYPE_NONE = :MONITOR_RULE_TYPE_NONE
    # This monitor rule is based on a single monitor.
    MONITOR_RULE_TYPE_SINGLE = :MONITOR_RULE_TYPE_SINGLE
    # This monitor rule is based on an ANDed list of monitors,				 i.e. all monitors must return successfully for the node/member to be considered UP.
    MONITOR_RULE_TYPE_AND_LIST = :MONITOR_RULE_TYPE_AND_LIST
    # This monitor rule is based on a list of N monitors, but at least M of				 which must return successfully for the node/member to be considered UP.
    MONITOR_RULE_TYPE_M_OF_N = :MONITOR_RULE_TYPE_M_OF_N
  end

  ##
  # A list of region database types.
  class RegionDBType < IControl::Base::Enumeration
    # The region database based on user-defined settings .
    REGION_DB_TYPE_USER_DEFINED = :REGION_DB_TYPE_USER_DEFINED
    # The region database based on ACL lists.
    REGION_DB_TYPE_ACL = :REGION_DB_TYPE_ACL
    # The region database based on ISPs like AOL....
    REGION_DB_TYPE_ISP = :REGION_DB_TYPE_ISP
  end

  ##
  # A list of topology endpoint types.
  class RegionType < IControl::Base::Enumeration
    # The IP subnet topology.
    REGION_TYPE_CIDR = :REGION_TYPE_CIDR
    # The region type.
    REGION_TYPE_REGION = :REGION_TYPE_REGION
    # The continent type.
    REGION_TYPE_CONTINENT = :REGION_TYPE_CONTINENT
    # The country type.
    REGION_TYPE_COUNTRY = :REGION_TYPE_COUNTRY
    # The state type.
    REGION_TYPE_STATE = :REGION_TYPE_STATE
    # The pool type
    REGION_TYPE_POOL = :REGION_TYPE_POOL
    # The data center type
    REGION_TYPE_DATA_CENTER = :REGION_TYPE_DATA_CENTER
    # The ISP region type
    REGION_TYPE_ISP_REGION = :REGION_TYPE_ISP_REGION
  end

  ##
  # A list of server types.
  class ServerType < IControl::Base::Enumeration
    # Server is a standalone BIGIP.
    SERVER_TYPE_BIGIP_STANDALONE = :SERVER_TYPE_BIGIP_STANDALONE
    # Server is a redundant BIGIP.
    SERVER_TYPE_BIGIP_REDUNDANT = :SERVER_TYPE_BIGIP_REDUNDANT
    # Server is a generic load-balancer.
    SERVER_TYPE_GENERIC_LOAD_BALANCER = :SERVER_TYPE_GENERIC_LOAD_BALANCER
    # Server is an Alteon Ace Director.
    SERVER_TYPE_ALTEON_ACE_DIRECTOR = :SERVER_TYPE_ALTEON_ACE_DIRECTOR
    # Server is a Cisco CSS.
    SERVER_TYPE_CISCO_CSS = :SERVER_TYPE_CISCO_CSS
    # Server is a Cisco LocalDirector v2.
    SERVER_TYPE_CISCO_LOCAL_DIRECTOR_V2 = :SERVER_TYPE_CISCO_LOCAL_DIRECTOR_V2
    # Server is a Cisco LocalDirector v3.
    SERVER_TYPE_CISCO_LOCAL_DIRECTOR_V3 = :SERVER_TYPE_CISCO_LOCAL_DIRECTOR_V3
    # Server is a Cisco Server Load Balancer.
    SERVER_TYPE_CISCO_SERVER_LOAD_BALANCER = :SERVER_TYPE_CISCO_SERVER_LOAD_BALANCER
    # Server is an Extreme switch.
    SERVER_TYPE_EXTREME = :SERVER_TYPE_EXTREME
    # Server is a Foundry ServerIron .
    SERVER_TYPE_FOUNDRY_SERVER_IRON = :SERVER_TYPE_FOUNDRY_SERVER_IRON
    # Server is a generic host.
    SERVER_TYPE_GENERIC_HOST = :SERVER_TYPE_GENERIC_HOST
    # Server is a CacheFlow .
    SERVER_TYPE_CACHEFLOW = :SERVER_TYPE_CACHEFLOW
    # Server is an NetApp .
    SERVER_TYPE_NETAPP = :SERVER_TYPE_NETAPP
    # Server is a Windows 2000.
    SERVER_TYPE_WINDOWS_2000 = :SERVER_TYPE_WINDOWS_2000
    # Server is an NT4 .
    SERVER_TYPE_NT4 = :SERVER_TYPE_NT4
    # Server is a Solaris.
    SERVER_TYPE_SOLARIS = :SERVER_TYPE_SOLARIS
    # Server is a Radware.
    SERVER_TYPE_RADWARE = :SERVER_TYPE_RADWARE
  end

  ##
  # A struct that uniquely identifies a metric limit.
  class MetricLimit < IControl::Base::Struct
    # The metric limit type.
    icontrol_attribute :type, IControl::GlobalLB::MetricLimitType
    # The value of the metric.
    icontrol_attribute :value, Numeric
  end

  ##
  # A struct that describes a monitored member definition, used in the destination address:port
  # of the monitor template.
  class MonitorIPPort < IControl::Base::Struct
    # The address type of the IP:port specified in ipport.
    icontrol_attribute :address_type, IControl::GlobalLB::AddressType
    # The IP:port definition.
    icontrol_attribute :ipport, IControl::Common::IPPortDefinition
  end

  ##
  # A struct that describes a monitor instance.
  class MonitorInstance < IControl::Base::Struct
    # The monitor template used by this instance.
    icontrol_attribute :template_name, String
    # The IP:port of this instance.
    icontrol_attribute :instance_definition, IControl::GlobalLB::MonitorIPPort
  end

  ##
  # A struct that describes a monitor instance state.
  class MonitorInstanceState < IControl::Base::Struct
    # The monitor instance definition.
    icontrol_attribute :instance, IControl::GlobalLB::MonitorInstance
    # The state of the monitor instance.
    icontrol_attribute :instance_state, IControl::GlobalLB::MonitorInstanceStateType
    # The state indicating whether the instance is enabled/disabled.
    icontrol_attribute :enabled_state, Object
  end

  ##
  # An struct that specifies a monitor rule.
  class MonitorRule < IControl::Base::Struct
    # An indicator of how to deal/interpret with the list of monitors in monitor_templates.
    icontrol_attribute :type, IControl::GlobalLB::MonitorRuleType
    # A value to be used when type is MONITOR_RULE_TYPE_M_OF_N, i.e. this value is the
    # M in M of N.		 This value is ignored for other rule types.
    icontrol_attribute :quorum, Numeric
    # The list of monitors that constitute this monitor rule.
    icontrol_attribute :monitor_templates, StringSequence
  end

  ##
  # A struct that uniquely identifies a virtual server in GTM.
  class VirtualServerDefinition < IControl::Base::Struct
    # The virtual server's name.
    icontrol_attribute :name, String
    # The virtual server's address.
    icontrol_attribute :address, String
    # The virtual server's port.
    icontrol_attribute :port, Numeric
  end


end
require "globallb/application"
require "globallb/dnsseckey"
require "globallb/dnsseczone"
require "globallb/datacenter"
require "globallb/globals"
require "globallb/link"
require "globallb/monitor"
require "globallb/pool"
require "globallb/poolmember"
require "globallb/region"
require "globallb/rule"
require "globallb/server"
require "globallb/topology"
require "globallb/virtualserver"
require "globallb/wideip"
