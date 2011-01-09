module IControl::GlobalLB
  ##
  # The Link interface enables you to work with links within a data center.
  class Link < IControl::Base

    set_id_name "links"

    class LinkCostSegment < IControl::Base::Struct; end
    class LinkIPDefinition < IControl::Base::Struct; end
    class LinkMetricLimit < IControl::Base::Struct; end
    class LinkStatisticEntry < IControl::Base::Struct; end
    class LinkStatistics < IControl::Base::Struct; end
    class MonitorAssociation < IControl::Base::Struct; end
    class LinkCostSegmentSequence < IControl::Base::Sequence ; end
    class LinkCostSegmentSequenceSequence < IControl::Base::SequenceSequence ; end
    class LinkIPSequence < IControl::Base::Sequence ; end
    class LinkMetricLimitSequence < IControl::Base::Sequence ; end
    class LinkStatisticEntrySequence < IControl::Base::Sequence ; end
    class MonitorAssociationSequence < IControl::Base::Sequence ; end    ##
    # Adds the cost segments for this link.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Link::LinkCostSegment[]] :cost_segments The cost segments.
    def add_cost_segment(opts)
      check_params(opts,[:cost_segments])
      super
    end

    ##
    # Adds the IP addresses to this link.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Link::LinkIPDefinition] :ips The IP addresses to add to the links.
    def add_ip(opts)
      check_params(opts,[:ips])
      super
    end

    ##
    # Creates this link.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :data_centers The data centers associated with the links.
    def create(opts)
      check_params(opts,[:data_centers])
      super
    end

    ##
    # Deletes all link.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_links
      super
    end

    ##
    # Deletes this link.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_link
      super
    end

    ##
    # Gets the statistics for all the link.
    # @rspec_example
    # @return [LinkStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the list of cost segments for this link.
    # @rspec_example
    # @return [LinkCostSegment[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def cost_segment
      super
    end

    ##
    # Gets the data centers that this link belong to.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def data_center
      super
    end

    ##
    # Gets the states indicating whether this link use duplex.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def duplex_state
      super
    end

    ##
    # Gets the enabled state of this link.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def enabled_state
      super
    end

    ##
    # Gets the inbound limits for link metrics.
    # @rspec_example
    # @return [LinkMetricLimit]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def inbound_limit
      super
    end

    ##
    # Gets the IP addresses that belong to this link.
    # @rspec_example
    # @return [LinkIPDefinition]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ip
      super
    end

    ##
    # Gets the ISP names for this link.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def isp_name
      super
    end

    ##
    # Gets a list of link.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the monitor associations for this link, i.e. the monitor rules used by the link.
    # @rspec_example
    # @return [MonitorAssociation]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def monitor_association
      super
    end

    ##
    # Gets the statuses of this link.
    # @rspec_example
    # @return [ObjectStatus]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def object_status
      super
    end

    ##
    # Gets the outbound limits for link metrics.
    # @rspec_example
    # @return [LinkMetricLimit]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def outbound_limit
      super
    end

    ##
    # Gets the prepaid traffic bandwidth values for this link.
    # @rspec_example
    # @return [ULong64]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def prepaid_traffic
      super
    end

    ##
    # Gets the ratios used to load-balance the traffic for this link.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ratio
      super
    end

    ##
    # Gets the statistics for this link.
    # @rspec_example
    # @return [LinkStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Gets the total limits for link metrics.
    # @rspec_example
    # @return [LinkMetricLimit]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def total_limit
      super
    end

    ##
    # Gets the IP addresses on the uplink side of the router, used for SNMP probing only.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def uplink_address
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
    # Gets the weight types for this link.
    # @rspec_example
    # @return [LinkWeightType]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def weight_type
      super
    end

    ##
    # Removes any and all cost segment of this link.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_cost_segments
      super
    end

    ##
    # Removes the cost segments for this link.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Link::LinkCostSegment[]] :cost_segments The cost segments.
    def remove_cost_segment(opts)
      check_params(opts,[:cost_segments])
      super
    end

    ##
    # Removes the IP addresses from this link.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Link::LinkIPDefinition] :ips The IP addresses to remove from the links.
    def remove_ip(opts)
      check_params(opts,[:ips])
      super
    end

    ##
    # Removes the monitor associations for this link. This basically deletes the monitor
    # associations between a link and a monitor rule, i.e. this link will no longer be
    # monitored.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_monitor_association
      super
    end

    ##
    # Resets the statistics for this link.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Moves this link to the new data centers.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :data_centers The names of the new data centers.
    def set_data_center(opts)
      check_params(opts,[:data_centers])
      super
    end

    ##
    # Sets the states indicating whether this link use duplex.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set.
    def set_duplex_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the enabled state of this link.
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
    # Sets the inbound limits for link metrics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Link::LinkMetricLimit] :limits The links' metric limits.
    def set_inbound_limit(opts)
      check_params(opts,[:limits])
      super
    end

    ##
    # Sets the ISP names for this link.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :isp_names The ISP names.
    def set_isp_name(opts)
      check_params(opts,[:isp_names])
      super
    end

    ##
    # Sets/creates the monitor associations for this link. This basically creates the monitor
    # associations between a link and a monitor rule.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Link::MonitorAssociation] :monitor_associations The monitor associations that will be used to evaluate the specified links.
    def set_monitor_association(opts)
      check_params(opts,[:monitor_associations])
      super
    end

    ##
    # Sets the outbound limits for link metrics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Link::LinkMetricLimit] :limits The links' metric limits.
    def set_outbound_limit(opts)
      check_params(opts,[:limits])
      super
    end

    ##
    # Sets the prepaid traffic bandwidth values for this link.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::ULong64] :prepaids The prepaid traffic bandwidths.
    def set_prepaid_traffic(opts)
      check_params(opts,[:prepaids])
      super
    end

    ##
    # Sets the ratios used to load-balance the traffic for this link.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :ratios The ratios to set.
    def set_ratio(opts)
      check_params(opts,[:ratios])
      super
    end

    ##
    # Sets the total limits for link metrics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Link::LinkMetricLimit] :limits The links' metric limits.
    def set_total_limit(opts)
      check_params(opts,[:limits])
      super
    end

    ##
    # Sets the IP addresses on the uplink side of the router, used for SNMP probing only.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :uplinks The uplink addresses.
    def set_uplink_address(opts)
      check_params(opts,[:uplinks])
      super
    end

    ##
    # Sets the weight types for this link.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::LinkWeightType] :weight_types The weight types to set.
    def set_weight_type(opts)
      check_params(opts,[:weight_types])
      super
    end

    ##
    # A struct that contains definition for the link cost segment.
    # @attr [IControl::Common::ULong64] upper_limit The upper limit (bps) that defines this cost segment.
    # @attr [Numeric] price_per_mbps The cost per Mbps associated with this cost segment.
    class LinkCostSegment < IControl::Base::Struct
      icontrol_attribute :upper_limit, IControl::Common::ULong64
      icontrol_attribute :price_per_mbps, Numeric
    end

    ##
    # A struct that contains definition for the link and the associated IP addresses.
    # @attr [String] link The link name.
    # @attr [StringSequence] addresses The IP addresses associated with the link.
    class LinkIPDefinition < IControl::Base::Struct
      icontrol_attribute :link, String
      icontrol_attribute :addresses, StringSequence
    end

    ##
    # A struct that contains metric limits for a link.
    # @attr [String] link The link name.
    # @attr [IControl::GlobalLB::MetricLimitSequence] metric_limits Metric limits of the link.
    class LinkMetricLimit < IControl::Base::Struct
      icontrol_attribute :link, String
      icontrol_attribute :metric_limits, IControl::GlobalLB::MetricLimitSequence
    end

    ##
    # A struct that describes statistics for a particular link.
    # @attr [String] link The definition that identifies a link.
    # @attr [IControl::Common::StatisticSequence] statistics The statistics for the link.
    class LinkStatisticEntry < IControl::Base::Struct
      icontrol_attribute :link, String
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes link statistics and timestamp.
    # @attr [IControl::GlobalLB::Link::LinkStatisticEntrySequence] statistics The statistics for a sequence of links.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class LinkStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::GlobalLB::Link::LinkStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes a link's monitor association.
    # @attr [String] link The definition that identifies a link.
    # @attr [IControl::GlobalLB::MonitorRule] monitor_rule The monitor rule used in the monitor association.
    class MonitorAssociation < IControl::Base::Struct
      icontrol_attribute :link, String
      icontrol_attribute :monitor_rule, IControl::GlobalLB::MonitorRule
    end


    ## A sequence of LinkCostSegment's.
    class LinkCostSegmentSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of LinkCostSegment's.
    class LinkCostSegmentSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of LinkIPDefinition's.
    class LinkIPSequence < IControl::Base::Sequence ; end
    ## A sequence of LinkMetricLimit's.
    class LinkMetricLimitSequence < IControl::Base::Sequence ; end
    ## A sequence of Link statistics.
    class LinkStatisticEntrySequence < IControl::Base::Sequence ; end
    ## A sequence of monitor associations.
    class MonitorAssociationSequence < IControl::Base::Sequence ; end
  end
end
