module IControl::LocalLB
  ##
  # The VirtualServer interface enables you to work with the states, statistics, limits,
  # availability, and settings of a local load balancer's virtual servers. For example,
  # you can use the Virtual Server interface to create a virtual server from a specified
  # pool or rule or to delete a virtual server from a specified pool.
  class VirtualServer < IControl::Base
    class VirtualServerCMPEnableMode < IControl::Base::Enumeration; end
    class VirtualServerType < IControl::Base::Enumeration; end
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
    class VirtualServerStatistics < IControl::Base::Struct; end    ## A sequence of virtual server authentication profiles.
    class VirtualServerAuthenticationSequence < IControl::Base::Sequence ; end## An alias of sequence of virtual server authentication profiles.
    class VirtualServerAuthenticationSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of virtual server CMPEnableMode items.
    class VirtualServerCMPEnableModeSequence < IControl::Base::Sequence ; end## A sequence of clone pool names.
    class VirtualServerClonePoolSequence < IControl::Base::Sequence ; end## An alias of sequence of clone pool names.
    class VirtualServerClonePoolSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of profile types and names.
    class VirtualServerHttpClassSequence < IControl::Base::Sequence ; end## An alias of sequence of profile types and names.
    class VirtualServerHttpClassSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of virtual server module scores.
    class VirtualServerModuleScoreSequence < IControl::Base::Sequence ; end## An alias of sequence of virtual module scores.
    class VirtualServerModuleScoreSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of virtual persistence profiles.
    class VirtualServerPersistenceSequence < IControl::Base::Sequence ; end## An alias of sequence of virtual persistence profiles.
    class VirtualServerPersistenceSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of profile types and names.
    class VirtualServerProfileAttributeSequence < IControl::Base::Sequence ; end## An alias of sequence of profile types, contexts, and names.
    class VirtualServerProfileAttributeSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of profile types and names.
    class VirtualServerProfileSequence < IControl::Base::Sequence ; end## An alias of sequence of profile types and names.
    class VirtualServerProfileSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of virtual server resource types and names.
    class VirtualServerResourceSequence < IControl::Base::Sequence ; end## A sequence of rule names.
    class VirtualServerRuleSequence < IControl::Base::Sequence ; end## An alias of sequence of rule names.
    class VirtualServerRuleSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of virtual server statistics.
    class VirtualServerStatisticEntrySequence < IControl::Base::Sequence ; end## A sequence of virtual server types.
    class VirtualServerTypeSequence < IControl::Base::Sequence ; end##
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

    ##
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

    ##
    # A struct that describes the virtual server's authentication profile and its attributes.
    class VirtualServerAuthentication < IControl::Base::Struct
      # The authentication profile name.
      icontrol_attribute :profile_name, String
      # The priority of this authentication profile. Reserved for future use.
      icontrol_attribute :priority, Numeric
    end

    ##
    # A struct that describes the virtual server's pool and its attributes.
    class VirtualServerClonePool < IControl::Base::Struct
      # The pool name.
      icontrol_attribute :pool_name, String
      # The type of clone pool.
      icontrol_attribute :type, IControl::LocalLB::ClonePoolType
    end

    ##
    # A struct that describes the virtual server's HTTP class profile name and its priority.
    class VirtualServerHttpClass < IControl::Base::Struct
      # The HTTP class profile name.
      icontrol_attribute :profile_name, String
      # The priority value of this profile, used to indicate the order of profile evaluation.
      icontrol_attribute :priority, Numeric
    end

    ##
    # A struct that describes a virtual server's module score.
    class VirtualServerModuleScore < IControl::Base::Struct
      # The TMOS module.
      icontrol_attribute :tmos_module, IControl::Common::TMOSModule
      # The score for the module.
      icontrol_attribute :score, Numeric
    end

    ##
    # A struct that describes the virtual server's persistence profile and its attributes.
    class VirtualServerPersistence < IControl::Base::Struct
      # The persistence profile name.
      icontrol_attribute :profile_name, String
      # The flag indicating whether this is the default persist profile			 to be used if
      # a rule does not select a persist type.
      icontrol_attribute :default_profile, Object
    end

    ##
    # A struct that describes the profile name and its profile context.
    class VirtualServerProfile < IControl::Base::Struct
      # This is used to determine which side of the proxy a protocol			 type profile (specifically
      # TCP/UDP) is applied to.
      icontrol_attribute :profile_context, IControl::LocalLB::ProfileContextType
      # The profile name.
      icontrol_attribute :profile_name, String
    end

    ##
    # A struct that describes the profile name, profile type, and profile context.
    class VirtualServerProfileAttribute < IControl::Base::Struct
      # The profile type.
      icontrol_attribute :profile_type, IControl::LocalLB::ProfileType
      # This is used to determine which side of the proxy a protocol			 type profile (specifically
      # TCP/UDP) is applied to.
      icontrol_attribute :profile_context, IControl::LocalLB::ProfileContextType
      # The profile name.
      icontrol_attribute :profile_name, String
    end

    ##
    # A struct that describes the virtual server's resource type and resources.
    class VirtualServerResource < IControl::Base::Struct
      # The resource type.
      icontrol_attribute :type, IControl::LocalLB::VirtualServer::VirtualServerType
      # The optional default pool name.			 If the virtual server type is a forwarding type,
      # this field should be empty.
      icontrol_attribute :default_pool_name, String
    end

    ##
    # A struct that describes the virtual server's rule and its attributes.
    class VirtualServerRule < IControl::Base::Struct
      # The rule name.
      icontrol_attribute :rule_name, String
      # The priority value of this rule, used to indicate the order of rule evaluation.
      icontrol_attribute :priority, Numeric
    end

    ##
    # A struct that describes a virtual server and its statistics.
    class VirtualServerStatisticEntry < IControl::Base::Struct
      # The virtual server definition.
      icontrol_attribute :virtual_server, IControl::Common::VirtualServerDefinition
      # The statistics of the virtual server.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes virtual server statistics and timestamp.
    class VirtualServerStatistics < IControl::Base::Struct
      # The statistics for a sequence of virtual servers.
      icontrol_attribute :statistics, IControl::LocalLB::VirtualServer::VirtualServerStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Adds/associates authentication profiles to the specified virtual servers.
    # :method: add_authentication_profile
    # :call-seq:
    # add_authentication_profile(virtual_servers ,profiles)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.
    # - profiles VirtualServerAuthentication[][] The authentication profiles to add to the virtual servers.

    ##
    # Adds/associates clone pools to the specified virtual servers.
    # :method: add_clone_pool
    # :call-seq:
    # add_clone_pool(virtual_servers ,clone_pools)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.
    # - clone_pools VirtualServerClonePool[][] The clone pools to add to the virtual servers.

    ##
    # Adds/associates HTTP class profiles to the specified virtual servers.
    # :method: add_httpclass_profile
    # :call-seq:
    # add_httpclass_profile(virtual_servers ,profiles)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.
    # - profiles VirtualServerHttpClass[][] The HTTP class profiles to add to the virtual servers.

    ##
    # Adds/associates persistence profiles to the specified virtual servers.
    # :method: add_persistence_profile
    # :call-seq:
    # add_persistence_profile(virtual_servers ,profiles)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.
    # - profiles VirtualServerPersistence[][] The persistence profiles to add to the virtual servers.

    ##
    # Adds/associates profiles to the specified virtual servers.
    # :method: add_profile
    # :call-seq:
    # add_profile(virtual_servers ,profiles)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.
    # - profiles VirtualServerProfile[][] The profiles to add to the virtual servers.

    ##
    # Adds/associates rules to the specified virtual servers.
    # :method: add_rule
    # :call-seq:
    # add_rule(virtual_servers ,rules)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.
    # - rules VirtualServerRule[][] The rules to add to the virtual servers.

    ##
    # Creates or updates virtual servers from the specified resources. Takes additional,
    # optional parameters that enable you to override the default optional values.
    # :method: create
    # :call-seq:
    # create(definitions ,wildmasks ,resources ,profiles)
    #
    # Parameters:
    # - definitions VirtualServerDefinition[] The virtual server definitions, address, port, and protocols the virtual servers will be using,		 for protocol, only IP (which includes both TCP and UDP), TCP or UDP are supported.
    # - wildmasks String[] The network masks used to look up the specified virtual servers.
    # - resources VirtualServerResource[] The resources associated with the virtual servers.
    # - profiles VirtualServerProfile[][] The profiles to associate with the virtual servers.

    ##
    # Deletes all virtual servers.
    # :method: delete_all_virtual_servers

    ##
    # Deletes the persistence records based on the specified persistent modes for the specified
    # virtual servers.
    # :method: delete_persistence_record
    # :call-seq:
    # delete_persistence_record(virtual_servers ,persistence_modes)
    #
    # Parameters:
    # - virtual_servers String[] A sequence of virtual servers to get persistence records.
    # - persistence_modes PersistenceMode[] The persistence modes from which we delete the persistence records.			 If the specified persistence mode is PERSIST_MODE_NONE, then all persistence			 records regardless of persistence mode will be deleted for that virtual server.

    ##
    # Deletes the specified virtual servers.
    # :method: delete_virtual_server
    # :call-seq:
    # delete_virtual_server(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] A sequence of virtual server definitions to delete.

    ##
    # Gets the actual hardware acceleration modes for the specified virtual servers.
    # :method: get_actual_hardware_acceleration
    # :call-seq:
    # get_actual_hardware_acceleration(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions to get the actual hardware acceleration levels.

    ##
    # Gets the statistics for all the virtual servers.
    # :method: get_all_statistics

    ##
    # Gets the lists of authentication profiles the specified virtual servers are associated
    # with.
    # :method: get_authentication_profile
    # :call-seq:
    # get_authentication_profile(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.

    ##
    # Gets the lists of clone pools the specified virtual servers are associated with.
    # :method: get_clone_pool
    # :call-seq:
    # get_clone_pool(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.

    ##
    # Gets the CMP enable modes from the specified virtual servers. This is read-only,
    # as the modes are set according to the system and configuration, and influenced by
    # the desired CMP enabled state.
    # :method: get_cmp_enable_mode
    # :call-seq:
    # get_cmp_enable_mode(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions from which to get the modes.

    ##
    # Gets the CMP enabled states for the specified virtual servers. Enables or disables
    # CMP. Note that this setting can influence the CMP enable mode set automatically by
    # the system and configuration. You can not always enable CMP, but you can always disable
    # it.
    # :method: get_cmp_enabled_state
    # :call-seq:
    # get_cmp_enabled_state(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions to get the CMP enabled states of.

    ##
    # Gets the connection limits for the specified virtual servers.
    # :method: get_connection_limit
    # :call-seq:
    # get_connection_limit(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions to get the connection limits of.

    ##
    # Gets the mirror connection states for the specified virtual servers.
    # :method: get_connection_mirror_state
    # :call-seq:
    # get_connection_mirror_state(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions to get the mirror connection states of.

    ##
    # Gets the default pool names for the specified virtual servers.
    # :method: get_default_pool_name
    # :call-seq:
    # get_default_pool_name(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions.

    ##
    # Gets the destination IP and port of the specified virtual servers.
    # :method: get_destination
    # :call-seq:
    # get_destination(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions to get the destinations.

    ##
    # Gets the enabled state of the specified virtual server.
    # :method: get_enabled_state
    # :call-seq:
    # get_enabled_state(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions to get the states of.

    ##
    # Gets the persistence profiles to use for fallback persistence for the specified virtual
    # servers.
    # :method: get_fallback_persistence_profile
    # :call-seq:
    # get_fallback_persistence_profile(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions.

    ##
    # Returns the gtm scores for the specified virtual servers.
    # :method: get_gtm_score
    # :call-seq:
    # get_gtm_score(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.

    ##
    # Gets the lists of HTTP class profiles the specified virtual servers are associated
    # with. If a specified virtual server is not associated with any HTTP class profile,
    # then the list of HTTP class profiles for that virtual server will be empty.
    # :method: get_httpclass_profile
    # :call-seq:
    # get_httpclass_profile(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.

    ##
    # Gets the last hop pools for the specified virtual servers.
    # :method: get_last_hop_pool
    # :call-seq:
    # get_last_hop_pool(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions to get the last hop pools of.

    ##
    # Gets a list of virtual servers.
    # :method: get_list

    ##
    # Returns the module scores for the specified virtual servers.
    # :method: get_module_score
    # :call-seq:
    # get_module_score(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.

    ##
    # Gets the status of each of the specified virtual servers.
    # :method: get_object_status
    # :call-seq:
    # get_object_status(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers to get the status of.

    ##
    # Gets the lists of persistence profiles the specified virtual servers are associated
    # with.
    # :method: get_persistence_profile
    # :call-seq:
    # get_persistence_profile(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.

    ##
    # Gets the persistence records based on the specified persistent modes for the specified
    # virtual servers.
    # :method: get_persistence_record
    # :call-seq:
    # get_persistence_record(virtual_servers ,persistence_modes)
    #
    # Parameters:
    # - virtual_servers String[] A sequence of virtual servers to get persistence records.
    # - persistence_modes PersistenceMode[] The persistence modes from which we retrieve the persistence records.			 If the specified persistence mode is PERSIST_MODE_NONE, then all persistence			 records regardless of persistence mode will be returned for that virtual server.

    ##
    # Gets the lists of profiles the specified virtual servers are associated with.
    # :method: get_profile
    # :call-seq:
    # get_profile(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.

    ##
    # Gets the protocols supported by the specified virtual servers.
    # :method: get_protocol
    # :call-seq:
    # get_protocol(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions to get the IP protocols.

    ##
    # Gets the rate classes that will be used to rate limit the traffic.
    # :method: get_rate_class
    # :call-seq:
    # get_rate_class(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions.

    ##
    # Gets the lists of rules the specified virtual servers are associated with. If a specified
    # virtual server is not associated with any rule, then the list of rules for that virtual
    # server will be empty.
    # :method: get_rule
    # :call-seq:
    # get_rule(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.

    ##
    # Gets the SNAT pools to be used in iSNAT configurations for the specified virtual
    # servers.
    # :method: get_snat_pool
    # :call-seq:
    # get_snat_pool(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions.

    ##
    # Gets the SNAT type for the specified virtual servers.
    # :method: get_snat_type
    # :call-seq:
    # get_snat_type(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions.

    ##
    # Gets the source port behavior for the specified virtual servers.
    # :method: get_source_port_behavior
    # :call-seq:
    # get_source_port_behavior(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions for which to get source port behaviors.

    ##
    # Gets the statistics for the specified virtual servers.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers to get statistics for.

    ##
    # Gets the address translation states for the specified virtual servers. Enables or
    # disables address translation.
    # :method: get_translate_address_state
    # :call-seq:
    # get_translate_address_state(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions to get the address translation states of.

    ##
    # Gets the port translation states for the specified virtual servers. Enables or disables
    # port translation.
    # :method: get_translate_port_state
    # :call-seq:
    # get_translate_port_state(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions to get the port translation states of.

    ##
    # Gets the types of the specified virtual servers.
    # :method: get_type
    # :call-seq:
    # get_type(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions to get the types.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Gets the lists of VLANs on which access to the specified Virtual Servers are enabled/disabled.
    # :method: get_vlan
    # :call-seq:
    # get_vlan(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.

    ##
    # Gets the wildmasks for the specified virtual servers.
    # :method: get_wildmask
    # :call-seq:
    # get_wildmask(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions to get the wildmasks.

    ##
    # Removes all authentication profiles from the specified virtual servers.
    # :method: remove_all_authentication_profiles
    # :call-seq:
    # remove_all_authentication_profiles(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.

    ##
    # Removes all clone pools from the specified virtual servers.
    # :method: remove_all_clone_pools
    # :call-seq:
    # remove_all_clone_pools(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.

    ##
    # Removes all HTTP class profiles from the specified virtual servers.
    # :method: remove_all_httpclass_profiles
    # :call-seq:
    # remove_all_httpclass_profiles(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.

    ##
    # Removes all persistence profiles from the specified virtual servers.
    # :method: remove_all_persistence_profiles
    # :call-seq:
    # remove_all_persistence_profiles(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.

    ##
    # Removes all profiles from the specified virtual servers.
    # :method: remove_all_profiles
    # :call-seq:
    # remove_all_profiles(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.

    ##
    # Removes all rules from the specified virtual servers.
    # :method: remove_all_rules
    # :call-seq:
    # remove_all_rules(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.

    ##
    # Removes authentication profiles from the specified virtual servers.
    # :method: remove_authentication_profile
    # :call-seq:
    # remove_authentication_profile(virtual_servers ,profiles)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.
    # - profiles VirtualServerAuthentication[][] The authentication profiles to remove from the virtual servers.

    ##
    # Removes clone pools from the specified virtual servers.
    # :method: remove_clone_pool
    # :call-seq:
    # remove_clone_pool(virtual_servers ,clone_pools)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.
    # - clone_pools VirtualServerClonePool[][] The clone pools to remove from the virtual servers.

    ##
    # Removes HTTP class profiles from the specified virtual servers.
    # :method: remove_httpclass_profile
    # :call-seq:
    # remove_httpclass_profile(virtual_servers ,profiles)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.
    # - profiles VirtualServerHttpClass[][] The HTTP class profiles to remove from the virtual servers.

    ##
    # Removes persistence profiles from the specified virtual servers.
    # :method: remove_persistence_profile
    # :call-seq:
    # remove_persistence_profile(virtual_servers ,profiles)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.
    # - profiles VirtualServerPersistence[][] The persistence profiles to remove from the virtual servers.

    ##
    # Removes profiles from the specified virtual servers.
    # :method: remove_profile
    # :call-seq:
    # remove_profile(virtual_servers ,profiles)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.
    # - profiles VirtualServerProfile[][] The profiles to remove from the virtual servers.

    ##
    # Removes rules from the specified virtual servers.
    # :method: remove_rule
    # :call-seq:
    # remove_rule(virtual_servers ,rules)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.
    # - rules VirtualServerRule[][] The rules to remove from the virtual servers.

    ##
    # Resets the statistics for the specified virtual servers.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] A sequence of virtual servers to reset statistics on.

    ##
    # Sets the CMP enabled states for the specified virtual servers. Enables or disables
    # CMP. Note that this setting can influence the CMP enable mode set automatically by
    # the system and configuration. You can not always enable CMP, but you can always disable
    # it.
    # :method: set_cmp_enabled_state
    # :call-seq:
    # set_cmp_enabled_state(virtual_servers ,states)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions to set the CMP enabled states for.
    # - states EnabledState[] The CMP enabled states to apply.

    ##
    # Sets the connection limits of the specified virtual servers.
    # :method: set_connection_limit
    # :call-seq:
    # set_connection_limit(virtual_servers ,limits)
    #
    # Parameters:
    # - virtual_servers String[] A sequence of virtual servers to apply the connection limits to.
    # - limits ULong64[] The connection limits to set.

    ##
    # Sets the mirror connection states for the specified virtual servers.
    # :method: set_connection_mirror_state
    # :call-seq:
    # set_connection_mirror_state(virtual_servers ,states)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions on which to set the mirror connection states.
    # - states EnabledState[] The mirror connection states for the specified virtual servers.

    ##
    # Sets the default pool names for the specified virtual servers.
    # :method: set_default_pool_name
    # :call-seq:
    # set_default_pool_name(virtual_servers ,default_pools)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions.
    # - default_pools String[] The default pool names for the specified virtual servers.

    ##
    # Sets the destination IP and port for the specified virtual servers.
    # :method: set_destination
    # :call-seq:
    # set_destination(virtual_servers ,destinations)
    #
    # Parameters:
    # - virtual_servers String[] A sequence of virtual servers to set the specified destinations.
    # - destinations IPPortDefinition[] The destinations to set.

    ##
    # Sets the enabled state of the specified virtual servers.
    # :method: set_enabled_state
    # :call-seq:
    # set_enabled_state(virtual_servers ,states)
    #
    # Parameters:
    # - virtual_servers String[] A sequence of virtual servers to apply the specified states to.
    # - states EnabledState[] The enabled states to set.

    ##
    # Sets the persistence profiles to use for fallback persistence for the specified virtual
    # servers.
    # :method: set_fallback_persistence_profile
    # :call-seq:
    # set_fallback_persistence_profile(virtual_servers ,profile_names)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions.
    # - profile_names String[] The persistence profiles to use for fallback persistence for the specified virtual servers.

    ##
    # Sets the gtm score for the specified virtual servers.
    # :method: set_gtm_score
    # :call-seq:
    # set_gtm_score(virtual_servers ,scores)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.
    # - scores ULong64[] The GTM score value to set

    ##
    # Sets the last hop pools for the specified virtual servers.
    # :method: set_last_hop_pool
    # :call-seq:
    # set_last_hop_pool(virtual_servers ,last_hop_pools)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions to set the last hop pools for.
    # - last_hop_pools String[] The last hop pools of the specified virtual servers. Empty strings remove the last hop pools from the specified virtual servers.

    ##
    # Sets the protocols supported by the specified virtual servers, one of IP, TCP or
    # UDP.
    # :method: set_protocol
    # :call-seq:
    # set_protocol(virtual_servers ,protocols)
    #
    # Parameters:
    # - virtual_servers String[] A sequence of virtual servers to set the protocols.
    # - protocols ProtocolType[] The protocols to set.

    ##
    # Sets the rate classes that will be used to rate limit the traffic.
    # :method: set_rate_class
    # :call-seq:
    # set_rate_class(virtual_servers ,rate_classes)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions.
    # - rate_classes String[] The rate classes used to rate limit the traffic.

    ##
    # Sets the SNAT automap state for the specified virtual servers.
    # :method: set_snat_automap
    # :call-seq:
    # set_snat_automap(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions.

    ##
    # Sets the state to use no SNATs for the specified virtual servers.
    # :method: set_snat_none
    # :call-seq:
    # set_snat_none(virtual_servers)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions.

    ##
    # Sets the SNAT pools to be used in iSNAT configurations for the specified virtual
    # servers.
    # :method: set_snat_pool
    # :call-seq:
    # set_snat_pool(virtual_servers ,snatpools)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions.
    # - snatpools String[] The SNAT pools of the specified virtual servers.

    ##
    # Sets the source port behavior for the specified virtual servers.
    # :method: set_source_port_behavior
    # :call-seq:
    # set_source_port_behavior(virtual_servers ,source_port_behaviors)
    #
    # Parameters:
    # - virtual_servers String[] A sequence of virtual servers for which to set the source port behavior.
    # - source_port_behaviors SourcePortBehavior[] The source port behaviors to set.

    ##
    # Sets the address translation states for the specified virtual servers. Enables or
    # disables address translation.
    # :method: set_translate_address_state
    # :call-seq:
    # set_translate_address_state(virtual_servers ,states)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions to set the address translation states for.
    # - states EnabledState[] The address translation states to apply.

    ##
    # Sets the port translation states for the specified virtual servers. Enables or disables
    # port translation.
    # :method: set_translate_port_state
    # :call-seq:
    # set_translate_port_state(virtual_servers ,states)
    #
    # Parameters:
    # - virtual_servers String[] The virtual server definitions to set the port translation states for.
    # - states EnabledState[] The port translation states to apply.

    ##
    # Sets the types for the specified virtual servers.
    # :method: set_type
    # :call-seq:
    # set_type(virtual_servers ,types)
    #
    # Parameters:
    # - virtual_servers String[] A sequence of virtual servers to set the specified destinations.
    # - types VirtualServerType[] The types to set.

    ##
    # Sets VLANs to the list of VLANs on which access to the specified Virtual Servers
    # are enabled/disabled.
    # :method: set_vlan
    # :call-seq:
    # set_vlan(virtual_servers ,vlans)
    #
    # Parameters:
    # - virtual_servers String[] The virtual servers.
    # - vlans VLANFilterList[] The VLAN names to add to the list of enabled/disabled VLANs .

    ##
    # Sets the wildmasks for the specified virtual servers.
    # :method: set_wildmask
    # :call-seq:
    # set_wildmask(virtual_servers ,wildmasks)
    #
    # Parameters:
    # - virtual_servers String[] A sequence of virtual servers to set the protocols.
    # - wildmasks String[] The wildmasks for the specified virtual servers.


  end
end
