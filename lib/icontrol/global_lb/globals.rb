module IControl::GlobalLB
  ##
  # The Globals interface enables you to set and get global variables.
  class Globals < IControl::Base

    set_id_name "value"

    ##
    # Gets the state to indicate whether local DNS servers that belong to AOL (America
    # Online) are recognized.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def aol_aware_state
      super
    end

    ##
    # Gets the state indicating whether to auto configure BIGIP/3DNS servers (automatic
    # addition and deletion of self IPs and virtual servers.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def auto_configure_state
      super
    end

    ##
    # Gets the state to indicate whether to autosync. Allows automatic updates of wideip.conf
    # to/from other 3-DNSes.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def auto_sync_state
      super
    end

    ##
    # Gets the state to indicate whether to cache LDNSes.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def cache_ldns_state
      super
    end

    ##
    # Gets the state to indicate whether to check availability of a path before it uses
    # the path for load balancing.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def check_dynamic_dependency_state
      super
    end

    ##
    # Gets the state to indicate whether to check the availability of virtual servers.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def check_static_dependency_state
      super
    end

    ##
    # Gets the default alternate LB method.
    # @rspec_example
    # @return [LBMethod]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def default_alternate_lb_method
      super
    end

    ##
    # Gets the default fallback LB method.
    # @rspec_example
    # @return [LBMethod]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def default_fallback_lb_method
      super
    end

    ##
    # Gets the default probe limit, the number of times to probe a path.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def default_probe_limit
      super
    end

    ##
    # Gets the &amp;quot;down_multiple" valu. If a host server or a host virtual server
    # has been marked down for the last down_threshold probing cycles (timer_get_host_data
    # or timer_get_vs_data respectively), then perform service checks every down_multiple
    # * timer period instead.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def down_multiple
      super
    end

    ##
    # Gets the &amp;quot;down_threshold" valu. If a host server or a host virtual server
    # has been marked down for the last down_threshold probing cycles (timer_get_host_data
    # or timer_get_vs_data respectively), then perform service checks every down_multiple
    # * timer period instead.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def down_threshold
      super
    end

    ##
    # Gets the state to indicate whether persistent connections are allowed to remain connected,
    # until TTL expires, when disabling a pool.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def drain_request_state
      super
    end

    ##
    # Gets the state to indicate whether to dump the topology.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def dump_topology_state
      super
    end

    ##
    # Gets the state to indicate whether to respect ACL.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def fb_respect_acl_state
      super
    end

    ##
    # Gets the state to indicate whether to respect virtual server status when load balancing
    # switches to the fallback mode.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def fb_respect_dependency_state
      super
    end

    ##
    # Gets the number of seconds that an inactive LDNS remains cached.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ldns_duration
      super
    end

    ##
    # Gets the LDNS probe protocols. The order of the protocols in the sequence will be
    # used to indicate the preferred protocols, i.e. the first protocol in the sequence
    # is the most preferred protocol.
    # @rspec_example
    # @return [LDNSProbeProtocol]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ldns_probe_protocols
      super
    end

    ##
    # Gets the link compensate inbound state. If set, the link allotment calculation will
    # take into account traffic which does not flow through the BIGIP, i.e. if more traffic
    # is flowing through a link as measured by SNMP on the router than is flowing through
    # the BIGIP. This applies to inbound traffic which the major volume will initiate from
    # internal clients.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def link_compensate_inbound_state
      super
    end

    ##
    # Gets the link compensate outbound state. If set, the link allotment calculation will
    # take into account traffic which does not flow through the BIGIP, i.e. if more traffic
    # is flowing through a link as measured by SNMP on the router than is flowing through
    # the BIGIP. This applies to outbound traffic which the major volume will initiate
    # from internal clients.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def link_compensate_outbound_state
      super
    end

    ##
    # Gets the link compensation history.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def link_compensation_history
      super
    end

    ##
    # Gets the link limit factor, which is used to set a target percentage for traffic.
    # For example, if it is set to 90, the ratio cost based load-balancing will set a ratio
    # with a maximum valu equal to 90% of the limit valu for the link. Default is 95%.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def link_limit_factor
      super
    end

    ##
    # Gets the link prepaid factor. Maximum percentage of traffic allocated to link which
    # has a traffic allotment which has been prepaid. Default is 95%.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def link_prepaid_factor
      super
    end

    ##
    # Gets the lower bound percentage column options in Internet Weather Map.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def lower_bound_percentage_column
      super
    end

    ##
    # Gets the lower bound percentage row options in Internet Weather Map.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def lower_bound_percentage_row
      super
    end

    ##
    # Gets the maximum link over limit count. The count of how many times in a row traffic
    # may be over the defined limit for the link before it is shut off entirely. Default
    # is 1.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def maximum_link_over_limit_count
      super
    end

    ##
    # Gets the maximum synchronous monitor request, which is used to control the maximum
    # number of monitor requests being sent out at one time for a given probing interval.
    # This will allow the user to smooth out monitor probe requests as much as they desire.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def maximum_synchronous_monitor_request
      super
    end

    ##
    # Gets the over-limit link limit factor. If traffic on a link exceeds the limit, this
    # factor will be used instead of the link_limit_factor until the traffic is over limit
    # for more than max_link_over_limit_count times. Once the limit has been exceeded too
    # many times, all traffic is shut off for the link. The default for over_limit_link_limit_factor
    # is 90%.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def over_limit_link_limit_factor
      super
    end

    ##
    # Gets the number of seconds that a path remains cached after its last access.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def path_duration
      super
    end

    ##
    # Gets the TTL for the path information.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def path_ttl
      super
    end

    ##
    # Gets the state indicating whether the dynamic load balancing modes can use path data
    # even after the TTL for the path data has expired..
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def paths_never_die_state
      super
    end

    ##
    # Gets the persistence mask. This function is deprecated and new applications should
    # use get_static_persistence_cidr_mask.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def persistence_mask
      super
    end

    ##
    # Gets the state that if enabled, GTM will still probe disabled object.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def probe_disabled_object_state
      super
    end

    ##
    # Gets the factor used to normalize bits per second when the load balancing mode is
    # set to LB_METHOD_QOS.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def qos_factor_bps
      super
    end

    ##
    # Gets the factor used to normalize connection rates when the load balancing mode is
    # set to LB_METHOD_QOS. This function is deprecated and new applications should use
    # vs_score.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def qos_factor_connection_rate
      super
    end

    ##
    # Gets the factor used to normalize ping packet completion rates when the load balancing
    # mode is set to LB_METHOD_QOS.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def qos_factor_hit_ratio
      super
    end

    ##
    # Gets the factor used to normalize hops when the load balancing mode is set to LB_METHOD_QOS.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def qos_factor_hops
      super
    end

    ##
    # Gets the factor used to normalize link capacity valus when the load balancing mode
    # is set to LB_METHOD_QOS.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def qos_factor_lcs
      super
    end

    ##
    # Gets the factor used to normalize packet rates when the load balancing mode is set
    # to LB_METHOD_QOS.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def qos_factor_packet_rate
      super
    end

    ##
    # Gets the factor used to normalize round-trip time valus when the load balancing mode
    # is set to LB_METHOD_QOS.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def qos_factor_rtt
      super
    end

    ##
    # Gets the factor used to normalize topology valus when the load balancing mode is
    # set to LB_METHOD_QOS.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def qos_factor_topology
      super
    end

    ##
    # Gets the factor used to normalize virtual server capacity valus when the load balancing
    # mode is set to LB_METHOD_QOS.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def qos_factor_vs_capacity
      super
    end

    ##
    # Gets the factor used to normalize virtual server (VS) score when the load balancing
    # mode is set to LB_METHOD_QOS.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def qos_factor_vs_score
      super
    end

    ##
    # Gets the state to indicate whether ripeness valu is allowed to be reset.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_ripeness_state
      super
    end

    ##
    # Gets the length of the packet sent out in a probe request to determine path information.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def rtt_packet_length
      super
    end

    ##
    # Gets the number of packets to send out in a probe request to determine path information.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def rtt_sample_count
      super
    end

    ##
    # Gets the timeout for RTT, in seconds.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def rtt_timeout
      super
    end

    ##
    # Gets the CIDR mask (length) for the static persistence load balancing mode.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [boolean] :v6 A boolean indicating which CIDR mask to get, the mask used for protocol IPv4 or IPv6 .
    def static_persistence_cidr_mask(opts)
      opts = check_params(opts,[:v6])
      super(opts)
    end

    ##
    # Gets the sync group name.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def sync_group_name
      super
    end

    ##
    # Gets the state to indicate whether to auto_synchronize named configuration. Allows
    # automatic updates of named.conf to/from other 3-DNSes.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def sync_named_configuration_state
      super
    end

    ##
    # Gets the sync timeout. If synch'ing from a remote 3-DNS takes longer than this timeout,
    # then abort the connection.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def sync_timeout
      super
    end

    ##
    # Gets the sync zones timeout. If synch'ing named and zone configuration takes this
    # timeout, then abort the connection.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def sync_zone_timeout
      super
    end

    ##
    # Gets the allowable time difference for data to be out of sync between members of
    # a sync group.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def time_tolerance
      super
    end

    ##
    # Gets the frequency at which to retrieve auto-configuration data.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def timer_auto_configuration_data
      super
    end

    ##
    # Gets the frequency at which to retrieve path and metrics data from the system cache.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def timer_persistence_cache
      super
    end

    ##
    # Gets the frequency at which to retry path data.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def timer_retry_path_data
      super
    end

    ##
    # Gets the threshold for the topology ACL.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def topology_acl_threshold
      super
    end

    ##
    # Gets the state to indicate whether the 3-DNS Controller selects the topology record
    # that is most specific and, thus, has the longest match, in cases where there are
    # several IP/netmask items that match a particular IP address. If you select No, the
    # 3-DNS Controller uses the first topology record that matches (according to the order
    # of entry) in the topology statement.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def topology_longest_match_state
      super
    end

    ##
    # Gets the port to use to collect traceroute (hops) data.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def traceroute_port
      super
    end

    ##
    # Gets the TTL for the traceroute information.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def traceroute_ttl
      super
    end

    ##
    # Gets the state that if enabled, it will set the recursion bit in all DNS responses
    # from GTM.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def use_recursion_bit_state
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
    # Sets the state to indicate whether local DNS servers that belong to AOL (America
    # Online) are recognized.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The state to set.
    def set_aol_aware_state(opts)
      opts = check_params(opts,[:state])
      super(opts)
    end

    ##
    # Sets the state indicating whether to auto configure BIGIP/3DNS servers (automatic
    # addition and deletion of self IPs and virtual servers.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The state to set.
    def set_auto_configure_state(opts)
      opts = check_params(opts,[:state])
      super(opts)
    end

    ##
    # Sets the state to indicate whether to autosync. Allows automatic updates of wideip.conf
    # to/from other 3-DNSes.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The state to set.
    def set_auto_sync_state(opts)
      opts = check_params(opts,[:state])
      super(opts)
    end

    ##
    # Sets the state to indicate whether to cache LDNSes.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The state to set.
    def set_cache_ldns_state(opts)
      opts = check_params(opts,[:state])
      super(opts)
    end

    ##
    # Sets the state to indicate whether to check availability of a path before it uses
    # the path for load balancing.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The state to set.
    def set_check_dynamic_dependency_state(opts)
      opts = check_params(opts,[:state])
      super(opts)
    end

    ##
    # Sets the state to indicate whether to check the availability of virtual servers.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The state to set.
    def set_check_static_dependency_state(opts)
      opts = check_params(opts,[:state])
      super(opts)
    end

    ##
    # Sets the default alternate LB method.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::LBMethod] :lb_method The LB method to set.
    def set_default_alternate_lb_method(opts)
      opts = check_params(opts,[:lb_method])
      super(opts)
    end

    ##
    # Sets the default fallback LB method.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::LBMethod] :lb_method The LB method to set.
    def set_default_fallback_lb_method(opts)
      opts = check_params(opts,[:lb_method])
      super(opts)
    end

    ##
    # Sets the default probe limit, the number of times to probe a path.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_default_probe_limit
      super
    end

    ##
    # Sets the &amp;quot;down_multiple" valu. If a host server or a host virtual server
    # has been marked down for the last down_threshold probing cycles (timer_get_host_data
    # or timer_get_vs_data respectively), then perform service checks every down_multiple
    # * timer period instead.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_down_multiple
      super
    end

    ##
    # Sets the &amp;quot;down_threshold" valu. If a host server or a host virtual server
    # has been marked down for the last down_threshold probing cycles (timer_get_host_data
    # or timer_get_vs_data respectively), then perform service checks every down_multiple
    # * timer period instead.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_down_threshold
      super
    end

    ##
    # Sets the state to indicate whether persistent connections are allowed to remain connected,
    # until TTL expires, when disabling a pool.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The state to set.
    def set_drain_request_state(opts)
      opts = check_params(opts,[:state])
      super(opts)
    end

    ##
    # Sets the state to indicate whether to dump the topology.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The state to set.
    def set_dump_topology_state(opts)
      opts = check_params(opts,[:state])
      super(opts)
    end

    ##
    # Sets the state to indicate whether to respect ACL.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The state to set.
    def set_fb_respect_acl_state(opts)
      opts = check_params(opts,[:state])
      super(opts)
    end

    ##
    # Sets the state to indicate whether to respect virtual server status when load balancing
    # switches to the fallback mode.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The state to set.
    def set_fb_respect_dependency_state(opts)
      opts = check_params(opts,[:state])
      super(opts)
    end

    ##
    # Sets the number of seconds that an inactive LDNS remains cached.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_ldns_duration
      super
    end

    ##
    # Sets the LDNS probe protocols. The order of the protocols in the sequence will be
    # used to indicate the preferred protocols, i.e. the first protocol in the sequence
    # is the most preferred protocol. If you'd like to remove an item, get the LDNS probe
    # protocols, remove the item, then do set.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::LDNSProbeProtocol] :protocols The probe protocols to set.
    def set_ldns_probe_protocols(opts)
      opts = check_params(opts,[:protocols])
      super(opts)
    end

    ##
    # Sets the link compensate inbound state. If set, the link allotment calculation will
    # take into account traffic which does not flow through the BIGIP, i.e. if more traffic
    # is flowing through a link as measured by SNMP on the router than is flowing through
    # the BIGIP. This applies to inbound traffic which the major volume will initiate from
    # internal clients.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The state to set.
    def set_link_compensate_inbound_state(opts)
      opts = check_params(opts,[:state])
      super(opts)
    end

    ##
    # Sets the link compensate outbound state. If set, the link allotment calculation will
    # take into account traffic which does not flow through the BIGIP, i.e. if more traffic
    # is flowing through a link as measured by SNMP on the router than is flowing through
    # the BIGIP. This applies to outbound traffic which the major volume will initiate
    # from internal clients.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The state to set.
    def set_link_compensate_outbound_state(opts)
      opts = check_params(opts,[:state])
      super(opts)
    end

    ##
    # Sets the link compensation history.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_link_compensation_history
      super
    end

    ##
    # Sets the link limit factor, which is used to set a target percentage for traffic.
    # For example, if it is set to 90, the ratio cost based load-balancing will set a ratio
    # with a maximum valu equal to 90% of the limit valu for the link. Default is 95%.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_link_limit_factor
      super
    end

    ##
    # Sets the link prepaid factor. Maximum percentage of traffic allocated to link which
    # has a traffic allotment which has been prepaid. Default is 95%.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_link_prepaid_factor
      super
    end

    ##
    # Sets the number of seconds that an inactive LDNS remains cached. This function is
    # deprecated (due to being misnamed); new applications should use set_ldns_duration.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_lnds_duration
      super
    end

    ##
    # Sets the lower bound percentage column options in Internet Weather Map.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_lower_bound_percentage_column
      super
    end

    ##
    # Sets the lower bound percentage row options in Internet Weather Map.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_lower_bound_percentage_row
      super
    end

    ##
    # Sets the maximum link over limit count. The count of how many times in a row traffic
    # may be over the defined limit for the link before it is shut off entirely. Default
    # is 1.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_maximum_link_over_limit_count
      super
    end

    ##
    # Sets the maximum synchronous monitor request, which is used to control the maximum
    # number of monitor requests being sent out at one time for a given probing interval.
    # This will allow the user to smooth out monitor probe requests as much as they desire.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_maximum_synchronous_monitor_request
      super
    end

    ##
    # Sets the over-limit link limit factor. If traffic on a link exceeds the limit, this
    # factor will be used instead of the link_limit_factor until the traffic is over limit
    # for more than max_link_over_limit_count times. Once the limit has been exceeded too
    # many times, all traffic is shut off for the link. The default for over_limit_link_limit_factor
    # is 90%.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_over_limit_link_limit_factor
      super
    end

    ##
    # Sets the number of seconds that a path remains cached after its last access.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_path_duration
      super
    end

    ##
    # Sets the TTL for the path information.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_path_ttl
      super
    end

    ##
    # Sets the state indicating whether the dynamic load balancing modes can use path data
    # even after the TTL for the path data has expired.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The state to set.
    def set_paths_never_die_state(opts)
      opts = check_params(opts,[:state])
      super(opts)
    end

    ##
    # Sets the persistence mask. This function is deprecated and new applications should
    # use set_static_persistence_cidr_mask.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_persistence_mask
      super
    end

    ##
    # Sets the state that if enabled, GTM will still probe disabled object.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The state to set.
    def set_probe_disabled_object_state(opts)
      opts = check_params(opts,[:state])
      super(opts)
    end

    ##
    # Sets the factor used to normalize bits per second when the load balancing mode is
    # set to LB_METHOD_QOS.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_qos_factor_bps
      super
    end

    ##
    # Sets the factor used to normalize connection rates when the load balancing mode is
    # set to LB_METHOD_QOS. This function is deprecated and new applications should use
    # vs_score.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_qos_factor_connection_rate
      super
    end

    ##
    # Sets the factor used to normalize ping packet completion rates when the load balancing
    # mode is set to LB_METHOD_QOS.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_qos_factor_hit_ratio
      super
    end

    ##
    # Sets the factor used to normalize hops when the load balancing mode is set to LB_METHOD_QOS.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_qos_factor_hops
      super
    end

    ##
    # Sets the factor used to normalize link capacity valus when the load balancing mode
    # is set to LB_METHOD_QOS.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_qos_factor_lcs
      super
    end

    ##
    # Sets the factor used to normalize packet rates when the load balancing mode is set
    # to LB_METHOD_QOS.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_qos_factor_packet_rate
      super
    end

    ##
    # Sets the factor used to normalize round-trip time valus when the load balancing mode
    # is set to LB_METHOD_QOS.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_qos_factor_rtt
      super
    end

    ##
    # Sets the factor used to normalize topology valus when the load balancing mode is
    # set to LB_METHOD_QOS.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_qos_factor_topology
      super
    end

    ##
    # Sets the factor used to normalize virtual server capacity valus when the load balancing
    # mode is set to LB_METHOD_QOS.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_qos_factor_vs_capacity
      super
    end

    ##
    # Sets the factor used to normalize virtual server (VS) score when the load balancing
    # mode is set to LB_METHOD_QOS.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_qos_factor_vs_score
      super
    end

    ##
    # Sets the state to indicate whether ripeness valu is allowed to be reset.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The state to set.
    def set_reset_ripeness_state(opts)
      opts = check_params(opts,[:state])
      super(opts)
    end

    ##
    # Sets the length of the packet sent out in a probe request to determine path information.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_rtt_packet_length
      super
    end

    ##
    # Sets the number of packets to send out in a probe request to determine path information.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_rtt_sample_count
      super
    end

    ##
    # Sets the timeout for RTT, in seconds.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_rtt_timeout
      super
    end

    ##
    # Sets the CIDR mask (length) for the static persistence load balancing mode.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [boolean] :v6 A boolean indicating which CIDR mask to affect, the mask used for protocol IPv4 or IPv6 .
    def set_static_persistence_cidr_mask(opts)
      opts = check_params(opts,[:v6])
      super(opts)
    end

    ##
    # Sets the sync group name.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :sync_group_name The sync group name to set.
    def set_sync_group_name(opts)
      opts = check_params(opts,[:sync_group_name])
      super(opts)
    end

    ##
    # Sets the state to indicate whether to auto-synchronize named configuration. Allows
    # automatic updates of named.conf to/from other 3-DNSes.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The state to set.
    def set_sync_named_configuration_state(opts)
      opts = check_params(opts,[:state])
      super(opts)
    end

    ##
    # Sets the sync timeout. If synch'ing from a remote 3-DNS takes longer than this timeout,
    # then abort the connection.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_sync_timeout
      super
    end

    ##
    # Sets the sync zones timeout. If synch'ing named and zone configuration takes this
    # timeout, then abort the connection.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_sync_zone_timeout
      super
    end

    ##
    # Sets the allowable time difference for data to be out of sync between members of
    # a sync group.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_time_tolerance
      super
    end

    ##
    # Sets the frequency at which to retrieve auto-configuration data.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_timer_auto_configuration_data
      super
    end

    ##
    # Sets the frequency at which to retrieve path and metrics data from the system cache.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_timer_persistence_cache
      super
    end

    ##
    # Sets the frequency at which to retry path data.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_timer_retry_path_data
      super
    end

    ##
    # Sets the threshold for the topology ACL.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_topology_acl_threshold
      super
    end

    ##
    # Sets the state to indicate whether the 3-DNS Controller selects the topology record
    # that is most specific and, thus, has the longest match, in cases where there are
    # several IP/netmask items that match a particular IP address. If you select No, the
    # 3-DNS Controller uses the first topology record that matches (according to the order
    # of entry) in the topology statement.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The state to set.
    def set_topology_longest_match_state(opts)
      opts = check_params(opts,[:state])
      super(opts)
    end

    ##
    # Sets the port to use to collect traceroute (hops) data.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_traceroute_port
      super
    end

    ##
    # Sets the TTL for the traceroute information.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_traceroute_ttl
      super
    end

    ##
    # Sets the state that if enabled, it will set the recursion bit in all DNS responses
    # from GTM.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :state The state to set.
    def set_use_recursion_bit_state(opts)
      opts = check_params(opts,[:state])
      super(opts)
    end


  end
end
