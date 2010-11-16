module IControl::Management
  ##
  # The SNMPConfiguration interface allows users to manage the full configurations for
  # UCD SNMP agent. Please read the manual pages for snmpd.conf for further information.
  # TODO: Missing directives: - override
  class SNMPConfiguration < IControl::Base
    class AuthType < IControl::Base::Enumeration; end
    class DiskCheckType < IControl::Base::Enumeration; end
    class LevelType < IControl::Base::Enumeration; end
    class ModelType < IControl::Base::Enumeration; end
    class PrefixType < IControl::Base::Enumeration; end
    class PrivacyProtocolType < IControl::Base::Enumeration; end
    class SinkType < IControl::Base::Enumeration; end
    class TransportType < IControl::Base::Enumeration; end
    class ViewType < IControl::Base::Enumeration; end
    class AccessInformation < IControl::Base::Struct; end
    class AgentInterface < IControl::Base::Struct; end
    class AgentListenAddressPort < IControl::Base::Struct; end
    class AgentXInformation < IControl::Base::Struct; end
    class ClientAccess < IControl::Base::Struct; end
    class DiskCheckInformation < IControl::Base::Struct; end
    class DynamicLoadableModule < IControl::Base::Struct; end
    class FileCheckInformation < IControl::Base::Struct; end
    class GenericSinkInformation < IControl::Base::Struct; end
    class GenericSinkInformation2 < IControl::Base::Struct; end
    class GroupInformation < IControl::Base::Struct; end
    class LoadAverageInformation < IControl::Base::Struct; end
    class MibnumNameProgArgs < IControl::Base::Struct; end
    class NameProgArgs < IControl::Base::Struct; end
    class PassThroughInformation < IControl::Base::Struct; end
    class ProcessInformation < IControl::Base::Struct; end
    class ProxyInformation < IControl::Base::Struct; end
    class SecurityInformation < IControl::Base::Struct; end
    class SinkInformation < IControl::Base::Struct; end
    class SmuxSubAgentInformation < IControl::Base::Struct; end
    class SystemInformation < IControl::Base::Struct; end
    class UserInformation < IControl::Base::Struct; end
    class ViewInformation < IControl::Base::Struct; end
    class WrapperSecurityInformation < IControl::Base::Struct; end
    class WrapperUserInformation < IControl::Base::Struct; end    ## A sequence of AccessInformation structures.
    class AccessInformationSequence < IControl::Base::Sequence ; end## A sequence of AgentListenAddressPort structures.
    class AgentListenAddressPortSequence < IControl::Base::Sequence ; end## This type is deprecated (immediately) and should not be used, in order to ensure proper operation of the system.
    class AgentXInformationSequence < IControl::Base::Sequence ; end## A sequence of ClientAccess structures.
    class ClientAccessSequence < IControl::Base::Sequence ; end## A sequence of DiskCheckInformation structures.
    class DiskCheckInformationSequence < IControl::Base::Sequence ; end## This type is deprecated (immediately) and should not be used, in order to ensure proper operation of the system.
    class DynamicLoadableModuleSequence < IControl::Base::Sequence ; end## A sequence of FileCheckInformation structures.
    class FileCheckInformationSequence < IControl::Base::Sequence ; end## A sequence of GenericSinkInformation2 structures.
    class GenericSinkInformation2Sequence < IControl::Base::Sequence ; end## A sequence of GenericSinkInformation structures.
    class GenericSinkInformationSequence < IControl::Base::Sequence ; end## A sequence of GroupInformation structures.
    class GroupInformationSequence < IControl::Base::Sequence ; end## A sequence of LoadAverageInformation structures.
    class LoadAverageInformationSequence < IControl::Base::Sequence ; end## A sequence of MibnumNameProgArgs structures.
    class MibnumNameProgArgsSequence < IControl::Base::Sequence ; end## A sequence of NameProgArgs structures.
    class NameProgArgsSequence < IControl::Base::Sequence ; end## A sequence of PassThroughInformation structures.
    class PassThroughInformationSequence < IControl::Base::Sequence ; end## A sequence of ProcessInformation structures.
    class ProcessInformationSequence < IControl::Base::Sequence ; end## A sequence of ProxyInformation structures.
    class ProxyInformationSequence < IControl::Base::Sequence ; end## A sequence of SecurityInformation structures.
    class SecurityInformationSequence < IControl::Base::Sequence ; end## A sequence of SinkInformation structures.
    class SinkInformationSequence < IControl::Base::Sequence ; end## This type is deprecated (immediately) and should not be used, in order to ensure proper operation of the system.
    class SmuxSubAgentInformationSequence < IControl::Base::Sequence ; end## A sequence of UserInformation structures.
    class UserInformationSequence < IControl::Base::Sequence ; end## A sequence of ViewInformation structures.
    class ViewInformationSequence < IControl::Base::Sequence ; end## A sequence of WrapperSecurityInformation structures.
    class WrapperSecurityInformationSequence < IControl::Base::Sequence ; end## A sequence of WrapperUserInformation structures.
    class WrapperUserInformationSequence < IControl::Base::Sequence ; end##
    # A list of snmp authentication types.
    class AuthType < IControl::Base::Enumeration
      # Use MD5 as the authentication type.
      AUTH_MD5 = :AUTH_MD5
      # Use SHA as the authentication type.
      AUTH_SHA = :AUTH_SHA
      # No authentication.
      AUTH_NONE = :AUTH_NONE
    end

    ##
    # The available disk check types.
    class DiskCheckType < IControl::Base::Enumeration
      # Use this value to specify disk checking to use			 disk size as a measurement.
      DISKCHECK_SIZE = :DISKCHECK_SIZE
      # Use this value to specify disk checking to use			 disk percent as a measurement.
      DISKCHECK_PERCENT = :DISKCHECK_PERCENT
    end

    ##
    # A list of snmp level types.
    class LevelType < IControl::Base::Enumeration
      # No authentication is performed.
      LEVEL_NOAUTH = :LEVEL_NOAUTH
      # Authentication is performed.
      LEVEL_AUTH = :LEVEL_AUTH
      # Use a privacy protocol. The only privacy protocol		 currently supported is DES.
      LEVEL_PRIV = :LEVEL_PRIV
    end

    ##
    # A list of snmp model types.
    class ModelType < IControl::Base::Enumeration
      # Any snmp model can be used.
      MODEL_ANY = :MODEL_ANY
      # The SNMP v1 model.
      MODEL_V1 = :MODEL_V1
      # The SNMP v2 model.
      MODEL_V2C = :MODEL_V2C
      # The SNMP USM model.
      MODEL_USM = :MODEL_USM
    end

    ##
    # A list of snmp prefix types.
    class PrefixType < IControl::Base::Enumeration
      # A context will be matched exactly.
      PREFIX_EXACT = :PREFIX_EXACT
      # A context will be matched by prefix.
      PREFIX_PREFIX = :PREFIX_PREFIX
    end

    ##
    # A list of snmp privacy protocol types.
    class PrivacyProtocolType < IControl::Base::Enumeration
      # The only privacy protocol currently supported is DES.
      PRIV_PROTOCOL_DES = :PRIV_PROTOCOL_DES
      # No privacy protocol is used.
      PRIV_PROTOCOL_NONE = :PRIV_PROTOCOL_NONE
    end

    ##
    # These types define the hosts to receive traps (and/or inform notifications). The
    # daemon sends a Cold Start trap when it starts up. If enabled, it also sends traps
    # on authentication failures. Multiple trapsink, trap2sink, and informsink lines may
    # be specified to specify mulitple destinations. Use trap2sink to send SNMPv2 traps
    # and informsink to send inform notifications.
    class SinkType < IControl::Base::Enumeration
      # SNMP traps.
      SINK_TRAPSINK = :SINK_TRAPSINK
      # SNMPv2 traps.
      SINK_TRAP2SINK = :SINK_TRAP2SINK
      # Inform notifications.
      SINK_INFORMSINK = :SINK_INFORMSINK
    end

    ##
    # A list of snmp transport types.
    class TransportType < IControl::Base::Enumeration
      # Use the udp protocol.
      TRANSPORT_UDP = :TRANSPORT_UDP
      # Use the tcp protocol.
      TRANSPORT_TCP = :TRANSPORT_TCP
      # Use the udp protocol (ipv6).
      TRANSPORT_UDP6 = :TRANSPORT_UDP6
      # Use the tcp protocol (ipv6).
      TRANSPORT_TCP6 = :TRANSPORT_TCP6
    end

    ##
    # A list of snmp view types.
    class ViewType < IControl::Base::Enumeration
      # The view type is included.
      VIEW_INCLUDED = :VIEW_INCLUDED
      # The view type is excluded.
      VIEW_EXCLUDED = :VIEW_EXCLUDED
    end

    ##
    # A struct that describes the mapping from group/securitymodel/security level to a
    # view.
    class AccessInformation < IControl::Base::Struct
      # The name of the access map.
      icontrol_attribute :access_name, String
      # The context for the mapping. For the v1 or v2c access model,			 access_context should
      # be empty, which you must specify not as an			 empty string but using "" (two double
      # quote characters, possibly			 escaped appropriately with backslashes as necessary),
      # or			 else get an exception.
      icontrol_attribute :access_context, String
      # The model type to use (any, v1, v2c, or usm).
      icontrol_attribute :model, IControl::Management::SNMPConfiguration::ModelType
      # The Level to use (noauth, auth, or priv). For the v1 or v2c access model,		 level
      # should be noauth.
      icontrol_attribute :level, IControl::Management::SNMPConfiguration::LevelType
      # Specifies how access_context should be matched against the context of		 the incoming
      # pdu, either exact or prefix.
      icontrol_attribute :prefix, IControl::Management::SNMPConfiguration::PrefixType
      # The view to be used for read access.
      icontrol_attribute :read_access, String
      # The view to be used for write access.
      icontrol_attribute :write_access, String
      # The view to be used for notify access.
      icontrol_attribute :notify_access, String
    end

    ##
    # For interfaces where the agent fails to correctly guess the type and speed, this
    # directive can supply additional information.
    class AgentInterface < IControl::Base::Struct
      # The name of the interface.
      icontrol_attribute :intf_name, String
      # The interface type as given in the IANAifType-MIB.
      icontrol_attribute :intf_type, String
      # the speed of the interface.
      icontrol_attribute :intf_speed, String
    end

    ##
    # Makes the agent listen on the specified list of sockets instead of the default port,
    # which is port 161.
    class AgentListenAddressPort < IControl::Base::Struct
      # The trasport type to use (udp or tcp).
      icontrol_attribute :transport, IControl::Management::SNMPConfiguration::TransportType
      # The address and port to use.
      icontrol_attribute :ipport, IControl::Common::IPPortDefinition
    end

    ##
    # This type is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. A struct that describes AgentX information.
    class AgentXInformation < IControl::Base::Struct
      # The address the master agent listens at.
      icontrol_attribute :address, String
      # The timeout for an AgentX request, default is 1 second.
      icontrol_attribute :timeout, Numeric
      # The number of retries for an AgentX request, default is 5.
      icontrol_attribute :retries, Numeric
    end

    ##
    # A struct that describes a client access definition consisting of an address and netmask.
    class ClientAccess < IControl::Base::Struct
      # The network address of the client.
      icontrol_attribute :address, String
      # The netmask of the client.
      icontrol_attribute :netmask, String
    end

    ##
    # This struct is used to check the named disks mounted at disk_path for available disk
    # space. If the disk space is less than minimum_space (kb), the associated entry in
    # the EXTENSIBLEDOTMIB.DISKMIBNUM.1.ERRORFLAG mib table will be set to (1) and a descriptive
    # error message will be returned to queries of EXTENSIBLEDOTMIB.DISKMIBNUM.1.ERRORMSG.
    class DiskCheckInformation < IControl::Base::Struct
      # The mounted path for disk checking.
      icontrol_attribute :disk_path, String
      # The type of disk check to perform.
      icontrol_attribute :check_type, IControl::Management::SNMPConfiguration::DiskCheckType
      # The minimum space to use as a check criteria.
      icontrol_attribute :minimum_space, Numeric
    end

    ##
    # This type is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. If the agent is built with support for the UCD-DLMOD-MIB,
    # it is cabable of loading agent MIB modules dynamically at startup through the dlmod
    # directive and during runtime through the use of the UCD-DLMOD-MIB. The directive
    # loads the shared object module file path which uses the module name prefix.
    class DynamicLoadableModule < IControl::Base::Struct
      # The module name prefix to dynamically load.
      icontrol_attribute :module_name, String
      # The module path for the module_name prefix.
      icontrol_attribute :module_path, String
    end

    ##
    # Used to monitor file sizes and make sure they don't grow beyond a certain size (in
    # kilobytes).
    class FileCheckInformation < IControl::Base::Struct
      # The file name to monitor for maximum size.
      icontrol_attribute :file_name, String
      # The maximum size of the file.
      icontrol_attribute :maximum_size, Numeric
    end

    ##
    # This structure is now deprecated. Use structure GenericSinkInformation2 instead.
    # This is a more generic trap configuration that allows any type of trap destination
    # to be specified with any version of SNMP. See the snmpcmd(1) manual page for further
    # details on the arguments that can be passed with snmpcmd_args. In addition to the
    # arguments listed there, the special argument -Ci specifies that you want inform notifications
    # to be used instead of unacknowledged traps (this requires that you also specify a
    # version number of v2c or v3 as well).
    class GenericSinkInformation < IControl::Base::Struct
      # Commands to communicate with a network entity using SNMP requests.
      icontrol_attribute :snmpcmd_args, String
      # The host address for which traps are sent.
      icontrol_attribute :sink_host, String
      # The community name of the host to receive trap messages.
      icontrol_attribute :sink_community, String
    end

    ##
    # This is a more generic trap configuration (trapsess directive) that allows any type
    # of trap destination to be specified with any version of SNMP. See the snmpcmd(1)
    # manual page for further details on the arguments that can be passed with snmpcmd_args.
    # In addition to the arguments listed there, the special argument -Ci specifies that
    # you want inform notifications to be used instead of unacknowledged traps (this requires
    # that you also specify a version number of v2c or v3 as well).
    class GenericSinkInformation2 < IControl::Base::Struct
      # Commands to communicate with a network entity using SNMP requests.
      icontrol_attribute :snmpcmd_args, String
      # The host address for which traps are sent.
      icontrol_attribute :sink_host, String
      # The SNMP trap port where traps are sent.
      icontrol_attribute :sink_port, Numeric
    end

    ##
    # A struct that describes the mapping from securitymodel/securityname to a group.
    class GroupInformation < IControl::Base::Struct
      # The name of the group.
      icontrol_attribute :group_name, String
      # The security model that applies to this group.
      icontrol_attribute :model, IControl::Management::SNMPConfiguration::ModelType
      # The security name that applies to this group.
      icontrol_attribute :security_name, String
    end

    ##
    # Used to check the load average of the machine and returns an error flag (1), and
    # a text-string error message to queries of EXTENSIBLEDOTMIB.LOADAVEMIBNUM.1.ERRORFLAG
    # and EXTENSIBLEDOTMIB.LOADAVEMIBNUM.1.ERRORMSG respectively when the 1-minute, 5-minute,
    # or 15-minute averages exceed the associated maximum values.
    class LoadAverageInformation < IControl::Base::Struct
      # The maximum 1-minute load average.
      icontrol_attribute :max_1_minute_load, Numeric
      # The maximum 5-minute load average.
      icontrol_attribute :max_5_minute_load, Numeric
      # The maximum 15-minute load average.
      icontrol_attribute :max_15_minute_load, Numeric
    end

    ##
    # Used to signal the agent to execute the named program with the given arguments and
    # returns the exit status and the first line of the STDOUT output of the program to
    # queries of the EXTENSIBLEDOTMIB.SHELLMIBNUM.mib_num.ERRORFLAG and EXTENSIBLEDOTMIB.SHELLMIBNUM.mib_num.ERRORMSG
    # mib columns. The mib_num.ERRORMSG mib contains the entire STDOUT output, one mib
    # table entry per line of output.
    class MibnumNameProgArgs < IControl::Base::Struct
      # The mib number index to use for program control
      icontrol_attribute :mib_num, String
      # The program definition.
      icontrol_attribute :name_prog_args, IControl::Management::SNMPConfiguration::NameProgArgs
    end

    ##
    # Used to signal the agent to execute the named program with the given arguments and
    # returns the exit status and the first line of the STDOUT output of the program to
    # queries of the EXTENSIBLEDOTMIB.SHELLMIBNUM.1.ERRORFLAG and EXTENSIBLEDOTMIB.SHELLMIBNUM.1.ERRORMSG
    # mib columns. All STDOUT output beyond the first line is silently truncated.
    class NameProgArgs < IControl::Base::Struct
      # The process name to query on the agent's machine.
      icontrol_attribute :process_name, String
      # The named program to execute.
      icontrol_attribute :program_name, String
      # The program's command line arguments.
      icontrol_attribute :program_args, String
    end

    ##
    # A struct that describes the passing of entire control of mib_oid to the exec_name
    # program.
    class PassThroughInformation < IControl::Base::Struct
      # The oid to pass to the given exec_name program.
      icontrol_attribute :mib_oid, String
      # The program name to pass the mib_oid to.
      icontrol_attribute :exec_name, String
    end

    ##
    # Used to check to see if the process_name'd processes are running on the agent's machine.
    # An error flag(1) and a description message are then passed to the EXTENSIBLEDOTMIB.PROCMIBNUM.1.ERRORFLAG
    # and EXTENSIBLEDOTMIB.PROCMIBNUM.1.ERRORMSG mib columns if the process_name's program
    # is not found on the process table as reported by PSCMD.
    class ProcessInformation < IControl::Base::Struct
      # The process name to query on the agent's machine.
      icontrol_attribute :process_name, String
      # The maximum number of process instances (0 maps to "infinity").
      icontrol_attribute :max, Numeric
      # The minimum number of process instances.
      icontrol_attribute :min, Numeric
    end

    ##
    # A struct that describes an snmp proxy. It specifies that any incoming requests under
    # local_oid should be proxied on the remote_host instead.
    class ProxyInformation < IControl::Base::Struct
      # Commands to communicate with a network entity using SNMP requests.
      icontrol_attribute :snmpcmd_args, String
      # The address of the remote host.
      icontrol_attribute :remote_host, String
      # The local oid to proxy.
      icontrol_attribute :local_oid, String
      # An optional remote oid to map the local oid from.
      icontrol_attribute :remote_oid, String
    end

    ##
    # A struct that describes the mapping from a source/community pair to a security name.
    class SecurityInformation < IControl::Base::Struct
      # The name of the security.
      icontrol_attribute :security_name, String
      # The hostname, subnet, or the word "default".
      icontrol_attribute :source, String
      # The community name that can be used to access the system.
      icontrol_attribute :community_name, String
      # The flag indicating whether to use IPv6 versions of SNMP directives		(com2sec6)
      icontrol_attribute :ipv6, Object
    end

    ##
    # A struct that describes a trap destination.
    class SinkInformation < IControl::Base::Struct
      # The host address for which traps are sent.
      icontrol_attribute :sink_host, String
      # The communtiy name of the host to receive trap messages.
      icontrol_attribute :sink_community, String
      # The service number on which traps are sent.
      icontrol_attribute :sink_port, Numeric
    end

    ##
    # This type is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. A struct that describes a smux sub agent.
    class SmuxSubAgentInformation < IControl::Base::Struct
      # The object identifier for the sub agent.
      icontrol_attribute :oid, String
      # The secret for communications with the sub agent.
      icontrol_attribute :password, String
    end

    ##
    # A struct that describes information about the given system.
    class SystemInformation < IControl::Base::Struct
      # The system name for the agent.
      icontrol_attribute :sys_name, String
      # A description of the machine which receives the system			contact information.
      icontrol_attribute :sys_location, String
      # The name and email address for the system contact using		 the following syntax: Name
      # <email address>.
      icontrol_attribute :sys_contact, String
      # The system description.
      icontrol_attribute :sys_description, String
      # The system object ID.
      icontrol_attribute :sys_object_id, String
      # The value for the system.sysServices.0 object. For a host,			a good value is 72.
      icontrol_attribute :sys_services, Numeric
    end

    ##
    # A struct that describes a user's security information.
    class UserInformation < IControl::Base::Struct
      # The name of the user.
      icontrol_attribute :user_name, String
      # The type of authentication to perform ( MD5 , or SHA).
      icontrol_attribute :auth_type, IControl::Management::SNMPConfiguration::AuthType
      # The authentication password.
      icontrol_attribute :auth_pass_phrase, String
      # The privacy protocol to use (DES).
      icontrol_attribute :priv_protocol, IControl::Management::SNMPConfiguration::PrivacyProtocolType
      # The privacy password.
      icontrol_attribute :priv_pass_phrase, String
    end

    ##
    # A struct that describes a named view.
    class ViewInformation < IControl::Base::Struct
      # The name of the view.
      icontrol_attribute :view_name, String
      # The view type to use for this view (included or excluded).
      icontrol_attribute :type, IControl::Management::SNMPConfiguration::ViewType
      # The mib subtree to apply to this view.
      icontrol_attribute :subtree, String
      # A list of hex octets, separated by '.' or ':'. Use "ff" for a default.
      icontrol_attribute :masks, String
    end

    ##
    # A struct that describes a set of security information.
    class WrapperSecurityInformation < IControl::Base::Struct
      # The community name that can be used to access the system.
      icontrol_attribute :community, String
      # This can be a hostname, a subnet, or the word "default".
      icontrol_attribute :source, String
      # The object identifier token that restricts access for that	 community to everything
      # below the given oid.
      icontrol_attribute :oid, String
      # The flag indicating whether to use IPv6 versions of SNMP directives		(rocommunity6,
      # rwcommunity6)
      icontrol_attribute :ipv6, Object
    end

    ##
    # A struct that describes a SNMPv3 USM user in the VACM access configuration tables.
    class WrapperUserInformation < IControl::Base::Struct
      # The name of the user.
      icontrol_attribute :user, String
      # The user's level.
      icontrol_attribute :level, IControl::Management::SNMPConfiguration::LevelType
      # The object identifier restricts access for the user to everything below the given
      # oid.
      icontrol_attribute :oid, String
    end

    ##
    # Gets a list of access maps from group/securitymodel/security level to a view.
    # :method: get_access_info

    ##
    # Gets the agent group id.
    # :method: get_agent_group_id

    ##
    # Gets the agent interface information.
    # :method: get_agent_interface

    ##
    # Gets a list of agent listen addresses.
    # :method: get_agent_listen_address

    ##
    # Gets the agent trap enabled state
    # :method: get_agent_trap_state

    ##
    # Gets the agent user id.
    # :method: get_agent_user_id

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Gets the AgentX information.
    # :method: get_agentx_information

    ##
    # Gets the authentication trap enabled state
    # :method: get_auth_trap_state

    ##
    # Gets a list of disk check instances.
    # :method: get_check_disk

    ##
    # Gets a list of available file checks.
    # :method: get_check_file

    ##
    # Gets load check.
    # :method: get_check_load

    ##
    # Gets a list of process checks. A process check is used to check to see if the process_name'd
    # processes are running on the agent's machine. An error flag(1) and a description
    # message are then passed to the EXTENSIBLEDOTMIB.PROCMIBNUM.1.ERRORFLAG and EXTENSIBLEDOTMIB.PROCMIBNUM.1.ERRORMSG
    # mib columns if the process_name'd program is not found on the process table as reported
    # by PSCMD.
    # :method: get_check_process

    ##
    # Gets a list of client access controls.
    # :method: get_client_access

    ##
    # Gets a list of mappings from a source/community pair to security name.
    # :method: get_community_to_security_info

    ##
    # Gets a list of SNMPv3 users. Since the authentication and private passphrases have
    # already been munged by snmpd, this information will not be available in the response.
    # Only the user_name, the auth_type, and priv_protocol fields in the UserInformation
    # structure are available.
    # :method: get_create_user

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Gets a list of dynamically loadable module instances.
    # :method: get_dynamic_loadable_module

    ##
    # Gets the snmp engine identifier.
    # :method: get_engine_id

    ##
    # Gets a list of program instances.
    # :method: get_exec

    ##
    # Gets a list of exec fix instances.
    # :method: get_exec_fix

    ##
    # This method is now deprecated. Use method get_generic_traps_v2 instead. Gets a list
    # of generic traps.
    # :method: get_generic_traps

    ##
    # Gets a list of generic traps.
    # :method: get_generic_traps_v2

    ##
    # Gets a list of mappings from securitymodel/securityname to group.
    # :method: get_group_info

    ##
    # Return a list of disk devices currently ignored.
    # :method: get_ignore_disk

    ##
    # Gets a list of pass through controls.
    # :method: get_pass_through

    ##
    # Gets a list of persist pass through controls.
    # :method: get_pass_through_persist

    ##
    # Retrieves a list of the current process fix instances.
    # :method: get_process_fix

    ##
    # Gets a list of snmp proxies.
    # :method: get_proxy

    ##
    # Gets a list of read-only communities.
    # :method: get_readonly_community

    ##
    # Gets a list of the SNMPv3 USM read-only users in the VACM access configuration tables.
    # :method: get_readonly_user

    ##
    # Gets a list of read-write communities.
    # :method: get_readwrite_community

    ##
    # Gets a list of the SNMPv3 USM read-write users in the VACM access configuration tables.
    # :method: get_readwrite_user

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Gets a list of SMUX based sub-agents.
    # :method: get_smux_subagent

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Gets directive to indicate how file systems are marked
    # by SNMP. Setting this directive to 1 causes all NFS and NFS-like file systems to
    # be marked as &amp;apos;Network Disks' in the hrStorageTable. This is according to
    # RFC 2790. Not setting storageUseNFS or setting it to 2 causes NFS and NFS-like file
    # systems to be marked as &amp;apos;Fixed Disks' as it has been in previous versions
    # of the ucd-snmp SNMP agent.
    # :method: get_storage_use_nfs

    ##
    # Gets the system location, system contact, and system name for the agent. This information
    # is reported in the &amp;apos;system' group in the mibII tree.
    # :method: get_system_information

    ##
    # Gets the trap community string.
    # :method: get_trap_community

    ##
    # Returns a list of trap sinks.
    # :method: get_trap_sinks
    # :call-seq:
    # get_trap_sinks(sink_type)
    #
    # Parameters:
    # - sink_type SinkType The trap sink type.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Gets a list of named views.
    # :method: get_view_info

    ##
    # Removes access maps from group/securitymodel/security level to a view.
    # :method: remove_access_info
    # :call-seq:
    # remove_access_info(access_info)
    #
    # Parameters:
    # - access_info AccessInformation[] A list of access map definitions.

    ##
    # Removes the agent group id.
    # :method: remove_agent_group_id
    # :call-seq:
    # remove_agent_group_id(group_id)
    #
    # Parameters:
    # - group_id String The group id.

    ##
    # Removes the agent interface information.
    # :method: remove_agent_interface
    # :call-seq:
    # remove_agent_interface(agent_intf)
    #
    # Parameters:
    # - agent_intf AgentInterface The agent interface information.

    ##
    # Removes a list of agent listen addresses. Note: As of v9.4.2, this method actually
    # sets the agent listen addresses back to the default.
    # :method: remove_agent_listen_address
    # :call-seq:
    # remove_agent_listen_address(agent_listen_addresses)
    #
    # Parameters:
    # - agent_listen_addresses AgentListenAddressPort[] The agent listen information.

    ##
    # Removes the agent trap enabled state. Note: As of v9.4.2, this method actually sets
    # the agent trap enabled state back to the default.
    # :method: remove_agent_trap_state
    # :call-seq:
    # remove_agent_trap_state(state)
    #
    # Parameters:
    # - state EnabledState The agent trap enabled state.

    ##
    # Removes the ugent ser id.
    # :method: remove_agent_user_id
    # :call-seq:
    # remove_agent_user_id(user_id)
    #
    # Parameters:
    # - user_id String The agent user id.

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Removes the AgentX information.
    # :method: remove_agentx_information
    # :call-seq:
    # remove_agentx_information(agentx_info)
    #
    # Parameters:
    # - agentx_info AgentXInformation The AgentX information.

    ##
    # Removes the authentication trap enabled state. Note: As of v9.4.2, this method actually
    # sets the authentication trap enabled state back to the default.
    # :method: remove_auth_trap_state
    # :call-seq:
    # remove_auth_trap_state(state)
    #
    # Parameters:
    # - state EnabledState The authentication trap enabled state.

    ##
    # Removes a disk check instance.
    # :method: remove_check_disk
    # :call-seq:
    # remove_check_disk(disk_info)
    #
    # Parameters:
    # - disk_info DiskCheckInformation[] The disk information for the check.

    ##
    # Removes a file check.
    # :method: remove_check_file
    # :call-seq:
    # remove_check_file(file_info)
    #
    # Parameters:
    # - file_info FileCheckInformation[] The file check information.

    ##
    # Removes a load check.
    # :method: remove_check_load
    # :call-seq:
    # remove_check_load(load_info)
    #
    # Parameters:
    # - load_info LoadAverageInformation The load check information.

    ##
    # Removes a process check. A process check is used to check to see if the process_name's
    # processes are running on the agent's machine. An error flag(1) and a description
    # message are then passed to the EXTENSIBLEDOTMIB.PROCMIBNUM.1.ERRORFLAG and EXTENSIBLEDOTMIB.PROCMIBNUM.1.ERRORMSG
    # mib columns if the process_name's program is not found on the process table as reported
    # by PSCMD.
    # :method: remove_check_process
    # :call-seq:
    # remove_check_process(proc_info)
    #
    # Parameters:
    # - proc_info ProcessInformation[] The process check to remove.

    ##
    # Removes a list of client access controls.
    # :method: remove_client_access
    # :call-seq:
    # remove_client_access(client_access_info)
    #
    # Parameters:
    # - client_access_info ClientAccess[] The client access information.

    ##
    # Removes mappings from a source/community pair to security names.
    # :method: remove_community_to_security_info
    # :call-seq:
    # remove_community_to_security_info(security_info)
    #
    # Parameters:
    # - security_info SecurityInformation[] The security mapping information.

    ##
    # Removes SNMPv3 users.
    # :method: remove_create_user
    # :call-seq:
    # remove_create_user(user_info)
    #
    # Parameters:
    # - user_info UserInformation[] The user information.

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Removes a dynamically loadable module instance.
    # :method: remove_dynamic_loadable_module
    # :call-seq:
    # remove_dynamic_loadable_module(mod_info)
    #
    # Parameters:
    # - mod_info DynamicLoadableModule[] The module information.

    ##
    # Removes the snmp engine identifier.
    # :method: remove_engine_id
    # :call-seq:
    # remove_engine_id(engine_id)
    #
    # Parameters:
    # - engine_id String The engine identifier.

    ##
    # Removes a program instance.
    # :method: remove_exec
    # :call-seq:
    # remove_exec(exec_info)
    #
    # Parameters:
    # - exec_info MibnumNameProgArgs[] The program instance information.

    ##
    # Removes an exec fix instance.
    # :method: remove_exec_fix
    # :call-seq:
    # remove_exec_fix(exec_info)
    #
    # Parameters:
    # - exec_info NameProgArgs[] The program information for the fix command.

    ##
    # This method is now deprecated. Use method remove_generic_traps_v2 instead. Removes
    # a list of generic traps.
    # :method: remove_generic_traps
    # :call-seq:
    # remove_generic_traps(sink_info)
    #
    # Parameters:
    # - sink_info GenericSinkInformation[] The trap sink information.

    ##
    # Removes a list of generic traps.
    # :method: remove_generic_traps_v2
    # :call-seq:
    # remove_generic_traps_v2(sink_info)
    #
    # Parameters:
    # - sink_info GenericSinkInformation2[] The trap sink information.

    ##
    # Removes mappings from securitymodel/securityname to group.
    # :method: remove_group_info
    # :call-seq:
    # remove_group_info(group_info)
    #
    # Parameters:
    # - group_info GroupInformation[] The group mapping information.

    ##
    # Removes a disk device from the ignore list.
    # :method: remove_ignore_disk
    # :call-seq:
    # remove_ignore_disk(ignore_disk)
    #
    # Parameters:
    # - ignore_disk String[] List of disk devices to ignore

    ##
    # Removes a list of pass through controls.
    # :method: remove_pass_through
    # :call-seq:
    # remove_pass_through(passthru_info)
    #
    # Parameters:
    # - passthru_info PassThroughInformation[] The pass through information.

    ##
    # Removes a list of persist pass through controls.
    # :method: remove_pass_through_persist
    # :call-seq:
    # remove_pass_through_persist(passthru_info)
    #
    # Parameters:
    # - passthru_info PassThroughInformation[] The persist pass through information.

    ##
    # Removes a process fix instance.
    # :method: remove_process_fix
    # :call-seq:
    # remove_process_fix(fix_info)
    #
    # Parameters:
    # - fix_info NameProgArgs[] The program information for the process fix.

    ##
    # Removes a list of snmp proxies.
    # :method: remove_proxy
    # :call-seq:
    # remove_proxy(proxy_info)
    #
    # Parameters:
    # - proxy_info String[] The proxy information.

    ##
    # Removes read-only communities.
    # :method: remove_readonly_community
    # :call-seq:
    # remove_readonly_community(ro_community_info)
    #
    # Parameters:
    # - ro_community_info WrapperSecurityInformation[] The read-only community information.

    ##
    # Removes SNMPv3 USM read-only users from the VACM access configuration tables.
    # :method: remove_readonly_user
    # :call-seq:
    # remove_readonly_user(ro_user_info)
    #
    # Parameters:
    # - ro_user_info WrapperUserInformation[] The read-only user information.

    ##
    # Removes read-write communities.
    # :method: remove_readwrite_community
    # :call-seq:
    # remove_readwrite_community(rw_community_info)
    #
    # Parameters:
    # - rw_community_info WrapperSecurityInformation[] The read-write community information.

    ##
    # Removes SNMPv3 USM read-write users from the VACM access configuration tables.
    # :method: remove_readwrite_user
    # :call-seq:
    # remove_readwrite_user(rw_user_info)
    #
    # Parameters:
    # - rw_user_info WrapperUserInformation[] The read-write user information.

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Removes a SMUX based sub-agent.
    # :method: remove_smux_subagent
    # :call-seq:
    # remove_smux_subagent(subagent_info)
    #
    # Parameters:
    # - subagent_info SmuxSubAgentInformation[] The sub-agent information.

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Removes directive to indicate how file systems are
    # marked by SNMP. Setting this directive to 1 causes all NFS and NFS-like file systems
    # to be marked as &amp;apos;Network Disks' in the hrStorageTable. This is according
    # to RFC 2790. Not setting storageUseNFS or setting it to 2 causes NFS and NFS-like
    # file systems to be marked as &amp;apos;Fixed Disks' as it has been in previous versions
    # of the ucd-snmp SNMP agent.
    # :method: remove_storage_use_nfs
    # :call-seq:
    # remove_storage_use_nfs(usage)
    #
    # Parameters:
    # - usage long The usage information.

    ##
    # Removes the system location, system contact, and system name for the agent. This
    # information is reported in the &amp;apos;system' group in the mibII tree. Note: As
    # of v9.4.2, this method actually sets the system location and contact parameters and
    # the system services parameter back to the default. As has always been the case, this
    # method affects values only for the system information items you provide (non-empty/non-zero).
    # :method: remove_system_information
    # :call-seq:
    # remove_system_information(system_info)
    #
    # Parameters:
    # - system_info SystemInformation The system information.

    ##
    # Removes the trap community string. Note: As of v9.4.2, this method actually sets
    # the trap community string back to the default.
    # :method: remove_trap_community
    # :call-seq:
    # remove_trap_community(community)
    #
    # Parameters:
    # - community String The trap community string.

    ##
    # Removes a list of trap sinks.
    # :method: remove_trap_sinks
    # :call-seq:
    # remove_trap_sinks(sink_type ,sink_info)
    #
    # Parameters:
    # - sink_type SinkType The trap sink type.
    # - sink_info SinkInformation[] The trap sink information.

    ##
    # Removes a list of named views.
    # :method: remove_view_info
    # :call-seq:
    # remove_view_info(view_info)
    #
    # Parameters:
    # - view_info ViewInformation[] The view information.

    ##
    # Creates access maps from group/securitymodel/security level to a view.
    # :method: set_access_info
    # :call-seq:
    # set_access_info(access_info)
    #
    # Parameters:
    # - access_info AccessInformation[] A list of access map definitions.

    ##
    # Sets the agent group id. Change to this gid after opening port. The group id may
    # refer to a group by name or a number if the group number starts with a #.
    # :method: set_agent_group_id
    # :call-seq:
    # set_agent_group_id(group_id)
    #
    # Parameters:
    # - group_id String The group id.

    ##
    # Sets the interface information for the agent. For interfaces where the agent fails
    # to guess correctly on the type and speed, this directive can supply additional information.
    # :method: set_agent_interface
    # :call-seq:
    # set_agent_interface(agent_intf)
    #
    # Parameters:
    # - agent_intf AgentInterface The agent interface information.

    ##
    # Sets a list of agent listen addresses. This makes the agent listen on the specified
    # list of sockets instead of the default port, which is 161.
    # :method: set_agent_listen_address
    # :call-seq:
    # set_agent_listen_address(agent_listen_addresses)
    #
    # Parameters:
    # - agent_listen_addresses AgentListenAddressPort[] The agent listen information.

    ##
    # Sets the agent trap enabled state.
    # :method: set_agent_trap_state
    # :call-seq:
    # set_agent_trap_state(state)
    #
    # Parameters:
    # - state EnabledState The agent trap enabled state.

    ##
    # Sets the agent user id. Change to this uid after opening port. The userid may refer
    # to a user by name or a number if the user number starts with &amp;apos;#'.
    # :method: set_agent_user_id
    # :call-seq:
    # set_agent_user_id(user_id)
    #
    # Parameters:
    # - user_id String The agent user id.

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Sets the AgentX information.
    # :method: set_agentx_information
    # :call-seq:
    # set_agentx_information(agentx_info)
    #
    # Parameters:
    # - agentx_info AgentXInformation The AgentX information.

    ##
    # Sets the authentication trap enabled state. Setting the trap state to Enabled, enables
    # the generation of authentication failure traps. The default value is Disabled.
    # :method: set_auth_trap_state
    # :call-seq:
    # set_auth_trap_state(state)
    #
    # Parameters:
    # - state EnabledState The authentication trap enabled state.

    ##
    # Creates a disk check instance. This is used to check the named disks mounted on path
    # for available disk space. If the disk space is less than minimum_space (kb or %),
    # the associated entry in the EXTENSIBLEDOTMIB.DISKMIBNUM.1.ERRORFLAG mib table will
    # be set to (1) and a descriptive error message will be returned to queries of EXTENSIBLEDOTMIB.DISKMIBNUM.1.ERRORMSG.
    # :method: set_check_disk
    # :call-seq:
    # set_check_disk(disk_info)
    #
    # Parameters:
    # - disk_info DiskCheckInformation[] The disk information for the check.

    ##
    # Adds a file check used to monitor file sizes and make sure they don't grow beyond
    # a certain size (in kilobytes).
    # :method: set_check_file
    # :call-seq:
    # set_check_file(file_info)
    #
    # Parameters:
    # - file_info FileCheckInformation[] The file check information.

    ##
    # Adds a load check used to check the load average of the machine and returns an error
    # flag (1), and a text-string error message to queries of EXTENSIBLEDOTMIB.LOADAVEMIBNUM.1.ERRORFLAG
    # and EXTENSIBLEDOTMIB.LOADAVEMIBNUM.1.ERRORMSG respectively when the 1-minute, 5-minute,
    # or 15-minute averages exceed the associated maximum values.
    # :method: set_check_load
    # :call-seq:
    # set_check_load(load_info)
    #
    # Parameters:
    # - load_info LoadAverageInformation The load check information.

    ##
    # Creates a process check. A process check is used to check to see if the process_name's
    # processes are running on the agent's machine. An error flag(1) and a description
    # message are then passed to the EXTENSIBLEDOTMIB.PROCMIBNUM.1.ERRORFLAG and EXTENSIBLEDOTMIB.PROCMIBNUM.1.ERRORMSG
    # mib columns if the process_name'd program is not found on the process table as reported
    # by PSCMD.
    # :method: set_check_process
    # :call-seq:
    # set_check_process(proc_info)
    #
    # Parameters:
    # - proc_info ProcessInformation[] The process check to add.

    ##
    # Creates a list of client access controls. These are stored in the /etc/hosts.allow
    # file.
    # :method: set_client_access
    # :call-seq:
    # set_client_access(client_access_info)
    #
    # Parameters:
    # - client_access_info ClientAccess[] The access control information.

    ##
    # Creates mappings from a source/community pair to security names. The first source/community
    # combination that matches the incoming packet is selected.
    # :method: set_community_to_security_info
    # :call-seq:
    # set_community_to_security_info(security_info)
    #
    # Parameters:
    # - security_info SecurityInformation[] The security mapping information.

    ##
    # Creates SNMPv3 users. Note: as of v9.4.2, doing this method without having done set_readonly_user
    # or set_readwrite_user first results in a valid (readonly) user rather than silently
    # creating an incomplete but unusable user. However, such behavior is not guaranteed;
    # please do one of the above methods before this method so as to define your new user
    # fully.
    # :method: set_create_user
    # :call-seq:
    # set_create_user(user_info)
    #
    # Parameters:
    # - user_info UserInformation[] The user information.

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Creates a dynmically loadable module instance. If
    # the agent is built with support for the UCD-DLMOD-MIB it is cabable of loading agent
    # MIB modules dynamically at startup through the dlmod directive and during runtime
    # through the use of the UCD-DLMOD-MIB. The directive loads the shared object module
    # file path which uses the module name prefix.
    # :method: set_dynamic_loadable_module
    # :call-seq:
    # set_dynamic_loadable_module(mod_info)
    #
    # Parameters:
    # - mod_info DynamicLoadableModule[] The module information.

    ##
    # Sets the snmp engine identifier. The snmpd agent needs to be configured with an engine
    # id to be able to respond to SNMPv3 messages.
    # :method: set_engine_id
    # :call-seq:
    # set_engine_id(engine_id)
    #
    # Parameters:
    # - engine_id String The engine identifier.

    ##
    # Creates a program instance, used to signal the agent to execute the named program
    # with the given arguments and returns the exit status and the first line of the STDOUT
    # output of the program to queries of the EXTENSIBLEDOTMIB.SHELLMIBNUM.mib_num.ERRORFLAG
    # and EXTENSIBLEDOTMIB.SHELLMIBNUM.mib_num.ERRORMSG mib columns. The mib_num.ERRORMSG
    # mib contains the entire STDOUT output, one mib table entry per line of output.
    # :method: set_exec
    # :call-seq:
    # set_exec(exec_info)
    #
    # Parameters:
    # - exec_info MibnumNameProgArgs[] The program instance information.

    ##
    # Sets an exec fix instance that registers a command that knows how to fix errors with
    # the given program.
    # :method: set_exec_fix
    # :call-seq:
    # set_exec_fix(exec_info)
    #
    # Parameters:
    # - exec_info NameProgArgs[] The program information for the fix command.

    ##
    # This method is now deprecated. Use method set_generic_traps_v2 instead. Creates generic
    # traps that allows any type of trap destination to be specified with any version of
    # SNMP.
    # :method: set_generic_traps
    # :call-seq:
    # set_generic_traps(sink_info)
    #
    # Parameters:
    # - sink_info GenericSinkInformation[] The trap sink information.

    ##
    # Creates generic traps that allows any type of trap destination to be specified with
    # any version of SNMP.
    # :method: set_generic_traps_v2
    # :call-seq:
    # set_generic_traps_v2(sink_info)
    #
    # Parameters:
    # - sink_info GenericSinkInformation2[] The trap sink information.

    ##
    # Creates mappings from securitymodel/securityname to group.
    # :method: set_group_info
    # :call-seq:
    # set_group_info(group_info)
    #
    # Parameters:
    # - group_info GroupInformation[] The group mapping information.

    ##
    # Adds disk devices to the ignore list. When scanning for available disk devices the
    # agent might block in trying to open all possible disk devices. This might lead to
    # a timeout wheen walking the device tree. Sometimes it will timeout every time you
    # try it. Adding a ignore disk directive will specify device names not to be checked
    # (i.e. opened).
    # :method: set_ignore_disk
    # :call-seq:
    # set_ignore_disk(ignore_disk)
    #
    # Parameters:
    # - ignore_disk String[] List of disk devices to ignore

    ##
    # Creates a list of pass through controls. This passes entire control of the mib oid
    # to the executing program.
    # :method: set_pass_through
    # :call-seq:
    # set_pass_through(passthru_info)
    #
    # Parameters:
    # - passthru_info PassThroughInformation[] The pass through information.

    ##
    # Creates a list of persist pass through controls. This passes entire control of the
    # mib oid to the executing program. This is similar to set_path_through(), but the
    # executing program continues to run after the initial request is answered.
    # :method: set_pass_through_persist
    # :call-seq:
    # set_pass_through_persist(passthru_info)
    #
    # Parameters:
    # - passthru_info PassThroughInformation[] The pass through information.

    ##
    # Sets a process fix instance that registers a command that knows how to fix errors
    # with the given process.
    # :method: set_process_fix
    # :call-seq:
    # set_process_fix(fix_info)
    #
    # Parameters:
    # - fix_info NameProgArgs[] The program information for the process fix.

    ##
    # Creates a list of snmp proxies. This specifies that any incoming request under oid
    # should be proxied on to a remote host instead.
    # :method: set_proxy
    # :call-seq:
    # set_proxy(proxy_info)
    #
    # Parameters:
    # - proxy_info String[] The proxy information.

    ##
    # Creates read-only communities that can be used to access the agent. snmpd supports
    # the View-Based Access Control Model (vacm) as defined in RFC 2275.
    # :method: set_readonly_community
    # :call-seq:
    # set_readonly_community(ro_community_info)
    #
    # Parameters:
    # - ro_community_info WrapperSecurityInformation[] The read-only community information.

    ##
    # Creates SNMPv3 USM read-only users in the VACM access configuration tables.
    # :method: set_readonly_user
    # :call-seq:
    # set_readonly_user(ro_user_info)
    #
    # Parameters:
    # - ro_user_info WrapperUserInformation[] The read-only user information.

    ##
    # Creates read-write communities that can be used to access the agent. snmpd supports
    # the View-Based Access Control Model (vacm) as defined in RFC 2275.
    # :method: set_readwrite_community
    # :call-seq:
    # set_readwrite_community(rw_community_info)
    #
    # Parameters:
    # - rw_community_info WrapperSecurityInformation[] The read-write community information.

    ##
    # Creates SNMPv3 USM read-write users in the VACM access configuration tables.
    # :method: set_readwrite_user
    # :call-seq:
    # set_readwrite_user(rw_user_info)
    #
    # Parameters:
    # - rw_user_info WrapperUserInformation[] The read-write user information.

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Creates a SMUX based sub-agent, such as gated.
    # :method: set_smux_subagent
    # :call-seq:
    # set_smux_subagent(subagent_info)
    #
    # Parameters:
    # - subagent_info SmuxSubAgentInformation[] The sub-agent information.

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Adds a directive to indicate how file systems are
    # marked by SNMP. Setting this directive to 1 causes all NFS and NFS-like file systems
    # to be marked as &amp;apos;Network Disks' in the hrStorageTable. This is according
    # to RFC 2790. Not setting storageUseNFS or setting it to 2 causes NFS and NFS-like
    # file systems to be marked as &amp;apos;Fixed Disks' as it has been in previous versions
    # of the ucd-snmp SNMP agent.
    # :method: set_storage_use_nfs
    # :call-seq:
    # set_storage_use_nfs(usage)
    #
    # Parameters:
    # - usage long The usage information.

    ##
    # Sets the system location, system contact, and system name for the agent. This information
    # is reported in the &amp;apos;system' group in the mibII tree. As has always been
    # the case, this method sets values only for the system information items you provide
    # (non-empty/non-zero).
    # :method: set_system_information
    # :call-seq:
    # set_system_information(system_info)
    #
    # Parameters:
    # - system_info SystemInformation The system information.

    ##
    # Sets the trap community string. This defines the default community string to be used
    # when sending traps.
    # :method: set_trap_community
    # :call-seq:
    # set_trap_community(community)
    #
    # Parameters:
    # - community String The community string.

    ##
    # Creates a list of trap sinks. This method create definitions for hosts to receive
    # traps (and/or inform notifications). The daemon sends a Cold Start trap when it starts
    # up. If enabled, it also sends traps on authentication failures.
    # :method: set_trap_sinks
    # :call-seq:
    # set_trap_sinks(sink_type ,sink_info)
    #
    # Parameters:
    # - sink_type SinkType The trap sink type.
    # - sink_info SinkInformation[] The trap sink information.

    ##
    # Creates named views.
    # :method: set_view_info
    # :call-seq:
    # set_view_info(view_info)
    #
    # Parameters:
    # - view_info ViewInformation[] The view information.


  end
end
