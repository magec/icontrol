module IControl::LocalLB

  class MatchPatternString < IControl::Base::Struct; end
  class MonitorIP < IControl::Base::Struct; end
  class MonitorIPPort < IControl::Base::Struct; end
  class MonitorInstance < IControl::Base::Struct; end
  class MonitorInstanceState < IControl::Base::Struct; end
  class MonitorRule < IControl::Base::Struct; end
  class ObjectStatus < IControl::Base::Struct; end
  class PersistenceRecord < IControl::Base::Struct; end
  class ProfileAuthenticationMethod < IControl::Base::Struct; end
  class ProfileClientSSLCertificateMode < IControl::Base::Struct; end
  class ProfileCompressionMethod < IControl::Base::Struct; end
  class ProfileCookiePersistenceMethod < IControl::Base::Struct; end
  class ProfileCredentialSource < IControl::Base::Struct; end
  class ProfileEnabledState < IControl::Base::Struct; end
  class ProfileHardwareAccelerationMode < IControl::Base::Struct; end
  class ProfileHttpChunkMode < IControl::Base::Struct; end
  class ProfileHttpCompressionMode < IControl::Base::Struct; end
  class ProfileHttpRedirectRewriteMode < IControl::Base::Struct; end
  class ProfileIPAddress < IControl::Base::Struct; end
  class ProfileMatchPatternStringArray < IControl::Base::Struct; end
  class ProfilePersistenceMode < IControl::Base::Struct; end
  class ProfilePortNumber < IControl::Base::Struct; end
  class ProfileProfileMode < IControl::Base::Struct; end
  class ProfileRamCacheCacheControlMode < IControl::Base::Struct; end
  class ProfileRtspProxyType < IControl::Base::Struct; end
  class ProfileSSLOption < IControl::Base::Struct; end
  class ProfileServerSSLCertificateMode < IControl::Base::Struct; end
  class ProfileString < IControl::Base::Struct; end
  class ProfileStringArray < IControl::Base::Struct; end
  class ProfileTCPCongestionControlMode < IControl::Base::Struct; end
  class ProfileTCPOptionMode < IControl::Base::Struct; end
  class ProfileULong < IControl::Base::Struct; end
  class ProfileUShort < IControl::Base::Struct; end
  class ProfileUncleanShutdownMode < IControl::Base::Struct; end
  class Klass < IControl::Base; end
  class Monitor < IControl::Base; end
  class NAT < IControl::Base; end
  class NodeAddress < IControl::Base; end
  class Pool < IControl::Base; end
  class PoolMember < IControl::Base; end
  class ProfileAuth < IControl::Base; end
  class ProfileClientSSL < IControl::Base; end
  class ProfileDNS < IControl::Base; end
  class ProfileDiameter < IControl::Base; end
  class ProfileFTP < IControl::Base; end
  class ProfileFastHttp < IControl::Base; end
  class ProfileFastL4 < IControl::Base; end
  class ProfileHttp < IControl::Base; end
  class ProfileHttpClass < IControl::Base; end
  class ProfileIIOP < IControl::Base; end
  class ProfileOneConnect < IControl::Base; end
  class ProfilePersistence < IControl::Base; end
  class ProfileRADIUS < IControl::Base; end
  class ProfileRTSP < IControl::Base; end
  class ProfileSCTP < IControl::Base; end
  class ProfileSIP < IControl::Base; end
  class ProfileServerSSL < IControl::Base; end
  class ProfileStream < IControl::Base; end
  class ProfileTCP < IControl::Base; end
  class ProfileUDP < IControl::Base; end
  class ProfileUserStatistic < IControl::Base; end
  class ProfileXML < IControl::Base; end
  class RAMCacheInformation < IControl::Base; end
  class RateClass < IControl::Base; end
  class Rule < IControl::Base; end
  class SNAT < IControl::Base; end
  class SNATPool < IControl::Base; end
  class SNATPoolMember < IControl::Base; end
  class SNATTranslationAddress < IControl::Base; end
  class VirtualAddress < IControl::Base; end
  class VirtualServer < IControl::Base; end
  # A list of address types used to differentiate various node definitions.
  class AddressType < IControl::Base::Enumeration; end
  # An enumeration of authentication methods.
  class AuthenticationMethod < IControl::Base::Enumeration; end
  # A list of possible values for an object's availability status.
  class AvailabilityStatus < IControl::Base::Enumeration; end
  # A list of client-side SSL certificate modes.
  class ClientSSLCertificateMode < IControl::Base::Enumeration; end
  # An enumeration of clone pool types.
  class ClonePoolType < IControl::Base::Enumeration; end
  # An enumeration of compression methods.
  class CompressionMethod < IControl::Base::Enumeration; end
  # A list of cookie persistence modes.
  class CookiePersistenceMethod < IControl::Base::Enumeration; end
  # An enumeration of credential sources.
  class CredentialSource < IControl::Base::Enumeration; end
  # A list of possible values for enabled status.
  class EnabledStatus < IControl::Base::Enumeration; end
  # A list of possible levels for hardware acceleration.
  class HardwareAccelerationMode < IControl::Base::Enumeration; end
  # An enumeration of HTTP chunk modes.
  class HttpChunkMode < IControl::Base::Enumeration; end
  # An enumeration of HTTP compression modes.
  class HttpCompressionMode < IControl::Base::Enumeration; end
  # An enumeration of HTTP redirect/rewrite modes.
  class HttpRedirectRewriteMode < IControl::Base::Enumeration; end
  # A list of load balancing methods.
  class LBMethod < IControl::Base::Enumeration; end
  # A list of rules on how the monitor association is removed.
  class MonitorAssociationRemovalRule < IControl::Base::Enumeration; end
  # A list of monitor instance states.
  class MonitorInstanceStateType < IControl::Base::Enumeration; end
  # An enumeration of different monitor rule types.
  class MonitorRuleType < IControl::Base::Enumeration; end
  # A list of possible values for an object's monitor status.
  class MonitorStatus < IControl::Base::Enumeration; end
  # A list of persistence modes.
  class PersistenceMode < IControl::Base::Enumeration; end
  # A list of profile context types.
  class ProfileContextType < IControl::Base::Enumeration; end
  # A list of profile modes.
  class ProfileMode < IControl::Base::Enumeration; end
  # A list of profile types.
  class ProfileType < IControl::Base::Enumeration; end
  # An enumeration of RAMCache cache control modes.
  class RamCacheCacheControlMode < IControl::Base::Enumeration; end
  # An enumeration of RTSP proxy types.
  class RtspProxyType < IControl::Base::Enumeration; end
  # A list of bug-workaround SSL options
  class SSLOption < IControl::Base::Enumeration; end
  # A list of server-side SSL certificate modes.
  class ServerSSLCertificateMode < IControl::Base::Enumeration; end
  # A list of action types to take when service is down.
  class ServiceDownAction < IControl::Base::Enumeration; end
  # A list of possible values for session status.
  class SessionStatus < IControl::Base::Enumeration; end
  # A list of translation types.
  class SnatType < IControl::Base::Enumeration; end
  # An enumeration of different TCP congestion control modes.
  class TCPCongestionControlMode < IControl::Base::Enumeration; end
  # A list of TCP option modes.
  class TCPOptionMode < IControl::Base::Enumeration; end
  # A list of profile's unclean shutdown modes.
  class UncleanShutdownMode < IControl::Base::Enumeration; end
  # An enumeration of virtual address status dependency types. This indicates how status of the related virtual servers affects status of the virtual address.
  class VirtualAddressStatusDependency < IControl::Base::Enumeration; end##
  # A struct that describes a pattern, represented either as a glob or a regular expression.
  # @attr [String] pattern The match pattern string.
  # @attr [Object] is_glob The flag to indicate whether this is a glob or a regular expression.
  class MatchPatternString < IControl::Base::Struct
    icontrol_attribute :pattern, String
    icontrol_attribute :is_glob, Object
  end

  ##
  # A struct that describes a monitored node address.
  # @attr [IControl::LocalLB::AddressType] address_type The address type of the IP address specified in ipaddress.
  # @attr [String] ipaddress The IP address.
  class MonitorIP < IControl::Base::Struct
    icontrol_attribute :address_type, IControl::LocalLB::AddressType
    icontrol_attribute :ipaddress, String
  end

  ##
  # A struct that describes monitored node server definition, used in the destination address:port of the monitor template.
  # @attr [IControl::LocalLB::AddressType] address_type The address type of the IP:port specified in ipport.
  # @attr [IControl::Common::IPPortDefinition] ipport The IP:port definition.
  class MonitorIPPort < IControl::Base::Struct
    icontrol_attribute :address_type, IControl::LocalLB::AddressType
    icontrol_attribute :ipport, IControl::Common::IPPortDefinition
  end

  ##
  # A struct that describes a monitor instance.
  # @attr [String] template_name The monitor template used by this instance.
  # @attr [IControl::LocalLB::MonitorIPPort] instance_definition The IP:port of this instance.
  class MonitorInstance < IControl::Base::Struct
    icontrol_attribute :template_name, String
    icontrol_attribute :instance_definition, IControl::LocalLB::MonitorIPPort
  end

  ##
  # A struct that describes a monitor instance state.
  # @attr [IControl::LocalLB::MonitorInstance] instance The monitor instance definition.
  # @attr [IControl::LocalLB::MonitorInstanceStateType] instance_state The state of the monitor instance.
  # @attr [Object] enabled_state The state indicating whether the instance is enabled/disabled.
  class MonitorInstanceState < IControl::Base::Struct
    icontrol_attribute :instance, IControl::LocalLB::MonitorInstance
    icontrol_attribute :instance_state, IControl::LocalLB::MonitorInstanceStateType
    icontrol_attribute :enabled_state, Object
  end

  ##
  # An struct that specifies a monitor rule.
  # @attr [IControl::LocalLB::MonitorRuleType] type An indicator of how to deal/interpret with the list of monitors in monitor_templates.
  # @attr [Numeric] quorum A value to be used when type is MONITOR_RULE_TYPE_M_OF_N, i.e. this value is the M in M of N.		 This value is ignored for other rule types.
  # @attr [String] monitor_templates The list of monitors that constitutes this monitor rule.
  class MonitorRule < IControl::Base::Struct
    icontrol_attribute :type, IControl::LocalLB::MonitorRuleType
    icontrol_attribute :quorum, Numeric
    icontrol_attribute :monitor_templates, StringSequence
  end

  ##
  # An struct that specifies an object status.
  # @attr [IControl::LocalLB::AvailabilityStatus] availability_status The availability color status of the object.
  # @attr [IControl::LocalLB::EnabledStatus] enabled_status The enabled status of the object.
  # @attr [String] status_description The textual description of the object's status.
  class ObjectStatus < IControl::Base::Struct
    icontrol_attribute :availability_status, IControl::LocalLB::AvailabilityStatus
    icontrol_attribute :enabled_status, IControl::LocalLB::EnabledStatus
    icontrol_attribute :status_description, String
  end

  ##
  # A struct that describes a persistence record.
  # @attr [String] pool_name The pool associated with the node server where the connection is persisted to.
  # @attr [IControl::Common::IPPortDefinition] node_server The node server the connection is persisted to.
  # @attr [IControl::LocalLB::PersistenceMode] mode The persistent mode used by the object in "name".
  # @attr [String] persistence_value The string representation of the persistence value (i.e. client IP, SSL ID, SIP call ID...)
  # @attr [IControl::Common::VirtualServerDefinition] virtual_server The virtual server (name:IP:port) associated with this persistence record (protocol is not used and will always be 0).
  # @attr [Numeric] create_time The time this persistence record is created.
  # @attr [Numeric] age The time since this persistence record was last touched.
  class PersistenceRecord < IControl::Base::Struct
    icontrol_attribute :pool_name, String
    icontrol_attribute :node_server, IControl::Common::IPPortDefinition
    icontrol_attribute :mode, IControl::LocalLB::PersistenceMode
    icontrol_attribute :persistence_value, String
    icontrol_attribute :virtual_server, IControl::Common::VirtualServerDefinition
    icontrol_attribute :create_time, Numeric
    icontrol_attribute :age, Numeric
  end

  ##
  # A structure that specifies a profile's authentication method.
  # @attr [IControl::LocalLB::AuthenticationMethod] value The authentication method.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileAuthenticationMethod < IControl::Base::Struct
    icontrol_attribute :value, IControl::LocalLB::AuthenticationMethod
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies a profile client-side SSL certificate mode.
  # @attr [IControl::LocalLB::ClientSSLCertificateMode] value The profile client-side SSL certificate mode.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileClientSSLCertificateMode < IControl::Base::Struct
    icontrol_attribute :value, IControl::LocalLB::ClientSSLCertificateMode
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies a profile's compression method.
  # @attr [IControl::LocalLB::CompressionMethod] value The compression method.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileCompressionMethod < IControl::Base::Struct
    icontrol_attribute :value, IControl::LocalLB::CompressionMethod
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies a profile's cookie persistence method.
  # @attr [IControl::LocalLB::CookiePersistenceMethod] value The cookie persistence method.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileCookiePersistenceMethod < IControl::Base::Struct
    icontrol_attribute :value, IControl::LocalLB::CookiePersistenceMethod
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies a profile's credential source.
  # @attr [IControl::LocalLB::CredentialSource] value The credential source.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileCredentialSource < IControl::Base::Struct
    icontrol_attribute :value, IControl::LocalLB::CredentialSource
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies an enabled/disabled state used in profile attributes.
  # @attr [IControl::Common::EnabledState] value The attribute state.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileEnabledState < IControl::Base::Struct
    icontrol_attribute :value, IControl::Common::EnabledState
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies a profile's hardware acceleration mode.
  # @attr [IControl::LocalLB::HardwareAccelerationMode] value The hardware acceleration mode.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileHardwareAccelerationMode < IControl::Base::Struct
    icontrol_attribute :value, IControl::LocalLB::HardwareAccelerationMode
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies a profile's HTTP chunk mode.
  # @attr [IControl::LocalLB::HttpChunkMode] value The HTTP chunk mode.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileHttpChunkMode < IControl::Base::Struct
    icontrol_attribute :value, IControl::LocalLB::HttpChunkMode
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies a profile's HTTP compression mode.
  # @attr [IControl::LocalLB::HttpCompressionMode] value The HTTP compression mode.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileHttpCompressionMode < IControl::Base::Struct
    icontrol_attribute :value, IControl::LocalLB::HttpCompressionMode
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies a profile's HTTP redirect/rewrite mode.
  # @attr [IControl::LocalLB::HttpRedirectRewriteMode] value The HTTP redirect/rewrite mode.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileHttpRedirectRewriteMode < IControl::Base::Struct
    icontrol_attribute :value, IControl::LocalLB::HttpRedirectRewriteMode
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies an IP address used in profile attributes.
  # @attr [String] value The attribute value.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileIPAddress < IControl::Base::Struct
    icontrol_attribute :value, String
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies a sequence of match pattern strings used in profile attributes.
  # @attr [IControl::LocalLB::MatchPatternString] values The attribute match pattern strings.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileMatchPatternStringArray < IControl::Base::Struct
    icontrol_attribute :values, IControl::LocalLB::MatchPatternString
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies a profile's persistence mode.
  # @attr [IControl::LocalLB::PersistenceMode] value The persistence mode.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfilePersistenceMode < IControl::Base::Struct
    icontrol_attribute :value, IControl::LocalLB::PersistenceMode
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies a port number used in profile attributes.
  # @attr [Numeric] value The attribute value.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfilePortNumber < IControl::Base::Struct
    icontrol_attribute :value, Numeric
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies a profile mode.
  # @attr [IControl::LocalLB::ProfileMode] value The profile mode.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileProfileMode < IControl::Base::Struct
    icontrol_attribute :value, IControl::LocalLB::ProfileMode
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies a profile's RAMCache cache control mode.
  # @attr [IControl::LocalLB::RamCacheCacheControlMode] value The RAMCache cache control mode.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileRamCacheCacheControlMode < IControl::Base::Struct
    icontrol_attribute :value, IControl::LocalLB::RamCacheCacheControlMode
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies a profile's RTSP proxy type.
  # @attr [IControl::LocalLB::RtspProxyType] value The RTSP proxy type.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileRtspProxyType < IControl::Base::Struct
    icontrol_attribute :value, IControl::LocalLB::RtspProxyType
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies a profile's SSL options.
  # @attr [IControl::LocalLB::SSLOption] values The SSL options.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileSSLOption < IControl::Base::Struct
    icontrol_attribute :values, IControl::LocalLB::SSLOption
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies a profile server-side SSL certificate mode.
  # @attr [IControl::LocalLB::ServerSSLCertificateMode] value The profile server-side SSL certificate mode.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileServerSSLCertificateMode < IControl::Base::Struct
    icontrol_attribute :value, IControl::LocalLB::ServerSSLCertificateMode
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies a string used in profile attributes.
  # @attr [String] value The attribute string.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileString < IControl::Base::Struct
    icontrol_attribute :value, String
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies a sequence of strings used in profile attributes.
  # @attr [String] values The attribute strings.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileStringArray < IControl::Base::Struct
    icontrol_attribute :values, String
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies a profile's TCP congestion control mode.
  # @attr [IControl::LocalLB::TCPCongestionControlMode] value The TCP congestion control mode.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileTCPCongestionControlMode < IControl::Base::Struct
    icontrol_attribute :value, IControl::LocalLB::TCPCongestionControlMode
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies a profile FastL4's TCP option mode.
  # @attr [IControl::LocalLB::TCPOptionMode] value The TCP option mode.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileTCPOptionMode < IControl::Base::Struct
    icontrol_attribute :value, IControl::LocalLB::TCPOptionMode
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies an unsigned long used in profile attributes.
  # @attr [Numeric] value The attribute value.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileULong < IControl::Base::Struct
    icontrol_attribute :value, Numeric
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies an unsigned short used in profile attributes.
  # @attr [Numeric] value The attribute value.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's value. If false, that means		 the requested value has been explicitly set.			On creations/modifications, if default_flag is true, that means		 the parent profile's value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileUShort < IControl::Base::Struct
    icontrol_attribute :value, Numeric
    icontrol_attribute :default_flag, Object
  end

  ##
  # A structure that specifies a profile's unclean shutdown mode.
  # @attr [IControl::LocalLB::UncleanShutdownMode] value The unclean shutdown mode.
  # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's default value. If false, that means		 the requested value has been explicitly set by the user.			On creations/modifications, if default_flag is true, that means		 the parent profile's default value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
  class ProfileUncleanShutdownMode < IControl::Base::Struct
    icontrol_attribute :value, IControl::LocalLB::UncleanShutdownMode
    icontrol_attribute :default_flag, Object
  end


  ## A sequence of address types.
  class AddressTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of authentication methods.
  class AuthenticationMethodSequence < IControl::Base::Sequence ; end

  ## A sequence of availability statuses.
  class AvailabilityStatusSequence < IControl::Base::Sequence ; end

  ## A sequence of ClientSSLCertificateMode's.
  class ClientSSLCertificateModeSequence < IControl::Base::Sequence ; end

  ## A sequence of clone pool types.
  class ClonePoolTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of compression methods.
  class CompressionMethodSequence < IControl::Base::Sequence ; end

  ## A sequence of cookie persistence methods.
  class CookiePersistenceMethodSequence < IControl::Base::Sequence ; end

  ## A sequence of credential sources.
  class CredentialSourceSequence < IControl::Base::Sequence ; end

  ## A sequence of enabled statuses.
  class EnabledStatusSequence < IControl::Base::Sequence ; end

  ## A sequence of hardware acceleration modes.
  class HardwareAccelerationModeSequence < IControl::Base::Sequence ; end

  ## A sequence of HTTP chunk modes.
  class HttpChunkModeSequence < IControl::Base::Sequence ; end

  ## A sequence of HTTP compression modes.
  class HttpCompressionModeSequence < IControl::Base::Sequence ; end

  ## A sequence of HTTP redirect/rewrite modes.
  class HttpRedirectRewriteModeSequence < IControl::Base::Sequence ; end

  ## A sequence of load balancing methods.
  class LBMethodSequence < IControl::Base::Sequence ; end

  ## A list of match pattern strings.
  class MatchPatternStringSequence < IControl::Base::Sequence ; end

  ## An alias for a sequence of MatchPatternStringSequence.
  class MatchPatternStringSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of MonitorIPPort's.
  class MonitorIPPortSequence < IControl::Base::Sequence ; end

  ## A sequence of MonitorIP's.
  class MonitorIPSequence < IControl::Base::Sequence ; end

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

  ## A sequence of monitor statuses.
  class MonitorStatusSequence < IControl::Base::Sequence ; end

  ## A sequence of object statuses.
  class ObjectStatusSequence < IControl::Base::Sequence ; end

  ## A list of pool persistence modes.
  class PersistenceModeSequence < IControl::Base::Sequence ; end

  ## A list of persistence records.
  class PersistenceRecordSequence < IControl::Base::Sequence ; end

  ## A alias for a sequence of PersistenceRecordSequence.
  class PersistenceRecordSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of profile authentication methods.
  class ProfileAuthenticationMethodSequence < IControl::Base::Sequence ; end

  ## A sequence of profile client-side SSL certificate modes.
  class ProfileClientSSLCertificateModeSequence < IControl::Base::Sequence ; end

  ## A sequence of profile compression methods.
  class ProfileCompressionMethodSequence < IControl::Base::Sequence ; end

  ## A sequence of ProfileContextType's.
  class ProfileContextTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of profile cookie persistence methods.
  class ProfileCookiePersistenceMethodSequence < IControl::Base::Sequence ; end

  ## A sequence of profile credential sources.
  class ProfileCredentialSourceSequence < IControl::Base::Sequence ; end

  ## A sequence of profile enabled/disabled states.
  class ProfileEnabledStateSequence < IControl::Base::Sequence ; end

  ## A sequence of profile hardware acceleration modes.
  class ProfileHardwareAccelerationModeSequence < IControl::Base::Sequence ; end

  ## A sequence of profile HTTP chunk modes.
  class ProfileHttpChunkModeSequence < IControl::Base::Sequence ; end

  ## A sequence of profile HTTP compression modes.
  class ProfileHttpCompressionModeSequence < IControl::Base::Sequence ; end

  ## A sequence of profile HTTP redirect/rewrite modes.
  class ProfileHttpRedirectRewriteModeSequence < IControl::Base::Sequence ; end

  ## A sequence of profile IP addresses.
  class ProfileIPAddressSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of profile match pattern strings.
  class ProfileMatchPatternStringArraySequence < IControl::Base::Sequence ; end

  ## A sequence of profile persistence modes.
  class ProfilePersistenceModeSequence < IControl::Base::Sequence ; end

  ## A sequence of profile port number.
  class ProfilePortNumberSequence < IControl::Base::Sequence ; end

  ## A sequence of profile modes.
  class ProfileProfileModeSequence < IControl::Base::Sequence ; end

  ## A sequence of profile RAMCache cache control modes.
  class ProfileRamCacheCacheControlModeSequence < IControl::Base::Sequence ; end

  ## A sequence of profile RTSP proxy types.
  class ProfileRtspProxyTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of profile SSL options.
  class ProfileSSLOptionSequence < IControl::Base::Sequence ; end

  ## A sequence of profile server-side SSL certificate modes.
  class ProfileServerSSLCertificateModeSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of profile strings.
  class ProfileStringArraySequence < IControl::Base::Sequence ; end

  ## A sequence of profile strings.
  class ProfileStringSequence < IControl::Base::Sequence ; end

  ## A sequence of profile TCP congestion control modes.
  class ProfileTCPCongestionControlModeSequence < IControl::Base::Sequence ; end

  ## A sequence of profile FastL4's TCP option modes.
  class ProfileTCPOptionModeSequence < IControl::Base::Sequence ; end

  ## A sequence of ProfileType's.
  class ProfileTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of profile unsigned longs.
  class ProfileULongSequence < IControl::Base::Sequence ; end

  ## A sequence of profile unsigned shorts.
  class ProfileUShortSequence < IControl::Base::Sequence ; end

  ## A sequence of profile's unclean shutdown modes.
  class ProfileUncleanShutdownModeSequence < IControl::Base::Sequence ; end

  ## A sequence of RAMCache cache control modes.
  class RamCacheCacheControlModeSequence < IControl::Base::Sequence ; end

  ## A sequence of RTSP proxy types.
  class RtspProxyTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of SSL options.
  class SSLOptionSequence < IControl::Base::Sequence ; end

  ## An alias for a sequence of SSL options.
  class SSLOptionSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of ServerSSLCertificateMode's.
  class ServerSSLCertificateModeSequence < IControl::Base::Sequence ; end

  ## A sequence of ServiceDownAction's.
  class ServiceDownActionSequence < IControl::Base::Sequence ; end

  ## A sequence of session statuses.
  class SessionStatusSequence < IControl::Base::Sequence ; end

  ## A sequence of SnatType's.
  class SnatTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of TCP Congestion Control modes.
  class TCPCongestionControlModeSequence < IControl::Base::Sequence ; end

  ## A sequence of TCPOptionMode's.
  class TCPOptionModeSequence < IControl::Base::Sequence ; end

  ## A sequence of UncleanShutdownMode's.
  class UncleanShutdownModeSequence < IControl::Base::Sequence ; end

  ## A sequence of VirtualAddressStatusDependency types.
  class VirtualAddressStatusDependencySequence < IControl::Base::Sequence ; end

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


  # An enumeration of authentication methods.
  class AuthenticationMethod < IControl::Base::Enumeration
    # The LDAP authentication method.
    AUTHENTICATION_METHOD_LDAP = :AUTHENTICATION_METHOD_LDAP
    # The RADIUS authentication method.
    AUTHENTICATION_METHOD_RADIUS = :AUTHENTICATION_METHOD_RADIUS
    # The SSL CC LDAP authentication method.
    AUTHENTICATION_METHOD_SSL_CC_LDAP = :AUTHENTICATION_METHOD_SSL_CC_LDAP
    # The SSL OCSP authentication method.
    AUTHENTICATION_METHOD_SSL_OCSP = :AUTHENTICATION_METHOD_SSL_OCSP
    # The TACACS authentication method.
    AUTHENTICATION_METHOD_TACACS = :AUTHENTICATION_METHOD_TACACS
    # The generic authentication method.
    AUTHENTICATION_METHOD_GENERIC = :AUTHENTICATION_METHOD_GENERIC
    # The SSL CRLDP authentication method.
    AUTHENTICATION_METHOD_SSL_CRLDP = :AUTHENTICATION_METHOD_SSL_CRLDP
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


  # A list of client-side SSL certificate modes.
  class ClientSSLCertificateMode < IControl::Base::Enumeration
    # The client certificate is requested.
    CLIENTSSL_CERTIFICATE_MODE_REQUEST = :CLIENTSSL_CERTIFICATE_MODE_REQUEST
    # The client certificate is required.
    CLIENTSSL_CERTIFICATE_MODE_REQUIRE = :CLIENTSSL_CERTIFICATE_MODE_REQUIRE
    # The client certificate is ignored.
    CLIENTSSL_CERTIFICATE_MODE_IGNORE = :CLIENTSSL_CERTIFICATE_MODE_IGNORE
    # The client certificate processing is auto.
    CLIENTSSL_CERTIFICATE_MODE_AUTO = :CLIENTSSL_CERTIFICATE_MODE_AUTO
  end


  # An enumeration of clone pool types.
  class ClonePoolType < IControl::Base::Enumeration
    # The clone pool is undefined.
    CLONE_POOL_TYPE_UNDEFINED = :CLONE_POOL_TYPE_UNDEFINED
    # The client-side clone pool.
    CLONE_POOL_TYPE_CLIENTSIDE = :CLONE_POOL_TYPE_CLIENTSIDE
    # The server-side clone pool.
    CLONE_POOL_TYPE_SERVERSIDE = :CLONE_POOL_TYPE_SERVERSIDE
  end


  # An enumeration of compression methods.
  class CompressionMethod < IControl::Base::Enumeration
    # Use deflate for compression.
    COMPRESSION_METHOD_DEFLATE = :COMPRESSION_METHOD_DEFLATE
    # Use gzip for compression.
    COMPRESSION_METHOD_GZIP = :COMPRESSION_METHOD_GZIP
  end


  # A list of cookie persistence modes.
  class CookiePersistenceMethod < IControl::Base::Enumeration
    # No cookie mode.
    COOKIE_PERSISTENCE_METHOD_NONE = :COOKIE_PERSISTENCE_METHOD_NONE
    # Insert mode.
    COOKIE_PERSISTENCE_METHOD_INSERT = :COOKIE_PERSISTENCE_METHOD_INSERT
    # Rewrite mode.
    COOKIE_PERSISTENCE_METHOD_REWRITE = :COOKIE_PERSISTENCE_METHOD_REWRITE
    # Passive mode
    COOKIE_PERSISTENCE_METHOD_PASSIVE = :COOKIE_PERSISTENCE_METHOD_PASSIVE
    # Hash mode.
    COOKIE_PERSISTENCE_METHOD_HASH = :COOKIE_PERSISTENCE_METHOD_HASH
  end


  # An enumeration of credential sources.
  class CredentialSource < IControl::Base::Enumeration
    # The basic authentication method.
    CREDENTIAL_SOURCE_HTTP_BASIC_AUTH = :CREDENTIAL_SOURCE_HTTP_BASIC_AUTH
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


  # A list of possible levels for hardware acceleration.
  class HardwareAccelerationMode < IControl::Base::Enumeration
    # No hardware acceleration involvement, software only.
    HW_ACCELERATION_MODE_NONE = :HW_ACCELERATION_MODE_NONE
    # Software handles connection initiation, PVA/hardware				 handles packet processing on the connections.
    HW_ACCELERATION_MODE_ASSIST = :HW_ACCELERATION_MODE_ASSIST
    # Full hardware acceleration, i.e. PVA/hardware handles				 connection initiation and packet processing.
    HW_ACCELERATION_MODE_FULL = :HW_ACCELERATION_MODE_FULL
  end


  # An enumeration of HTTP chunk modes.
  class HttpChunkMode < IControl::Base::Enumeration
    # Do nothing, preserve data as is.
    HTTP_CHUNK_MODE_PRESERVE = :HTTP_CHUNK_MODE_PRESERVE
    # If data is chunked by server: unchunk the HTTP content,				 process the data, re-add chunking headers on egress.				 Chunk extensions will be lost.				 If data is not chunked by server: do nothing.
    HTTP_CHUNK_MODE_SELECTIVE = :HTTP_CHUNK_MODE_SELECTIVE
    # If data is chunked by server: remove the HTTP transfer encoding headers,				 remove the chunk headers, process HTTP content, and pass request/response				 unchunked. The connection will be closed when all the data is sent.				 If data is not chunked by server: do nothing.
    HTTP_CHUNK_MODE_UNCHUNK = :HTTP_CHUNK_MODE_UNCHUNK
    # If data is chunked by server: unchunk the HTTP content,				 process the data, re-add chunking headers on egress.				 Chunk extensions will be lost.				 If data is not chunked by server: add transfer encoding and				 chunking headers on egress.
    HTTP_CHUNK_MODE_RECHUNK = :HTTP_CHUNK_MODE_RECHUNK
  end


  # An enumeration of HTTP compression modes.
  class HttpCompressionMode < IControl::Base::Enumeration
    # Compression is disabled.
    HTTP_COMPRESSION_MODE_DISABLE = :HTTP_COMPRESSION_MODE_DISABLE
    # Compression will take place only when URI / Content-Type filters					dictate to do so.
    HTTP_COMPRESSION_MODE_ENABLE = :HTTP_COMPRESSION_MODE_ENABLE
    # Compression will take place only when told to do so by the					 "HTTP::compress enable" rule command.
    HTTP_COMPRESSION_MODE_SELECTIVE = :HTTP_COMPRESSION_MODE_SELECTIVE
  end


  # An enumeration of HTTP redirect/rewrite modes.
  class HttpRedirectRewriteMode < IControl::Base::Enumeration
    # Redirect/rewrite functionality is disabled.
    HTTP_REDIRECT_REWRITE_MODE_NONE = :HTTP_REDIRECT_REWRITE_MODE_NONE
    # Enable redirect/rewrite functionality on all requests.
    HTTP_REDIRECT_REWRITE_MODE_ALL = :HTTP_REDIRECT_REWRITE_MODE_ALL
    # Enable redirect/rewrite functionality such that node addresses					 present in the Location headers will be converted to virtual addresses.
    HTTP_REDIRECT_REWRITE_MODE_NODES = :HTTP_REDIRECT_REWRITE_MODE_NODES
    # Only enable redirect/rewrite when certain criteria is matched.
    HTTP_REDIRECT_REWRITE_MODE_MATCHING = :HTTP_REDIRECT_REWRITE_MODE_MATCHING
  end


  # A list of load balancing methods.
  class LBMethod < IControl::Base::Enumeration
    # Connections are distributed evenly across all members in the pool.
    LB_METHOD_ROUND_ROBIN = :LB_METHOD_ROUND_ROBIN
    # Connections are sent to a member with a high ratio number more often				 than a member with a lower ratio number.
    LB_METHOD_RATIO_MEMBER = :LB_METHOD_RATIO_MEMBER
    # Connections are sent to the member with the least active connections.
    LB_METHOD_LEAST_CONNECTION_MEMBER = :LB_METHOD_LEAST_CONNECTION_MEMBER
    # Connections are sent to a member based on a combination of the number of				 current connections and the response time of the member. The local load				 balancer analyzes the performance of the member over time and sends connections				 to the member based on the trend.
    LB_METHOD_OBSERVED_MEMBER = :LB_METHOD_OBSERVED_MEMBER
    # Connections are sent to a member based on a combination of the number of current				 connections and the response time of the member over time.
    LB_METHOD_PREDICTIVE_MEMBER = :LB_METHOD_PREDICTIVE_MEMBER
    # Connections are sent to a node address with a high ratio number more often					than a node address with a lower ratio number.
    LB_METHOD_RATIO_NODE_ADDRESS = :LB_METHOD_RATIO_NODE_ADDRESS
    # Connections are sent to the node address with the least active						 connections.
    LB_METHOD_LEAST_CONNECTION_NODE_ADDRESS = :LB_METHOD_LEAST_CONNECTION_NODE_ADDRESS
    # Connections are sent to the node address with the least active connections.
    LB_METHOD_FASTEST_NODE_ADDRESS = :LB_METHOD_FASTEST_NODE_ADDRESS
    # Connections are sent to a node address based on a combination of the number					 of current connections and the response time of the node. The local load					 balancer analyzes the performance of the nodes over time and sends connections					 to the node based on the trend.
    LB_METHOD_OBSERVED_NODE_ADDRESS = :LB_METHOD_OBSERVED_NODE_ADDRESS
    # Connections are sent to a node address based on a combination of the number					 of current connections and the response time of the node over time.
    LB_METHOD_PREDICTIVE_NODE_ADDRESS = :LB_METHOD_PREDICTIVE_NODE_ADDRESS
    # Dynamic Ratio mode is like Ratio mode except that in Dynamic Ratio mode the ratio				 weights are based on continuous monitoring of the servers, and are therefore				 continually changing. Dynamic Ratio load balancing may currently be implemented				 on any nodes that are checked by one of the following monitor types:				 snmp_dca (SNMP data collecting agent),				 real_server ( RealNetworks RealServer platforms),				 and wmi (Windows platforms equipped with Windows Management Instrumentation).
    LB_METHOD_DYNAMIC_RATIO = :LB_METHOD_DYNAMIC_RATIO
    # Connections are sent to the node that has the fastest application response time.
    LB_METHOD_FASTEST_APP_RESPONSE = :LB_METHOD_FASTEST_APP_RESPONSE
    # Connections are sent to the node that has the least number of sessions.
    LB_METHOD_LEAST_SESSIONS = :LB_METHOD_LEAST_SESSIONS
    # Connections are sent to the pool member based upon a dynamic ratio generated by some monitors
    LB_METHOD_DYNAMIC_RATIO_MEMBER = :LB_METHOD_DYNAMIC_RATIO_MEMBER
    # Connections are sent to pool members based upon the result of a hash algorithm that uses the L3 address of the connection
    LB_METHOD_L3_ADDR = :LB_METHOD_L3_ADDR
  end


  # A list of rules on how the monitor association is removed.
  class MonitorAssociationRemovalRule < IControl::Base::Enumeration
    # Any explicit monitor association for the					 child object will be removed, and the child					 object will default to using any monitor rule					 associated with its parent object.
    REMOVE_EXPLICIT_MONITOR_ASSOCIATION = :REMOVE_EXPLICIT_MONITOR_ASSOCIATION
    # The child object will not be monitored at all, even if					 its parent object has an associated monitor rule.
    REMOVE_ALL_MONITOR_ASSOCIATION = :REMOVE_ALL_MONITOR_ASSOCIATION
  end


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


  # A list of possible values for an object's monitor status.
  class MonitorStatus < IControl::Base::Enumeration
    # Status of an enabled object that is not being monitored.
    MONITOR_STATUS_UNCHECKED = :MONITOR_STATUS_UNCHECKED
    # Initial status of a object until its monitors report.
    MONITOR_STATUS_CHECKING = :MONITOR_STATUS_CHECKING
    # Status of an enabled object when its monitors succeed.
    MONITOR_STATUS_UP = :MONITOR_STATUS_UP
    # Status of an enabled object when its monitors fail.
    MONITOR_STATUS_DOWN = :MONITOR_STATUS_DOWN
    # Status of an object when it's forced down manually.
    MONITOR_STATUS_FORCED_DOWN = :MONITOR_STATUS_FORCED_DOWN
    # Status of an object when in maintenance mode.
    MONITOR_STATUS_MAINT = :MONITOR_STATUS_MAINT
    # Status of an object whose node address monitor fails.
    MONITOR_STATUS_ADDRESS_DOWN = :MONITOR_STATUS_ADDRESS_DOWN
    # Status of an object which has been marked down by an iRule.
    MONITOR_STATUS_DOWN_BY_IRULE = :MONITOR_STATUS_DOWN_BY_IRULE
    # Status of an object which has been marked down,						 and should be manually marked up.
    MONITOR_STATUS_DOWN_WAIT_FOR_MANUAL_RESUME = :MONITOR_STATUS_DOWN_WAIT_FOR_MANUAL_RESUME
  end


  # A list of persistence modes.
  class PersistenceMode < IControl::Base::Enumeration
    # No persistence mode.
    PERSISTENCE_MODE_NONE = :PERSISTENCE_MODE_NONE
    # Simple or Source Address affinity persistence mode.
    PERSISTENCE_MODE_SOURCE_ADDRESS_AFFINITY = :PERSISTENCE_MODE_SOURCE_ADDRESS_AFFINITY
    # Sticky or Destination Address affinity persistence mode.
    PERSISTENCE_MODE_DESTINATION_ADDRESS_AFFINITY = :PERSISTENCE_MODE_DESTINATION_ADDRESS_AFFINITY
    # Cookie persistence mode.
    PERSISTENCE_MODE_COOKIE = :PERSISTENCE_MODE_COOKIE
    # Microsoft Terminal Server persistence mode.
    PERSISTENCE_MODE_MSRDP = :PERSISTENCE_MODE_MSRDP
    # SSL Session ID persistence mode.
    PERSISTENCE_MODE_SSL_SID = :PERSISTENCE_MODE_SSL_SID
    # SIP (Call-ID) persistence mode.
    PERSISTENCE_MODE_SIP = :PERSISTENCE_MODE_SIP
    # Universal persistence mode.
    PERSISTENCE_MODE_UIE = :PERSISTENCE_MODE_UIE
    # Hash persistence mode.
    PERSISTENCE_MODE_HASH = :PERSISTENCE_MODE_HASH
  end


  # A list of profile context types.
  class ProfileContextType < IControl::Base::Enumeration
    # Profile applies to both client and server sides.
    PROFILE_CONTEXT_TYPE_ALL = :PROFILE_CONTEXT_TYPE_ALL
    # Profile applies to the client side only.
    PROFILE_CONTEXT_TYPE_CLIENT = :PROFILE_CONTEXT_TYPE_CLIENT
    # Profile applies to the server side only.
    PROFILE_CONTEXT_TYPE_SERVER = :PROFILE_CONTEXT_TYPE_SERVER
  end


  # A list of profile modes.
  class ProfileMode < IControl::Base::Enumeration
    # The profile mode is disabled.
    PROFILE_MODE_DISABLED = :PROFILE_MODE_DISABLED
    # The profile mode is enabled.
    PROFILE_MODE_ENABLED = :PROFILE_MODE_ENABLED
  end


  # A list of profile types.
  class ProfileType < IControl::Base::Enumeration
    # The TCP profile.
    PROFILE_TYPE_TCP = :PROFILE_TYPE_TCP
    # The UDP profile.
    PROFILE_TYPE_UDP = :PROFILE_TYPE_UDP
    # The FTP profile.
    PROFILE_TYPE_FTP = :PROFILE_TYPE_FTP
    # The L4 translation profile.
    PROFILE_TYPE_FAST_L4 = :PROFILE_TYPE_FAST_L4
    # The HTTP profile.
    PROFILE_TYPE_HTTP = :PROFILE_TYPE_HTTP
    # The server-side SSL profile.
    PROFILE_TYPE_SERVER_SSL = :PROFILE_TYPE_SERVER_SSL
    # The client-side SSL profile.
    PROFILE_TYPE_CLIENT_SSL = :PROFILE_TYPE_CLIENT_SSL
    # The authorization profile.
    PROFILE_TYPE_AUTH = :PROFILE_TYPE_AUTH
    # The persistence profile.
    PROFILE_TYPE_PERSISTENCE = :PROFILE_TYPE_PERSISTENCE
    # The connection pool profile.
    PROFILE_TYPE_CONNECTION_POOL = :PROFILE_TYPE_CONNECTION_POOL
    # The stream profile.
    PROFILE_TYPE_STREAM = :PROFILE_TYPE_STREAM
    # The XML profile.
    PROFILE_TYPE_XML = :PROFILE_TYPE_XML
    # The FastHTTP profile.
    PROFILE_TYPE_FAST_HTTP = :PROFILE_TYPE_FAST_HTTP
    # The IIOP profile.
    PROFILE_TYPE_IIOP = :PROFILE_TYPE_IIOP
    # The RTSP profile.
    PROFILE_TYPE_RTSP = :PROFILE_TYPE_RTSP
    # The STATISTICS profile.
    PROFILE_TYPE_STATISTICS = :PROFILE_TYPE_STATISTICS
    # The HTTP class profile.
    PROFILE_TYPE_HTTPCLASS = :PROFILE_TYPE_HTTPCLASS
    # The DNS profile.
    PROFILE_TYPE_DNS = :PROFILE_TYPE_DNS
    # The SCTP profile.
    PROFILE_TYPE_SCTP = :PROFILE_TYPE_SCTP
    # A loosely-typed profile.
    PROFILE_TYPE_INSTANCE = :PROFILE_TYPE_INSTANCE
    # The SIP profile.
    PROFILE_TYPE_SIPP = :PROFILE_TYPE_SIPP
  end


  # An enumeration of RAMCache cache control modes.
  class RamCacheCacheControlMode < IControl::Base::Enumeration
    # Don't do anything with the client cache control headers.
    RAMCACHE_CACHE_CONTROL_MODE_NONE = :RAMCACHE_CACHE_CONTROL_MODE_NONE
    # What to do with the client "Max-Age:" header.
    RAMCACHE_CACHE_CONTROL_MODE_MAX_AGE = :RAMCACHE_CACHE_CONTROL_MODE_MAX_AGE
    # What to do with all client cache control headers
    RAMCACHE_CACHE_CONTROL_MODE_ALL = :RAMCACHE_CACHE_CONTROL_MODE_ALL
  end


  # An enumeration of RTSP proxy types.
  class RtspProxyType < IControl::Base::Enumeration
    # No RTSP proxy.
    RTSP_PROXY_TYPE_NONE = :RTSP_PROXY_TYPE_NONE
    # External or clientside RTSP proxy.
    RTSP_PROXY_TYPE_EXTERNAL = :RTSP_PROXY_TYPE_EXTERNAL
    # Internal or serverside RTSP proxy.
    RTSP_PROXY_TYPE_INTERNAL = :RTSP_PROXY_TYPE_INTERNAL
  end


  # A list of bug-workaround SSL options
  class SSLOption < IControl::Base::Enumeration
    # When talking SSLv2 , if session-id reuse is performed, the session-id					 passed back in the server-finished message is different from the one					 decided upon. This option is ignored for client-side SSL.
    SSL_OPTION_MICROSOFT_SESSION_ID_BUG = :SSL_OPTION_MICROSOFT_SESSION_ID_BUG
    # Netscape-Commerce/1.12, when talking SSLv2 , accepts a 32 byte					 challenge but then appears to only use 16 bytes when generating					 the encryption keys. Using 16 bytes is ok but it should be ok to					 use 32. According to the SSLv3 spec, one should use 32 bytes for					 the challenge when operating in SSLv2/v3 compatibility mode, but as					 mentioned above, this breaks this server so 16 bytes is the way to go.					 This option is ignored for client-side SSL.
    SSL_OPTION_NETSCAPE_CHALLENGE_BUG = :SSL_OPTION_NETSCAPE_CHALLENGE_BUG
    # First a connection is established with RC4-MD5. If it is then						 resumed, we end up using DES-CBC3-SHA. It should be RC4-MD5 according to 7.6.1.3.						 Netscape-Enterprise/2.01 ( https://merchant.netscape.com ) has this						 bug. It only really shows up when connecting via SSLv2/v3 then						 reconnecting via SSLv3 . The cipher list changes....						 NEW INFORMATION: Try connecting with a cipher list of just						 DES-CBC-SHA:RC4-MD5. For some weird reason, each new connection						 uses RC4-MD5, but a re-connect tries to use DES-CBC-SHA. So						 netscape, when doing a re-connect, always takes the first cipher in						 the cipher list.
    SSL_OPTION_NETSCAPE_REUSE_CIPHER_CHANGE_BUG = :SSL_OPTION_NETSCAPE_REUSE_CIPHER_CHANGE_BUG
    # Slow a non-zero certificate type during SSL resume handshakes as a						 workaround for a bug in Netscape's SSLv2 reference implementation.						 This option is ignored for client-side SSL.
    SSL_OPTION_SSLREF2_REUSE_CERT_TYPE_BUG = :SSL_OPTION_SSLREF2_REUSE_CERT_TYPE_BUG
    # Enable a workaround for communicating with older Microsoft applications						 that use non-standard SSL record sizes.
    SSL_OPTION_MICROSOFT_BIG_SSLV3_BUFFER = :SSL_OPTION_MICROSOFT_BIG_SSLV3_BUFFER
    # Enable a workaround for communicating with older Microsoft applications that					 use non-standard RSA key padding. This option is ignored for server-side SSL.
    SSL_OPTION_MSIE_SSL_V2_RSA_PADDING = :SSL_OPTION_MSIE_SSL_V2_RSA_PADDING
    # Enable a workaround for communicating with older SSLeay-based applications that					 specify an incorrect Diffee-Hellman public value length. This option is ignored					 for server-side SSL.
    SSL_OPTION_SSLEAY_080_CLIENT_DH_BUG = :SSL_OPTION_SSLEAY_080_CLIENT_DH_BUG
    # Workaround for communicating with older TLSv1-enabled applications that specify an incorrect				 encrypted RSA key length. This option is ignored for server-side SSL.
    SSL_OPTION_TLS_D5_BUG = :SSL_OPTION_TLS_D5_BUG
    # Enable a workaround for communicating with older TLSv1-enabled applications that use					 incorrect block padding.
    SSL_OPTION_TLS_BLOCK_PADDING_BUG = :SSL_OPTION_TLS_BLOCK_PADDING_BUG
    # Disables a countermeasure against a SSL 3.0/TLS 1.0 protocol						 vulnerability affecting CBC ciphers, which cannot be handled						 by some broken SSL implementations. This option has no effect						 for connections using other ciphers.
    SSL_OPTION_DONT_INSERT_EMPTY_FRAGMENTS = :SSL_OPTION_DONT_INSERT_EMPTY_FRAGMENTS
    # All of the above bug workarounds. It is usually safe to use ALL_BUGFIXES to enable the bug				 workaround options if compatibility with somewhat broken implementations is desired.
    SSL_OPTION_ALL_BUGFIXES = :SSL_OPTION_ALL_BUGFIXES
    # For servessl profiles only, this specifies that the SSL filter will forestall TCP half-closes				 by waiting for the connection shutdown from the server. This is a workaround for HTTP/1.0 and				 HTTP/0.9 clients which sent an HTTP request followed by a FIN, which would cause immediate teardown				 for serverssl-only proxies. Instead of closing immediately, the proxy will wait for the server to close.
    SSL_OPTION_PASSIVE_CLOSE = :SSL_OPTION_PASSIVE_CLOSE
    # When performing renegotiation as a server, always							 start a new session (i.e., session resumption requests							 are only accepted in the initial handshake). This option is ignored for							 server-side SSL.
    SSL_OPTION_NO_SESSION_RESUMPTION_ON_RENEGOTIATION = :SSL_OPTION_NO_SESSION_RESUMPTION_ON_RENEGOTIATION
    # Always create a new key when using temporary/ephemeral DH parameters (see				 SSL_CTX_set_tmp_dh_callback(3)). This option must be used to prevent small				 subgroup attacks, when the DH parameters were not generated using "strong"				 primes (e.g. when using DSA-parameters, see dhparam(1)). If "strong" primes				 were used, it is not strictly necessary to generate a new DH key during each				 handshake but it is also recommended. SSL_OP_SINGLE_DH_USE should therefore				 be enabled whenever temporary/ephemeral DH parameters are used.
    SSL_OPTION_SINGLE_DH_USE = :SSL_OPTION_SINGLE_DH_USE
    # Always use ephemeral (temporary) RSA key when doing RSA operations (see				 SSL_CTX_set_tmp_rsa_callback(3)). According to the specifications this is only				 done when a RSA key can only be used for signature operations (namely under				 export ciphers with restricted RSA keylength). By setting this option, ephemeral				 RSA keys are always used. This option breaks compatibility with the SSL/TLS				 specifications and may lead to interoperability problems with clients and				 should therefore never be used. Ciphers with EDH (ephemeral Diffie-Hellman) key				 exchange should be used instead.
    SSL_OPTION_EPHEMERAL_RSA = :SSL_OPTION_EPHEMERAL_RSA
    # When choosing a cipher, use the server's preferences instead of the					 client preferences. When not set, the SSL server will always follow					 the clients preferences. When set, the SSLv3/TLSv1 server will					 choose following its own preferences. Because of the different protocol,						for SSLv2 the server will send his list of preferences to the client						and the client chooses.
    SSL_OPTION_CIPHER_SERVER_PREFERENCE = :SSL_OPTION_CIPHER_SERVER_PREFERENCE
    # Disable version rollback attack detection.				 During the client key exchange, the client must send the same information about				 acceptable SSL/TLS protocol levels as during the first hello. Some clients violate				 this rule by adapting to the server's answer. (Example: the client sends a SSLv2 hello and accepts up to SSLv3 .1=TLSv1, the server only understands up to SSLv3 .				 In this case the client must still use the same SSLv3 .1=TLSv1 announcement. Some				 clients step down to SSLv3 with respect to the server's answer and violate the				 version rollback protection.)
    SSL_OPTION_TLS_ROLLBACK_BUG = :SSL_OPTION_TLS_ROLLBACK_BUG
    # Do not use the SSLv2 protocol.
    SSL_OPTION_NO_SSL_V2 = :SSL_OPTION_NO_SSL_V2
    # Do not use the SSLv3 protocol.
    SSL_OPTION_NO_SSL_V3 = :SSL_OPTION_NO_SSL_V3
    # Do not use the TLSv1 protocol.
    SSL_OPTION_NO_TLS_V1 = :SSL_OPTION_NO_TLS_V1
    # These debugging options deliberately manipulate the PKCS1 padding used by SSL clients				 in an attempt to detect vulnerability to particular SSL server vulnerabilities.				 These options are not recommended for normal use. These options are ignored for				 client-side SSL.
    SSL_OPTION_PKCS1_CHECK_1 = :SSL_OPTION_PKCS1_CHECK_1
    # These debugging options deliberately manipulate the PKCS1 padding used by SSL clients				 in an attempt to detect vulnerability to particular SSL server vulnerabilities.				 These options are not recommended for normal use. These options are ignored for				 client-side SSL.
    SSL_OPTION_PKCS1_CHECK_2 = :SSL_OPTION_PKCS1_CHECK_2
    # If we accept a netscape connection, demand a client cert, have a non-self-signed					 CA which does not have its CA in netscape, and the browser has a cert, it will crash/hang.					 Works for 3.x and 4.xbeta
    SSL_OPTION_NETSCAPE_CA_DN_BUG = :SSL_OPTION_NETSCAPE_CA_DN_BUG
    # This debugging option deliberately manipulates the SSL server session						 resumption behavior to mimic that of certain Netscape servers						 (see the NETSCAPE_REUSE_CIPHER_CHANGE_BUG description above).						 This option is not recommended for normal use. This option is ignored						 for server-side SSL.
    SSL_OPTION_NETSCAPE_DEMO_CIPHER_CHANGE_BUG = :SSL_OPTION_NETSCAPE_DEMO_CIPHER_CHANGE_BUG
  end


  # A list of server-side SSL certificate modes.
  class ServerSSLCertificateMode < IControl::Base::Enumeration
    # The certificate is required.
    SERVERSSL_CERTIFICATE_MODE_REQUIRE = :SERVERSSL_CERTIFICATE_MODE_REQUIRE
    # The certificate is ignored.
    SERVERSSL_CERTIFICATE_MODE_IGNORE = :SERVERSSL_CERTIFICATE_MODE_IGNORE
  end


  # A list of action types to take when service is down.
  class ServiceDownAction < IControl::Base::Enumeration
    # No action.
    SERVICE_DOWN_ACTION_NONE = :SERVICE_DOWN_ACTION_NONE
    # Send a RST or ICMP.
    SERVICE_DOWN_ACTION_RESET = :SERVICE_DOWN_ACTION_RESET
    # Clean up the connection.
    SERVICE_DOWN_ACTION_DROP = :SERVICE_DOWN_ACTION_DROP
    # Reselect a new node.
    SERVICE_DOWN_ACTION_RESELECT = :SERVICE_DOWN_ACTION_RESELECT
  end


  # A list of possible values for session status.
  class SessionStatus < IControl::Base::Enumeration
    # New sessions are enabled.
    SESSION_STATUS_ENABLED = :SESSION_STATUS_ENABLED
    # New sessions are disabled.
    SESSION_STATUS_DISABLED = :SESSION_STATUS_DISABLED
    # New sessions are forced to disabled.
    SESSION_STATUS_FORCED_DISABLED = :SESSION_STATUS_FORCED_DISABLED
    # New sessions are disabled on node addresses.
    SESSION_STATUS_ADDRESS_DISABLED = :SESSION_STATUS_ADDRESS_DISABLED
  end


  # A list of translation types.
  class SnatType < IControl::Base::Enumeration
    # No snat is being used.
    SNAT_TYPE_NONE = :SNAT_TYPE_NONE
    # The snat uses a single translation address.
    SNAT_TYPE_TRANSLATION_ADDRESS = :SNAT_TYPE_TRANSLATION_ADDRESS
    # The snat uses a SNAT pool of translation addresses.
    SNAT_TYPE_SNATPOOL = :SNAT_TYPE_SNATPOOL
    # The snat uses self IP addresses.
    SNAT_TYPE_AUTOMAP = :SNAT_TYPE_AUTOMAP
  end


  # An enumeration of different TCP congestion control modes.
  class TCPCongestionControlMode < IControl::Base::Enumeration
    # No congestion control.
    TCP_CONGESTION_CONTROL_NONE = :TCP_CONGESTION_CONTROL_NONE
    # RENO congestion control mode.
    TCP_CONGESTION_CONTROL_RENO = :TCP_CONGESTION_CONTROL_RENO
    # New RENO congestion control mode.
    TCP_CONGESTION_CONTROL_NEWRENO = :TCP_CONGESTION_CONTROL_NEWRENO
    # Scalable congestion control mode, it will do MIMD on cwnd besides NewReno retransmission.
    TCP_CONGESTION_CONTROL_SCALABLE = :TCP_CONGESTION_CONTROL_SCALABLE
    # Highspeed congestion control mode, per RFC 3649.
    TCP_CONGESTION_CONTROL_HIGHSPEED = :TCP_CONGESTION_CONTROL_HIGHSPEED
  end


  # A list of TCP option modes.
  class TCPOptionMode < IControl::Base::Enumeration
    # Option to preserve TCP timestamp or window scale option.
    TCP_OPTION_MODE_PRESERVE = :TCP_OPTION_MODE_PRESERVE
    # Option to strip TCP timestamp or window scale option.
    TCP_OPTION_MODE_STRIP = :TCP_OPTION_MODE_STRIP
    # Option to rewrite TCP timestamp.
    TCP_OPTION_MODE_REWRITE = :TCP_OPTION_MODE_REWRITE
  end


  # A list of profile's unclean shutdown modes.
  class UncleanShutdownMode < IControl::Base::Enumeration
    # Connections are closed down in the					 appropriate manner using a 4-way close..
    UNCLEAN_SHUTDOWN_MODE_DISABLED = :UNCLEAN_SHUTDOWN_MODE_DISABLED
    # Forced-shutdown requests will be terminated by RSTs .
    UNCLEAN_SHUTDOWN_MODE_ENABLED = :UNCLEAN_SHUTDOWN_MODE_ENABLED
    # Connections will be terminated by silently dropping them				 after the payload is delivered.
    UNCLEAN_SHUTDOWN_MODE_FAST = :UNCLEAN_SHUTDOWN_MODE_FAST
  end


  # An enumeration of virtual address status dependency types. This indicates how status of the related virtual servers affects status of the virtual address.
  class VirtualAddressStatusDependency < IControl::Base::Enumeration
    # Virtual address is always green regardless of						 virtual servers' status.
    VIRTUAL_ADDRESS_STATUS_DEPENDENCY_NONE = :VIRTUAL_ADDRESS_STATUS_DEPENDENCY_NONE
    # If any related virtual server is green, the virtual						address is green.
    VIRTUAL_ADDRESS_STATUS_DEPENDENCY_ANY = :VIRTUAL_ADDRESS_STATUS_DEPENDENCY_ANY
    # All related virtual servers must be green before						the virtual address is considered green.
    VIRTUAL_ADDRESS_STATUS_DEPENDENCY_ALL = :VIRTUAL_ADDRESS_STATUS_DEPENDENCY_ALL
  end


end
require "local_lb/klass"
require "local_lb/monitor"
require "local_lb/nat"
require "local_lb/node_address"
require "local_lb/pool"
require "local_lb/pool_member"
require "local_lb/profile_auth"
require "local_lb/profile_client_ssl"
require "local_lb/profile_dns"
require "local_lb/profile_diameter"
require "local_lb/profile_ftp"
require "local_lb/profile_fast_http"
require "local_lb/profile_fast_l4"
require "local_lb/profile_http"
require "local_lb/profile_http_class"
require "local_lb/profile_iiop"
require "local_lb/profile_one_connect"
require "local_lb/profile_persistence"
require "local_lb/profile_radius"
require "local_lb/profile_rtsp"
require "local_lb/profile_sctp"
require "local_lb/profile_sip"
require "local_lb/profile_server_ssl"
require "local_lb/profile_stream"
require "local_lb/profile_tcp"
require "local_lb/profile_udp"
require "local_lb/profile_user_statistic"
require "local_lb/profile_xml"
require "local_lb/ram_cache_information"
require "local_lb/rate_class"
require "local_lb/rule"
require "local_lb/snat"
require "local_lb/snat_pool"
require "local_lb/snat_pool_member"
require "local_lb/snat_translation_address"
require "local_lb/virtual_address"
require "local_lb/virtual_server"
