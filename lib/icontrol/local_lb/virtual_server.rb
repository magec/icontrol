module IControl::LocalLB
  ##
  # The VirtualServer interface enables you to work with the states, statistics, limits,
  # availability, and settings of a local load balancer's virtual servers. For example,
  # you can use the Virtual Server interface to create a virtual server from a specified
  # pool or rule or to delete a virtual server from a specified pool.
  class VirtualServer < IControl::Base

    set_id_name "virtual_servers"

    class VirtualServerAuthentication < IControl::Base::Struct; end
    class VirtualServerClonePool < IControl::Base::Struct; end
    class VirtualServerHttpClass < IControl::Base::Struct; end
    class VirtualServerModuleScore < IControl::Base::Struct; end
    class VirtualServerPersistence < IControl::Base::Struct; end
    class VirtualServerProfile < IControl::Base::Struct; end
    class VirtualServerProfileAttribute < IControl::Base::Struct; end
    class VirtualServerResource < IControl::Base::Struct; end
    class VirtualServerRule < IControl::Base::Struct; end
    class VirtualServerStatisticEntry < IControl::Base::Struct; end
    class VirtualServerStatistics < IControl::Base::Struct; end
    class VirtualServerAuthenticationSequence < IControl::Base::Sequence ; end
    class VirtualServerAuthenticationSequenceSequence < IControl::Base::SequenceSequence ; end
    class VirtualServerCMPEnableModeSequence < IControl::Base::Sequence ; end
    class VirtualServerClonePoolSequence < IControl::Base::Sequence ; end
    class VirtualServerClonePoolSequenceSequence < IControl::Base::SequenceSequence ; end
    class VirtualServerHttpClassSequence < IControl::Base::Sequence ; end
    class VirtualServerHttpClassSequenceSequence < IControl::Base::SequenceSequence ; end
    class VirtualServerModuleScoreSequence < IControl::Base::Sequence ; end
    class VirtualServerModuleScoreSequenceSequence < IControl::Base::SequenceSequence ; end
    class VirtualServerPersistenceSequence < IControl::Base::Sequence ; end
    class VirtualServerPersistenceSequenceSequence < IControl::Base::SequenceSequence ; end
    class VirtualServerProfileAttributeSequence < IControl::Base::Sequence ; end
    class VirtualServerProfileAttributeSequenceSequence < IControl::Base::SequenceSequence ; end
    class VirtualServerProfileSequence < IControl::Base::Sequence ; end
    class VirtualServerProfileSequenceSequence < IControl::Base::SequenceSequence ; end
    class VirtualServerResourceSequence < IControl::Base::Sequence ; end
    class VirtualServerRuleSequence < IControl::Base::Sequence ; end
    class VirtualServerRuleSequenceSequence < IControl::Base::SequenceSequence ; end
    class VirtualServerStatisticEntrySequence < IControl::Base::Sequence ; end
    class VirtualServerTypeSequence < IControl::Base::Sequence ; end
    # A list of CMP enable modes.
    class VirtualServerCMPEnableMode < IControl::Base::Enumeration; end
    # A list of virtual server types.
    class VirtualServerType < IControl::Base::Enumeration; end    ##
    # Adds/associates authentication profiles to this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::VirtualServer::VirtualServerAuthentication[]] :profiles The authentication profiles to add to the virtual servers.
    def add_authentication_profile(opts)
      check_params(opts,[:profiles])
      super
    end

    ##
    # Adds/associates clone pools to this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::VirtualServer::VirtualServerClonePool[]] :clone_pools The clone pools to add to the virtual servers.
    def add_clone_pool(opts)
      check_params(opts,[:clone_pools])
      super
    end

    ##
    # Adds/associates HTTP class profiles to this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::VirtualServer::VirtualServerHttpClass[]] :profiles The HTTP class profiles to add to the virtual servers.
    def add_httpclass_profile(opts)
      check_params(opts,[:profiles])
      super
    end

    ##
    # Adds/associates persistence profiles to this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::VirtualServer::VirtualServerPersistence[]] :profiles The persistence profiles to add to the virtual servers.
    def add_persistence_profile(opts)
      check_params(opts,[:profiles])
      super
    end

    ##
    # Adds/associates profiles to this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::VirtualServer::VirtualServerProfile[]] :profiles The profiles to add to the virtual servers.
    def add_profile(opts)
      check_params(opts,[:profiles])
      super
    end

    ##
    # Adds/associates rules to this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::VirtualServer::VirtualServerRule[]] :rules The rules to add to the virtual servers.
    def add_rule(opts)
      check_params(opts,[:rules])
      super
    end

    ##
    # Creates or updates virtual server from this resources. Takes additional, optional
    # parameters that enable you to override the default optional values.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::VirtualServerDefinition] :definitions The virtual server definitions, address, port, and protocols the virtual servers will be using,		 for protocol, only IP (which includes both TCP and UDP), TCP or UDP are supported.
    # @option opts [String] :wildmasks The network masks used to look up the specified virtual servers.
    # @option opts [IControl::LocalLB::VirtualServer::VirtualServerResource] :resources The resources associated with the virtual servers.
    # @option opts [IControl::LocalLB::VirtualServer::VirtualServerProfile[]] :profiles The profiles to associate with the virtual servers.
    def create(opts)
      check_params(opts,[:definitions,:wildmasks,:resources,:profiles])
      super
    end

    ##
    # Deletes all virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_virtual_servers
      super
    end

    ##
    # Deletes the persistence records based on this persistent modes for this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::PersistenceMode] :persistence_modes The persistence modes from which we delete the persistence records.			 If the specified persistence mode is PERSIST_MODE_NONE, then all persistence			 records regardless of persistence mode will be deleted for that virtual server.
    def delete_persistence_record(opts)
      check_params(opts,[:persistence_modes])
      super
    end

    ##
    # Deletes this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_virtual_server
      super
    end

    ##
    # Gets the actual hardware acceleration modes for this virtual server.
    # @rspec_example
    # @return [HardwareAccelerationMode]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def actual_hardware_acceleration
      super
    end

    ##
    # Gets the statistics for all the virtual server.
    # @rspec_example
    # @return [VirtualServerStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the lists of authentication profiles this virtual server are associated with.
    # @rspec_example
    # @return [VirtualServerAuthentication[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def authentication_profile
      super
    end

    ##
    # Gets the lists of clone pools this virtual server are associated with.
    # @rspec_example
    # @return [VirtualServerClonePool[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def clone_pool
      super
    end

    ##
    # Gets the CMP enable modes from this virtual server. This is read-only, as the modes
    # are set according to the system and configuration, and influenced by the desired
    # CMP enabled state.
    # @rspec_example
    # @return [VirtualServerCMPEnableMode]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def cmp_enable_mode
      super
    end

    ##
    # Gets the CMP enabled states for this virtual server. Enables or disables CMP. Note
    # that this setting can influence the CMP enable mode set automatically by the system
    # and configuration. You can not always enable CMP, but you can always disable it.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def cmp_enabled_state
      super
    end

    ##
    # Gets the connection limits for this virtual server.
    # @rspec_example
    # @return [ULong64]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def connection_limit
      super
    end

    ##
    # Gets the mirror connection states for this virtual server.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def connection_mirror_state
      super
    end

    ##
    # Gets the default pool names for this virtual server.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def default_pool_name
      super
    end

    ##
    # Gets the destination IP and port of this virtual server.
    # @rspec_example
    # @return [IPPortDefinition]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def destination
      super
    end

    ##
    # Gets the enabled state of this virtual server.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def enabled_state
      super
    end

    ##
    # Gets the persistence profiles to use for fallback persistence for this virtual server.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def fallback_persistence_profile
      super
    end

    ##
    # Returns the gtm scores for this virtual server.
    # @rspec_example
    # @return [ULong64]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def gtm_score
      super
    end

    ##
    # Gets the lists of HTTP class profiles this virtual server are associated with. If
    # a specified virtual server is not associated with any HTTP class profile, then the
    # list of HTTP class profiles for that virtual server will be empty.
    # @rspec_example
    # @return [VirtualServerHttpClass[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def httpclass_profile
      super
    end

    ##
    # Gets the last hop pools for this virtual server.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def last_hop_pool
      super
    end

    ##
    # Gets a list of virtual server.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Returns the module scores for this virtual server.
    # @rspec_example
    # @return [VirtualServerModuleScore[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def module_score
      super
    end

    ##
    # Gets the status of each of this virtual server.
    # @rspec_example
    # @return [ObjectStatus]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def object_status
      super
    end

    ##
    # Gets the lists of persistence profiles this virtual server are associated with.
    # @rspec_example
    # @return [VirtualServerPersistence[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def persistence_profile
      super
    end

    ##
    # Gets the persistence records based on this persistent modes for this virtual server.
    # @rspec_example
    # @return [PersistenceRecord[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::PersistenceMode] :persistence_modes The persistence modes from which we retrieve the persistence records.			 If the specified persistence mode is PERSIST_MODE_NONE, then all persistence			 records regardless of persistence mode will be returned for that virtual server.
    def persistence_record(opts)
      check_params(opts,[:persistence_modes])
      super
    end

    ##
    # Gets the lists of profiles this virtual server are associated with.
    # @rspec_example
    # @return [VirtualServerProfileAttribute[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def profile
      super
    end

    ##
    # Gets the protocols supported by this virtual server.
    # @rspec_example
    # @return [ProtocolType]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def protocol
      super
    end

    ##
    # Gets the rate classes that will be used to rate limit the traffic.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def rate_class
      super
    end

    ##
    # Gets the lists of rules this virtual server are associated with. If a specified virtual
    # server is not associated with any rule, then the list of rules for that virtual server
    # will be empty.
    # @rspec_example
    # @return [VirtualServerRule[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def rule
      super
    end

    ##
    # Gets the SNAT pools to be used in iSNAT configurations for this virtual server.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def snat_pool
      super
    end

    ##
    # Gets the SNAT type for this virtual server.
    # @rspec_example
    # @return [SnatType]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def snat_type
      super
    end

    ##
    # Gets the source port behavior for this virtual server.
    # @rspec_example
    # @return [SourcePortBehavior]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def source_port_behavior
      super
    end

    ##
    # Gets the statistics for this virtual server.
    # @rspec_example
    # @return [VirtualServerStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Gets the address translation states for this virtual server. Enables or disables
    # address translation.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def translate_address_state
      super
    end

    ##
    # Gets the port translation states for this virtual server. Enables or disables port
    # translation.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def translate_port_state
      super
    end

    ##
    # Gets the types of this virtual server.
    # @rspec_example
    # @return [VirtualServerType]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def type
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
    # Gets the lists of VLANs on which access to this Virtual Servers are enabled/disabled.
    # @rspec_example
    # @return [VLANFilterList]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def vlan
      super
    end

    ##
    # Gets the wildmasks for this virtual server.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def wildmask
      super
    end

    ##
    # Removes all authentication profiles from this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_authentication_profiles
      super
    end

    ##
    # Removes all clone pools from this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_clone_pools
      super
    end

    ##
    # Removes all HTTP class profiles from this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_httpclass_profiles
      super
    end

    ##
    # Removes all persistence profiles from this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_persistence_profiles
      super
    end

    ##
    # Removes all profiles from this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_profiles
      super
    end

    ##
    # Removes all rules from this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_rules
      super
    end

    ##
    # Removes authentication profiles from this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::VirtualServer::VirtualServerAuthentication[]] :profiles The authentication profiles to remove from the virtual servers.
    def remove_authentication_profile(opts)
      check_params(opts,[:profiles])
      super
    end

    ##
    # Removes clone pools from this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::VirtualServer::VirtualServerClonePool[]] :clone_pools The clone pools to remove from the virtual servers.
    def remove_clone_pool(opts)
      check_params(opts,[:clone_pools])
      super
    end

    ##
    # Removes HTTP class profiles from this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::VirtualServer::VirtualServerHttpClass[]] :profiles The HTTP class profiles to remove from the virtual servers.
    def remove_httpclass_profile(opts)
      check_params(opts,[:profiles])
      super
    end

    ##
    # Removes persistence profiles from this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::VirtualServer::VirtualServerPersistence[]] :profiles The persistence profiles to remove from the virtual servers.
    def remove_persistence_profile(opts)
      check_params(opts,[:profiles])
      super
    end

    ##
    # Removes profiles from this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::VirtualServer::VirtualServerProfile[]] :profiles The profiles to remove from the virtual servers.
    def remove_profile(opts)
      check_params(opts,[:profiles])
      super
    end

    ##
    # Removes rules from this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::VirtualServer::VirtualServerRule[]] :rules The rules to remove from the virtual servers.
    def remove_rule(opts)
      check_params(opts,[:rules])
      super
    end

    ##
    # Resets the statistics for this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the CMP enabled states for this virtual server. Enables or disables CMP. Note
    # that this setting can influence the CMP enable mode set automatically by the system
    # and configuration. You can not always enable CMP, but you can always disable it.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The CMP enabled states to apply.
    def set_cmp_enabled_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the connection limits of this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::ULong64] :limits The connection limits to set.
    def set_connection_limit(opts)
      check_params(opts,[:limits])
      super
    end

    ##
    # Sets the mirror connection states for this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The mirror connection states for the specified virtual servers.
    def set_connection_mirror_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the default pool names for this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :default_pools The default pool names for the specified virtual servers.
    def set_default_pool_name(opts)
      check_params(opts,[:default_pools])
      super
    end

    ##
    # Sets the destination IP and port for this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::IPPortDefinition] :destinations The destinations to set.
    def set_destination(opts)
      check_params(opts,[:destinations])
      super
    end

    ##
    # Sets the enabled state of this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The enabled states to set.
    def set_enabled_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the persistence profiles to use for fallback persistence for this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :profile_names The persistence profiles to use for fallback persistence for the specified virtual servers.
    def set_fallback_persistence_profile(opts)
      check_params(opts,[:profile_names])
      super
    end

    ##
    # Sets the gtm score for this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::ULong64] :scores The GTM score value to set
    def set_gtm_score(opts)
      check_params(opts,[:scores])
      super
    end

    ##
    # Sets the last hop pools for this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :last_hop_pools The last hop pools of the specified virtual servers. Empty strings remove the last hop pools from the specified virtual servers.
    def set_last_hop_pool(opts)
      check_params(opts,[:last_hop_pools])
      super
    end

    ##
    # Sets the protocols supported by this virtual server, one of IP, TCP or UDP.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::ProtocolType] :protocols The protocols to set.
    def set_protocol(opts)
      check_params(opts,[:protocols])
      super
    end

    ##
    # Sets the rate classes that will be used to rate limit the traffic.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :rate_classes The rate classes used to rate limit the traffic.
    def set_rate_class(opts)
      check_params(opts,[:rate_classes])
      super
    end

    ##
    # Sets the SNAT automap state for this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_snat_automap
      super
    end

    ##
    # Sets the state to use no SNATs for this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_snat_none
      super
    end

    ##
    # Sets the SNAT pools to be used in iSNAT configurations for this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :snatpools The SNAT pools of the specified virtual servers.
    def set_snat_pool(opts)
      check_params(opts,[:snatpools])
      super
    end

    ##
    # Sets the source port behavior for this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::SourcePortBehavior] :source_port_behaviors The source port behaviors to set.
    def set_source_port_behavior(opts)
      check_params(opts,[:source_port_behaviors])
      super
    end

    ##
    # Sets the address translation states for this virtual server. Enables or disables
    # address translation.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The address translation states to apply.
    def set_translate_address_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the port translation states for this virtual server. Enables or disables port
    # translation.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The port translation states to apply.
    def set_translate_port_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the types for this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::VirtualServer::VirtualServerType] :types The types to set.
    def set_type(opts)
      check_params(opts,[:types])
      super
    end

    ##
    # Sets VLANs to the list of VLANs on which access to this Virtual Servers are enabled/disabled.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::VLANFilterList] :vlans The VLAN names to add to the list of enabled/disabled VLANs .
    def set_vlan(opts)
      check_params(opts,[:vlans])
      super
    end

    ##
    # Sets the wildmasks for this virtual server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :wildmasks The wildmasks for the specified virtual servers.
    def set_wildmask(opts)
      check_params(opts,[:wildmasks])
      super
    end

    ##
    # A struct that describes the virtual server's authentication profile and its attributes.
    # @attr [String] profile_name The authentication profile name.
    # @attr [Numeric] priority The priority of this authentication profile. Reserved for future use.
    class VirtualServerAuthentication < IControl::Base::Struct
      icontrol_attribute :profile_name, String
      icontrol_attribute :priority, Numeric
    end

    ##
    # A struct that describes the virtual server's pool and its attributes.
    # @attr [String] pool_name The pool name.
    # @attr [IControl::LocalLB::ClonePoolType] type The type of clone pool.
    class VirtualServerClonePool < IControl::Base::Struct
      icontrol_attribute :pool_name, String
      icontrol_attribute :type, IControl::LocalLB::ClonePoolType
    end

    ##
    # A struct that describes the virtual server's HTTP class profile name and its priority.
    # @attr [String] profile_name The HTTP class profile name.
    # @attr [Numeric] priority The priority value of this profile, used to indicate the order of profile evaluation.
    class VirtualServerHttpClass < IControl::Base::Struct
      icontrol_attribute :profile_name, String
      icontrol_attribute :priority, Numeric
    end

    ##
    # A struct that describes a virtual server's module score.
    # @attr [IControl::Common::TMOSModule] tmos_module The TMOS module.
    # @attr [Numeric] score The score for the module.
    class VirtualServerModuleScore < IControl::Base::Struct
      icontrol_attribute :tmos_module, IControl::Common::TMOSModule
      icontrol_attribute :score, Numeric
    end

    ##
    # A struct that describes the virtual server's persistence profile and its attributes.
    # @attr [String] profile_name The persistence profile name.
    # @attr [Object] default_profile The flag indicating whether this is the default persist profile			 to be used if a rule does not select a persist type.
    class VirtualServerPersistence < IControl::Base::Struct
      icontrol_attribute :profile_name, String
      icontrol_attribute :default_profile, Object
    end

    ##
    # A struct that describes the profile name and its profile context.
    # @attr [IControl::LocalLB::ProfileContextType] profile_context This is used to determine which side of the proxy a protocol			 type profile (specifically TCP/UDP) is applied to.
    # @attr [String] profile_name The profile name.
    class VirtualServerProfile < IControl::Base::Struct
      icontrol_attribute :profile_context, IControl::LocalLB::ProfileContextType
      icontrol_attribute :profile_name, String
    end

    ##
    # A struct that describes the profile name, profile type, and profile context.
    # @attr [IControl::LocalLB::ProfileType] profile_type The profile type.
    # @attr [IControl::LocalLB::ProfileContextType] profile_context This is used to determine which side of the proxy a protocol			 type profile (specifically TCP/UDP) is applied to.
    # @attr [String] profile_name The profile name.
    class VirtualServerProfileAttribute < IControl::Base::Struct
      icontrol_attribute :profile_type, IControl::LocalLB::ProfileType
      icontrol_attribute :profile_context, IControl::LocalLB::ProfileContextType
      icontrol_attribute :profile_name, String
    end

    ##
    # A struct that describes the virtual server's resource type and resources.
    # @attr [IControl::LocalLB::VirtualServer::VirtualServerType] type The resource type.
    # @attr [String] default_pool_name The optional default pool name.			 If the virtual server type is a forwarding type, this field should be empty.
    class VirtualServerResource < IControl::Base::Struct
      icontrol_attribute :type, IControl::LocalLB::VirtualServer::VirtualServerType
      icontrol_attribute :default_pool_name, String
    end

    ##
    # A struct that describes the virtual server's rule and its attributes.
    # @attr [String] rule_name The rule name.
    # @attr [Numeric] priority The priority value of this rule, used to indicate the order of rule evaluation.
    class VirtualServerRule < IControl::Base::Struct
      icontrol_attribute :rule_name, String
      icontrol_attribute :priority, Numeric
    end

    ##
    # A struct that describes a virtual server and its statistics.
    # @attr [IControl::Common::VirtualServerDefinition] virtual_server The virtual server definition.
    # @attr [IControl::Common::StatisticSequence] statistics The statistics of the virtual server.
    class VirtualServerStatisticEntry < IControl::Base::Struct
      icontrol_attribute :virtual_server, IControl::Common::VirtualServerDefinition
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes virtual server statistics and timestamp.
    # @attr [IControl::LocalLB::VirtualServer::VirtualServerStatisticEntrySequence] statistics The statistics for a sequence of virtual servers.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class VirtualServerStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::VirtualServer::VirtualServerStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of virtual server authentication profiles.
    class VirtualServerAuthenticationSequence < IControl::Base::Sequence ; end
    ## An alias of sequence of virtual server authentication profiles.
    class VirtualServerAuthenticationSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of virtual server CMPEnableMode items.
    class VirtualServerCMPEnableModeSequence < IControl::Base::Sequence ; end
    ## A sequence of clone pool names.
    class VirtualServerClonePoolSequence < IControl::Base::Sequence ; end
    ## An alias of sequence of clone pool names.
    class VirtualServerClonePoolSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of profile types and names.
    class VirtualServerHttpClassSequence < IControl::Base::Sequence ; end
    ## An alias of sequence of profile types and names.
    class VirtualServerHttpClassSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of virtual server module scores.
    class VirtualServerModuleScoreSequence < IControl::Base::Sequence ; end
    ## An alias of sequence of virtual module scores.
    class VirtualServerModuleScoreSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of virtual persistence profiles.
    class VirtualServerPersistenceSequence < IControl::Base::Sequence ; end
    ## An alias of sequence of virtual persistence profiles.
    class VirtualServerPersistenceSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of profile types and names.
    class VirtualServerProfileAttributeSequence < IControl::Base::Sequence ; end
    ## An alias of sequence of profile types, contexts, and names.
    class VirtualServerProfileAttributeSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of profile types and names.
    class VirtualServerProfileSequence < IControl::Base::Sequence ; end
    ## An alias of sequence of profile types and names.
    class VirtualServerProfileSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of virtual server resource types and names.
    class VirtualServerResourceSequence < IControl::Base::Sequence ; end
    ## A sequence of rule names.
    class VirtualServerRuleSequence < IControl::Base::Sequence ; end
    ## An alias of sequence of rule names.
    class VirtualServerRuleSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of virtual server statistics.
    class VirtualServerStatisticEntrySequence < IControl::Base::Sequence ; end
    ## A sequence of virtual server types.
    class VirtualServerTypeSequence < IControl::Base::Sequence ; end
    # A list of CMP enable modes.
    class VirtualServerCMPEnableMode < IControl::Base::Enumeration
      # The virtual server is enabled on all processing cores.
      RESOURCE_TYPE_CMP_ENABLE_ALL = :RESOURCE_TYPE_CMP_ENABLE_ALL
      # The virtual server is enabled on a single processing core.
      RESOURCE_TYPE_CMP_ENABLE_SINGLE = :RESOURCE_TYPE_CMP_ENABLE_SINGLE
      # The virtual server is enabled on a group of processing cores.
      RESOURCE_TYPE_CMP_ENABLE_GROUP = :RESOURCE_TYPE_CMP_ENABLE_GROUP
      #
      RESOURCE_TYPE_CMP_ENABLE_UNKNOWN = :RESOURCE_TYPE_CMP_ENABLE_UNKNOWN
    end


    # A list of virtual server types.
    class VirtualServerType < IControl::Base::Enumeration
      # The virtual server is based on a pool.
      RESOURCE_TYPE_POOL = :RESOURCE_TYPE_POOL
      # The virtual server only supports IP forwarding. There is no load balancing on this type of virtual server.
      RESOURCE_TYPE_IP_FORWARDING = :RESOURCE_TYPE_IP_FORWARDING
      # The virtual server only supports L2 forwarding. There is no load balancing on this type of virtual server.
      RESOURCE_TYPE_L2_FORWARDING = :RESOURCE_TYPE_L2_FORWARDING
      # All connections going to this virtual server will be rejected, and resets will be sent.
      RESOURCE_TYPE_REJECT = :RESOURCE_TYPE_REJECT
      # The virtual server is based on the Fast L4 profile.
      RESOURCE_TYPE_FAST_L4 = :RESOURCE_TYPE_FAST_L4
      # The virtual server is based on the Fast HTTP profile.
      RESOURCE_TYPE_FAST_HTTP = :RESOURCE_TYPE_FAST_HTTP
    end


  end
end
