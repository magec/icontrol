module IControl::GlobalLB
  ##
  # The Globals interface enables you to set and get global variables.
  class Globals < IControl::Base
    ##
    # Gets the state to indicate whether local DNS servers that belong to AOL (America
    # Online) are recognized.
    # :method: get_aol_aware_state

    ##
    # Gets the state indicating whether to auto configure BIGIP/3DNS servers (automatic
    # addition and deletion of self IPs and virtual servers.
    # :method: get_auto_configure_state

    ##
    # Gets the state to indicate whether to autosync. Allows automatic updates of wideip.conf
    # to/from other 3-DNSes.
    # :method: get_auto_sync_state

    ##
    # Gets the state to indicate whether to cache LDNSes.
    # :method: get_cache_ldns_state

    ##
    # Gets the state to indicate whether to check availability of a path before it uses
    # the path for load balancing.
    # :method: get_check_dynamic_dependency_state

    ##
    # Gets the state to indicate whether to check the availability of virtual servers.
    # :method: get_check_static_dependency_state

    ##
    # Gets the default alternate LB method.
    # :method: get_default_alternate_lb_method

    ##
    # Gets the default fallback LB method.
    # :method: get_default_fallback_lb_method

    ##
    # Gets the default probe limit, the number of times to probe a path.
    # :method: get_default_probe_limit

    ##
    # Gets the &amp;quot;down_multiple" value. If a host server or a host virtual server
    # has been marked down for the last down_threshold probing cycles (timer_get_host_data
    # or timer_get_vs_data respectively), then perform service checks every down_multiple
    # * timer period instead.
    # :method: get_down_multiple

    ##
    # Gets the &amp;quot;down_threshold" value. If a host server or a host virtual server
    # has been marked down for the last down_threshold probing cycles (timer_get_host_data
    # or timer_get_vs_data respectively), then perform service checks every down_multiple
    # * timer period instead.
    # :method: get_down_threshold

    ##
    # Gets the state to indicate whether persistent connections are allowed to remain connected,
    # until TTL expires, when disabling a pool.
    # :method: get_drain_request_state

    ##
    # Gets the state to indicate whether to dump the topology.
    # :method: get_dump_topology_state

    ##
    # Gets the state to indicate whether to respect ACL.
    # :method: get_fb_respect_acl_state

    ##
    # Gets the state to indicate whether to respect virtual server status when load balancing
    # switches to the fallback mode.
    # :method: get_fb_respect_dependency_state

    ##
    # Gets the number of seconds that an inactive LDNS remains cached.
    # :method: get_ldns_duration

    ##
    # Gets the LDNS probe protocols. The order of the protocols in the sequence will be
    # used to indicate the preferred protocols, i.e. the first protocol in the sequence
    # is the most preferred protocol.
    # :method: get_ldns_probe_protocols

    ##
    # Gets the link compensate inbound state. If set, the link allotment calculation will
    # take into account traffic which does not flow through the BIGIP, i.e. if more traffic
    # is flowing through a link as measured by SNMP on the router than is flowing through
    # the BIGIP. This applies to inbound traffic which the major volume will initiate from
    # internal clients.
    # :method: get_link_compensate_inbound_state

    ##
    # Gets the link compensate outbound state. If set, the link allotment calculation will
    # take into account traffic which does not flow through the BIGIP, i.e. if more traffic
    # is flowing through a link as measured by SNMP on the router than is flowing through
    # the BIGIP. This applies to outbound traffic which the major volume will initiate
    # from internal clients.
    # :method: get_link_compensate_outbound_state

    ##
    # Gets the link compensation history.
    # :method: get_link_compensation_history

    ##
    # Gets the link limit factor, which is used to set a target percentage for traffic.
    # For example, if it is set to 90, the ratio cost based load-balancing will set a ratio
    # with a maximum value equal to 90% of the limit value for the link. Default is 95%.
    # :method: get_link_limit_factor

    ##
    # Gets the link prepaid factor. Maximum percentage of traffic allocated to link which
    # has a traffic allotment which has been prepaid. Default is 95%.
    # :method: get_link_prepaid_factor

    ##
    # Gets the lower bound percentage column options in Internet Weather Map.
    # :method: get_lower_bound_percentage_column

    ##
    # Gets the lower bound percentage row options in Internet Weather Map.
    # :method: get_lower_bound_percentage_row

    ##
    # Gets the maximum link over limit count. The count of how many times in a row traffic
    # may be over the defined limit for the link before it is shut off entirely. Default
    # is 1.
    # :method: get_maximum_link_over_limit_count

    ##
    # Gets the maximum synchronous monitor request, which is used to control the maximum
    # number of monitor requests being sent out at one time for a given probing interval.
    # This will allow the user to smooth out monitor probe requests as much as they desire.
    # :method: get_maximum_synchronous_monitor_request

    ##
    # Gets the over-limit link limit factor. If traffic on a link exceeds the limit, this
    # factor will be used instead of the link_limit_factor until the traffic is over limit
    # for more than max_link_over_limit_count times. Once the limit has been exceeded too
    # many times, all traffic is shut off for the link. The default for over_limit_link_limit_factor
    # is 90%.
    # :method: get_over_limit_link_limit_factor

    ##
    # Gets the number of seconds that a path remains cached after its last access.
    # :method: get_path_duration

    ##
    # Gets the TTL for the path information.
    # :method: get_path_ttl

    ##
    # Gets the state indicating whether the dynamic load balancing modes can use path data
    # even after the TTL for the path data has expired..
    # :method: get_paths_never_die_state

    ##
    # Gets the persistence mask. This function is deprecated and new applications should
    # use get_static_persistence_cidr_mask.
    # :method: get_persistence_mask

    ##
    # Gets the state that if enabled, GTM will still probe disabled object.
    # :method: get_probe_disabled_object_state

    ##
    # Gets the factor used to normalize bits per second when the load balancing mode is
    # set to LB_METHOD_QOS.
    # :method: get_qos_factor_bps

    ##
    # Gets the factor used to normalize connection rates when the load balancing mode is
    # set to LB_METHOD_QOS. This function is deprecated and new applications should use
    # vs_score.
    # :method: get_qos_factor_connection_rate

    ##
    # Gets the factor used to normalize ping packet completion rates when the load balancing
    # mode is set to LB_METHOD_QOS.
    # :method: get_qos_factor_hit_ratio

    ##
    # Gets the factor used to normalize hops when the load balancing mode is set to LB_METHOD_QOS.
    # :method: get_qos_factor_hops

    ##
    # Gets the factor used to normalize link capacity values when the load balancing mode
    # is set to LB_METHOD_QOS.
    # :method: get_qos_factor_lcs

    ##
    # Gets the factor used to normalize packet rates when the load balancing mode is set
    # to LB_METHOD_QOS.
    # :method: get_qos_factor_packet_rate

    ##
    # Gets the factor used to normalize round-trip time values when the load balancing
    # mode is set to LB_METHOD_QOS.
    # :method: get_qos_factor_rtt

    ##
    # Gets the factor used to normalize topology values when the load balancing mode is
    # set to LB_METHOD_QOS.
    # :method: get_qos_factor_topology

    ##
    # Gets the factor used to normalize virtual server capacity values when the load balancing
    # mode is set to LB_METHOD_QOS.
    # :method: get_qos_factor_vs_capacity

    ##
    # Gets the factor used to normalize virtual server (VS) score when the load balancing
    # mode is set to LB_METHOD_QOS.
    # :method: get_qos_factor_vs_score

    ##
    # Gets the state to indicate whether ripeness value is allowed to be reset.
    # :method: get_reset_ripeness_state

    ##
    # Gets the length of the packet sent out in a probe request to determine path information.
    # :method: get_rtt_packet_length

    ##
    # Gets the number of packets to send out in a probe request to determine path information.
    # :method: get_rtt_sample_count

    ##
    # Gets the timeout for RTT, in seconds.
    # :method: get_rtt_timeout

    ##
    # Gets the CIDR mask (length) for the static persistence load balancing mode.
    # :method: get_static_persistence_cidr_mask
    # :call-seq:
    # get_static_persistence_cidr_mask(v6)
    #
    # Parameters:
    # - v6 boolean A boolean indicating which CIDR mask to get, the mask used for protocol IPv4 or IPv6 .

    ##
    # Gets the sync group name.
    # :method: get_sync_group_name

    ##
    # Gets the state to indicate whether to auto_synchronize named configuration. Allows
    # automatic updates of named.conf to/from other 3-DNSes.
    # :method: get_sync_named_configuration_state

    ##
    # Gets the sync timeout. If synch'ing from a remote 3-DNS takes longer than this timeout,
    # then abort the connection.
    # :method: get_sync_timeout

    ##
    # Gets the sync zones timeout. If synch'ing named and zone configuration takes this
    # timeout, then abort the connection.
    # :method: get_sync_zone_timeout

    ##
    # Gets the allowable time difference for data to be out of sync between members of
    # a sync group.
    # :method: get_time_tolerance

    ##
    # Gets the frequency at which to retrieve auto-configuration data.
    # :method: get_timer_get_auto_configuration_data

    ##
    # Gets the frequency at which to retrieve path and metrics data from the system cache.
    # :method: get_timer_persistence_cache

    ##
    # Gets the frequency at which to retry path data.
    # :method: get_timer_retry_path_data

    ##
    # Gets the threshold for the topology ACL.
    # :method: get_topology_acl_threshold

    ##
    # Gets the state to indicate whether the 3-DNS Controller selects the topology record
    # that is most specific and, thus, has the longest match, in cases where there are
    # several IP/netmask items that match a particular IP address. If you select No, the
    # 3-DNS Controller uses the first topology record that matches (according to the order
    # of entry) in the topology statement.
    # :method: get_topology_longest_match_state

    ##
    # Gets the port to use to collect traceroute (hops) data.
    # :method: get_traceroute_port

    ##
    # Gets the TTL for the traceroute information.
    # :method: get_traceroute_ttl

    ##
    # Gets the state that if enabled, it will set the recursion bit in all DNS responses
    # from GTM.
    # :method: get_use_recursion_bit_state

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Sets the state to indicate whether local DNS servers that belong to AOL (America
    # Online) are recognized.
    # :method: set_aol_aware_state
    # :call-seq:
    # set_aol_aware_state(state)
    #
    # Parameters:
    # - state EnabledState The state to set.

    ##
    # Sets the state indicating whether to auto configure BIGIP/3DNS servers (automatic
    # addition and deletion of self IPs and virtual servers.
    # :method: set_auto_configure_state
    # :call-seq:
    # set_auto_configure_state(state)
    #
    # Parameters:
    # - state EnabledState The state to set.

    ##
    # Sets the state to indicate whether to autosync. Allows automatic updates of wideip.conf
    # to/from other 3-DNSes.
    # :method: set_auto_sync_state
    # :call-seq:
    # set_auto_sync_state(state)
    #
    # Parameters:
    # - state EnabledState The state to set.

    ##
    # Sets the state to indicate whether to cache LDNSes.
    # :method: set_cache_ldns_state
    # :call-seq:
    # set_cache_ldns_state(state)
    #
    # Parameters:
    # - state EnabledState The state to set.

    ##
    # Sets the state to indicate whether to check availability of a path before it uses
    # the path for load balancing.
    # :method: set_check_dynamic_dependency_state
    # :call-seq:
    # set_check_dynamic_dependency_state(state)
    #
    # Parameters:
    # - state EnabledState The state to set.

    ##
    # Sets the state to indicate whether to check the availability of virtual servers.
    # :method: set_check_static_dependency_state
    # :call-seq:
    # set_check_static_dependency_state(state)
    #
    # Parameters:
    # - state EnabledState The state to set.

    ##
    # Sets the default alternate LB method.
    # :method: set_default_alternate_lb_method
    # :call-seq:
    # set_default_alternate_lb_method(lb_method)
    #
    # Parameters:
    # - lb_method LBMethod The LB method to set.

    ##
    # Sets the default fallback LB method.
    # :method: set_default_fallback_lb_method
    # :call-seq:
    # set_default_fallback_lb_method(lb_method)
    #
    # Parameters:
    # - lb_method LBMethod The LB method to set.

    ##
    # Sets the default probe limit, the number of times to probe a path.
    # :method: set_default_probe_limit
    # :call-seq:
    # set_default_probe_limit(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the &amp;quot;down_multiple" value. If a host server or a host virtual server
    # has been marked down for the last down_threshold probing cycles (timer_get_host_data
    # or timer_get_vs_data respectively), then perform service checks every down_multiple
    # * timer period instead.
    # :method: set_down_multiple
    # :call-seq:
    # set_down_multiple(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the &amp;quot;down_threshold" value. If a host server or a host virtual server
    # has been marked down for the last down_threshold probing cycles (timer_get_host_data
    # or timer_get_vs_data respectively), then perform service checks every down_multiple
    # * timer period instead.
    # :method: set_down_threshold
    # :call-seq:
    # set_down_threshold(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the state to indicate whether persistent connections are allowed to remain connected,
    # until TTL expires, when disabling a pool.
    # :method: set_drain_request_state
    # :call-seq:
    # set_drain_request_state(state)
    #
    # Parameters:
    # - state EnabledState The state to set.

    ##
    # Sets the state to indicate whether to dump the topology.
    # :method: set_dump_topology_state
    # :call-seq:
    # set_dump_topology_state(state)
    #
    # Parameters:
    # - state EnabledState The state to set.

    ##
    # Sets the state to indicate whether to respect ACL.
    # :method: set_fb_respect_acl_state
    # :call-seq:
    # set_fb_respect_acl_state(state)
    #
    # Parameters:
    # - state EnabledState The state to set.

    ##
    # Sets the state to indicate whether to respect virtual server status when load balancing
    # switches to the fallback mode.
    # :method: set_fb_respect_dependency_state
    # :call-seq:
    # set_fb_respect_dependency_state(state)
    #
    # Parameters:
    # - state EnabledState The state to set.

    ##
    # Sets the number of seconds that an inactive LDNS remains cached.
    # :method: set_ldns_duration
    # :call-seq:
    # set_ldns_duration(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the LDNS probe protocols. The order of the protocols in the sequence will be
    # used to indicate the preferred protocols, i.e. the first protocol in the sequence
    # is the most preferred protocol. If you'd like to remove an item, get the LDNS probe
    # protocols, remove the item, then do set.
    # :method: set_ldns_probe_protocols
    # :call-seq:
    # set_ldns_probe_protocols(protocols)
    #
    # Parameters:
    # - protocols LDNSProbeProtocol[] The probe protocols to set.

    ##
    # Sets the link compensate inbound state. If set, the link allotment calculation will
    # take into account traffic which does not flow through the BIGIP, i.e. if more traffic
    # is flowing through a link as measured by SNMP on the router than is flowing through
    # the BIGIP. This applies to inbound traffic which the major volume will initiate from
    # internal clients.
    # :method: set_link_compensate_inbound_state
    # :call-seq:
    # set_link_compensate_inbound_state(state)
    #
    # Parameters:
    # - state EnabledState The state to set.

    ##
    # Sets the link compensate outbound state. If set, the link allotment calculation will
    # take into account traffic which does not flow through the BIGIP, i.e. if more traffic
    # is flowing through a link as measured by SNMP on the router than is flowing through
    # the BIGIP. This applies to outbound traffic which the major volume will initiate
    # from internal clients.
    # :method: set_link_compensate_outbound_state
    # :call-seq:
    # set_link_compensate_outbound_state(state)
    #
    # Parameters:
    # - state EnabledState The state to set.

    ##
    # Sets the link compensation history.
    # :method: set_link_compensation_history
    # :call-seq:
    # set_link_compensation_history(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the link limit factor, which is used to set a target percentage for traffic.
    # For example, if it is set to 90, the ratio cost based load-balancing will set a ratio
    # with a maximum value equal to 90% of the limit value for the link. Default is 95%.
    # :method: set_link_limit_factor
    # :call-seq:
    # set_link_limit_factor(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the link prepaid factor. Maximum percentage of traffic allocated to link which
    # has a traffic allotment which has been prepaid. Default is 95%.
    # :method: set_link_prepaid_factor
    # :call-seq:
    # set_link_prepaid_factor(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the number of seconds that an inactive LDNS remains cached. This function is
    # deprecated (due to being misnamed); new applications should use set_ldns_duration.
    # :method: set_lnds_duration
    # :call-seq:
    # set_lnds_duration(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the lower bound percentage column options in Internet Weather Map.
    # :method: set_lower_bound_percentage_column
    # :call-seq:
    # set_lower_bound_percentage_column(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the lower bound percentage row options in Internet Weather Map.
    # :method: set_lower_bound_percentage_row
    # :call-seq:
    # set_lower_bound_percentage_row(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the maximum link over limit count. The count of how many times in a row traffic
    # may be over the defined limit for the link before it is shut off entirely. Default
    # is 1.
    # :method: set_maximum_link_over_limit_count
    # :call-seq:
    # set_maximum_link_over_limit_count(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the maximum synchronous monitor request, which is used to control the maximum
    # number of monitor requests being sent out at one time for a given probing interval.
    # This will allow the user to smooth out monitor probe requests as much as they desire.
    # :method: set_maximum_synchronous_monitor_request
    # :call-seq:
    # set_maximum_synchronous_monitor_request(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the over-limit link limit factor. If traffic on a link exceeds the limit, this
    # factor will be used instead of the link_limit_factor until the traffic is over limit
    # for more than max_link_over_limit_count times. Once the limit has been exceeded too
    # many times, all traffic is shut off for the link. The default for over_limit_link_limit_factor
    # is 90%.
    # :method: set_over_limit_link_limit_factor
    # :call-seq:
    # set_over_limit_link_limit_factor(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the number of seconds that a path remains cached after its last access.
    # :method: set_path_duration
    # :call-seq:
    # set_path_duration(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the TTL for the path information.
    # :method: set_path_ttl
    # :call-seq:
    # set_path_ttl(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the state indicating whether the dynamic load balancing modes can use path data
    # even after the TTL for the path data has expired.
    # :method: set_paths_never_die_state
    # :call-seq:
    # set_paths_never_die_state(state)
    #
    # Parameters:
    # - state EnabledState The state to set.

    ##
    # Sets the persistence mask. This function is deprecated and new applications should
    # use set_static_persistence_cidr_mask.
    # :method: set_persistence_mask
    # :call-seq:
    # set_persistence_mask(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the state that if enabled, GTM will still probe disabled object.
    # :method: set_probe_disabled_object_state
    # :call-seq:
    # set_probe_disabled_object_state(state)
    #
    # Parameters:
    # - state EnabledState The state to set.

    ##
    # Sets the factor used to normalize bits per second when the load balancing mode is
    # set to LB_METHOD_QOS.
    # :method: set_qos_factor_bps
    # :call-seq:
    # set_qos_factor_bps(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the factor used to normalize connection rates when the load balancing mode is
    # set to LB_METHOD_QOS. This function is deprecated and new applications should use
    # vs_score.
    # :method: set_qos_factor_connection_rate
    # :call-seq:
    # set_qos_factor_connection_rate(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the factor used to normalize ping packet completion rates when the load balancing
    # mode is set to LB_METHOD_QOS.
    # :method: set_qos_factor_hit_ratio
    # :call-seq:
    # set_qos_factor_hit_ratio(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the factor used to normalize hops when the load balancing mode is set to LB_METHOD_QOS.
    # :method: set_qos_factor_hops
    # :call-seq:
    # set_qos_factor_hops(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the factor used to normalize link capacity values when the load balancing mode
    # is set to LB_METHOD_QOS.
    # :method: set_qos_factor_lcs
    # :call-seq:
    # set_qos_factor_lcs(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the factor used to normalize packet rates when the load balancing mode is set
    # to LB_METHOD_QOS.
    # :method: set_qos_factor_packet_rate
    # :call-seq:
    # set_qos_factor_packet_rate(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the factor used to normalize round-trip time values when the load balancing
    # mode is set to LB_METHOD_QOS.
    # :method: set_qos_factor_rtt
    # :call-seq:
    # set_qos_factor_rtt(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the factor used to normalize topology values when the load balancing mode is
    # set to LB_METHOD_QOS.
    # :method: set_qos_factor_topology
    # :call-seq:
    # set_qos_factor_topology(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the factor used to normalize virtual server capacity values when the load balancing
    # mode is set to LB_METHOD_QOS.
    # :method: set_qos_factor_vs_capacity
    # :call-seq:
    # set_qos_factor_vs_capacity(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the factor used to normalize virtual server (VS) score when the load balancing
    # mode is set to LB_METHOD_QOS.
    # :method: set_qos_factor_vs_score
    # :call-seq:
    # set_qos_factor_vs_score(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the state to indicate whether ripeness value is allowed to be reset.
    # :method: set_reset_ripeness_state
    # :call-seq:
    # set_reset_ripeness_state(state)
    #
    # Parameters:
    # - state EnabledState The state to set.

    ##
    # Sets the length of the packet sent out in a probe request to determine path information.
    # :method: set_rtt_packet_length
    # :call-seq:
    # set_rtt_packet_length(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the number of packets to send out in a probe request to determine path information.
    # :method: set_rtt_sample_count
    # :call-seq:
    # set_rtt_sample_count(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the timeout for RTT, in seconds.
    # :method: set_rtt_timeout
    # :call-seq:
    # set_rtt_timeout(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the CIDR mask (length) for the static persistence load balancing mode.
    # :method: set_static_persistence_cidr_mask
    # :call-seq:
    # set_static_persistence_cidr_mask(value ,v6)
    #
    # Parameters:
    # - value long The value to set.
    # - v6 boolean A boolean indicating which CIDR mask to affect, the mask used for protocol IPv4 or IPv6 .

    ##
    # Sets the sync group name.
    # :method: set_sync_group_name
    # :call-seq:
    # set_sync_group_name(sync_group_name)
    #
    # Parameters:
    # - sync_group_name String The sync group name to set.

    ##
    # Sets the state to indicate whether to auto-synchronize named configuration. Allows
    # automatic updates of named.conf to/from other 3-DNSes.
    # :method: set_sync_named_configuration_state
    # :call-seq:
    # set_sync_named_configuration_state(state)
    #
    # Parameters:
    # - state EnabledState The state to set.

    ##
    # Sets the sync timeout. If synch'ing from a remote 3-DNS takes longer than this timeout,
    # then abort the connection.
    # :method: set_sync_timeout
    # :call-seq:
    # set_sync_timeout(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the sync zones timeout. If synch'ing named and zone configuration takes this
    # timeout, then abort the connection.
    # :method: set_sync_zone_timeout
    # :call-seq:
    # set_sync_zone_timeout(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the allowable time difference for data to be out of sync between members of
    # a sync group.
    # :method: set_time_tolerance
    # :call-seq:
    # set_time_tolerance(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the frequency at which to retrieve auto-configuration data.
    # :method: set_timer_get_auto_configuration_data
    # :call-seq:
    # set_timer_get_auto_configuration_data(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the frequency at which to retrieve path and metrics data from the system cache.
    # :method: set_timer_persistence_cache
    # :call-seq:
    # set_timer_persistence_cache(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the frequency at which to retry path data.
    # :method: set_timer_retry_path_data
    # :call-seq:
    # set_timer_retry_path_data(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the threshold for the topology ACL.
    # :method: set_topology_acl_threshold
    # :call-seq:
    # set_topology_acl_threshold(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the state to indicate whether the 3-DNS Controller selects the topology record
    # that is most specific and, thus, has the longest match, in cases where there are
    # several IP/netmask items that match a particular IP address. If you select No, the
    # 3-DNS Controller uses the first topology record that matches (according to the order
    # of entry) in the topology statement.
    # :method: set_topology_longest_match_state
    # :call-seq:
    # set_topology_longest_match_state(state)
    #
    # Parameters:
    # - state EnabledState The state to set.

    ##
    # Sets the port to use to collect traceroute (hops) data.
    # :method: set_traceroute_port
    # :call-seq:
    # set_traceroute_port(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the TTL for the traceroute information.
    # :method: set_traceroute_ttl
    # :call-seq:
    # set_traceroute_ttl(value)
    #
    # Parameters:
    # - value long The value to set.

    ##
    # Sets the state that if enabled, it will set the recursion bit in all DNS responses
    # from GTM.
    # :method: set_use_recursion_bit_state
    # :call-seq:
    # set_use_recursion_bit_state(state)
    #
    # Parameters:
    # - state EnabledState The state to set.


  end
end
