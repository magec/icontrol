module IControl::Management
  ##
  # The EventSubscription interface is to be used to register for system configuration
  # change events. Events are sent using the EventNotification interface.
  class EventSubscription < IControl::Base
    class AuthenticationMode < IControl::Base::Enumeration; end
    class EventType < IControl::Base::Enumeration; end
    class ObjectType < IControl::Base::Enumeration; end
    class SubscriptionStatusCode < IControl::Base::Enumeration; end
    class SubscriptionDefinition < IControl::Base::Struct; end
    class SubscriptionDetails < IControl::Base::Struct; end
    class SubscriptionStatistics < IControl::Base::Struct; end
    class SubscriptionStatus < IControl::Base::Struct; end
    class UserCredential < IControl::Base::Struct; end    ## A Sequence of AuthenticationMode enumeration values.
    class AuthenticationModeSequence < IControl::Base::Sequence ; end## A Sequence of EventType enumeration values.
    class EventTypeSequence < IControl::Base::Sequence ; end## A Sequence of ObjectType enumeration values.
    class ObjectTypeSequence < IControl::Base::Sequence ; end## A Sequence of SubscriptionDefinition structures.
    class SubscriptionDefinitionSequence < IControl::Base::Sequence ; end## A Sequence of SubscriptionDetails structures.
    class SubscriptionDetailsSequence < IControl::Base::Sequence ; end## A Sequence of SubscriptionStatistics structures.
    class SubscriptionStatisticsSequence < IControl::Base::Sequence ; end## A Sequence of SubscriptionStatusCode enumeration values.
    class SubscriptionStatusCodeSequence < IControl::Base::Sequence ; end## A Sequence of SubscriptionStatus structures.
    class SubscriptionStatusSequence < IControl::Base::Sequence ; end## A Sequence of UserCredential structures.
    class UserCredentialSequence < IControl::Base::Sequence ; end##
    # The authentication modes used for http(s) based communications.
    class AuthenticationMode < IControl::Base::Enumeration
      # No authentication is performed.
      AUTHMODE_NONE = :AUTHMODE_NONE
      # HTTP Digest authentication.
      AUTHMODE_BASIC = :AUTHMODE_BASIC
    end

    ##
    # The category event that a given subscription is listening on. when the subscription
    # sees an event occur that fits one of these flags, a notification is triggered.
    class EventType < IControl::Base::Enumeration
      # Non event based message.
      EVENTTYPE_NONE = :EVENTTYPE_NONE
      # A test nofitication message.
      EVENTTYPE_TEST = :EVENTTYPE_TEST
      # All possible EventTypes .
      EVENTTYPE_ALL = :EVENTTYPE_ALL
      # A system startup has occurred.
      EVENTTYPE_SYSTEM_STARTUP = :EVENTTYPE_SYSTEM_STARTUP
      # A system shutdown has occurred.
      EVENTTYPE_SYSTEM_SHUTDOWN = :EVENTTYPE_SYSTEM_SHUTDOWN
      # A configuration load has occurred.
      EVENTTYPE_SYSTEM_CONFIG_LOAD = :EVENTTYPE_SYSTEM_CONFIG_LOAD
      # An object was created.
      EVENTTYPE_CREATE = :EVENTTYPE_CREATE
      # An object was modified.
      EVENTTYPE_MODIFY = :EVENTTYPE_MODIFY
      # An object was deleted.
      EVENTTYPE_DELETE = :EVENTTYPE_DELETE
      # An admin ip address has been changed.
      EVENTTYPE_ADMIN_IP = :EVENTTYPE_ADMIN_IP
      # An entry in the arp table has been changed.
      EVENTTYPE_ARP_ENTRY = :EVENTTYPE_ARP_ENTRY
      # A change has been made to the high availablity state of a daemon.
      EVENTTYPE_DAEMON_HA = :EVENTTYPE_DAEMON_HA
      # A database variable has been changed.
      EVENTTYPE_DB_VARIABLE = :EVENTTYPE_DB_VARIABLE
      # One or more of the feature flags have been modified.
      EVENTTYPE_FEATURE_FLAGS = :EVENTTYPE_FEATURE_FLAGS
      # A profile filter has changed.
      EVENTTYPE_FILTER_PROFILE = :EVENTTYPE_FILTER_PROFILE
      # A change has occurred in the global traffic manager.
      EVENTTYPE_GTMD = :EVENTTYPE_GTMD
      # A change has occurred to a system interface.
      EVENTTYPE_INTERFACE = :EVENTTYPE_INTERFACE
      # A LCD panel warning message has changed.
      EVENTTYPE_LCDWARN = :EVENTTYPE_LCDWARN
      # A layer 2 forwarding has occurred.
      EVENTTYPE_L2_FORWARD = :EVENTTYPE_L2_FORWARD
      # A change has occurred with a member of a mirror port.
      EVENTTYPE_MIRROR_PORT_MEMBER = :EVENTTYPE_MIRROR_PORT_MEMBER
      # A change has occurred with a member of a mirror port.
      EVENTTYPE_MIRROR_PORT = :EVENTTYPE_MIRROR_PORT
      # A change has occurred with a mirror VLAN.
      EVENTTYPE_MIRROR_VLAN = :EVENTTYPE_MIRROR_VLAN
      # A monitor has changed.
      EVENTTYPE_MONITOR = :EVENTTYPE_MONITOR
      # A change has occurred to a network address translation.
      EVENTTYPE_NAT = :EVENTTYPE_NAT
      # A change has occurred to a node address.
      EVENTTYPE_NODE_ADDRESS = :EVENTTYPE_NODE_ADDRESS
      # A change has occurred to a packet filter.
      EVENTTYPE_PACKET_FILTER = :EVENTTYPE_PACKET_FILTER
      # A change has been made to a system level PCI hardware device.
      EVENTTYPE_PCI_DEVICE = :EVENTTYPE_PCI_DEVICE
      # A change has occured to a load balancing pool.
      EVENTTYPE_POOL = :EVENTTYPE_POOL
      # A change has occurred to a member in a load balancing pool.
      EVENTTYPE_POOL_MEMBER = :EVENTTYPE_POOL_MEMBER
      # A change has occurred to a rate filter.
      EVENTTYPE_RATE_FILTER = :EVENTTYPE_RATE_FILTER
      # A The management routing table has been updated.
      EVENTTYPE_ROUTE_MGMT = :EVENTTYPE_ROUTE_MGMT
      # The routing table has been updated.
      EVENTTYPE_ROUTE_UPDATE = :EVENTTYPE_ROUTE_UPDATE
      # A Rule has been changed.
      EVENTTYPE_RULE = :EVENTTYPE_RULE
      # A change has occured to a self ip address.
      EVENTTYPE_SELF_IP = :EVENTTYPE_SELF_IP
      # A change has occured with a sensor.
      EVENTTYPE_SENSOR = :EVENTTYPE_SENSOR
      # A SNAT address has changed.
      EVENTTYPE_SNAT_ADDRESS = :EVENTTYPE_SNAT_ADDRESS
      # A SNAT pool has changed.
      EVENTTYPE_SNAT_POOL = :EVENTTYPE_SNAT_POOL
      # A SNAT pool member has changed.
      EVENTTYPE_SNAT_POOL_MEMBER = :EVENTTYPE_SNAT_POOL_MEMBER
      # A change was made to the spanning tree protocol (STP) configuration.
      EVENTTYPE_STP = :EVENTTYPE_STP
      # A domain switch occurred.
      EVENTTYPE_SWITCH_DOMAIN = :EVENTTYPE_SWITCH_DOMAIN
      # A edge switch occurred.
      EVENTTYPE_SWITCH_EDGE = :EVENTTYPE_SWITCH_EDGE
      # A change occured with the tamd authorization.
      EVENTTYPE_TAMD_AUTH = :EVENTTYPE_TAMD_AUTH
      # A change associated with a link aggregation trunk.
      EVENTTYPE_TRUNK = :EVENTTYPE_TRUNK
      # A change occured with a link aggretaion trunk configuration member.
      EVENTTYPE_TRUNK_CONFIG_MEMBER = :EVENTTYPE_TRUNK_CONFIG_MEMBER
      # A change occured with a link aggretaion trunk working member.
      EVENTTYPE_TRUNK_WORKING_MEMBER = :EVENTTYPE_TRUNK_WORKING_MEMBER
      # A change has occurred with a member of a value list.
      EVENTTYPE_VALUE_LIST = :EVENTTYPE_VALUE_LIST
      # A change occured with a virtual address.
      EVENTTYPE_VIRTUAL_ADDRESS = :EVENTTYPE_VIRTUAL_ADDRESS
      # A change occurred with a virtual server.
      EVENTTYPE_VIRTUAL_SERVER = :EVENTTYPE_VIRTUAL_SERVER
      # A change occurred with a virtual server profile.
      EVENTTYPE_VIRTUAL_SERVER_PROFILE = :EVENTTYPE_VIRTUAL_SERVER_PROFILE
      # A change occurred with a VLAN.
      EVENTTYPE_VLAN = :EVENTTYPE_VLAN
      # A change occurred with a VLAN member.
      EVENTTYPE_VLAN_MEMBER = :EVENTTYPE_VLAN_MEMBER
      # A change occurred with a VLAN group.
      EVENTTYPE_VLANGROUP = :EVENTTYPE_VLANGROUP
    end

    ##
    # The object types that are included in a event notification event.
    class ObjectType < IControl::Base::Enumeration
      # Object type not included in this enumeration.
      OBJECTTYPE_UNKNOWN = :OBJECTTYPE_UNKNOWN
      # Administrative ip address.
      OBJECTTYPE_ADMIN_IP = :OBJECTTYPE_ADMIN_IP
      # Static entry in the arp table.
      OBJECTTYPE_ARP_STATIC_ENTRY = :OBJECTTYPE_ARP_STATIC_ENTRY
      # Generic authorization configuration.
      OBJECTTYPE_AUTH_GENERIC_CONFIG = :OBJECTTYPE_AUTH_GENERIC_CONFIG
      # LDAP authorization configuration.
      OBJECTTYPE_AUTH_LDAP_CONFIG = :OBJECTTYPE_AUTH_LDAP_CONFIG
      # Radius authorization configuration.
      OBJECTTYPE_AUTH_RADIUS_CONFIG = :OBJECTTYPE_AUTH_RADIUS_CONFIG
      # Radius authorization configuration change (radius server address).
      OBJECTTYPE_AUTH_RADIUS_CONFIG_RADIUS_SERVER = :OBJECTTYPE_AUTH_RADIUS_CONFIG_RADIUS_SERVER
      # A SSL Authorization LDAP configuration.
      OBJECTTYPE_AUTH_SSL_CC_LDAP_CONFIG = :OBJECTTYPE_AUTH_SSL_CC_LDAP_CONFIG
      # A SSL OCSP Authorization configuration.
      OBJECTTYPE_AUTH_SSL_OCSP_CONFIG = :OBJECTTYPE_AUTH_SSL_OCSP_CONFIG
      # Terminal Access Controller Access Control System (TACACS) configuration.
      OBJECTTYPE_AUTH_TACACS_CONFIG = :OBJECTTYPE_AUTH_TACACS_CONFIG
      # A daemon's high availablility setting.
      OBJECTTYPE_DAEMON_HA = :OBJECTTYPE_DAEMON_HA
      # A daemon's status has changed.
      OBJECTTYPE_DAEMON_STATUS = :OBJECTTYPE_DAEMON_STATUS
      # A database value.
      OBJECTTYPE_DB_VARIABLE = :OBJECTTYPE_DB_VARIABLE
      # The default monitor rule.
      OBJECTTYPE_DEFAULT_MONITOR_RULE = :OBJECTTYPE_DEFAULT_MONITOR_RULE
      # A Global traffic manager box interface.
      OBJECTTYPE_GTM_BOX = :OBJECTTYPE_GTM_BOX
      # A global traffic manager data center.
      OBJECTTYPE_GTM_DC = :OBJECTTYPE_GTM_DC
      # A global traffic manager extended content verification.
      OBJECTTYPE_GTM_ECV = :OBJECTTYPE_GTM_ECV
      # A global traffic manager's global variable.
      OBJECTTYPE_GTM_GLOBALS = :OBJECTTYPE_GTM_GLOBALS
      # The ip address associated with the global traffic manager.
      OBJECTTYPE_GTM_IP = :OBJECTTYPE_GTM_IP
      # A global traffic manager inbound or outbound link.
      OBJECTTYPE_GTM_LINK = :OBJECTTYPE_GTM_LINK
      # A global traffic pool.
      OBJECTTYPE_GTM_POOL = :OBJECTTYPE_GTM_POOL
      # A global traffic pool member.
      OBJECTTYPE_GTM_POOL_MEMBER = :OBJECTTYPE_GTM_POOL_MEMBER
      # A global traffic quality of service coefficient.
      OBJECTTYPE_GTM_QOS_COEFF = :OBJECTTYPE_GTM_QOS_COEFF
      # A registry item.
      OBJECTTYPE_GTM_REG_ITEM = :OBJECTTYPE_GTM_REG_ITEM
      # A global traffic manager's regional entry.
      OBJECTTYPE_GTM_REGION_ENTRY = :OBJECTTYPE_GTM_REGION_ENTRY
      # A global traffic server.
      OBJECTTYPE_GTM_SERVER = :OBJECTTYPE_GTM_SERVER
      # A global traffic manager's top level item.
      OBJECTTYPE_GTM_TOP_ITEM = :OBJECTTYPE_GTM_TOP_ITEM
      # A global traffic virtual server.
      OBJECTTYPE_GTM_VS = :OBJECTTYPE_GTM_VS
      # A global traffic wide area ip.
      OBJECTTYPE_GTM_WIDEIP = :OBJECTTYPE_GTM_WIDEIP
      # A global traffic wide area ip alias.
      OBJECTTYPE_GTM_WIDEIP_ALIAS = :OBJECTTYPE_GTM_WIDEIP_ALIAS
      # A global traffic wide area ip pool of servers.
      OBJECTTYPE_GTM_WIDEIP_POOL = :OBJECTTYPE_GTM_WIDEIP_POOL
      # A system interface.
      OBJECTTYPE_INTERFACE = :OBJECTTYPE_INTERFACE
      # A authentication ssl config OCSP responder.
      OBJECTTYPE_JOIN_AUTH_SSL_OCSP_CONFIG_OCSP_RESPONDER = :OBJECTTYPE_JOIN_AUTH_SSL_OCSP_CONFIG_OCSP_RESPONDER
      # A layer 2 forwarding.
      OBJECTTYPE_L2_FORWARD = :OBJECTTYPE_L2_FORWARD
      # The license binary structure.
      OBJECTTYPE_LICENSE_BLOB = :OBJECTTYPE_LICENSE_BLOB
      # A mirrored port.
      OBJECTTYPE_MIRROR_PORT = :OBJECTTYPE_MIRROR_PORT
      # A member of a mirrored port.
      OBJECTTYPE_MIRROR_PORT_MBR = :OBJECTTYPE_MIRROR_PORT_MBR
      # A member of a VLAN.
      OBJECTTYPE_MIRROR_VLAN = :OBJECTTYPE_MIRROR_VLAN
      # A service monitor.
      OBJECTTYPE_MONITOR = :OBJECTTYPE_MONITOR
      # An instance of a service monitor.
      OBJECTTYPE_MONITOR_INSTANCE = :OBJECTTYPE_MONITOR_INSTANCE
      # A service monitor parameter.
      OBJECTTYPE_MONITOR_PARAM = :OBJECTTYPE_MONITOR_PARAM
      # A rule associated with a service monitor.
      OBJECTTYPE_MONITOR_RULE = :OBJECTTYPE_MONITOR_RULE
      # An instance of a rule associated with a service monitor.
      OBJECTTYPE_MONITOR_RULE_INSTANCE = :OBJECTTYPE_MONITOR_RULE_INSTANCE
      # Network Address Translation (NAT).
      OBJECTTYPE_NAT = :OBJECTTYPE_NAT
      # A VLAN associated with a Network Address Translation (NAT)
      OBJECTTYPE_NAT_VLAN = :OBJECTTYPE_NAT_VLAN
      # A node address.
      OBJECTTYPE_NODE_ADDRESS = :OBJECTTYPE_NODE_ADDRESS
      # A Nokia alarm.
      OBJECTTYPE_NOKIA_ALARM = :OBJECTTYPE_NOKIA_ALARM
      # A Nokia log entry.
      OBJECTTYPE_NOKIA_LOG = :OBJECTTYPE_NOKIA_LOG
      # A OCSP responder.
      OBJECTTYPE_OCSP_RESPONDER = :OBJECTTYPE_OCSP_RESPONDER
      # A trusted address allowed in a packet filter.
      OBJECTTYPE_PACKET_FILTER_ALLOW_TRUSTED = :OBJECTTYPE_PACKET_FILTER_ALLOW_TRUSTED
      # A rule associated with a packet filter.
      OBJECTTYPE_PACKET_FILTER_RULE = :OBJECTTYPE_PACKET_FILTER_RULE
      # A line in the PAM authorization configuration.
      OBJECTTYPE_PAM_LINE = :OBJECTTYPE_PAM_LINE
      # A internal PCI device.
      OBJECTTYPE_PCI_DEVICE = :OBJECTTYPE_PCI_DEVICE
      # The system platform.
      OBJECTTYPE_PLATFORM = :OBJECTTYPE_PLATFORM
      # A load balancing pool.
      OBJECTTYPE_POOL = :OBJECTTYPE_POOL
      # A member of a load balancing pool.
      OBJECTTYPE_POOL_MEMBER = :OBJECTTYPE_POOL_MEMBER
      # The authorization profile.
      OBJECTTYPE_PROFILE_AUTH = :OBJECTTYPE_PROFILE_AUTH
      # The bigproto profile.
      OBJECTTYPE_PROFILE_BIGPROTO = :OBJECTTYPE_PROFILE_BIGPROTO
      # The client SSL profile.
      OBJECTTYPE_PROFILE_CLIENTSSL = :OBJECTTYPE_PROFILE_CLIENTSSL
      # The connection pool profile.
      OBJECTTYPE_PROFILE_CONNPOOL = :OBJECTTYPE_PROFILE_CONNPOOL
      # The FTP profile.
      OBJECTTYPE_PROFILE_FTP = :OBJECTTYPE_PROFILE_FTP
      # The HTTP profile.
      OBJECTTYPE_PROFILE_HTTP = :OBJECTTYPE_PROFILE_HTTP
      # The persistence profile.
      OBJECTTYPE_PROFILE_PERSIST = :OBJECTTYPE_PROFILE_PERSIST
      # The server SSL profile.
      OBJECTTYPE_PROFILE_SERVERSSL = :OBJECTTYPE_PROFILE_SERVERSSL
      # The stream profile.
      OBJECTTYPE_PROFILE_STREAM = :OBJECTTYPE_PROFILE_STREAM
      # The TCP profile.
      OBJECTTYPE_PROFILE_TCP = :OBJECTTYPE_PROFILE_TCP
      # The UDP profile.
      OBJECTTYPE_PROFILE_UDP = :OBJECTTYPE_PROFILE_UDP
      # An exclusion to a SSL proxy.
      OBJECTTYPE_PROXY_EXCLUSION = :OBJECTTYPE_PROXY_EXCLUSION
      # The radius server.
      OBJECTTYPE_RADIUS_SERVER = :OBJECTTYPE_RADIUS_SERVER
      # A rate filter class.
      OBJECTTYPE_RATE_FILTER_CLASS = :OBJECTTYPE_RATE_FILTER_CLASS
      # A static entry in the route table.
      OBJECTTYPE_ROUTE_STATIC_ENTRY = :OBJECTTYPE_ROUTE_STATIC_ENTRY
      # A management entry in the route table.
      OBJECTTYPE_ROUTE_MGMT_ENTRY = :OBJECTTYPE_ROUTE_MGMT_ENTRY
      # A load balancing rule.
      OBJECTTYPE_RULE = :OBJECTTYPE_RULE
      # A event from a load balancing rule.
      OBJECTTYPE_RULE_EVENT = :OBJECTTYPE_RULE_EVENT
      # A Self IP Address of the system.
      OBJECTTYPE_SELF_IP = :OBJECTTYPE_SELF_IP
      # A Secure Network Address Translation (SNAT).
      OBJECTTYPE_SNAT = :OBJECTTYPE_SNAT
      # A SNAT origin address.
      OBJECTTYPE_SNAT_ORIG_ADDR = :OBJECTTYPE_SNAT_ORIG_ADDR
      # A SNAT VLAN.
      OBJECTTYPE_SNAT_VLAN = :OBJECTTYPE_SNAT_VLAN
      # A pool associated with a SNAT.
      OBJECTTYPE_SNATPOOL = :OBJECTTYPE_SNATPOOL
      # A translation address associated with a snat pool.
      OBJECTTYPE_SNATPOOL_TRANS_ADDR = :OBJECTTYPE_SNATPOOL_TRANS_ADDR
      # Spanning Tree Protocol (STP).
      OBJECTTYPE_STP = :OBJECTTYPE_STP
      # STP global variables.
      OBJECTTYPE_STP_GLOBALS = :OBJECTTYPE_STP_GLOBALS
      # STP interface members.
      OBJECTTYPE_STP_INTERFACE_MBR = :OBJECTTYPE_STP_INTERFACE_MBR
      # STP VLAN members.
      OBJECTTYPE_STP_VLAN_MBR = :OBJECTTYPE_STP_VLAN_MBR
      # A switch of the active domain.
      OBJECTTYPE_SWITCH_DOMAIN = :OBJECTTYPE_SWITCH_DOMAIN
      # A switch of an edge device.
      OBJECTTYPE_SWITCH_EDGE = :OBJECTTYPE_SWITCH_EDGE
      # Identifying information about the system.
      OBJECTTYPE_SYSTEM_INFORMATION = :OBJECTTYPE_SYSTEM_INFORMATION
      # A translation address.
      OBJECTTYPE_TRANS_ADDR = :OBJECTTYPE_TRANS_ADDR
      # A link aggregated trunk.
      OBJECTTYPE_TRUNK = :OBJECTTYPE_TRUNK
      # A configuration member of a link aggregated trunk.
      OBJECTTYPE_TRUNK_CFG_MBR = :OBJECTTYPE_TRUNK_CFG_MBR
      # A working member of a link aggregated trunk.
      OBJECTTYPE_TRUNK_WRKNG_MBR = :OBJECTTYPE_TRUNK_WRKNG_MBR
      # An entry in the user database.
      OBJECTTYPE_USERDB_ENTRY = :OBJECTTYPE_USERDB_ENTRY
      # A value list.
      OBJECTTYPE_VALUE_LIST = :OBJECTTYPE_VALUE_LIST
      # A virtual address.
      OBJECTTYPE_VIRTUAL_ADDRESS = :OBJECTTYPE_VIRTUAL_ADDRESS
      # A virtual server.
      OBJECTTYPE_VIRTUAL_SERVER = :OBJECTTYPE_VIRTUAL_SERVER
      # Authorication to a virtual server.
      OBJECTTYPE_VIRTUAL_SERVER_AUTH = :OBJECTTYPE_VIRTUAL_SERVER_AUTH
      # A virtual server clone pool
      OBJECTTYPE_VIRTUAL_SERVER_CLONE_POOL = :OBJECTTYPE_VIRTUAL_SERVER_CLONE_POOL
      # Persistence on a virtual server.
      OBJECTTYPE_VIRTUAL_SERVER_PERSIST = :OBJECTTYPE_VIRTUAL_SERVER_PERSIST
      # A load balancing pool associated with a virtual server.
      OBJECTTYPE_VIRTUAL_SERVER_POOL = :OBJECTTYPE_VIRTUAL_SERVER_POOL
      # A profile associated with a virtual server.
      OBJECTTYPE_VIRTUAL_SERVER_PROFILE = :OBJECTTYPE_VIRTUAL_SERVER_PROFILE
      # A rule associated with a virtual server.
      OBJECTTYPE_VIRTUAL_SERVER_RULE = :OBJECTTYPE_VIRTUAL_SERVER_RULE
      # A VLAN associated with a virtual server.
      OBJECTTYPE_VIRTUAL_SERVER_VLAN = :OBJECTTYPE_VIRTUAL_SERVER_VLAN
      # A virtual LAN (VLAN).
      OBJECTTYPE_VLAN = :OBJECTTYPE_VLAN
      # A VLAN id container.
      OBJECTTYPE_VLAN_ID_CONTAINER = :OBJECTTYPE_VLAN_ID_CONTAINER
      # A VLAN member.
      OBJECTTYPE_VLAN_MEMBER = :OBJECTTYPE_VLAN_MEMBER
      # A VLAN group.
      OBJECTTYPE_VLANGROUP = :OBJECTTYPE_VLANGROUP
      # A VLAN group member.
      OBJECTTYPE_VLANGROUP_MBR = :OBJECTTYPE_VLANGROUP_MBR
    end

    ##
    # Status codes specific to the EventSubscription interface.
    class SubscriptionStatusCode < IControl::Base::Enumeration
      # No error has occured. Status is successful.
      E_OK = :E_OK
      # A general uncategorized error.
      E_GENERAL_ERROR = :E_GENERAL_ERROR
      # An invalid EventType was specified.
      E_INVALID_EVENT_TYPE = :E_INVALID_EVENT_TYPE
      # An invalid subscription id was specified.
      E_INVALID_ID = :E_INVALID_ID
      # An error occurred due to the specified url.
      E_INVALID_URL = :E_INVALID_URL
      # An error occurred due to the specified username.
      E_INVALID_USERNAME = :E_INVALID_USERNAME
      # An error occurred due to the specified password.
      E_INVALID_PASSWORD = :E_INVALID_PASSWORD
      # An invalid Time To Live (ttl) value was specified. Possible ranges is (-1, 2^32-1)
      E_INVALID_TTL = :E_INVALID_TTL
      # An invalid min_events_per_timeslice value was specified. This must be a positive integer less than 200.
      E_INVALID_MIN_EVENTS_PER_TIMESLICE = :E_INVALID_MIN_EVENTS_PER_TIMESLICE
      # An invalid max_timeslice value was specified. This must be a positive integer less than 300.
      E_INVALID_MAX_TIMESLICE = :E_INVALID_MAX_TIMESLICE
      # An invalid enabled_state was specified.
      E_INVALID_ENABLED_STATE = :E_INVALID_ENABLED_STATE
      # An attempt to contact the given url at the EventNotification endpoint was refused. This usually occurs when the specified port is not configured on the server.
      E_CONNECTION_REFUSED = :E_CONNECTION_REFUSED
      # An attempt to contact the given url at the EventNotification endpoint timed out.
      E_CONNECTION_TIMEDOUT = :E_CONNECTION_TIMEDOUT
    end

    ##
    # A subscription definition. This includes a subscription identifier and the subscription
    # details.
    class SubscriptionDefinition < IControl::Base::Struct
      # A unique identifier for the subscription in the form of a GUID.
      icontrol_attribute :id, String
      # The configuration details of the given subscription id.
      icontrol_attribute :details, IControl::Management::EventSubscription::SubscriptionDetails
    end

    ##
    # The configuration of a specific Event Subscription. This includes the name, registered
    # events, the enabled state, and delivery configuration values. Event messages will
    # be queued up and sent in a bulk manner as described by the min_events_per_timeslice
    # and max_timeslice variables.
    class SubscriptionDetails < IControl::Base::Struct
      # A user friendly name for the subscription.
      icontrol_attribute :name, String
      # A list of event types to be notified of.
      icontrol_attribute :event_type_list, IControl::Management::EventSubscription::EventTypeSequence
      # The url endpoint for the EventNotification inteface to receive event notifications.
      icontrol_attribute :url, String
      # The credenials for the url endpoint.
      icontrol_attribute :url_credentials, IControl::Management::EventSubscription::UserCredential
      # The time to live (in seconds) for this subscription. After the ttl is reached, the
      # subscription will be removed from the system. A value of -1 indicates an infinite
      # life time.
      icontrol_attribute :ttl, Numeric
      # The minimum number of events needed to trigger a notification. If this value is 50,
      # then this means that when 50 events are queued up they will be sent to the notification
      # endpoint no matter what the max_timeslice is set to.
      icontrol_attribute :min_events_per_timeslice, Numeric
      # This maximum time to wait (in seconds) before event notifications are sent to the
      # notification endpoint. If this value is 30, then after 30 seconds a notification
      # will be sent with the events in the subscription queue.
      icontrol_attribute :max_timeslice, Numeric
      # Whether the subscription is enabled or disabled.
      icontrol_attribute :enabled_state, IControl::Common::EnabledState
    end

    ##
    # A set of statistics for a given subscription.
    class SubscriptionStatistics < IControl::Base::Struct
      # The subscription identifier.
      icontrol_attribute :id, String
      # The time (in GMT) the subscription was created.
      icontrol_attribute :time_created, IControl::Common::TimeStamp
      # The time (in GMT) the subscription was last modified.
      icontrol_attribute :time_last_modified, IControl::Common::TimeStamp
      # The time (in GMT) an event notification endpoint was last notified.
      icontrol_attribute :time_last_notified, IControl::Common::TimeStamp
      # The total number of notifications successfully sent to the subscription endpoint.
      icontrol_attribute :notifications_sent, Numeric
      # The status from the last attempt to notify the notification endpoint.
      icontrol_attribute :last_status, IControl::Management::EventSubscription::SubscriptionStatus
    end

    ##
    # A struct containing a numeric and string representation of a given SubscriptionStatusCode.
    class SubscriptionStatus < IControl::Base::Struct
      # The status code value.
      icontrol_attribute :code, IControl::Management::EventSubscription::SubscriptionStatusCode
      # A string representation of the status code.
      icontrol_attribute :data, String
    end

    ##
    # A user credential included authentication mode, and optionally a username and password.
    class UserCredential < IControl::Base::Struct
      # The authentication mode to use. Currently Digest and None are supported.
      icontrol_attribute :auth_mode, IControl::Management::EventSubscription::AuthenticationMode
      # The username for auth_mode AUTHMODE_BASIC.
      icontrol_attribute :username, String
      # The password for auth_mode AUTHMODE_BASIC.
      icontrol_attribute :password, String
    end

    ##
    # Create a new subscription. This takes an an input a list of subscription details,
    # one for each subscription requested.
    # :method: create
    # :call-seq:
    # create(sub_detail_list)
    #
    # Parameters:
    # - sub_detail_list SubscriptionDetails[] A list of subscription details with the configuration of the requested subscription.

    ##
    # Retrieve a list of event types available on this system.
    # :method: get_available_event_types

    ##
    # Retrieve the list of configured subscription identifiers.
    # :method: get_list

    ##
    # Get the maximum timeslice (in seconds) between event notifications for the list of
    # subscription identifiers.
    # :method: get_max_timeslice
    # :call-seq:
    # get_max_timeslice(id_list ,max_timeslice_list)
    #
    # Parameters:
    # - id_list String[] A list of subscription identifiers.
    # - max_timeslice_list long[] A list of maximum timeslice values corresponding to the given list of subscriptions identifiers.

    ##
    # Get the minimum number of events needed to trigger a notification message.
    # :method: get_min_events_per_timeslice
    # :call-seq:
    # get_min_events_per_timeslice(id_list ,min_events_list)
    #
    # Parameters:
    # - id_list String[] A list of subscription identifiers.
    # - min_events_list long[] A list of minimum event values corresponding to the given list of subscription identifiers.

    ##
    # Get the enabled state of a list of subscription identifiers.
    # :method: get_state
    # :call-seq:
    # get_state(id_list ,state_list)
    #
    # Parameters:
    # - id_list String[] A list of subscription identifiers.
    # - state_list EnabledState[] The enabled states corresponding to the input list of subscription identifiers.

    ##
    # Get the statistics for the given list of subscription identifiers.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(id_list ,statistics_list)
    #
    # Parameters:
    # - id_list String[] A list of subscription identifiers.
    # - statistics_list SubscriptionStatistics[] A list of statistics associated with the given list of subscription identifiers.

    ##
    # Get the time to live (ttl) in seconds for the list of subscription identifiers.
    # :method: get_ttl
    # :call-seq:
    # get_ttl(id_list ,ttl_list)
    #
    # Parameters:
    # - id_list String[] A list of subscription identifiers.
    # - ttl_list long[] A list of ttl values associated with the given subscription identifiers.

    ##
    # Get the url endpoint that implements the EventNotification interface.
    # :method: get_url
    # :call-seq:
    # get_url(id_list ,url_list)
    #
    # Parameters:
    # - id_list String[] A list of subscription identifiers.
    # - url_list String[] The list of url's corresponding to the input list of subscription identifiers.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Modify a list of subscriptions. This takes a list of subscription definitions representing
    # the subscriptions that are to be modified.
    # :method: modify
    # :call-seq:
    # modify(sub_def_list)
    #
    # Parameters:
    # - sub_def_list SubscriptionDefinition[] A list of subscription definitions that are to be modified.

    ##
    # A lightweight ping to determine the event notification service's health.
    # :method: ping

    ##
    # Retrieve the subscription definitions for a list of subscription identifiers.
    # :method: query
    # :call-seq:
    # query(id_list ,sub_def_list)
    #
    # Parameters:
    # - id_list String[] A list of subscription identifiers.
    # - sub_def_list SubscriptionDefinition[] The output results for the list of subscription identifiers.

    ##
    # Remove a list of subscriptions. This takes as input a list of subscription id's and
    # returns a list of status structures with the associated status code for each item
    # in the id_list.
    # :method: remove
    # :call-seq:
    # remove(id_list)
    #
    # Parameters:
    # - id_list String[] A list of subscription identifiers.

    ##
    # Reset the statistics for the given list of subscription identifiers.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(id_list)
    #
    # Parameters:
    # - id_list String[] A list of subscription identifiers.

    ##
    # Set the credentials for the url's associated with the given list of subscription
    # identifiers.
    # :method: set_authentication
    # :call-seq:
    # set_authentication(id_list ,credential_list)
    #
    # Parameters:
    # - id_list String[] A list of subscription identifiers.
    # - credential_list UserCredential[] The list of credentials to associate with the url's of the given list of subscription identifiers.

    ##
    # Set the maximum timeslice (in seconds) between event notifications. This value is
    # used to ensure that notifications are sent despite the minimum event attribute not
    # reaching its threashold.
    # :method: set_max_timeslice
    # :call-seq:
    # set_max_timeslice(id_list ,max_timeslice_list)
    #
    # Parameters:
    # - id_list String[] A list of subscription identifiers.
    # - max_timeslice_list long[] A list of maximum timeslice (in seconds) to be applied to the given subscription identifier.

    ##
    # Set the minimum number of events needed to trigger a notification message. This value
    # is used to force a notification message to occur even if the max timeslice attribute
    # is not reached yet.
    # :method: set_min_events_per_timeslice
    # :call-seq:
    # set_min_events_per_timeslice(id_list ,min_events_list)
    #
    # Parameters:
    # - id_list String[] A list of subscription identifiers.
    # - min_events_list long[] A list of minimum event values to be applied to the given subscription identifiers.

    ##
    # Set the enabled state of a list of subscriptions identifiers
    # :method: set_state
    # :call-seq:
    # set_state(id_list ,state_list)
    #
    # Parameters:
    # - id_list String[] A list of subscription identifiers.
    # - state_list EnabledState[] The enabled states to set the list of subscription ids. These must match the id_list array.

    ##
    # Set the time to live (ttl) in seconds for the list of subscription identifiers.
    # :method: set_ttl
    # :call-seq:
    # set_ttl(id_list ,ttl_list)
    #
    # Parameters:
    # - id_list String[] A list of subscription identifiers.
    # - ttl_list long[] A list of ttl values for the given subscription identifiers. A value of -1 indicates an infinite lifetime.

    ##
    # Set the url endpoint that implements the EventNotification interface.
    # :method: set_url
    # :call-seq:
    # set_url(id_list ,url_list)
    #
    # Parameters:
    # - id_list String[] A list of subscription identifiers.
    # - url_list String[] The list of url's corresponding to the input list of subscription identifiers.


  end
end
