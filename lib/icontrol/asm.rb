module IControl::ASM

  class ApplyLearning < IControl::Base::Struct; end
  class DynamicSessionsInUrl < IControl::Base::Struct; end
  class FileTransferContext < IControl::Base::Struct; end
  class ObjectTypeType < IControl::Base::Struct; end
  class SignatureFileUpdateReturnValue < IControl::Base::Struct; end
  class Violation < IControl::Base::Struct; end
  class ViolationSeverity < IControl::Base::Struct; end
  class WebApplicationGroupDefinition < IControl::Base::Struct; end
  class WebObjectType < IControl::Base::Struct; end
  class ApplyLearningSequence < IControl::Base::Sequence ; end
  class DynamicSessionsInUrlSequence < IControl::Base::Sequence ; end
  class ObjectTypeTypeSequence < IControl::Base::Sequence ; end
  class ObjectTypeTypeSequenceSequence < IControl::Base::SequenceSequence ; end
  class PolicyTemplateSequence < IControl::Base::Sequence ; end
  class PolicyTemplateSequenceSequence < IControl::Base::SequenceSequence ; end
  class ViolationSequence < IControl::Base::Sequence ; end
  class ViolationSequenceSequence < IControl::Base::SequenceSequence ; end
  class ViolationSeveritySequence < IControl::Base::Sequence ; end
  class WebApplicationGroupDefinitionSequence < IControl::Base::Sequence ; end
  class WebApplicationLanguageSequence < IControl::Base::Sequence ; end
  class WebObjectTypeSequence < IControl::Base::Sequence ; end
  class WebObjectTypeSequenceSequence < IControl::Base::SequenceSequence ; end
  class ObjectParams < IControl::Base; end
  class Policy < IControl::Base; end
  class SystemConfiguration < IControl::Base; end
  class WebApplication < IControl::Base; end
  class WebApplicationGroup < IControl::Base; end
  # A list of &amp;quot;apply learning" types
  class ApplyLearningType < IControl::Base::Enumeration; end
  # A list of &amp;quot;dynamic sessions in URL" types
  class DynamicSessionsInUrlType < IControl::Base::Enumeration; end
  # A list of &amp;quot;flag state" types
  class FlagState < IControl::Base::Enumeration; end
  # A list of policy templates
  class PolicyTemplate < IControl::Base::Enumeration; end
  # A list of &amp;quot;protocol type"
  class ProtocolType < IControl::Base::Enumeration; end
  # A list of &amp;quot;logging severities" types
  class SeverityName < IControl::Base::Enumeration; end
  # A list of violation names
  class ViolationName < IControl::Base::Enumeration; end
  # A list of languges
  class WebApplicationLanguage < IControl::Base::Enumeration; end##
  # A struct that represents the &amp;quot;apply learning" setting.
  # @attr [IControl::ASM::ApplyLearningType] type The "apply learning" type
  # @attr [String] policy_name The name of the policy to which learning is applied.		 This value is only used when type is 'APPLY_LEARNING_SPECIFIC_POLICY', otherwise it is ignored.
  class ApplyLearning < IControl::Base::Struct
    icontrol_attribute :type, IControl::ASM::ApplyLearningType
    icontrol_attribute :policy_name, String
  end

  ##
  # A struct that represents the &amp;quot;dynamic sessions in URL" setting.
  # @attr [IControl::ASM::DynamicSessionsInUrlType] type The "dynamic sessions in URL" type
  # @attr [String] value The value of the custom pattern.		 This value is only used when type is 'DYNAMIC_SESSIONS_CUSTOM_PATTERN', otherwise it is ignored.
  # @attr [String] description The description of the custom pattern.		 This value is only used when type is 'DYNAMIC_SESSIONS_CUSTOM_PATTERN', otherwise it is ignored.
  class DynamicSessionsInUrl < IControl::Base::Struct
    icontrol_attribute :type, IControl::ASM::DynamicSessionsInUrlType
    icontrol_attribute :value, String
    icontrol_attribute :description, String
  end

  ##
  # A struct that describes a file transfer context.
  # @attr [StringSequence] file_data The actual file content for the transfer operation.
  # @attr [IControl::Common::FileChainType] chain_type The flag used to indicate whether this is FIRST, MIDDLE, or LAST chunk of the file data.
  class FileTransferContext < IControl::Base::Struct
    icontrol_attribute :file_data, StringSequence
    icontrol_attribute :chain_type, IControl::Common::FileChainType
  end

  ##
  # A struct that represents a file type
  # @attr [Object] no_ext_flag flag if it is the no_ext object type
  # @attr [String] object_type_name the name of the object type
  class ObjectTypeType < IControl::Base::Struct
    icontrol_attribute :no_ext_flag, Object
    icontrol_attribute :object_type_name, String
  end

  ##
  # A struct that represents return value structure of sigfile update
  # @attr [Numeric] completed_successfully Indicates if the update was successful
  # @attr [Numeric] sig_count The number of signatures
  # @attr [Numeric] sigs_updated_count The number of signatures updated
  # @attr [String] error_msg The error message
  class SignatureFileUpdateReturnValue < IControl::Base::Struct
    icontrol_attribute :completed_successfully, Numeric
    icontrol_attribute :sig_count, Numeric
    icontrol_attribute :sigs_updated_count, Numeric
    icontrol_attribute :error_msg, String
  end

  ##
  # A struct that represents violations
  # @attr [IControl::ASM::ViolationName] violation_name name of the violation
  # @attr [IControl::ASM::FlagState] learn_flag flag of learning
  # @attr [IControl::ASM::FlagState] alarm_flag flag of alarm
  # @attr [IControl::ASM::FlagState] block_flag flag of blocking
  class Violation < IControl::Base::Struct
    icontrol_attribute :violation_name, IControl::ASM::ViolationName
    icontrol_attribute :learn_flag, IControl::ASM::FlagState
    icontrol_attribute :alarm_flag, IControl::ASM::FlagState
    icontrol_attribute :block_flag, IControl::ASM::FlagState
  end

  ##
  # A struct that represents severity settings of a violation.
  # @attr [IControl::ASM::ViolationName] violation_name The name of the violation.
  # @attr [IControl::ASM::SeverityName] severity_name The name of the severity.
  class ViolationSeverity < IControl::Base::Struct
    icontrol_attribute :violation_name, IControl::ASM::ViolationName
    icontrol_attribute :severity_name, IControl::ASM::SeverityName
  end

  ##
  # A struct that represents a web application group. This is only used in contexts in
  # which the &amp;quot;ungrouped" special group is relevant. Otherwise, the group is
  # represented by its name.
  # @attr [String] value The name of the web application group.
  # @attr [Object] ungrouped_flag The flag that indicates how the value should be interpreted.		 If the ungrouped_flag is false, then the value represents the actual		 web application group name.		 If the ungrouped_flag is true, then the value is ignored/meaningless,		 and represents the special group of "ungrouped" web applications.
  class WebApplicationGroupDefinition < IControl::Base::Struct
    icontrol_attribute :value, String
    icontrol_attribute :ungrouped_flag, Object
  end

  ##
  # A struct that represents a URL
  # @attr [String] web_object_name
  # @attr [IControl::ASM::ProtocolType] protocol
  class WebObjectType < IControl::Base::Struct
    icontrol_attribute :web_object_name, String
    icontrol_attribute :protocol, IControl::ASM::ProtocolType
  end


  ## A sequence of &quot;apply learning" settings
  class ApplyLearningSequence < IControl::Base::Sequence ; end

  ## A sequence of &quot;dynamic sessions in URL" settings
  class DynamicSessionsInUrlSequence < IControl::Base::Sequence ; end

  ## A sequence of &quot;ObjectTypeType" settings
  class ObjectTypeTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of &quot;ObjectTypeTypeSequence" settings
  class ObjectTypeTypeSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of policy templates
  class PolicyTemplateSequence < IControl::Base::Sequence ; end

  ## A sequence of policy template sequences
  class PolicyTemplateSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of &quot;Violation" settings.
  class ViolationSequence < IControl::Base::Sequence ; end

  ## A sequence of &quot;ViolationSequence" settings.
  class ViolationSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of &quot;ViolationSeverity" settings.
  class ViolationSeveritySequence < IControl::Base::Sequence ; end

  ## A sequence of web application groups
  class WebApplicationGroupDefinitionSequence < IControl::Base::Sequence ; end

  ## A sequence of web application languages
  class WebApplicationLanguageSequence < IControl::Base::Sequence ; end

  ## A sequence of &quot;WebObjectType" settings
  class WebObjectTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of &quot;WebObjectTypeSequence" settings
  class WebObjectTypeSequenceSequence < IControl::Base::SequenceSequence ; end

  # A list of &amp;quot;apply learning" types
  class ApplyLearningType < IControl::Base::Enumeration
    # Learning is applied to all policies associated with the web application.
    APPLY_LEARNING_ALL_POLICIES = :APPLY_LEARNING_ALL_POLICIES
    # Learning is applied to the active policy of the web application.
    APPLY_LEARNING_ACTIVE_POLICY = :APPLY_LEARNING_ACTIVE_POLICY
    # Learning is applied to a specific policy.
    APPLY_LEARNING_SPECIFIC_POLICY = :APPLY_LEARNING_SPECIFIC_POLICY
  end


  # A list of &amp;quot;dynamic sessions in URL" types
  class DynamicSessionsInUrlType < IControl::Base::Enumeration
    # Dynamic sessions in URL is disabled.
    DYNAMIC_SESSIONS_DISABLED = :DYNAMIC_SESSIONS_DISABLED
    # Dynamic sessions in URL is enabled with the default pattern,	 whose value is '(\/sap\([^)]+\))';
    DYNAMIC_SESSIONS_DEFAULT_PATTERN = :DYNAMIC_SESSIONS_DEFAULT_PATTERN
    # Dynamic sessions in URL is enabled with a custom pattern.
    DYNAMIC_SESSIONS_CUSTOM_PATTERN = :DYNAMIC_SESSIONS_CUSTOM_PATTERN
  end


  # A list of &amp;quot;flag state" types
  class FlagState < IControl::Base::Enumeration
    # flag will be switched on
    FLAG_ON = :FLAG_ON
    # flag will be switched off
    FLAG_OFF = :FLAG_OFF
    # flag will remain unchanged
    FLAG_UNCHANGED = :FLAG_UNCHANGED
  end


  # A list of policy templates
  class PolicyTemplate < IControl::Base::Enumeration
    # No policy template. Using this template has the same effect as calling the create method.
    POLICY_TEMPLATE_EMPTY = :POLICY_TEMPLATE_EMPTY
    # Generic template for SharePoint 2007 (http)
    POLICY_TEMPLATE_SHAREPOINT_2007_HTTP = :POLICY_TEMPLATE_SHAREPOINT_2007_HTTP
    # Generic template for SharePoint 2007 (https)
    POLICY_TEMPLATE_SHAREPOINT_2007_HTTPS = :POLICY_TEMPLATE_SHAREPOINT_2007_HTTPS
    # Generic template for OWA 2003 (http)
    POLICY_TEMPLATE_OWA_EXCHANGE_2003_HTTP = :POLICY_TEMPLATE_OWA_EXCHANGE_2003_HTTP
    # Generic template for OWA 2003 (https)
    POLICY_TEMPLATE_OWA_EXCHANGE_2003_HTTPS = :POLICY_TEMPLATE_OWA_EXCHANGE_2003_HTTPS
    # Generic template for Oracle 11i (http)
    POLICY_TEMPLATE_ORACLE_APPLICATIONS_11I_HTTP = :POLICY_TEMPLATE_ORACLE_APPLICATIONS_11I_HTTP
    # Generic template for Oracle 11i (https)
    POLICY_TEMPLATE_ORACLE_APPLICATIONS_11I_HTTPS = :POLICY_TEMPLATE_ORACLE_APPLICATIONS_11I_HTTPS
    # Generic template for Lotus Domino 6.5 (http)
    POLICY_TEMPLATE_LOTUSDOMINO_6_5_HTTP = :POLICY_TEMPLATE_LOTUSDOMINO_6_5_HTTP
    # Generic template for Lotus Domino 6.5 (https)
    POLICY_TEMPLATE_LOTUSDOMINO_6_5_HTTPS = :POLICY_TEMPLATE_LOTUSDOMINO_6_5_HTTPS
    # Generic template for OWA 2007 (http)
    POLICY_TEMPLATE_OWA_EXCHANGE_2007_HTTP = :POLICY_TEMPLATE_OWA_EXCHANGE_2007_HTTP
    # Generic template for OWA 2007 (https)
    POLICY_TEMPLATE_OWA_EXCHANGE_2007_HTTPS = :POLICY_TEMPLATE_OWA_EXCHANGE_2007_HTTPS
    # Generic template for SAP NetWeaver 7 (http)
    POLICY_TEMPLATE_SAP_NETWEAVER_7_HTTP = :POLICY_TEMPLATE_SAP_NETWEAVER_7_HTTP
    # Generic template for SAP NetWeaver 7 (https)
    POLICY_TEMPLATE_SAP_NETWEAVER_7_HTTPS = :POLICY_TEMPLATE_SAP_NETWEAVER_7_HTTPS
    # Rapid Deployment security policy (http)
    POLICY_TEMPLATE_RAPID_DEPLOYMENT_HTTP = :POLICY_TEMPLATE_RAPID_DEPLOYMENT_HTTP
    # Rapid Deployment security policy (https)
    POLICY_TEMPLATE_RAPID_DEPLOYMENT_HTTPS = :POLICY_TEMPLATE_RAPID_DEPLOYMENT_HTTPS
    # Generic Template for PeopleSoft Portal 9 (http)
    POLICY_TEMPLATE_PEOPLESOFT_PORTAL_9_HTTP = :POLICY_TEMPLATE_PEOPLESOFT_PORTAL_9_HTTP
    # Generic Template for PeopleSoft Portal 9 (https)
    POLICY_TEMPLATE_PEOPLESOFT_PORTAL_9_HTTPS = :POLICY_TEMPLATE_PEOPLESOFT_PORTAL_9_HTTPS
    # Generic Template for Oracle 10g Portal (http)
    POLICY_TEMPLATE_ORACLE_10G_PORTAL_HTTP = :POLICY_TEMPLATE_ORACLE_10G_PORTAL_HTTP
    # Generic Template for Oracle 10g Portal (https)
    POLICY_TEMPLATE_ORACLE_10G_PORTAL_HTTPS = :POLICY_TEMPLATE_ORACLE_10G_PORTAL_HTTPS
    # Generic template for SharePoint 2003 (http)
    POLICY_TEMPLATE_SHAREPOINT_2003_HTTP = :POLICY_TEMPLATE_SHAREPOINT_2003_HTTP
    # Generic template for SharePoint 2003 (https)
    POLICY_TEMPLATE_SHAREPOINT_2003_HTTPS = :POLICY_TEMPLATE_SHAREPOINT_2003_HTTPS
    # Generic template for ActiveSync (http)
    POLICY_TEMPLATE_ACTIVESYNC_V1_0_V2_0_HTTP = :POLICY_TEMPLATE_ACTIVESYNC_V1_0_V2_0_HTTP
    # Generic template for ActiveSync (https)
    POLICY_TEMPLATE_ACTIVESYNC_V1_0_V2_0_HTTPS = :POLICY_TEMPLATE_ACTIVESYNC_V1_0_V2_0_HTTPS
    # Generic template for OWA 2007 with ActiveSync (http)
    POLICY_TEMPLATE_OWA_EXCHANGE_2007_WITH_ACTIVESYNC_HTTP = :POLICY_TEMPLATE_OWA_EXCHANGE_2007_WITH_ACTIVESYNC_HTTP
    # Generic template for OWA 2007 with ActiveSync (https)
    POLICY_TEMPLATE_OWA_EXCHANGE_2007_WITH_ACTIVESYNC_HTTPS = :POLICY_TEMPLATE_OWA_EXCHANGE_2007_WITH_ACTIVESYNC_HTTPS
    # Generic template for OWA 2007 with ActiveSync (http)
    POLICY_TEMPLATE_OWA_EXCHANGE_2003_WITH_ACTIVESYNC_HTTP = :POLICY_TEMPLATE_OWA_EXCHANGE_2003_WITH_ACTIVESYNC_HTTP
    # Generic template for OWA 2007 with ActiveSync (https)
    POLICY_TEMPLATE_OWA_EXCHANGE_2003_WITH_ACTIVESYNC_HTTPS = :POLICY_TEMPLATE_OWA_EXCHANGE_2003_WITH_ACTIVESYNC_HTTPS
    # Baseline Policy for WhiteHat Sentinel
    POLICY_TEMPLATE_WHITEHAT_SENTINEL_BASELINE = :POLICY_TEMPLATE_WHITEHAT_SENTINEL_BASELINE
  end


  # A list of &amp;quot;protocol type"
  class ProtocolType < IControl::Base::Enumeration
    #
    HTTP = :HTTP
    #
    HTTPS = :HTTPS
  end


  # A list of &amp;quot;logging severities" types
  class SeverityName < IControl::Base::Enumeration
    # Severity: Emergency
    SEVERITY_LOG_EMERG = :SEVERITY_LOG_EMERG
    # Severity: Alert
    SEVERITY_LOG_ALERT = :SEVERITY_LOG_ALERT
    # Severity: Critical
    SEVERITY_LOG_CRIT = :SEVERITY_LOG_CRIT
    # Severity: Error
    SEVERITY_LOG_ERR = :SEVERITY_LOG_ERR
    # Severity: Warning
    SEVERITY_LOG_WARNING = :SEVERITY_LOG_WARNING
    # Severity: Notice
    SEVERITY_LOG_NOTICE = :SEVERITY_LOG_NOTICE
    # Severity: Information
    SEVERITY_LOG_INFO = :SEVERITY_LOG_INFO
    # Severity: Debug
    SEVERITY_LOG_DEBUG = :SEVERITY_LOG_DEBUG
  end


  # A list of violation names
  class ViolationName < IControl::Base::Enumeration
    # Evasion technique detected
    VIOLATION_EVASION_DETECTED = :VIOLATION_EVASION_DETECTED
    # Virus detected
    VIOLATION_VIRUS_DETECTED = :VIOLATION_VIRUS_DETECTED
    # Request length exceeds defined buffer size
    VIOLATION_REQUEST_TOO_LONG = :VIOLATION_REQUEST_TOO_LONG
    # Login URL bypassed
    VIOLATION_ILLEGAL_INGRESS_OBJECT = :VIOLATION_ILLEGAL_INGRESS_OBJECT
    # Login URL expired
    VIOLATION_PARSER_EXPIRED_INGRESS_OBJECT = :VIOLATION_PARSER_EXPIRED_INGRESS_OBJECT
    # Information leakage detected
    VIOLATION_RESPONSE_SCRUBBING = :VIOLATION_RESPONSE_SCRUBBING
    # Illegal attachment in SOAP message
    VIOLATION_ILLEGAL_SOAP_ATTACHMENT = :VIOLATION_ILLEGAL_SOAP_ATTACHMENT
    # Mandatory HTTP header is missing
    VIOLATION_MISSING_MANDATORY_HEADER = :VIOLATION_MISSING_MANDATORY_HEADER
    # HTTP protocol compliance failed
    VIOLATION_HTTP_SANITY_CHECK_FAILED = :VIOLATION_HTTP_SANITY_CHECK_FAILED
    # Failed to convert character
    VIOLATION_CHAR_CONV = :VIOLATION_CHAR_CONV
    # CSRF attack detected
    VIOLATION_CSRF = :VIOLATION_CSRF
    # Malformed XML data
    VIOLATION_MALFORMED_XML = :VIOLATION_MALFORMED_XML
    # XML data does not comply with schema or WSDL document
    VIOLATION_XML_WSDL = :VIOLATION_XML_WSDL
    # XML data does not comply with format settings
    VIOLATION_XML_FORMAT_SETTING = :VIOLATION_XML_FORMAT_SETTING
    # Web Services Security failure
    VIOLATION_PARSER_FAILED_SOAP_SECURITY = :VIOLATION_PARSER_FAILED_SOAP_SECURITY
    # SOAP method not allowed
    VIOLATION_SOAP_METHOD_NOT_ALLOWED = :VIOLATION_SOAP_METHOD_NOT_ALLOWED
    # Maximum login attempts are exceeded
    VIOLATION_BRUTE_FORCE_ATTACK_DETECTED = :VIOLATION_BRUTE_FORCE_ATTACK_DETECTED
    # Web scraping detected
    VIOLATION_WEB_SCRAPING_DETECTED = :VIOLATION_WEB_SCRAPING_DETECTED
    # CSRF authentication expired
    VIOLATION_CSRF_EXPIRED = :VIOLATION_CSRF_EXPIRED
    # Illegal URL length
    VIOLATION_OBJ_LEN = :VIOLATION_OBJ_LEN
    # Illegal cookie length
    VIOLATION_COOKIE_LEN = :VIOLATION_COOKIE_LEN
    # Illegal request length
    VIOLATION_REQ_LEN = :VIOLATION_REQ_LEN
    # Illegal query string length
    VIOLATION_QS_LEN = :VIOLATION_QS_LEN
    # Illegal POST data length
    VIOLATION_POST_DATA_LEN = :VIOLATION_POST_DATA_LEN
    # Null in multi-part parameter value
    VIOLATION_MULTI_PART_PARAM_VAL = :VIOLATION_MULTI_PART_PARAM_VAL
    # Illegal header length
    VIOLATION_HEADER_LEN = :VIOLATION_HEADER_LEN
    # Illegal repeated parameter name
    VIOLATION_REPEATED_PARAMETER_NAME = :VIOLATION_REPEATED_PARAMETER_NAME
    # Illegal meta character in URL
    VIOLATION_METACHAR_IN_OBJ = :VIOLATION_METACHAR_IN_OBJ
    # Illegal meta character in parameter name
    VIOLATION_METACHAR_IN_PARAM_NAME = :VIOLATION_METACHAR_IN_PARAM_NAME
    # Illegal meta character in parameter value
    VIOLATION_METACHAR_IN_DEF_PARAM = :VIOLATION_METACHAR_IN_DEF_PARAM
    # Illegal file type
    VIOLATION_OBJ_TYPE = :VIOLATION_OBJ_TYPE
    # Illegal URL
    VIOLATION_OBJ_DOESNT_EXIST = :VIOLATION_OBJ_DOESNT_EXIST
    # Illegal flow to URL
    VIOLATION_FLOW_TO_OBJ = :VIOLATION_FLOW_TO_OBJ
    # Illegal method
    VIOLATION_ILLEGAL_METHOD = :VIOLATION_ILLEGAL_METHOD
    # Illegal session ID in URL
    VIOLATION_SESSSION_ID_IN_URL = :VIOLATION_SESSSION_ID_IN_URL
    # Illegal query string or POST data
    VIOLATION_QS_OR_POST_DATA = :VIOLATION_QS_OR_POST_DATA
    # Illegal parameter
    VIOLATION_PARAM = :VIOLATION_PARAM
    # Illegal empty parameter value
    VIOLATION_EMPTY_PARAM_VALUE = :VIOLATION_EMPTY_PARAM_VALUE
    # Illegal static parameter value
    VIOLATION_STATIC_PARAM_VALUE = :VIOLATION_STATIC_PARAM_VALUE
    # Illegal dynamic parameter value
    VIOLATION_DYN_PARAM_VALUE = :VIOLATION_DYN_PARAM_VALUE
    # Illegal parameter value length
    VIOLATION_PARAM_VALUE_LEN = :VIOLATION_PARAM_VALUE_LEN
    # Illegal parameter data type
    VIOLATION_PARAM_DATA_TYPE = :VIOLATION_PARAM_DATA_TYPE
    # Illegal parameter numeric value
    VIOLATION_PARAM_NUMERIC_VALUE = :VIOLATION_PARAM_NUMERIC_VALUE
    # Illegal number of mandatory parameters
    VIOLATION_NUM_OF_MANDATORY_PARAMS = :VIOLATION_NUM_OF_MANDATORY_PARAMS
    # Parameter value does not comply with regular expression
    VIOLATION_PARAM_VALUE_NOT_MATCHING_REGEX = :VIOLATION_PARAM_VALUE_NOT_MATCHING_REGEX
    # Modified ASM cookie
    VIOLATION_MOD_ASM_COOKIE = :VIOLATION_MOD_ASM_COOKIE
    # Modified domain cookie(s)
    VIOLATION_MOD_DOMAIN_COOKIE = :VIOLATION_MOD_DOMAIN_COOKIE
    # Cookie not RFC-compliant
    VIOLATION_NOT_RFC_COOKIE = :VIOLATION_NOT_RFC_COOKIE
    # Illegal entry point
    VIOLATION_ENTRY_POINT = :VIOLATION_ENTRY_POINT
    # ASM Cookie Hijacking
    VIOLATION_MSG_KEY = :VIOLATION_MSG_KEY
    # Expired timestamp
    VIOLATION_EXPIRED_TIMESTAMP = :VIOLATION_EXPIRED_TIMESTAMP
    # Illegal meta character in header
    VIOLATION_METACHAR_IN_HEADER = :VIOLATION_METACHAR_IN_HEADER
    # Illegal HTTP status in response
    VIOLATION_HTTP_STATUS_IN_RESPONSE = :VIOLATION_HTTP_STATUS_IN_RESPONSE
  end


  # A list of languges
  class WebApplicationLanguage < IControl::Base::Enumeration
    # The language has not been set for the web application
    LANGUAGE_UNDEFINED = :LANGUAGE_UNDEFINED
    # lang_set_id:1
    UNICODE_UTF_8 = :UNICODE_UTF_8
    # lang_set_id:3
    WESTERN_EUROPEAN_ISO_8859_1 = :WESTERN_EUROPEAN_ISO_8859_1
    # lang_set_id:4
    WESTERN_EUROPEAN_WINDOWS_1252 = :WESTERN_EUROPEAN_WINDOWS_1252
    # lang_set_id:5
    WESTERN_EUROPEAN_ISO_8859_15 = :WESTERN_EUROPEAN_ISO_8859_15
    # lang_set_id:7
    CENTRAL_EUROPEAN_ISO_8859_2 = :CENTRAL_EUROPEAN_ISO_8859_2
    # lang_set_id:8
    CENTRAL_EUROPEAN_WINDOWS_1250 = :CENTRAL_EUROPEAN_WINDOWS_1250
    # lang_set_id:10
    SOUTH_EUROPEAN_ISO_8859_3 = :SOUTH_EUROPEAN_ISO_8859_3
    # lang_set_id:12
    GREEK_ISO_8859_7 = :GREEK_ISO_8859_7
    # lang_set_id:13
    GREEK_WINDOWS_1253 = :GREEK_WINDOWS_1253
    # lang_set_id:15
    NORDIC_ISO_8859_10 = :NORDIC_ISO_8859_10
    # lang_set_id:17
    CYRILLIC_WINDOWS_1251 = :CYRILLIC_WINDOWS_1251
    # lang_set_id:18
    CYRILLIC_KOI8_R = :CYRILLIC_KOI8_R
    # lang_set_id:19
    CYRILLIC_ISO_8859_5 = :CYRILLIC_ISO_8859_5
    # lang_set_id:21
    ROMANIAN_ISO_8859_16 = :ROMANIAN_ISO_8859_16
    # lang_set_id:23
    BALTIC_ISO_8859_4 = :BALTIC_ISO_8859_4
    # lang_set_id:24
    BALTIC_ISO_8859_13 = :BALTIC_ISO_8859_13
    # lang_set_id:25
    BALTIC_WINDOWS_1257 = :BALTIC_WINDOWS_1257
    # lang_set_id:27
    HEBREW_WINDOWS_1255 = :HEBREW_WINDOWS_1255
    # lang_set_id:28
    HEBREW_ISO_8859_8 = :HEBREW_ISO_8859_8
    # lang_set_id:30
    JAPANESE_SHIFT_JIS = :JAPANESE_SHIFT_JIS
    # lang_set_id:31
    JAPANESE_EUC_JP = :JAPANESE_EUC_JP
    # lang_set_id:33
    KOREAN_EUC_KR = :KOREAN_EUC_KR
    # lang_set_id:35
    CHINESE_BIG5 = :CHINESE_BIG5
    # lang_set_id:36
    CHINESE_GB2312 = :CHINESE_GB2312
    # lang_set_id:38
    THAI_CP874 = :THAI_CP874
    # lang_set_id:40
    ARABIC_ISO_8859_6 = :ARABIC_ISO_8859_6
    # lang_set_id:41
    CHINESE_GBK = :CHINESE_GBK
    # lang_set_id:42
    CHINESE_GB18030 = :CHINESE_GB18030
  end


end
require "asm/object_params"
require "asm/policy"
require "asm/system_configuration"
require "asm/web_application"
require "asm/web_application_group"
