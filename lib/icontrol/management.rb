module IControl::Management

  class DebugLevel < IControl::Base::Enumeration; end
  class LDAPPasswordEncodingOption < IControl::Base::Enumeration; end
  class LDAPSSLOption < IControl::Base::Enumeration; end
  class LDAPSearchMethod < IControl::Base::Enumeration; end
  class LDAPSearchScope < IControl::Base::Enumeration; end
  class OCSPDigestMethod < IControl::Base::Enumeration; end
  class ZoneType < IControl::Base::Enumeration; end
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
  class ZoneRunner < IControl::Base; end## A sequence of A6Record structs
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
  ##
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

  ##
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

  ##
  # An enumeration of LDAP SSL options.
  class LDAPSSLOption < IControl::Base::Enumeration
    # Don't use SSL/TLS.
    LDAP_SSL_OPTION_NONE = :LDAP_SSL_OPTION_NONE
    # Always use LDAP SSL.
    LDAP_SSL_OPTION_ON = :LDAP_SSL_OPTION_ON
  end

  ##
  # An enumeration of LDAP search methods.
  class LDAPSearchMethod < IControl::Base::Enumeration
    # Search for a user based on the common name found in the certificate.
    LDAP_SEARCH_METHOD_USER = :LDAP_SEARCH_METHOD_USER
    # Search for the exact certificate.
    LDAP_SEARCH_METHOD_CERTIFICATE = :LDAP_SEARCH_METHOD_CERTIFICATE
    # Search for a user by matching the certificate issuer and					 certificate serial number or certificate.
    LDAP_SEARCH_METHOD_CERTIFICATE_MAP = :LDAP_SEARCH_METHOD_CERTIFICATE_MAP
  end

  ##
  # An enumeration of LDAP search scopes.
  class LDAPSearchScope < IControl::Base::Enumeration
    # Scope of search is a base object.
    LDAP_SEARCH_SCOPE_BASE = :LDAP_SEARCH_SCOPE_BASE
    # Scope of search is one level only.
    LDAP_SEARCH_SCOPE_ONE_LEVEL = :LDAP_SEARCH_SCOPE_ONE_LEVEL
    # Scope of search is sub-tree.
    LDAP_SEARCH_SCOPE_SUBTREE = :LDAP_SEARCH_SCOPE_SUBTREE
  end

  ##
  # An enumeration of OCSP digest methods.
  class OCSPDigestMethod < IControl::Base::Enumeration
    # Use SHA1 algorithm to digest.
    OCSP_DIGEST_METHOD_SHA1 = :OCSP_DIGEST_METHOD_SHA1
    # Use MD5 to digest.
    OCSP_DIGEST_METHOD_MD5 = :OCSP_DIGEST_METHOD_MD5
  end

  ##
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

  ##
  # struct that describes a DNS &amp;quot;A6" Record
  class A6Record < IControl::Base::Struct
    # The domain name of the record
    icontrol_attribute :domain_name, String
    # Number of bits contained in prefix
    icontrol_attribute :prefix_bits, Numeric
    # The ip address of the record
    icontrol_attribute :ip_address, String
    # Name to lookup to get prefix of address
    icontrol_attribute :prefix_name, String
    # The TTL for this record
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;AAAA" Record
  class AAAARecord < IControl::Base::Struct
    # The domain name of the record
    icontrol_attribute :domain_name, String
    # The ip address of the record
    icontrol_attribute :ip_address, String
    # The TTL for this record
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;A" Record
  class ARecord < IControl::Base::Struct
    # The domain name of the record
    icontrol_attribute :domain_name, String
    # The ip address of the record
    icontrol_attribute :ip_address, String
    # The TTL for this record
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;CNAME" Record
  class CNAMERecord < IControl::Base::Struct
    # The domain name of the record
    icontrol_attribute :domain_name, String
    # The cname of the record
    icontrol_attribute :cname, String
    # The TTL for this record
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;DNAME" Record
  class DNAMERecord < IControl::Base::Struct
    # The label of the record
    icontrol_attribute :label, String
    # domain name for this dname record
    icontrol_attribute :domain_name, String
    # The TTL for this record
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;HINFO" Record
  class HINFORecord < IControl::Base::Struct
    # The domain name of the record
    icontrol_attribute :domain_name, String
    # The hardware info for this record
    icontrol_attribute :hardware, String
    # The OS info for the record
    icontrol_attribute :os, String
    # The TTL for this record
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;KEY" Record
  class KEYRecord < IControl::Base::Struct
    # The domain name of the record
    icontrol_attribute :domain_name, String
    # 16bit flag for this key
    icontrol_attribute :flags, Numeric
    # 8bit protocol indicator
    icontrol_attribute :protocol, Numeric
    # 8bit algorithm
    icontrol_attribute :algorithm, Numeric
    # a string containing the public key
    icontrol_attribute :public_key, String
    # The TTL for this record
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;MX" Record
  class MXRecord < IControl::Base::Struct
    # The domain name of the record
    icontrol_attribute :domain_name, String
    # The preference to use for this record
    icontrol_attribute :preference, Numeric
    # The mail-exchanger for this record
    icontrol_attribute :mail, String
    # The TTL for this record
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that defines a DNS &amp;quot;NS" Record
  class NSRecord < IControl::Base::Struct
    # The domain name of the record
    icontrol_attribute :domain_name, String
    # The hostname of the Name Server
    icontrol_attribute :host_name, String
    # The TTL of the record
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;NXT" Record
  class NXTRecord < IControl::Base::Struct
    # The domain name of the record
    icontrol_attribute :domain_name, String
    # The next domain
    icontrol_attribute :nxt_domain, String
    # a string containing all resource record types
    icontrol_attribute :types, String
    # The TTL for this record
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;PTR" Record
  class PTRRecord < IControl::Base::Struct
    # The ip address of the record
    icontrol_attribute :ip_address, String
    # The DNAME for this record
    icontrol_attribute :dname, String
    # The TTL for this record
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that contains sequences for all possible RRtypes in a zone
  class RRList < IControl::Base::Struct
    # - contains all A records
    icontrol_attribute :a_list, IControl::Management::ARecordSequence
    # - contains all NS records
    icontrol_attribute :ns_list, IControl::Management::NSRecordSequence
    # - contains all CNAME records
    icontrol_attribute :cname_list, IControl::Management::CNAMERecordSequence
    # - contains all SOA records
    icontrol_attribute :soa_list, IControl::Management::SOARecordSequence
    # - contains all PTR records
    icontrol_attribute :ptr_list, IControl::Management::PTRRecordSequence
    # - contains all HINFO records
    icontrol_attribute :hinfo_list, IControl::Management::HINFORecordSequence
    # - contains all MX records
    icontrol_attribute :mx_list, IControl::Management::MXRecordSequence
    # - contains all TXT records
    icontrol_attribute :txt_list, IControl::Management::TXTRecordSequence
    # - contains all SRV records
    icontrol_attribute :srv_list, IControl::Management::SRVRecordSequence
    # - contains all KEY records
    icontrol_attribute :key_list, IControl::Management::KEYRecordSequence
    # - contains all SIG records
    icontrol_attribute :sig_list, IControl::Management::SIGRecordSequence
    # - contains all NXT records
    icontrol_attribute :nxt_list, IControl::Management::NXTRecordSequence
    # - contains all AAAA records
    icontrol_attribute :aaaa_list, IControl::Management::AAAARecordSequence
    # - contains all A6 records
    icontrol_attribute :a6_list, IControl::Management::A6RecordSequence
    # - contains all DNAME records
    icontrol_attribute :dname_list, IControl::Management::DNAMERecordSequence
  end

  ##
  # struct that describes a DNS &amp;quot;SIG" Record
  class SIGRecord < IControl::Base::Struct
    # The domain name of the record
    icontrol_attribute :domain_name, String
    # type of RR covered by this sig( NXT etc)
    icontrol_attribute :type_covered, Numeric
    # - algorithm number used
    icontrol_attribute :algorithm, Numeric
    # - how many labels in the original sig RR owner name
    icontrol_attribute :labels, Numeric
    # - original ttl
    icontrol_attribute :orig_ttl, Numeric
    # - expiration date for sig. (secs since Jan 1....)
    icontrol_attribute :sig_expiration, String
    # - start date for sig. (secs since Jan 1....)
    icontrol_attribute :sig_inception, String
    # - used to select between multiple keys
    icontrol_attribute :key_tag, Numeric
    # - domain name of the signer that generates the sig
    icontrol_attribute :signer_name, String
    # - actual signature portion
    icontrol_attribute :signature, String
    # The TTL for this record
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;SOA" Record
  class SOARecord < IControl::Base::Struct
    # The domain name of the zone
    icontrol_attribute :domain_name, String
    # The primary server of the zone
    icontrol_attribute :primary, String
    # The email address of the person responsible for the zone
    icontrol_attribute :email, String
    # The serial number to start with for this zone
    icontrol_attribute :serial, Numeric
    # The refresh interval(secs) for the zone
    icontrol_attribute :refresh, Numeric
    # The interval(secs) between retries for the zone
    icontrol_attribute :retry, Numeric
    # The upper limit(secs) before a zone expires
    icontrol_attribute :expire, Numeric
    # The Negative TTL for any RR from this zone
    icontrol_attribute :neg_ttl, Numeric
    # The TTL for this record
    icontrol_attribute :ttl, Numeric
  end

  ##
  # struct that describes a DNS &amp;quot;SRV" Record
  class SRVRecord < IControl::Base::Struct
    # The domain name of the record
    icontrol_attribute :domain_name, String
    # The priority to use for this record
    icontrol_attribute :priority, Numeric
    # The weight to use for this record
    icontrol_attribute :weight, Numeric
    # The port for this service
    icontrol_attribute :port, Numeric
    # The target to use for this record
    icontrol_attribute :target, String
    # The TTL for this record
    icontrol_attribute :ttl, Numeric
  end

  ##
  # A struct that describes a statement
  class StatementDefinition < IControl::Base::Struct
    # The name of the statement. If empty, then either there's only one		 statement of
    # its kind in the configuration file (i.e. "controls"...),		 or statement id is not
    # applicable (i.e. "include")
    icontrol_attribute :statement_id, String
    # A sequence of substrings that make up a statement.
    icontrol_attribute :sub_strings, StringSequence
  end

  ##
  # struct that describes a DNS &amp;quot;TXT" Record
  class TXTRecord < IControl::Base::Struct
    # The domain name of the record
    icontrol_attribute :domain_name, String
    # The text entry for the record
    icontrol_attribute :text, String
    # The TTL for this record
    icontrol_attribute :ttl, Numeric
  end

  ##
  # a struct that describes a view
  class ViewInfo < IControl::Base::Struct
    # The name of the view
    icontrol_attribute :view_name, String
    # The order of the view within the named.conf file		 0 = first in zone		 0xffffffff
    # on a change means to move the view to last		 any other number will move the view
    # to that position,		 and bump up any view(s) 1 if necessary
    icontrol_attribute :view_order, Numeric
    # a sequence of options for the view
    icontrol_attribute :option_seq, StringSequence
    # a sequence of zones in this view
    icontrol_attribute :zone_names, StringSequence
  end

  ##
  # A struct that describes a view/zone
  class ViewZone < IControl::Base::Struct
    # The view name.
    icontrol_attribute :view_name, String
    # The zone name.
    icontrol_attribute :zone_name, String
  end

  ##
  # a struct that describes a zone
  class ZoneInfo < IControl::Base::Struct
    # The name of the view
    icontrol_attribute :view_name, String
    # The name of the zone
    icontrol_attribute :zone_name, String
    # one of the types of ZoneType enum
    icontrol_attribute :zone_type, IControl::Management::ZoneType
    # The name of the file for the zone data
    icontrol_attribute :zone_file, String
    # A sequence of options for the zone
    icontrol_attribute :option_seq, StringSequence
  end


end
require "management/ccldapconfiguration"
require "management/crldpconfiguration"
require "management/crldpserver"
require "management/changecontrol"
require "management/dbvariable"
require "management/eventnotification"
require "management/eventsubscription"
require "management/keycertificate"
require "management/ldapconfiguration"
require "management/licenseadministration"
require "management/named"
require "management/ocspconfiguration"
require "management/ocspresponder"
require "management/partition"
require "management/provision"
require "management/radiusconfiguration"
require "management/radiusserver"
require "management/resourcerecord"
require "management/snmpconfiguration"
require "management/tacacsconfiguration"
require "management/tmosmodule"
require "management/usermanagement"
require "management/view"
require "management/zone"
require "management/zonerunner"
