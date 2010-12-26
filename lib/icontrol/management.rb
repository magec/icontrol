module IControl::Management

  class A6Record < IControl::Base::Struct; end
  class AAAARecord < IControl::Base::Struct; end
  class ARecord < IControl::Base::Struct; end
  class CNAMERecord < IControl::Base::Struct; end
  class DNAMERecord < IControl::Base::Struct; end
  class HINFORecord < IControl::Base::Struct; end
  class KEYRecord < IControl::Base::Struct; end
  class MXRecord < IControl::Base::Struct; end
  class NSRecord < IControl::Base::Struct; end
  class NXTRecord < IControl::Base::Struct; end
  class PTRRecord < IControl::Base::Struct; end
  class RRList < IControl::Base::Struct; end
  class SIGRecord < IControl::Base::Struct; end
  class SOARecord < IControl::Base::Struct; end
  class SRVRecord < IControl::Base::Struct; end
  class StatementDefinition < IControl::Base::Struct; end
  class TXTRecord < IControl::Base::Struct; end
  class ViewInfo < IControl::Base::Struct; end
  class ViewZone < IControl::Base::Struct; end
  class ZoneInfo < IControl::Base::Struct; end
  class CCLDAPConfiguration < IControl::Base; end
  class CRLDPConfiguration < IControl::Base; end
  class CRLDPServer < IControl::Base; end
  class ChangeControl < IControl::Base; end
  class DBVariable < IControl::Base; end
  class EventNotification < IControl::Base; end
  class EventSubscription < IControl::Base; end
  class KeyCertificate < IControl::Base; end
  class LDAPConfiguration < IControl::Base; end
  class LicenseAdministration < IControl::Base; end
  class Named < IControl::Base; end
  class OCSPConfiguration < IControl::Base; end
  class OCSPResponder < IControl::Base; end
  class Partition < IControl::Base; end
  class Provision < IControl::Base; end
  class RADIUSConfiguration < IControl::Base; end
  class RADIUSServer < IControl::Base; end
  class ResourceRecord < IControl::Base; end
  class SNMPConfiguration < IControl::Base; end
  class TACACSConfiguration < IControl::Base; end
  class TMOSModule < IControl::Base; end
  class UserManagement < IControl::Base; end
  class View < IControl::Base; end
  class Zone < IControl::Base; end
  class ZoneRunner < IControl::Base; end
  # List of the different levels of logging
  class DebugLevel < IControl::Base::Enumeration; end
  # An enumeration of LDAP password encoding options.
  class LDAPPasswordEncodingOption < IControl::Base::Enumeration; end
  # An enumeration of LDAP SSL options.
  class LDAPSSLOption < IControl::Base::Enumeration; end
  # An enumeration of LDAP search methods.
  class LDAPSearchMethod < IControl::Base::Enumeration; end
  # An enumeration of LDAP search scopes.
  class LDAPSearchScope < IControl::Base::Enumeration; end
  # An enumeration of OCSP digest methods.
  class OCSPDigestMethod < IControl::Base::Enumeration; end
  # A list of the allowable types of zones
  class ZoneType < IControl::Base::Enumeration; end##
  # struct that describes a DNS &amp;quot;A6" Record
  # @attr [String] domain_name The domain name of the record
  # @attr [Numeric] prefix_bits Number of bits contained in prefix
  # @attr [String] ip_address The ip address of the record
  # @attr [String] prefix_name Name to lookup to get prefix of address
  # @attr [Numeric] ttl The TTL for this record
  class A6Record < IControl::Base::Struct
    icontrol_attribute :domain_name, String
    icontrol_attribute :prefix_bits, Numeric
    icontrol_attribute :ip_address, String
    icontrol_attribute :prefix_name, String
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;AAAA" Record
  # @attr [String] domain_name The domain name of the record
  # @attr [String] ip_address The ip address of the record
  # @attr [Numeric] ttl The TTL for this record
  class AAAARecord < IControl::Base::Struct
    icontrol_attribute :domain_name, String
    icontrol_attribute :ip_address, String
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;A" Record
  # @attr [String] domain_name The domain name of the record
  # @attr [String] ip_address The ip address of the record
  # @attr [Numeric] ttl The TTL for this record
  class ARecord < IControl::Base::Struct
    icontrol_attribute :domain_name, String
    icontrol_attribute :ip_address, String
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;CNAME" Record
  # @attr [String] domain_name The domain name of the record
  # @attr [String] cname The cname of the record
  # @attr [Numeric] ttl The TTL for this record
  class CNAMERecord < IControl::Base::Struct
    icontrol_attribute :domain_name, String
    icontrol_attribute :cname, String
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;DNAME" Record
  # @attr [String] label The label of the record
  # @attr [String] domain_name domain name for this dname record
  # @attr [Numeric] ttl The TTL for this record
  class DNAMERecord < IControl::Base::Struct
    icontrol_attribute :label, String
    icontrol_attribute :domain_name, String
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;HINFO" Record
  # @attr [String] domain_name The domain name of the record
  # @attr [String] hardware The hardware info for this record
  # @attr [String] os The OS info for the record
  # @attr [Numeric] ttl The TTL for this record
  class HINFORecord < IControl::Base::Struct
    icontrol_attribute :domain_name, String
    icontrol_attribute :hardware, String
    icontrol_attribute :os, String
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;KEY" Record
  # @attr [String] domain_name The domain name of the record
  # @attr [Numeric] flags 16bit flag for this key
  # @attr [Numeric] protocol 8bit protocol indicator
  # @attr [Numeric] algorithm 8bit algorithm
  # @attr [String] public_key a string containing the public key
  # @attr [Numeric] ttl The TTL for this record
  class KEYRecord < IControl::Base::Struct
    icontrol_attribute :domain_name, String
    icontrol_attribute :flags, Numeric
    icontrol_attribute :protocol, Numeric
    icontrol_attribute :algorithm, Numeric
    icontrol_attribute :public_key, String
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;MX" Record
  # @attr [String] domain_name The domain name of the record
  # @attr [Numeric] preference The preference to use for this record
  # @attr [String] mail The mail-exchanger for this record
  # @attr [Numeric] ttl The TTL for this record
  class MXRecord < IControl::Base::Struct
    icontrol_attribute :domain_name, String
    icontrol_attribute :preference, Numeric
    icontrol_attribute :mail, String
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that defines a DNS &amp;quot;NS" Record
  # @attr [String] domain_name The domain name of the record
  # @attr [String] host_name The hostname of the Name Server
  # @attr [Numeric] ttl The TTL of the record
  class NSRecord < IControl::Base::Struct
    icontrol_attribute :domain_name, String
    icontrol_attribute :host_name, String
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;NXT" Record
  # @attr [String] domain_name The domain name of the record
  # @attr [String] nxt_domain The next domain
  # @attr [String] types a string containing all resource record types
  # @attr [Numeric] ttl The TTL for this record
  class NXTRecord < IControl::Base::Struct
    icontrol_attribute :domain_name, String
    icontrol_attribute :nxt_domain, String
    icontrol_attribute :types, String
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;PTR" Record
  # @attr [String] ip_address The ip address of the record
  # @attr [String] dname The DNAME for this record
  # @attr [Numeric] ttl The TTL for this record
  class PTRRecord < IControl::Base::Struct
    icontrol_attribute :ip_address, String
    icontrol_attribute :dname, String
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that contains sequences for all possible RRtypes in a zone
  # @attr [IControl::Management::ARecord] a_list - contains all A records
  # @attr [IControl::Management::NSRecord] ns_list - contains all NS records
  # @attr [IControl::Management::CNAMERecord] cname_list - contains all CNAME records
  # @attr [IControl::Management::SOARecord] soa_list - contains all SOA records
  # @attr [IControl::Management::PTRRecord] ptr_list - contains all PTR records
  # @attr [IControl::Management::HINFORecord] hinfo_list - contains all HINFO records
  # @attr [IControl::Management::MXRecord] mx_list - contains all MX records
  # @attr [IControl::Management::TXTRecord] txt_list - contains all TXT records
  # @attr [IControl::Management::SRVRecord] srv_list - contains all SRV records
  # @attr [IControl::Management::KEYRecord] key_list - contains all KEY records
  # @attr [IControl::Management::SIGRecord] sig_list - contains all SIG records
  # @attr [IControl::Management::NXTRecord] nxt_list - contains all NXT records
  # @attr [IControl::Management::AAAARecord] aaaa_list - contains all AAAA records
  # @attr [IControl::Management::A6Record] a6_list - contains all A6 records
  # @attr [IControl::Management::DNAMERecord] dname_list - contains all DNAME records
  class RRList < IControl::Base::Struct
    icontrol_attribute :a_list, IControl::Management::ARecord
    icontrol_attribute :ns_list, IControl::Management::NSRecord
    icontrol_attribute :cname_list, IControl::Management::CNAMERecord
    icontrol_attribute :soa_list, IControl::Management::SOARecord
    icontrol_attribute :ptr_list, IControl::Management::PTRRecord
    icontrol_attribute :hinfo_list, IControl::Management::HINFORecord
    icontrol_attribute :mx_list, IControl::Management::MXRecord
    icontrol_attribute :txt_list, IControl::Management::TXTRecord
    icontrol_attribute :srv_list, IControl::Management::SRVRecord
    icontrol_attribute :key_list, IControl::Management::KEYRecord
    icontrol_attribute :sig_list, IControl::Management::SIGRecord
    icontrol_attribute :nxt_list, IControl::Management::NXTRecord
    icontrol_attribute :aaaa_list, IControl::Management::AAAARecord
    icontrol_attribute :a6_list, IControl::Management::A6Record
    icontrol_attribute :dname_list, IControl::Management::DNAMERecord
  end

  ##
  # struct that describes a DNS &amp;quot;SIG" Record
  # @attr [String] domain_name The domain name of the record
  # @attr [Numeric] type_covered type of RR covered by this sig( NXT etc)
  # @attr [Numeric] algorithm - algorithm number used
  # @attr [Numeric] labels - how many labels in the original sig RR owner name
  # @attr [Numeric] orig_ttl - original ttl
  # @attr [String] sig_expiration - expiration date for sig. (secs since Jan 1....)
  # @attr [String] sig_inception - start date for sig. (secs since Jan 1....)
  # @attr [Numeric] key_tag - used to select between multiple keys
  # @attr [String] signer_name - domain name of the signer that generates the sig
  # @attr [String] signature - actual signature portion
  # @attr [Numeric] ttl The TTL for this record
  class SIGRecord < IControl::Base::Struct
    icontrol_attribute :domain_name, String
    icontrol_attribute :type_covered, Numeric
    icontrol_attribute :algorithm, Numeric
    icontrol_attribute :labels, Numeric
    icontrol_attribute :orig_ttl, Numeric
    icontrol_attribute :sig_expiration, String
    icontrol_attribute :sig_inception, String
    icontrol_attribute :key_tag, Numeric
    icontrol_attribute :signer_name, String
    icontrol_attribute :signature, String
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;SOA" Record
  # @attr [String] domain_name The domain name of the zone
  # @attr [String] primary The primary server of the zone
  # @attr [String] email The email address of the person responsible for the zone
  # @attr [Numeric] serial The serial number to start with for this zone
  # @attr [Numeric] refresh The refresh interval(secs) for the zone
  # @attr [Numeric] retry The interval(secs) between retries for the zone
  # @attr [Numeric] expire The upper limit(secs) before a zone expires
  # @attr [Numeric] neg_ttl The Negative TTL for any RR from this zone
  # @attr [Numeric] ttl The TTL for this record
  class SOARecord < IControl::Base::Struct
    icontrol_attribute :domain_name, String
    icontrol_attribute :primary, String
    icontrol_attribute :email, String
    icontrol_attribute :serial, Numeric
    icontrol_attribute :refresh, Numeric
    icontrol_attribute :retry, Numeric
    icontrol_attribute :expire, Numeric
    icontrol_attribute :neg_ttl, Numeric
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;SRV" Record
  # @attr [String] domain_name The domain name of the record
  # @attr [Numeric] priority The priority to use for this record
  # @attr [Numeric] weight The weight to use for this record
  # @attr [Numeric] port The port for this service
  # @attr [String] target The target to use for this record
  # @attr [Numeric] ttl The TTL for this record
  class SRVRecord < IControl::Base::Struct
    icontrol_attribute :domain_name, String
    icontrol_attribute :priority, Numeric
    icontrol_attribute :weight, Numeric
    icontrol_attribute :port, Numeric
    icontrol_attribute :target, String
    icontrol_attribute :ttl, Numeric
  end

  ##
  # A struct that describes a statement
  # @attr [String] statement_id The name of the statement. If empty, then either there's only one		 statement of its kind in the configuration file (i.e. "controls"...),		 or statement id is not applicable (i.e. "include")
  # @attr [String] sub_strings A sequence of substrings that make up a statement.
  class StatementDefinition < IControl::Base::Struct
    icontrol_attribute :statement_id, String
    icontrol_attribute :sub_strings, String
  end

  ##
  # struct that describes a DNS &amp;quot;TXT" Record
  # @attr [String] domain_name The domain name of the record
  # @attr [String] text The text entry for the record
  # @attr [Numeric] ttl The TTL for this record
  class TXTRecord < IControl::Base::Struct
    icontrol_attribute :domain_name, String
    icontrol_attribute :text, String
    icontrol_attribute :ttl, Numeric
  end

  ##
  # a struct that describes a view
  # @attr [String] view_name The name of the view
  # @attr [Numeric] view_order The order of the view within the named.conf file		 0 = first in zone		 0xffffffff on a change means to move the view to last		 any other number will move the view to that position,		 and bump up any view(s) 1 if necessary
  # @attr [String] option_seq a sequence of options for the view
  # @attr [String] zone_names a sequence of zones in this view
  class ViewInfo < IControl::Base::Struct
    icontrol_attribute :view_name, String
    icontrol_attribute :view_order, Numeric
    icontrol_attribute :option_seq, String
    icontrol_attribute :zone_names, String
  end

  ##
  # A struct that describes a view/zone
  # @attr [String] view_name The view name.
  # @attr [String] zone_name The zone name.
  class ViewZone < IControl::Base::Struct
    icontrol_attribute :view_name, String
    icontrol_attribute :zone_name, String
  end

  ##
  # a struct that describes a zone
  # @attr [String] view_name The name of the view
  # @attr [String] zone_name The name of the zone
  # @attr [IControl::Management::ZoneType] zone_type one of the types of ZoneType enum
  # @attr [String] zone_file The name of the file for the zone data
  # @attr [String] option_seq A sequence of options for the zone
  class ZoneInfo < IControl::Base::Struct
    icontrol_attribute :view_name, String
    icontrol_attribute :zone_name, String
    icontrol_attribute :zone_type, IControl::Management::ZoneType
    icontrol_attribute :zone_file, String
    icontrol_attribute :option_seq, String
  end


  ## A sequence of A6Record structs
  class A6RecordSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of A6Record structs
  class A6RecordSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of AAAARecord structs
  class AAAARecordSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of AAAARecord structs
  class AAAARecordSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of ARecord structs
  class ARecordSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of ARecord structs
  class ARecordSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of CNAMERecord structs
  class CNAMERecordSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of CNAMERecord structs
  class CNAMERecordSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of DNAMERecord structs
  class DNAMERecordSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of DNAMERecord structs
  class DNAMERecordSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of HINFORecord structs
  class HINFORecordSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of HINFORecord structs
  class HINFORecordSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of KEYRecord structs
  class KEYRecordSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of KEYRecord structs
  class KEYRecordSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of LDAP password encoding options.
  class LDAPPasswordEncodingOptionSequence < IControl::Base::Sequence ; end

  ## A sequence of LDAP SSL options.
  class LDAPSSLOptionSequence < IControl::Base::Sequence ; end

  ## A sequence of LDAP search methods.
  class LDAPSearchMethodSequence < IControl::Base::Sequence ; end

  ## A sequence of LDAP search scopes.
  class LDAPSearchScopeSequence < IControl::Base::Sequence ; end

  ## A sequence of MXRecord structs
  class MXRecordSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of MXRecord structs
  class MXRecordSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of NSRecord structs
  class NSRecordSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of NSRecord structs
  class NSRecordSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of NXTRecord structs
  class NXTRecordSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of NXTRecord structs
  class NXTRecordSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of OCSP digest methods.
  class OCSPDigestMethodSequence < IControl::Base::Sequence ; end

  ## A sequence of PTRRecord structs
  class PTRRecordSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of PTRRecord structs
  class PTRRecordSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of RRList structs
  class RRListSequence < IControl::Base::Sequence ; end

  ## A sequence of SIGRecord structs
  class SIGRecordSequence < IControl::Base::Sequence ; end

  ## A sequence of SIGRecord structs
  class SIGRecordSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of SOARecord structs
  class SOARecordSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of SOARecord structs
  class SOARecordSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of SRVRecord structs
  class SRVRecordSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of SRVRecord structs
  class SRVRecordSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of statements
  class StatementDefinitionSequence < IControl::Base::Sequence ; end

  ## A sequence of TXTRecord structs
  class TXTRecordSequence < IControl::Base::Sequence ; end

  ## A sequence of TXTRecord structs
  class TXTRecordSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of view structs
  class ViewInfoSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of view structs
  class ViewInfoSequenceSequence < IControl::Base::SequenceSequence ; end

  ## A sequence of ViewZones
  class ViewZoneSequence < IControl::Base::Sequence ; end

  ## A sequence of zone structs
  class ZoneInfoSequence < IControl::Base::Sequence ; end

  ## A sequence of sequence of zone structs
  class ZoneInfoSequenceSequence < IControl::Base::SequenceSequence ; end

  # List of the different levels of logging
  class DebugLevel < IControl::Base::Enumeration
    # - emergency logging only
    ZRD_EMERG = :ZRD_EMERG
    # - alerts
    ZRD_ALERT = :ZRD_ALERT
    # - critical
    ZRD_CRIT = :ZRD_CRIT
    # - errors only
    ZRD_ERROR = :ZRD_ERROR
    # - warnings
    ZRD_WARN = :ZRD_WARN
    # - notices
    ZRD_NOTICE = :ZRD_NOTICE
    # - info only
    ZRD_INFO = :ZRD_INFO
    # - full debug
    ZRD_DEBUG = :ZRD_DEBUG
    # - unknown
    ZRD_UNSET = :ZRD_UNSET
  end


  # An enumeration of LDAP password encoding options.
  class LDAPPasswordEncodingOption < IControl::Base::Enumeration
    # Update Active Directory password, by creating Unicode						 password and updating unicodePwd attribute.
    LDAP_PASSWORD_ENCODING_ACTIVE_DIRECTORY = :LDAP_PASSWORD_ENCODING_ACTIVE_DIRECTORY
    # Do not hash the password at all; presume the directory server will					do it, if necessary. This is the default.
    LDAP_PASSWORD_ENCODING_CLEAR = :LDAP_PASSWORD_ENCODING_CLEAR
    # Hash password locally; required for University of Michigan LDAP server,					and works with Netscape Directory Server if you're using the UNIX-Crypt				 hash mechanism and not using the NT Synchronization service.
    LDAP_PASSWORD_ENCODING_CRYPT = :LDAP_PASSWORD_ENCODING_CRYPT
    # Use the OpenLDAP password change extended operation to						 update the password.
    LDAP_PASSWORD_ENCODING_EXTENDED_OPERATION = :LDAP_PASSWORD_ENCODING_EXTENDED_OPERATION
    # Digest password using MD5 .
    LDAP_PASSWORD_ENCODING_MD5 = :LDAP_PASSWORD_ENCODING_MD5
    # Remove old password first, then update in cleartext. Necessary for use				 with Novell Directory Services (NDS).
    LDAP_PASSWORD_ENCODING_NDS = :LDAP_PASSWORD_ENCODING_NDS
  end


  # An enumeration of LDAP SSL options.
  class LDAPSSLOption < IControl::Base::Enumeration
    # Don't use SSL/TLS.
    LDAP_SSL_OPTION_NONE = :LDAP_SSL_OPTION_NONE
    # Always use LDAP SSL.
    LDAP_SSL_OPTION_ON = :LDAP_SSL_OPTION_ON
  end


  # An enumeration of LDAP search methods.
  class LDAPSearchMethod < IControl::Base::Enumeration
    # Search for a user based on the common name found in the certificate.
    LDAP_SEARCH_METHOD_USER = :LDAP_SEARCH_METHOD_USER
    # Search for the exact certificate.
    LDAP_SEARCH_METHOD_CERTIFICATE = :LDAP_SEARCH_METHOD_CERTIFICATE
    # Search for a user by matching the certificate issuer and					 certificate serial number or certificate.
    LDAP_SEARCH_METHOD_CERTIFICATE_MAP = :LDAP_SEARCH_METHOD_CERTIFICATE_MAP
  end


  # An enumeration of LDAP search scopes.
  class LDAPSearchScope < IControl::Base::Enumeration
    # Scope of search is a base object.
    LDAP_SEARCH_SCOPE_BASE = :LDAP_SEARCH_SCOPE_BASE
    # Scope of search is one level only.
    LDAP_SEARCH_SCOPE_ONE_LEVEL = :LDAP_SEARCH_SCOPE_ONE_LEVEL
    # Scope of search is sub-tree.
    LDAP_SEARCH_SCOPE_SUBTREE = :LDAP_SEARCH_SCOPE_SUBTREE
  end


  # An enumeration of OCSP digest methods.
  class OCSPDigestMethod < IControl::Base::Enumeration
    # Use SHA1 algorithm to digest.
    OCSP_DIGEST_METHOD_SHA1 = :OCSP_DIGEST_METHOD_SHA1
    # Use MD5 to digest.
    OCSP_DIGEST_METHOD_MD5 = :OCSP_DIGEST_METHOD_MD5
  end


  # A list of the allowable types of zones
  class ZoneType < IControl::Base::Enumeration
    # - not yet initialized
    UNSET = :UNSET
    # a master zone
    MASTER = :MASTER
    # a slave zone
    SLAVE = :SLAVE
    # a stub zone
    STUB = :STUB
    # a forward zone
    FORWARD = :FORWARD
    # a hint zone, "."
    HINT = :HINT
  end


end
require "management/ccldap_configuration"
require "management/crldp_configuration"
require "management/crldp_server"
require "management/change_control"
require "management/db_variable"
require "management/event_notification"
require "management/event_subscription"
require "management/key_certificate"
require "management/ldap_configuration"
require "management/license_administration"
require "management/named"
require "management/ocsp_configuration"
require "management/ocsp_responder"
require "management/partition"
require "management/provision"
require "management/radius_configuration"
require "management/radius_server"
require "management/resource_record"
require "management/snmp_configuration"
require "management/tacacs_configuration"
require "management/tmos_module"
require "management/user_management"
require "management/view"
require "management/zone"
require "management/zone_runner"
