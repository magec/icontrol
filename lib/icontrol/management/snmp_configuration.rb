module IControl::Management
  ##
  # The SNMPConfiguration interface allows users to manage the full configurations for
  # UCD SNMP agent. Please read the manual pages for snmpd.conf for further information.
  # TODO: Missing directives: - override
  class SNMPConfiguration < IControl::Base

    set_id_name "sink_info"

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
    class WrapperUserInformation < IControl::Base::Struct; end
    class AccessInformationSequence < IControl::Base::Sequence ; end
    class AgentListenAddressPortSequence < IControl::Base::Sequence ; end
    class AgentXInformationSequence < IControl::Base::Sequence ; end
    class ClientAccessSequence < IControl::Base::Sequence ; end
    class DiskCheckInformationSequence < IControl::Base::Sequence ; end
    class DynamicLoadableModuleSequence < IControl::Base::Sequence ; end
    class FileCheckInformationSequence < IControl::Base::Sequence ; end
    class GenericSinkInformation2Sequence < IControl::Base::Sequence ; end
    class GenericSinkInformationSequence < IControl::Base::Sequence ; end
    class GroupInformationSequence < IControl::Base::Sequence ; end
    class LoadAverageInformationSequence < IControl::Base::Sequence ; end
    class MibnumNameProgArgsSequence < IControl::Base::Sequence ; end
    class NameProgArgsSequence < IControl::Base::Sequence ; end
    class PassThroughInformationSequence < IControl::Base::Sequence ; end
    class ProcessInformationSequence < IControl::Base::Sequence ; end
    class ProxyInformationSequence < IControl::Base::Sequence ; end
    class SecurityInformationSequence < IControl::Base::Sequence ; end
    class SinkInformationSequence < IControl::Base::Sequence ; end
    class SmuxSubAgentInformationSequence < IControl::Base::Sequence ; end
    class UserInformationSequence < IControl::Base::Sequence ; end
    class ViewInformationSequence < IControl::Base::Sequence ; end
    class WrapperSecurityInformationSequence < IControl::Base::Sequence ; end
    class WrapperUserInformationSequence < IControl::Base::Sequence ; end
    # A list of snmp authentication types.
    class AuthType < IControl::Base::Enumeration; end
    # The available disk check types.
    class DiskCheckType < IControl::Base::Enumeration; end
    # A list of snmp level types.
    class LevelType < IControl::Base::Enumeration; end
    # A list of snmp model types.
    class ModelType < IControl::Base::Enumeration; end
    # A list of snmp prefix types.
    class PrefixType < IControl::Base::Enumeration; end
    # A list of snmp privacy protocol types.
    class PrivacyProtocolType < IControl::Base::Enumeration; end
    # These types define the hosts to receive traps (and/or inform notifications). The
    # daemon sends a Cold Start trap when it starts up. If enabled, it also sends traps
    # on authentication failures. Multiple trapsink, trap2sink, and informsink lines may
    # be specified to specify mulitple destinations. Use trap2sink to send SNMPv2 traps
    # and informsink to send inform notifications.
    class SinkType < IControl::Base::Enumeration; end
    # A list of snmp transport types.
    class TransportType < IControl::Base::Enumeration; end
    # A list of snmp view types.
    class ViewType < IControl::Base::Enumeration; end    ##
    # Gets a list of access maps from group/securitymodel/security level to a view.
    # @rspec_example
    # @return [AccessInformation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def access_info
      super
    end

    ##
    # Gets the agent group id.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def agent_group_id
      super
    end

    ##
    # Gets the agent interface information.
    # @rspec_example
    # @return [AgentInterface]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def agent_interface
      super
    end

    ##
    # Gets a list of agent listen addresses.
    # @rspec_example
    # @return [AgentListenAddressPort]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def agent_listen_address
      super
    end

    ##
    # Gets the agent trap enabled state
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def agent_trap_state
      super
    end

    ##
    # Gets the agent user id.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def agent_user_id
      super
    end

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Gets the AgentX information.
    # @rspec_example
    # @return [AgentXInformation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    def agentx_information
      super
    end

    ##
    # Gets the authentication trap enabled state
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def auth_trap_state
      super
    end

    ##
    # Gets a list of disk check instances.
    # @rspec_example
    # @return [DiskCheckInformation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def check_disk
      super
    end

    ##
    # Gets a list of available file checks.
    # @rspec_example
    # @return [FileCheckInformation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def check_file
      super
    end

    ##
    # Gets load check.
    # @rspec_example
    # @return [LoadAverageInformation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def check_load
      super
    end

    ##
    # Gets a list of process checks. A process check is used to check to see if the process_name'd
    # processes are running on the agent's machine. An error flag(1) and a description
    # message are then passed to the EXTENSIBLEDOTMIB.PROCMIBNUM.1.ERRORFLAG and EXTENSIBLEDOTMIB.PROCMIBNUM.1.ERRORMSG
    # mib columns if the process_name'd program is not found on the process table as reported
    # by PSCMD.
    # @rspec_example
    # @return [ProcessInformation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def check_process
      super
    end

    ##
    # Gets a list of client access controls.
    # @rspec_example
    # @return [ClientAccess]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def client_access
      super
    end

    ##
    # Gets a list of mappings from a source/community pair to security name.
    # @rspec_example
    # @return [SecurityInformation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def community_to_security_info
      super
    end

    ##
    # Gets a list of SNMPv3 users. Since the authentication and private passphrases have
    # already been munged by snmpd, this information will not be available in the response.
    # Only the user_name, the auth_type, and priv_protocol fields in the UserInformation
    # structure are available.
    # @rspec_example
    # @return [UserInformation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def create_user
      super
    end

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Gets a list of dynamically loadable module instances.
    # @rspec_example
    # @return [DynamicLoadableModule]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    def dynamic_loadable_module
      super
    end

    ##
    # Gets the snmp engine identifier.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def engine_id
      super
    end

    ##
    # Gets a list of program instances.
    # @rspec_example
    # @return [MibnumNameProgArgs]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def exec
      super
    end

    ##
    # Gets a list of exec fix instances.
    # @rspec_example
    # @return [NameProgArgs]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def exec_fix
      super
    end

    ##
    # This method is now deprecated. Use method get_generic_traps_v2 instead. Gets a list
    # of generic traps.
    # @rspec_example
    # @return [GenericSinkInformation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def generic_traps
      super
    end

    ##
    # Gets a list of generic traps.
    # @rspec_example
    # @return [GenericSinkInformation2]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def generic_traps_v2
      super
    end

    ##
    # Gets a list of mappings from securitymodel/securityname to group.
    # @rspec_example
    # @return [GroupInformation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def group_info
      super
    end

    ##
    # Return a list of disk devices currently ignored.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ignore_disk
      super
    end

    ##
    # Gets a list of pass through controls.
    # @rspec_example
    # @return [PassThroughInformation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def pass_through
      super
    end

    ##
    # Gets a list of persist pass through controls.
    # @rspec_example
    # @return [PassThroughInformation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def pass_through_persist
      super
    end

    ##
    # Retrieves a list of the current process fix instances.
    # @rspec_example
    # @return [NameProgArgs]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def process_fix
      super
    end

    ##
    # Gets a list of snmp proxies.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def proxy
      super
    end

    ##
    # Gets a list of read-only communities.
    # @rspec_example
    # @return [WrapperSecurityInformation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def readonly_community
      super
    end

    ##
    # Gets a list of the SNMPv3 USM read-only users in the VACM access configuration tables.
    # @rspec_example
    # @return [WrapperUserInformation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def readonly_user
      super
    end

    ##
    # Gets a list of read-write communities.
    # @rspec_example
    # @return [WrapperSecurityInformation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def readwrite_community
      super
    end

    ##
    # Gets a list of the SNMPv3 USM read-write users in the VACM access configuration tables.
    # @rspec_example
    # @return [WrapperUserInformation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def readwrite_user
      super
    end

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Gets a list of SMUX based sub-agents.
    # @rspec_example
    # @return [SmuxSubAgentInformation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    def smux_subagent
      super
    end

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Gets directive to indicate how file systems are marked
    # by SNMP. Setting this directive to 1 causes all NFS and NFS-like file systems to
    # be marked as &amp;apos;Network Disks' in the hrStorageTable. This is according to
    # RFC 2790. Not setting storageUseNFS or setting it to 2 causes NFS and NFS-like file
    # systems to be marked as &amp;apos;Fixed Disks' as it has been in previous versions
    # of the ucd-snmp SNMP agent.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    def storage_use_nfs
      super
    end

    ##
    # Gets the system location, system contact, and system name for the agent. This information
    # is reported in the &amp;apos;system' group in the mibII tree.
    # @rspec_example
    # @return [SystemInformation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def system_information
      super
    end

    ##
    # Gets the trap community string.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def trap_community
      super
    end

    ##
    # Returns a list of trap sinks.
    # @rspec_example
    # @return [SinkInformation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::SinkType] :sink_type The trap sink type.
    def trap_sinks(opts)
      check_params(opts,[:sink_type])
      super
    end

    ##
    # Gets the version information for this interface.
    # @rspec_example
    # @return [String]
    def version
      super
    end

    ##
    # Gets a list of named views.
    # @rspec_example
    # @return [ViewInformation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def view_info
      super
    end

    ##
    # Removes access maps from group/securitymodel/security level to a view.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::AccessInformation] :access_info A list of access map definitions.
    def remove_access_info(opts)
      check_params(opts,[:access_info])
      super
    end

    ##
    # Removes the agent group id.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :group_id The group id.
    def remove_agent_group_id(opts)
      check_params(opts,[:group_id])
      super
    end

    ##
    # Removes the agent interface information.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::AgentInterface] :agent_intf The agent interface information.
    def remove_agent_interface(opts)
      check_params(opts,[:agent_intf])
      super
    end

    ##
    # Removes a list of agent listen addresses. Note: As of v9.4.2, this method actually
    # sets the agent listen addresses back to the default.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::AgentListenAddressPort] :agent_listen_addresses The agent listen information.
    def remove_agent_listen_address(opts)
      check_params(opts,[:agent_listen_addresses])
      super
    end

    ##
    # Removes the agent trap enabled state. Note: As of v9.4.2, this method actually sets
    # the agent trap enabled state back to the default.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The agent trap enabled state.
    def remove_agent_trap_state(opts)
      check_params(opts,[:state])
      super
    end

    ##
    # Removes the ugent ser id.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :user_id The agent user id.
    def remove_agent_user_id(opts)
      check_params(opts,[:user_id])
      super
    end

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Removes the AgentX information.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::AgentXInformation] :agentx_info The AgentX information.
    def remove_agentx_information(opts)
      check_params(opts,[:agentx_info])
      super
    end

    ##
    # Removes the authentication trap enabled state. Note: As of v9.4.2, this method actually
    # sets the authentication trap enabled state back to the default.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The authentication trap enabled state.
    def remove_auth_trap_state(opts)
      check_params(opts,[:state])
      super
    end

    ##
    # Removes a disk check instance.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::DiskCheckInformation] :disk_info The disk information for the check.
    def remove_check_disk(opts)
      check_params(opts,[:disk_info])
      super
    end

    ##
    # Removes a file check.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::FileCheckInformation] :file_info The file check information.
    def remove_check_file(opts)
      check_params(opts,[:file_info])
      super
    end

    ##
    # Removes a load check.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::LoadAverageInformation] :load_info The load check information.
    def remove_check_load(opts)
      check_params(opts,[:load_info])
      super
    end

    ##
    # Removes a process check. A process check is used to check to see if the process_name's
    # processes are running on the agent's machine. An error flag(1) and a description
    # message are then passed to the EXTENSIBLEDOTMIB.PROCMIBNUM.1.ERRORFLAG and EXTENSIBLEDOTMIB.PROCMIBNUM.1.ERRORMSG
    # mib columns if the process_name's program is not found on the process table as reported
    # by PSCMD.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::ProcessInformation] :proc_info The process check to remove.
    def remove_check_process(opts)
      check_params(opts,[:proc_info])
      super
    end

    ##
    # Removes a list of client access controls.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::ClientAccess] :client_access_info The client access information.
    def remove_client_access(opts)
      check_params(opts,[:client_access_info])
      super
    end

    ##
    # Removes mappings from a source/community pair to security names.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::SecurityInformation] :security_info The security mapping information.
    def remove_community_to_security_info(opts)
      check_params(opts,[:security_info])
      super
    end

    ##
    # Removes SNMPv3 users.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::UserInformation] :user_info The user information.
    def remove_create_user(opts)
      check_params(opts,[:user_info])
      super
    end

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Removes a dynamically loadable module instance.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::DynamicLoadableModule] :mod_info The module information.
    def remove_dynamic_loadable_module(opts)
      check_params(opts,[:mod_info])
      super
    end

    ##
    # Removes the snmp engine identifier.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :engine_id The engine identifier.
    def remove_engine_id(opts)
      check_params(opts,[:engine_id])
      super
    end

    ##
    # Removes a program instance.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::MibnumNameProgArgs] :exec_info The program instance information.
    def remove_exec(opts)
      check_params(opts,[:exec_info])
      super
    end

    ##
    # Removes an exec fix instance.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::NameProgArgs] :exec_info The program information for the fix command.
    def remove_exec_fix(opts)
      check_params(opts,[:exec_info])
      super
    end

    ##
    # This method is now deprecated. Use method remove_generic_traps_v2 instead. Removes
    # a list of generic traps.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_generic_traps
      super
    end

    ##
    # Removes a list of generic traps.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_generic_traps_v2
      super
    end

    ##
    # Removes mappings from securitymodel/securityname to group.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::GroupInformation] :group_info The group mapping information.
    def remove_group_info(opts)
      check_params(opts,[:group_info])
      super
    end

    ##
    # Removes a disk device from the ignore list.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :ignore_disk List of disk devices to ignore
    def remove_ignore_disk(opts)
      check_params(opts,[:ignore_disk])
      super
    end

    ##
    # Removes a list of pass through controls.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::PassThroughInformation] :passthru_info The pass through information.
    def remove_pass_through(opts)
      check_params(opts,[:passthru_info])
      super
    end

    ##
    # Removes a list of persist pass through controls.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::PassThroughInformation] :passthru_info The persist pass through information.
    def remove_pass_through_persist(opts)
      check_params(opts,[:passthru_info])
      super
    end

    ##
    # Removes a process fix instance.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::NameProgArgs] :fix_info The program information for the process fix.
    def remove_process_fix(opts)
      check_params(opts,[:fix_info])
      super
    end

    ##
    # Removes a list of snmp proxies.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :proxy_info The proxy information.
    def remove_proxy(opts)
      check_params(opts,[:proxy_info])
      super
    end

    ##
    # Removes read-only communities.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::WrapperSecurityInformation] :ro_community_info The read-only community information.
    def remove_readonly_community(opts)
      check_params(opts,[:ro_community_info])
      super
    end

    ##
    # Removes SNMPv3 USM read-only users from the VACM access configuration tables.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::WrapperUserInformation] :ro_user_info The read-only user information.
    def remove_readonly_user(opts)
      check_params(opts,[:ro_user_info])
      super
    end

    ##
    # Removes read-write communities.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::WrapperSecurityInformation] :rw_community_info The read-write community information.
    def remove_readwrite_community(opts)
      check_params(opts,[:rw_community_info])
      super
    end

    ##
    # Removes SNMPv3 USM read-write users from the VACM access configuration tables.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::WrapperUserInformation] :rw_user_info The read-write user information.
    def remove_readwrite_user(opts)
      check_params(opts,[:rw_user_info])
      super
    end

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Removes a SMUX based sub-agent.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::SmuxSubAgentInformation] :subagent_info The sub-agent information.
    def remove_smux_subagent(opts)
      check_params(opts,[:subagent_info])
      super
    end

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Removes directive to indicate how file systems are
    # marked by SNMP. Setting this directive to 1 causes all NFS and NFS-like file systems
    # to be marked as &amp;apos;Network Disks' in the hrStorageTable. This is according
    # to RFC 2790. Not setting storageUseNFS or setting it to 2 causes NFS and NFS-like
    # file systems to be marked as &amp;apos;Fixed Disks' as it has been in previous versions
    # of the ucd-snmp SNMP agent.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [long] :usage The usage information.
    def remove_storage_use_nfs(opts)
      check_params(opts,[:usage])
      super
    end

    ##
    # Removes the system location, system contact, and system name for the agent. This
    # information is reported in the &amp;apos;system' group in the mibII tree. Note: As
    # of v9.4.2, this method actually sets the system location and contact parameters and
    # the system services parameter back to the default. As has always been the case, this
    # method affects values only for the system information items you provide (non-empty/non-zero).
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::SystemInformation] :system_info The system information.
    def remove_system_information(opts)
      check_params(opts,[:system_info])
      super
    end

    ##
    # Removes the trap community string. Note: As of v9.4.2, this method actually sets
    # the trap community string back to the default.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :community The trap community string.
    def remove_trap_community(opts)
      check_params(opts,[:community])
      super
    end

    ##
    # Removes a list of trap sinks.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::SinkType] :sink_type The trap sink type.
    def remove_trap_sinks(opts)
      check_params(opts,[:sink_type])
      super
    end

    ##
    # Removes a list of named views.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::ViewInformation] :view_info The view information.
    def remove_view_info(opts)
      check_params(opts,[:view_info])
      super
    end

    ##
    # Creates access maps from group/securitymodel/security level to a view.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::AccessInformation] :access_info A list of access map definitions.
    def set_access_info(opts)
      check_params(opts,[:access_info])
      super
    end

    ##
    # Sets the agent group id. Change to this gid after opening port. The group id may
    # refer to a group by name or a number if the group number starts with a #.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :group_id The group id.
    def set_agent_group_id(opts)
      check_params(opts,[:group_id])
      super
    end

    ##
    # Sets the interface information for the agent. For interfaces where the agent fails
    # to guess correctly on the type and speed, this directive can supply additional information.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::AgentInterface] :agent_intf The agent interface information.
    def set_agent_interface(opts)
      check_params(opts,[:agent_intf])
      super
    end

    ##
    # Sets a list of agent listen addresses. This makes the agent listen on this list of
    # sockets instead of the default port, which is 161.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::AgentListenAddressPort] :agent_listen_addresses The agent listen information.
    def set_agent_listen_address(opts)
      check_params(opts,[:agent_listen_addresses])
      super
    end

    ##
    # Sets the agent trap enabled state.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The agent trap enabled state.
    def set_agent_trap_state(opts)
      check_params(opts,[:state])
      super
    end

    ##
    # Sets the agent user id. Change to this uid after opening port. The userid may refer
    # to a user by name or a number if the user number starts with &amp;apos;#'.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :user_id The agent user id.
    def set_agent_user_id(opts)
      check_params(opts,[:user_id])
      super
    end

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Sets the AgentX information.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::AgentXInformation] :agentx_info The AgentX information.
    def set_agentx_information(opts)
      check_params(opts,[:agentx_info])
      super
    end

    ##
    # Sets the authentication trap enabled state. Setting the trap state to Enabled, enables
    # the generation of authentication failure traps. The default value is Disabled.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The authentication trap enabled state.
    def set_auth_trap_state(opts)
      check_params(opts,[:state])
      super
    end

    ##
    # Creates a disk check instance. This is used to check the named disks mounted on path
    # for available disk space. If the disk space is less than minimum_space (kb or %),
    # the associated entry in the EXTENSIBLEDOTMIB.DISKMIBNUM.1.ERRORFLAG mib table will
    # be set to (1) and a descriptive error message will be returned to queries of EXTENSIBLEDOTMIB.DISKMIBNUM.1.ERRORMSG.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::DiskCheckInformation] :disk_info The disk information for the check.
    def set_check_disk(opts)
      check_params(opts,[:disk_info])
      super
    end

    ##
    # Adds a file check used to monitor file sizes and make sure they don't grow beyond
    # a certain size (in kilobytes).
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::FileCheckInformation] :file_info The file check information.
    def set_check_file(opts)
      check_params(opts,[:file_info])
      super
    end

    ##
    # Adds a load check used to check the load average of the machine and returns an error
    # flag (1), and a text-string error message to queries of EXTENSIBLEDOTMIB.LOADAVEMIBNUM.1.ERRORFLAG
    # and EXTENSIBLEDOTMIB.LOADAVEMIBNUM.1.ERRORMSG respectively when the 1-minute, 5-minute,
    # or 15-minute averages exceed the associated maximum values.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::LoadAverageInformation] :load_info The load check information.
    def set_check_load(opts)
      check_params(opts,[:load_info])
      super
    end

    ##
    # Creates a process check. A process check is used to check to see if the process_name's
    # processes are running on the agent's machine. An error flag(1) and a description
    # message are then passed to the EXTENSIBLEDOTMIB.PROCMIBNUM.1.ERRORFLAG and EXTENSIBLEDOTMIB.PROCMIBNUM.1.ERRORMSG
    # mib columns if the process_name'd program is not found on the process table as reported
    # by PSCMD.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::ProcessInformation] :proc_info The process check to add.
    def set_check_process(opts)
      check_params(opts,[:proc_info])
      super
    end

    ##
    # Creates a list of client access controls. These are stored in the /etc/hosts.allow
    # file.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::ClientAccess] :client_access_info The access control information.
    def set_client_access(opts)
      check_params(opts,[:client_access_info])
      super
    end

    ##
    # Creates mappings from a source/community pair to security names. The first source/community
    # combination that matches the incoming packet is selected.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::SecurityInformation] :security_info The security mapping information.
    def set_community_to_security_info(opts)
      check_params(opts,[:security_info])
      super
    end

    ##
    # Creates SNMPv3 users. Note: as of v9.4.2, doing this method without having done set_readonly_user
    # or set_readwrite_user first results in a valid (readonly) user rather than silently
    # creating an incomplete but unusable user. However, such behavior is not guaranteed;
    # please do one of the above methods before this method so as to define your new user
    # fully.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::UserInformation] :user_info The user information.
    def set_create_user(opts)
      check_params(opts,[:user_info])
      super
    end

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Creates a dynmically loadable module instance. If
    # the agent is built with support for the UCD-DLMOD-MIB it is cabable of loading agent
    # MIB modules dynamically at startup through the dlmod directive and during runtime
    # through the use of the UCD-DLMOD-MIB. The directive loads the shared object module
    # file path which uses the module name prefix.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::DynamicLoadableModule] :mod_info The module information.
    def set_dynamic_loadable_module(opts)
      check_params(opts,[:mod_info])
      super
    end

    ##
    # Sets the snmp engine identifier. The snmpd agent needs to be configured with an engine
    # id to be able to respond to SNMPv3 messages.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :engine_id The engine identifier.
    def set_engine_id(opts)
      check_params(opts,[:engine_id])
      super
    end

    ##
    # Creates a program instance, used to signal the agent to execute the named program
    # with the given arguments and returns the exit status and the first line of the STDOUT
    # output of the program to queries of the EXTENSIBLEDOTMIB.SHELLMIBNUM.mib_num.ERRORFLAG
    # and EXTENSIBLEDOTMIB.SHELLMIBNUM.mib_num.ERRORMSG mib columns. The mib_num.ERRORMSG
    # mib contains the entire STDOUT output, one mib table entry per line of output.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::MibnumNameProgArgs] :exec_info The program instance information.
    def set_exec(opts)
      check_params(opts,[:exec_info])
      super
    end

    ##
    # Sets an exec fix instance that registers a command that knows how to fix errors with
    # the given program.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::NameProgArgs] :exec_info The program information for the fix command.
    def set_exec_fix(opts)
      check_params(opts,[:exec_info])
      super
    end

    ##
    # This method is now deprecated. Use method set_generic_traps_v2 instead. Creates generic
    # traps that allows any type of trap destination to be specified with any version of
    # SNMP.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_generic_traps
      super
    end

    ##
    # Creates generic traps that allows any type of trap destination to be specified with
    # any version of SNMP.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_generic_traps_v2
      super
    end

    ##
    # Creates mappings from securitymodel/securityname to group.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::GroupInformation] :group_info The group mapping information.
    def set_group_info(opts)
      check_params(opts,[:group_info])
      super
    end

    ##
    # Adds disk devices to the ignore list. When scanning for available disk devices the
    # agent might block in trying to open all possible disk devices. This might lead to
    # a timeout wheen walking the device tree. Sometimes it will timeout every time you
    # try it. Adding a ignore disk directive will specify device names not to be checked
    # (i.e. opened).
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :ignore_disk List of disk devices to ignore
    def set_ignore_disk(opts)
      check_params(opts,[:ignore_disk])
      super
    end

    ##
    # Creates a list of pass through controls. This passes entire control of the mib oid
    # to the executing program.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::PassThroughInformation] :passthru_info The pass through information.
    def set_pass_through(opts)
      check_params(opts,[:passthru_info])
      super
    end

    ##
    # Creates a list of persist pass through controls. This passes entire control of the
    # mib oid to the executing program. This is similar to set_path_through(), but the
    # executing program continues to run after the initial request is answered.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::PassThroughInformation] :passthru_info The pass through information.
    def set_pass_through_persist(opts)
      check_params(opts,[:passthru_info])
      super
    end

    ##
    # Sets a process fix instance that registers a command that knows how to fix errors
    # with the given process.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::NameProgArgs] :fix_info The program information for the process fix.
    def set_process_fix(opts)
      check_params(opts,[:fix_info])
      super
    end

    ##
    # Creates a list of snmp proxies. This specifies that any incoming request under oid
    # should be proxied on to a remote host instead.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :proxy_info The proxy information.
    def set_proxy(opts)
      check_params(opts,[:proxy_info])
      super
    end

    ##
    # Creates read-only communities that can be used to access the agent. snmpd supports
    # the View-Based Access Control Model (vacm) as defined in RFC 2275.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::WrapperSecurityInformation] :ro_community_info The read-only community information.
    def set_readonly_community(opts)
      check_params(opts,[:ro_community_info])
      super
    end

    ##
    # Creates SNMPv3 USM read-only users in the VACM access configuration tables.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::WrapperUserInformation] :ro_user_info The read-only user information.
    def set_readonly_user(opts)
      check_params(opts,[:ro_user_info])
      super
    end

    ##
    # Creates read-write communities that can be used to access the agent. snmpd supports
    # the View-Based Access Control Model (vacm) as defined in RFC 2275.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::WrapperSecurityInformation] :rw_community_info The read-write community information.
    def set_readwrite_community(opts)
      check_params(opts,[:rw_community_info])
      super
    end

    ##
    # Creates SNMPv3 USM read-write users in the VACM access configuration tables.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::WrapperUserInformation] :rw_user_info The read-write user information.
    def set_readwrite_user(opts)
      check_params(opts,[:rw_user_info])
      super
    end

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Creates a SMUX based sub-agent, such as gated.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::SmuxSubAgentInformation] :subagent_info The sub-agent information.
    def set_smux_subagent(opts)
      check_params(opts,[:subagent_info])
      super
    end

    ##
    # This method is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. Adds a directive to indicate how file systems are
    # marked by SNMP. Setting this directive to 1 causes all NFS and NFS-like file systems
    # to be marked as &amp;apos;Network Disks' in the hrStorageTable. This is according
    # to RFC 2790. Not setting storageUseNFS or setting it to 2 causes NFS and NFS-like
    # file systems to be marked as &amp;apos;Fixed Disks' as it has been in previous versions
    # of the ucd-snmp SNMP agent.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [long] :usage The usage information.
    def set_storage_use_nfs(opts)
      check_params(opts,[:usage])
      super
    end

    ##
    # Sets the system location, system contact, and system name for the agent. This information
    # is reported in the &amp;apos;system' group in the mibII tree. As has always been
    # the case, this method sets values only for the system information items you provide
    # (non-empty/non-zero).
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::SystemInformation] :system_info The system information.
    def set_system_information(opts)
      check_params(opts,[:system_info])
      super
    end

    ##
    # Sets the trap community string. This defines the default community string to be used
    # when sending traps.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :community The community string.
    def set_trap_community(opts)
      check_params(opts,[:community])
      super
    end

    ##
    # Creates a list of trap sinks. This method create definitions for hosts to receive
    # traps (and/or inform notifications). The daemon sends a Cold Start trap when it starts
    # up. If enabled, it also sends traps on authentication failures.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::SinkType] :sink_type The trap sink type.
    def set_trap_sinks(opts)
      check_params(opts,[:sink_type])
      super
    end

    ##
    # Creates named views.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::SNMPConfiguration::ViewInformation] :view_info The view information.
    def set_view_info(opts)
      check_params(opts,[:view_info])
      super
    end

    ##
    # A struct that describes the mapping from group/securitymodel/security level to a
    # view.
    # @attr [String] access_name The name of the access map.
    # @attr [String] access_context The context for the mapping. For the v1 or v2c access model,			 access_context should be empty, which you must specify not as an			 empty string but using "" (two double quote characters, possibly			 escaped appropriately with backslashes as necessary), or			 else get an exception.
    # @attr [IControl::Management::SNMPConfiguration::ModelType] model The model type to use (any, v1, v2c, or usm).
    # @attr [IControl::Management::SNMPConfiguration::LevelType] level The Level to use (noauth, auth, or priv). For the v1 or v2c access model,		 level should be noauth.
    # @attr [IControl::Management::SNMPConfiguration::PrefixType] prefix Specifies how access_context should be matched against the context of		 the incoming pdu, either exact or prefix.
    # @attr [String] read_access The view to be used for read access.
    # @attr [String] write_access The view to be used for write access.
    # @attr [String] notify_access The view to be used for notify access.
    class AccessInformation < IControl::Base::Struct
      icontrol_attribute :access_name, String
      icontrol_attribute :access_context, String
      icontrol_attribute :model, IControl::Management::SNMPConfiguration::ModelType
      icontrol_attribute :level, IControl::Management::SNMPConfiguration::LevelType
      icontrol_attribute :prefix, IControl::Management::SNMPConfiguration::PrefixType
      icontrol_attribute :read_access, String
      icontrol_attribute :write_access, String
      icontrol_attribute :notify_access, String
    end

    ##
    # For interfaces where the agent fails to correctly guess the type and speed, this
    # directive can supply additional information.
    # @attr [String] intf_name The name of the interface.
    # @attr [String] intf_type The interface type as given in the IANAifType-MIB.
    # @attr [String] intf_speed the speed of the interface.
    class AgentInterface < IControl::Base::Struct
      icontrol_attribute :intf_name, String
      icontrol_attribute :intf_type, String
      icontrol_attribute :intf_speed, String
    end

    ##
    # Makes the agent listen on the specified list of sockets instead of the default port,
    # which is port 161.
    # @attr [IControl::Management::SNMPConfiguration::TransportType] transport The trasport type to use (udp or tcp).
    # @attr [IControl::Common::IPPortDefinition] ipport The address and port to use.
    class AgentListenAddressPort < IControl::Base::Struct
      icontrol_attribute :transport, IControl::Management::SNMPConfiguration::TransportType
      icontrol_attribute :ipport, IControl::Common::IPPortDefinition
    end

    ##
    # This type is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. A struct that describes AgentX information.
    # @attr [String] address The address the master agent listens at.
    # @attr [Numeric] timeout The timeout for an AgentX request, default is 1 second.
    # @attr [Numeric] retries The number of retries for an AgentX request, default is 5.
    class AgentXInformation < IControl::Base::Struct
      icontrol_attribute :address, String
      icontrol_attribute :timeout, Numeric
      icontrol_attribute :retries, Numeric
    end

    ##
    # A struct that describes a client access definition consisting of an address and netmask.
    # @attr [String] address The network address of the client.
    # @attr [String] netmask The netmask of the client.
    class ClientAccess < IControl::Base::Struct
      icontrol_attribute :address, String
      icontrol_attribute :netmask, String
    end

    ##
    # This struct is used to check the named disks mounted at disk_path for available disk
    # space. If the disk space is less than minimum_space (kb), the associated entry in
    # the EXTENSIBLEDOTMIB.DISKMIBNUM.1.ERRORFLAG mib table will be set to (1) and a descriptive
    # error message will be returned to queries of EXTENSIBLEDOTMIB.DISKMIBNUM.1.ERRORMSG.
    # @attr [String] disk_path The mounted path for disk checking.
    # @attr [IControl::Management::SNMPConfiguration::DiskCheckType] check_type The type of disk check to perform.
    # @attr [Numeric] minimum_space The minimum space to use as a check criteria.
    class DiskCheckInformation < IControl::Base::Struct
      icontrol_attribute :disk_path, String
      icontrol_attribute :check_type, IControl::Management::SNMPConfiguration::DiskCheckType
      icontrol_attribute :minimum_space, Numeric
    end

    ##
    # This type is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. If the agent is built with support for the UCD-DLMOD-MIB,
    # it is cabable of loading agent MIB modules dynamically at startup through the dlmod
    # directive and during runtime through the use of the UCD-DLMOD-MIB. The directive
    # loads the shared object module file path which uses the module name prefix.
    # @attr [String] module_name The module name prefix to dynamically load.
    # @attr [String] module_path The module path for the module_name prefix.
    class DynamicLoadableModule < IControl::Base::Struct
      icontrol_attribute :module_name, String
      icontrol_attribute :module_path, String
    end

    ##
    # Used to monitor file sizes and make sure they don't grow beyond a certain size (in
    # kilobytes).
    # @attr [String] file_name The file name to monitor for maximum size.
    # @attr [Numeric] maximum_size The maximum size of the file.
    class FileCheckInformation < IControl::Base::Struct
      icontrol_attribute :file_name, String
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
    # @attr [String] snmpcmd_args Commands to communicate with a network entity using SNMP requests.
    # @attr [String] sink_host The host address for which traps are sent.
    # @attr [String] sink_community The community name of the host to receive trap messages.
    class GenericSinkInformation < IControl::Base::Struct
      icontrol_attribute :snmpcmd_args, String
      icontrol_attribute :sink_host, String
      icontrol_attribute :sink_community, String
    end

    ##
    # This is a more generic trap configuration (trapsess directive) that allows any type
    # of trap destination to be specified with any version of SNMP. See the snmpcmd(1)
    # manual page for further details on the arguments that can be passed with snmpcmd_args.
    # In addition to the arguments listed there, the special argument -Ci specifies that
    # you want inform notifications to be used instead of unacknowledged traps (this requires
    # that you also specify a version number of v2c or v3 as well).
    # @attr [String] snmpcmd_args Commands to communicate with a network entity using SNMP requests.
    # @attr [String] sink_host The host address for which traps are sent.
    # @attr [Numeric] sink_port The SNMP trap port where traps are sent.
    class GenericSinkInformation2 < IControl::Base::Struct
      icontrol_attribute :snmpcmd_args, String
      icontrol_attribute :sink_host, String
      icontrol_attribute :sink_port, Numeric
    end

    ##
    # A struct that describes the mapping from securitymodel/securityname to a group.
    # @attr [String] group_name The name of the group.
    # @attr [IControl::Management::SNMPConfiguration::ModelType] model The security model that applies to this group.
    # @attr [String] security_name The security name that applies to this group.
    class GroupInformation < IControl::Base::Struct
      icontrol_attribute :group_name, String
      icontrol_attribute :model, IControl::Management::SNMPConfiguration::ModelType
      icontrol_attribute :security_name, String
    end

    ##
    # Used to check the load average of the machine and returns an error flag (1), and
    # a text-string error message to queries of EXTENSIBLEDOTMIB.LOADAVEMIBNUM.1.ERRORFLAG
    # and EXTENSIBLEDOTMIB.LOADAVEMIBNUM.1.ERRORMSG respectively when the 1-minute, 5-minute,
    # or 15-minute averages exceed the associated maximum values.
    # @attr [Numeric] max_1_minute_load The maximum 1-minute load average.
    # @attr [Numeric] max_5_minute_load The maximum 5-minute load average.
    # @attr [Numeric] max_15_minute_load The maximum 15-minute load average.
    class LoadAverageInformation < IControl::Base::Struct
      icontrol_attribute :max_1_minute_load, Numeric
      icontrol_attribute :max_5_minute_load, Numeric
      icontrol_attribute :max_15_minute_load, Numeric
    end

    ##
    # Used to signal the agent to execute the named program with the given arguments and
    # returns the exit status and the first line of the STDOUT output of the program to
    # queries of the EXTENSIBLEDOTMIB.SHELLMIBNUM.mib_num.ERRORFLAG and EXTENSIBLEDOTMIB.SHELLMIBNUM.mib_num.ERRORMSG
    # mib columns. The mib_num.ERRORMSG mib contains the entire STDOUT output, one mib
    # table entry per line of output.
    # @attr [String] mib_num The mib number index to use for program control
    # @attr [IControl::Management::SNMPConfiguration::NameProgArgs] name_prog_args The program definition.
    class MibnumNameProgArgs < IControl::Base::Struct
      icontrol_attribute :mib_num, String
      icontrol_attribute :name_prog_args, IControl::Management::SNMPConfiguration::NameProgArgs
    end

    ##
    # Used to signal the agent to execute the named program with the given arguments and
    # returns the exit status and the first line of the STDOUT output of the program to
    # queries of the EXTENSIBLEDOTMIB.SHELLMIBNUM.1.ERRORFLAG and EXTENSIBLEDOTMIB.SHELLMIBNUM.1.ERRORMSG
    # mib columns. All STDOUT output beyond the first line is silently truncated.
    # @attr [String] process_name The process name to query on the agent's machine.
    # @attr [String] program_name The named program to execute.
    # @attr [String] program_args The program's command line arguments.
    class NameProgArgs < IControl::Base::Struct
      icontrol_attribute :process_name, String
      icontrol_attribute :program_name, String
      icontrol_attribute :program_args, String
    end

    ##
    # A struct that describes the passing of entire control of mib_oid to the exec_name
    # program.
    # @attr [String] mib_oid The oid to pass to the given exec_name program.
    # @attr [String] exec_name The program name to pass the mib_oid to.
    class PassThroughInformation < IControl::Base::Struct
      icontrol_attribute :mib_oid, String
      icontrol_attribute :exec_name, String
    end

    ##
    # Used to check to see if the process_name'd processes are running on the agent's machine.
    # An error flag(1) and a description message are then passed to the EXTENSIBLEDOTMIB.PROCMIBNUM.1.ERRORFLAG
    # and EXTENSIBLEDOTMIB.PROCMIBNUM.1.ERRORMSG mib columns if the process_name's program
    # is not found on the process table as reported by PSCMD.
    # @attr [String] process_name The process name to query on the agent's machine.
    # @attr [Numeric] max The maximum number of process instances (0 maps to "infinity").
    # @attr [Numeric] min The minimum number of process instances.
    class ProcessInformation < IControl::Base::Struct
      icontrol_attribute :process_name, String
      icontrol_attribute :max, Numeric
      icontrol_attribute :min, Numeric
    end

    ##
    # A struct that describes an snmp proxy. It specifies that any incoming requests under
    # local_oid should be proxied on the remote_host instead.
    # @attr [String] snmpcmd_args Commands to communicate with a network entity using SNMP requests.
    # @attr [String] remote_host The address of the remote host.
    # @attr [String] local_oid The local oid to proxy.
    # @attr [String] remote_oid An optional remote oid to map the local oid from.
    class ProxyInformation < IControl::Base::Struct
      icontrol_attribute :snmpcmd_args, String
      icontrol_attribute :remote_host, String
      icontrol_attribute :local_oid, String
      icontrol_attribute :remote_oid, String
    end

    ##
    # A struct that describes the mapping from a source/community pair to a security name.
    # @attr [String] security_name The name of the security.
    # @attr [String] source The hostname, subnet, or the word "default".
    # @attr [String] community_name The community name that can be used to access the system.
    # @attr [Object] ipv6 The flag indicating whether to use IPv6 versions of SNMP directives		(com2sec6)
    class SecurityInformation < IControl::Base::Struct
      icontrol_attribute :security_name, String
      icontrol_attribute :source, String
      icontrol_attribute :community_name, String
      icontrol_attribute :ipv6, Object
    end

    ##
    # A struct that describes a trap destination.
    # @attr [String] sink_host The host address for which traps are sent.
    # @attr [String] sink_community The communtiy name of the host to receive trap messages.
    # @attr [Numeric] sink_port The service number on which traps are sent.
    class SinkInformation < IControl::Base::Struct
      icontrol_attribute :sink_host, String
      icontrol_attribute :sink_community, String
      icontrol_attribute :sink_port, Numeric
    end

    ##
    # This type is deprecated (immediately) and should not be used, in order to ensure
    # proper operation of the system. A struct that describes a smux sub agent.
    # @attr [String] oid The object identifier for the sub agent.
    # @attr [String] password The secret for communications with the sub agent.
    class SmuxSubAgentInformation < IControl::Base::Struct
      icontrol_attribute :oid, String
      icontrol_attribute :password, String
    end

    ##
    # A struct that describes information about the given system.
    # @attr [String] sys_name The system name for the agent.
    # @attr [String] sys_location A description of the machine which receives the system			contact information.
    # @attr [String] sys_contact The name and email address for the system contact using		 the following syntax: Name <email address>.
    # @attr [String] sys_description The system description.
    # @attr [String] sys_object_id The system object ID.
    # @attr [Numeric] sys_services The value for the system.sysServices.0 object. For a host,			a good value is 72.
    class SystemInformation < IControl::Base::Struct
      icontrol_attribute :sys_name, String
      icontrol_attribute :sys_location, String
      icontrol_attribute :sys_contact, String
      icontrol_attribute :sys_description, String
      icontrol_attribute :sys_object_id, String
      icontrol_attribute :sys_services, Numeric
    end

    ##
    # A struct that describes a user's security information.
    # @attr [String] user_name The name of the user.
    # @attr [IControl::Management::SNMPConfiguration::AuthType] auth_type The type of authentication to perform ( MD5 , or SHA).
    # @attr [String] auth_pass_phrase The authentication password.
    # @attr [IControl::Management::SNMPConfiguration::PrivacyProtocolType] priv_protocol The privacy protocol to use (DES).
    # @attr [String] priv_pass_phrase The privacy password.
    class UserInformation < IControl::Base::Struct
      icontrol_attribute :user_name, String
      icontrol_attribute :auth_type, IControl::Management::SNMPConfiguration::AuthType
      icontrol_attribute :auth_pass_phrase, String
      icontrol_attribute :priv_protocol, IControl::Management::SNMPConfiguration::PrivacyProtocolType
      icontrol_attribute :priv_pass_phrase, String
    end

    ##
    # A struct that describes a named view.
    # @attr [String] view_name The name of the view.
    # @attr [IControl::Management::SNMPConfiguration::ViewType] type The view type to use for this view (included or excluded).
    # @attr [String] subtree The mib subtree to apply to this view.
    # @attr [String] masks A list of hex octets, separated by '.' or ':'. Use "ff" for a default.
    class ViewInformation < IControl::Base::Struct
      icontrol_attribute :view_name, String
      icontrol_attribute :type, IControl::Management::SNMPConfiguration::ViewType
      icontrol_attribute :subtree, String
      icontrol_attribute :masks, String
    end

    ##
    # A struct that describes a set of security information.
    # @attr [String] community The community name that can be used to access the system.
    # @attr [String] source This can be a hostname, a subnet, or the word "default".
    # @attr [String] oid The object identifier token that restricts access for that	 community to everything below the given oid.
    # @attr [Object] ipv6 The flag indicating whether to use IPv6 versions of SNMP directives		(rocommunity6, rwcommunity6)
    class WrapperSecurityInformation < IControl::Base::Struct
      icontrol_attribute :community, String
      icontrol_attribute :source, String
      icontrol_attribute :oid, String
      icontrol_attribute :ipv6, Object
    end

    ##
    # A struct that describes a SNMPv3 USM user in the VACM access configuration tables.
    # @attr [String] user The name of the user.
    # @attr [IControl::Management::SNMPConfiguration::LevelType] level The user's level.
    # @attr [String] oid The object identifier restricts access for the user to everything below the given oid.
    class WrapperUserInformation < IControl::Base::Struct
      icontrol_attribute :user, String
      icontrol_attribute :level, IControl::Management::SNMPConfiguration::LevelType
      icontrol_attribute :oid, String
    end


    ## A sequence of AccessInformation structures.
    class AccessInformationSequence < IControl::Base::Sequence ; end
    ## A sequence of AgentListenAddressPort structures.
    class AgentListenAddressPortSequence < IControl::Base::Sequence ; end
    ## This type is deprecated (immediately) and should not be used, in order to ensure proper operation of the system.
    class AgentXInformationSequence < IControl::Base::Sequence ; end
    ## A sequence of ClientAccess structures.
    class ClientAccessSequence < IControl::Base::Sequence ; end
    ## A sequence of DiskCheckInformation structures.
    class DiskCheckInformationSequence < IControl::Base::Sequence ; end
    ## This type is deprecated (immediately) and should not be used, in order to ensure proper operation of the system.
    class DynamicLoadableModuleSequence < IControl::Base::Sequence ; end
    ## A sequence of FileCheckInformation structures.
    class FileCheckInformationSequence < IControl::Base::Sequence ; end
    ## A sequence of GenericSinkInformation2 structures.
    class GenericSinkInformation2Sequence < IControl::Base::Sequence ; end
    ## A sequence of GenericSinkInformation structures.
    class GenericSinkInformationSequence < IControl::Base::Sequence ; end
    ## A sequence of GroupInformation structures.
    class GroupInformationSequence < IControl::Base::Sequence ; end
    ## A sequence of LoadAverageInformation structures.
    class LoadAverageInformationSequence < IControl::Base::Sequence ; end
    ## A sequence of MibnumNameProgArgs structures.
    class MibnumNameProgArgsSequence < IControl::Base::Sequence ; end
    ## A sequence of NameProgArgs structures.
    class NameProgArgsSequence < IControl::Base::Sequence ; end
    ## A sequence of PassThroughInformation structures.
    class PassThroughInformationSequence < IControl::Base::Sequence ; end
    ## A sequence of ProcessInformation structures.
    class ProcessInformationSequence < IControl::Base::Sequence ; end
    ## A sequence of ProxyInformation structures.
    class ProxyInformationSequence < IControl::Base::Sequence ; end
    ## A sequence of SecurityInformation structures.
    class SecurityInformationSequence < IControl::Base::Sequence ; end
    ## A sequence of SinkInformation structures.
    class SinkInformationSequence < IControl::Base::Sequence ; end
    ## This type is deprecated (immediately) and should not be used, in order to ensure proper operation of the system.
    class SmuxSubAgentInformationSequence < IControl::Base::Sequence ; end
    ## A sequence of UserInformation structures.
    class UserInformationSequence < IControl::Base::Sequence ; end
    ## A sequence of ViewInformation structures.
    class ViewInformationSequence < IControl::Base::Sequence ; end
    ## A sequence of WrapperSecurityInformation structures.
    class WrapperSecurityInformationSequence < IControl::Base::Sequence ; end
    ## A sequence of WrapperUserInformation structures.
    class WrapperUserInformationSequence < IControl::Base::Sequence ; end
    # A list of snmp authentication types.
    class AuthType < IControl::Base::Enumeration
      # Use MD5 as the authentication type.
      AUTH_MD5 = :AUTH_MD5
      # Use SHA as the authentication type.
      AUTH_SHA = :AUTH_SHA
      # No authentication.
      AUTH_NONE = :AUTH_NONE
    end


    # The available disk check types.
    class DiskCheckType < IControl::Base::Enumeration
      # Use this value to specify disk checking to use			 disk size as a measurement.
      DISKCHECK_SIZE = :DISKCHECK_SIZE
      # Use this value to specify disk checking to use			 disk percent as a measurement.
      DISKCHECK_PERCENT = :DISKCHECK_PERCENT
    end


    # A list of snmp level types.
    class LevelType < IControl::Base::Enumeration
      # No authentication is performed.
      LEVEL_NOAUTH = :LEVEL_NOAUTH
      # Authentication is performed.
      LEVEL_AUTH = :LEVEL_AUTH
      # Use a privacy protocol. The only privacy protocol		 currently supported is DES.
      LEVEL_PRIV = :LEVEL_PRIV
    end


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


    # A list of snmp prefix types.
    class PrefixType < IControl::Base::Enumeration
      # A context will be matched exactly.
      PREFIX_EXACT = :PREFIX_EXACT
      # A context will be matched by prefix.
      PREFIX_PREFIX = :PREFIX_PREFIX
    end


    # A list of snmp privacy protocol types.
    class PrivacyProtocolType < IControl::Base::Enumeration
      # The only privacy protocol currently supported is DES.
      PRIV_PROTOCOL_DES = :PRIV_PROTOCOL_DES
      # No privacy protocol is used.
      PRIV_PROTOCOL_NONE = :PRIV_PROTOCOL_NONE
    end


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


    # A list of snmp view types.
    class ViewType < IControl::Base::Enumeration
      # The view type is included.
      VIEW_INCLUDED = :VIEW_INCLUDED
      # The view type is excluded.
      VIEW_EXCLUDED = :VIEW_EXCLUDED
    end


  end
end
