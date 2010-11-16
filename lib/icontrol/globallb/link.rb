module IControl::GlobalLB
  ##
  # The Link interface enables you to work with links within a data center.
  class Link < IControl::Base
    class LinkCostSegment < IControl::Base::Struct; end
    class LinkIPDefinition < IControl::Base::Struct; end
    class LinkMetricLimit < IControl::Base::Struct; end
    class LinkStatisticEntry < IControl::Base::Struct; end
    class LinkStatistics < IControl::Base::Struct; end
    class MonitorAssociation < IControl::Base::Struct; end    ## A sequence of LinkCostSegment's.
    class LinkCostSegmentSequence < IControl::Base::Sequence ; end## An alias for a sequence of LinkCostSegment's.
    class LinkCostSegmentSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of LinkIPDefinition's.
    class LinkIPSequence < IControl::Base::Sequence ; end## A sequence of LinkMetricLimit's.
    class LinkMetricLimitSequence < IControl::Base::Sequence ; end## A sequence of Link statistics.
    class LinkStatisticEntrySequence < IControl::Base::Sequence ; end## A sequence of monitor associations.
    class MonitorAssociationSequence < IControl::Base::Sequence ; end##
    # A struct that contains definition for the link cost segment.
    class LinkCostSegment < IControl::Base::Struct
      # The upper limit (bps) that defines this cost segment.
      icontrol_attribute :upper_limit, IControl::Common::ULong64
      # The cost per Mbps associated with this cost segment.
      icontrol_attribute :price_per_mbps, Numeric
    end

    ##
    # A struct that contains definition for the link and the associated IP addresses.
    class LinkIPDefinition < IControl::Base::Struct
      # The link name.
      icontrol_attribute :link, String
      # The IP addresses associated with the link.
      icontrol_attribute :addresses, StringSequence
    end

    ##
    # A struct that contains metric limits for a link.
    class LinkMetricLimit < IControl::Base::Struct
      # The link name.
      icontrol_attribute :link, String
      # Metric limits of the link.
      icontrol_attribute :metric_limits, IControl::GlobalLB::MetricLimitSequence
    end

    ##
    # A struct that describes statistics for a particular link.
    class LinkStatisticEntry < IControl::Base::Struct
      # The definition that identifies a link.
      icontrol_attribute :link, String
      # The statistics for the link.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes link statistics and timestamp.
    class LinkStatistics < IControl::Base::Struct
      # The statistics for a sequence of links.
      icontrol_attribute :statistics, IControl::GlobalLB::Link::LinkStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes a link's monitor association.
    class MonitorAssociation < IControl::Base::Struct
      # The definition that identifies a link.
      icontrol_attribute :link, String
      # The monitor rule used in the monitor association.
      icontrol_attribute :monitor_rule, IControl::GlobalLB::MonitorRule
    end

    ##
    # Adds the cost segments for the specified links.
    # :method: add_cost_segment
    # :call-seq:
    # add_cost_segment(links ,cost_segments)
    #
    # Parameters:
    # - links String[] The list of links.
    # - cost_segments LinkCostSegment[][] The cost segments.

    ##
    # Adds the IP addresses to the specified links.
    # :method: add_ip
    # :call-seq:
    # add_ip(ips)
    #
    # Parameters:
    # - ips LinkIPDefinition[] The IP addresses to add to the links.

    ##
    # Creates the specified links.
    # :method: create
    # :call-seq:
    # create(links ,data_centers)
    #
    # Parameters:
    # - links LinkIPDefinition[] The links to create.
    # - data_centers String[] The data centers associated with the links.

    ##
    # Deletes all links.
    # :method: delete_all_links

    ##
    # Deletes the specified links.
    # :method: delete_link
    # :call-seq:
    # delete_link(links)
    #
    # Parameters:
    # - links String[] The links to delete.

    ##
    # Gets the statistics for all the links.
    # :method: get_all_statistics

    ##
    # Gets the list of cost segments for the specified links.
    # :method: get_cost_segment
    # :call-seq:
    # get_cost_segment(links)
    #
    # Parameters:
    # - links String[] The list of links.

    ##
    # Gets the data centers that the specified links belong to.
    # :method: get_data_center
    # :call-seq:
    # get_data_center(links)
    #
    # Parameters:
    # - links String[] The list of links.

    ##
    # Gets the states indicating whether the specified links use duplex.
    # :method: get_duplex_state
    # :call-seq:
    # get_duplex_state(links)
    #
    # Parameters:
    # - links String[] The list of links.

    ##
    # Gets the enabled state of the specified links.
    # :method: get_enabled_state
    # :call-seq:
    # get_enabled_state(links)
    #
    # Parameters:
    # - links String[] The list of links.

    ##
    # Gets the inbound limits for link metrics.
    # :method: get_inbound_limit
    # :call-seq:
    # get_inbound_limit(links)
    #
    # Parameters:
    # - links String[] The list of links.

    ##
    # Gets the IP addresses that belong to the specified links.
    # :method: get_ip
    # :call-seq:
    # get_ip(links)
    #
    # Parameters:
    # - links String[] The list of links.

    ##
    # Gets the ISP names for the specified links.
    # :method: get_isp_name
    # :call-seq:
    # get_isp_name(links)
    #
    # Parameters:
    # - links String[] The list of links.

    ##
    # Gets a list of links.
    # :method: get_list

    ##
    # Gets the monitor associations for the specified links, i.e. the monitor rules used
    # by the links.
    # :method: get_monitor_association
    # :call-seq:
    # get_monitor_association(links)
    #
    # Parameters:
    # - links String[] The list of links.

    ##
    # Gets the statuses of the specified links.
    # :method: get_object_status
    # :call-seq:
    # get_object_status(links)
    #
    # Parameters:
    # - links String[] The list of links.

    ##
    # Gets the outbound limits for link metrics.
    # :method: get_outbound_limit
    # :call-seq:
    # get_outbound_limit(links)
    #
    # Parameters:
    # - links String[] The list of links.

    ##
    # Gets the prepaid traffic bandwidth values for the specified links.
    # :method: get_prepaid_traffic
    # :call-seq:
    # get_prepaid_traffic(links)
    #
    # Parameters:
    # - links String[] The list of links.

    ##
    # Gets the ratios used to load-balance the traffic for the specified links.
    # :method: get_ratio
    # :call-seq:
    # get_ratio(links)
    #
    # Parameters:
    # - links String[] The list of links.

    ##
    # Gets the statistics for the specified links.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(links)
    #
    # Parameters:
    # - links String[] The list of links.

    ##
    # Gets the total limits for link metrics.
    # :method: get_total_limit
    # :call-seq:
    # get_total_limit(links)
    #
    # Parameters:
    # - links String[] The list of links.

    ##
    # Gets the IP addresses on the uplink side of the router, used for SNMP probing only.
    # :method: get_uplink_address
    # :call-seq:
    # get_uplink_address(links)
    #
    # Parameters:
    # - links String[] The list of links.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Gets the weight types for the specified links.
    # :method: get_weight_type
    # :call-seq:
    # get_weight_type(links)
    #
    # Parameters:
    # - links String[] The list of links.

    ##
    # Removes any and all cost segment of the specified links.
    # :method: remove_all_cost_segments
    # :call-seq:
    # remove_all_cost_segments(links)
    #
    # Parameters:
    # - links String[] The list of links.

    ##
    # Removes the cost segments for the specified links.
    # :method: remove_cost_segment
    # :call-seq:
    # remove_cost_segment(links ,cost_segments)
    #
    # Parameters:
    # - links String[] The list of links.
    # - cost_segments LinkCostSegment[][] The cost segments.

    ##
    # Removes the IP addresses from the specified links.
    # :method: remove_ip
    # :call-seq:
    # remove_ip(ips)
    #
    # Parameters:
    # - ips LinkIPDefinition[] The IP addresses to remove from the links.

    ##
    # Removes the monitor associations for the specified links. This basically deletes
    # the monitor associations between a link and a monitor rule, i.e. the specified links
    # will no longer be monitored.
    # :method: remove_monitor_association
    # :call-seq:
    # remove_monitor_association(links)
    #
    # Parameters:
    # - links String[] The list of links.

    ##
    # Resets the statistics for the specified links.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(links)
    #
    # Parameters:
    # - links String[] The list of links.

    ##
    # Moves the specified links to the new data centers.
    # :method: set_data_center
    # :call-seq:
    # set_data_center(links ,data_centers)
    #
    # Parameters:
    # - links String[] The list of links.
    # - data_centers String[] The names of the new data centers.

    ##
    # Sets the states indicating whether the specified links use duplex.
    # :method: set_duplex_state
    # :call-seq:
    # set_duplex_state(links ,states)
    #
    # Parameters:
    # - links String[] The list of links.
    # - states EnabledState[] The states to set.

    ##
    # Sets the enabled state of the specified links.
    # :method: set_enabled_state
    # :call-seq:
    # set_enabled_state(links ,states)
    #
    # Parameters:
    # - links String[] The list of links.
    # - states EnabledState[] The enabled states to set.

    ##
    # Sets the inbound limits for link metrics.
    # :method: set_inbound_limit
    # :call-seq:
    # set_inbound_limit(limits)
    #
    # Parameters:
    # - limits LinkMetricLimit[] The links' metric limits.

    ##
    # Sets the ISP names for the specified links.
    # :method: set_isp_name
    # :call-seq:
    # set_isp_name(links ,isp_names)
    #
    # Parameters:
    # - links String[] The list of links.
    # - isp_names String[] The ISP names.

    ##
    # Sets/creates the monitor associations for the specified links. This basically creates
    # the monitor associations between a link and a monitor rule.
    # :method: set_monitor_association
    # :call-seq:
    # set_monitor_association(monitor_associations)
    #
    # Parameters:
    # - monitor_associations MonitorAssociation[] The monitor associations that will be used to evaluate the specified links.

    ##
    # Sets the outbound limits for link metrics.
    # :method: set_outbound_limit
    # :call-seq:
    # set_outbound_limit(limits)
    #
    # Parameters:
    # - limits LinkMetricLimit[] The links' metric limits.

    ##
    # Sets the prepaid traffic bandwidth values for the specified links.
    # :method: set_prepaid_traffic
    # :call-seq:
    # set_prepaid_traffic(links ,prepaids)
    #
    # Parameters:
    # - links String[] The list of links.
    # - prepaids ULong64[] The prepaid traffic bandwidths.

    ##
    # Sets the ratios used to load-balance the traffic for the specified links.
    # :method: set_ratio
    # :call-seq:
    # set_ratio(links ,ratios)
    #
    # Parameters:
    # - links String[] The list of links.
    # - ratios long[] The ratios to set.

    ##
    # Sets the total limits for link metrics.
    # :method: set_total_limit
    # :call-seq:
    # set_total_limit(limits)
    #
    # Parameters:
    # - limits LinkMetricLimit[] The links' metric limits.

    ##
    # Sets the IP addresses on the uplink side of the router, used for SNMP probing only.
    # :method: set_uplink_address
    # :call-seq:
    # set_uplink_address(links ,uplinks)
    #
    # Parameters:
    # - links String[] The list of links.
    # - uplinks String[] The uplink addresses.

    ##
    # Sets the weight types for the specified links.
    # :method: set_weight_type
    # :call-seq:
    # set_weight_type(links ,weight_types)
    #
    # Parameters:
    # - links String[] The list of links.
    # - weight_types LinkWeightType[] The weight types to set.


  end
end
