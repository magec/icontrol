module IControl::LocalLB
  ##
  # The RateClass interface enables you to work with the definitions and attributes of
  # a rate class class. Rate filtering refers to the ability to enforce configurable
  # bandwidth consumption limitations upon user-defined traffic classes. The purpose
  # of a Rate class is to allow the network administrator to effectively divide a single
  # bandwidth resource through a gateway among preferred applications or traffic classes.
  # Rate filtering is somewhat related to packet filtering. The key difference between
  # the two is that packet filters seek to enforce an access policy on traffic, and Rate
  # Filter classes seek to enforce a throughput policy on traffic.
  class RateClass < IControl::Base
    class DirectionType < IControl::Base::Enumeration; end
    class DropPolicyType < IControl::Base::Enumeration; end
    class QueueType < IControl::Base::Enumeration; end
    class UnitType < IControl::Base::Enumeration; end
    class RateClassStatisticEntry < IControl::Base::Struct; end
    class RateClassStatistics < IControl::Base::Struct; end
    class RateUnit < IControl::Base::Struct; end    ## A sequence of direction types.
    class DirectionTypeSequence < IControl::Base::Sequence ; end## A sequence of drop policy types
    class DropPolicyTypeSequence < IControl::Base::Sequence ; end## A sequence of queueing method types.
    class QueueTypeSequence < IControl::Base::Sequence ; end## A sequence of rate class statistics.
    class RateClassStatisticEntrySequence < IControl::Base::Sequence ; end## A sequence of rates and their units.
    class RateUnitSequence < IControl::Base::Sequence ; end## A sequence of unit types
    class UnitTypeSequence < IControl::Base::Sequence ; end##
    # A list of different directions to indicate how rate shaping should be applied to.
    class DirectionType < IControl::Base::Enumeration
      # Apply rate shaping to traffic to both client and server.
      DIRECTION_ANY = :DIRECTION_ANY
      # Apply rate shaping to traffic to the client.
      DIRECTION_CLIENT = :DIRECTION_CLIENT
      # Apply rate shaping to traffic to the server.
      DIRECTION_SERVER = :DIRECTION_SERVER
    end

    ##
    # A list of drop policy types
    class DropPolicyType < IControl::Base::Enumeration
      # Invalid drop policy
      DROP_INVALID = :DROP_INVALID
      # Drop packets from the end of the queue
      DROP_TAIL = :DROP_TAIL
      # Drop random packets
      DROP_RED = :DROP_RED
      # Drop packets according to Type of Service
      DROP_FRED = :DROP_FRED
    end

    ##
    # Queueing method types
    class QueueType < IControl::Base::Enumeration
      # Invalid state.
      QUEUE_NONE = :QUEUE_NONE
      # Queue discipline where all traffic is queued under a set of many lists, with the specific list				 chosen based on a hash of the connection information, such that traffic from the same connection				 will always be queued in the same list. Traffic is dequeued from the set of the lists in a round-robin				 fashion. The net effect is that fairness of dequeueing is achieved such that one connection can not				 "hog" the queue at the exclusion of another..
      QUEUE_STOCHASTIC_FAIR = :QUEUE_STOCHASTIC_FAIR
      # Queue discipline where all traffic is queued under a set of five lists based on the Type of Service ( ToS )			 field of the traffic. Four of the lists correspond to the 4 possible ToS values of Minimum delay, Maximum			 throughput, Maximum reliability and Minimum cost. The fifth list represents traffic with no ToS setting.			 These lists are processed in such a fashion as to preserve the meaning of the ToS field as much as possible.			 For example, a Minimum cost packet might yield dequeuing to a Minimum delay packet..
      QUEUE_PRIORITY_FIFO = :QUEUE_PRIORITY_FIFO
    end

    ##
    # A list of unit types.
    class UnitType < IControl::Base::Enumeration
      # The unit is bits per second.
      UNIT_BPS = :UNIT_BPS
      # The unit is Kilobits per second.
      UNIT_KBPS = :UNIT_KBPS
      # The unit is Megabits per second.
      UNIT_MBPS = :UNIT_MBPS
    end

    ##
    # A struct that describes statistics for a particular rate class.
    class RateClassStatisticEntry < IControl::Base::Struct
      # The rate class class name.
      icontrol_attribute :rate_class, String
      # The statistics for the rate class.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes rate class statistics and timestamp.
    class RateClassStatistics < IControl::Base::Struct
      # The statistics for a sequence of rate classes.
      icontrol_attribute :statistics, IControl::LocalLB::RateClass::RateClassStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes rate and the unit being used.
    class RateUnit < IControl::Base::Struct
      # The rate.
      icontrol_attribute :rate, Numeric
      # The unit that the rate is expressed in.
      icontrol_attribute :unit, IControl::LocalLB::RateClass::UnitType
    end

    ##
    # Creates the specified rate classes.
    # :method: create
    # :call-seq:
    # create(rate_classes ,base_rates)
    #
    # Parameters:
    # - rate_classes String[] The names of the rate classes to create.
    # - base_rates RateUnit[] The base rates at which the maximum throughput to allot to traffic handled		 by the Rate Classes. Packets in excess of the posted rate will be dropped.

    ##
    # Creates the specified drop policies, given the drop policy type, the general strategy
    # used by the rate filter to throttle traffic. Note that pre-defined drop policies
    # exist with a basic configuration for each type - &amp;quot;tail", &amp;quot;red",
    # and &amp;quot;fred". Also note that a rate filter class defaults to using a &amp;quot;tail"
    # drop policy.
    # :method: create_drop_policy
    # :call-seq:
    # create_drop_policy(drop_policies ,types)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to create
    # - types DropPolicyType[] Type for each created drop policy

    ##
    # Creates the specified queueing methods, given their queueing method type.
    # :method: create_queueing_method
    # :call-seq:
    # create_queueing_method(queues ,types)
    #
    # Parameters:
    # - queues String[] Names of the queueing methods to create
    # - types QueueType[] Type for each created queueing method

    ##
    # Creates the specified shaping policies.
    # :method: create_shaping_policy
    # :call-seq:
    # create_shaping_policy(policies)
    #
    # Parameters:
    # - policies String[] Names of the shaping policies to create

    ##
    # Deletes all drop policies
    # :method: delete_all_drop_policies

    ##
    # Deletes all queueing methods.
    # :method: delete_all_queueing_methods

    ##
    # Deletes all rate classes.
    # :method: delete_all_rate_classes

    ##
    # Deletes all shaping policies.
    # :method: delete_all_shaping_policies

    ##
    # Deletes the specified drop policies
    # :method: delete_drop_policy
    # :call-seq:
    # delete_drop_policy(drop_policies)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to delete

    ##
    # Deletes the specified queueing methods.
    # :method: delete_queueing_method
    # :call-seq:
    # delete_queueing_method(queues)
    #
    # Parameters:
    # - queues String[] Names of the queueing methods to delete

    ##
    # Deletes the specified rate classes.
    # :method: delete_rate_class
    # :call-seq:
    # delete_rate_class(rate_classes)
    #
    # Parameters:
    # - rate_classes String[] The names of the rate classes to delete.

    ##
    # Deletes the specified shaping policies.
    # :method: delete_shaping_policy
    # :call-seq:
    # delete_shaping_policy(policies)
    #
    # Parameters:
    # - policies String[] Names of the shaping policies to delete

    ##
    # Gets the statistics for all the rate classes.
    # :method: get_all_statistics

    ##
    # Gets the base rates for the specified rate classes. The base rate specifies the maximum
    # throughput to allot to traffic handled by the Rate Class. Packets in excess of the
    # posted rate will be dropped.
    # :method: get_base_rate
    # :call-seq:
    # get_base_rate(rate_classes)
    #
    # Parameters:
    # - rate_classes String[] The names of the rate classes.

    ##
    # Gets the burst sizes for the specified rate classes. The burst size specifies maximum
    # number of bytes that traffic is allowed to burst beyond the base rate.
    # :method: get_burst_size
    # :call-seq:
    # get_burst_size(rate_classes)
    #
    # Parameters:
    # - rate_classes String[] The names of the rate classes.

    ##
    # Gets the ceiling rates for the specified rate classes. The ceiling rate specifies
    # how far beyond the base rate the traffic is allowed to flow when bursting. The ceiling
    # rate is an absolute limit - it is impossible for traffic to flow at a higher rate
    # than the ceiling rate, even when bursting. If the ceiling rate is omitted or is equal
    # to the base rate, the traffic may not exceed the base rate. It is illegal for the
    # ceiling rate to be less than the base rate.
    # :method: get_ceiling_rate
    # :call-seq:
    # get_ceiling_rate(rate_classes)
    #
    # Parameters:
    # - rate_classes String[] The names of the rate classes.

    ##
    # Gets the direction types being used by the specified rate classes.
    # :method: get_direction
    # :call-seq:
    # get_direction(rate_classes)
    #
    # Parameters:
    # - rate_classes String[] The names of the rate classes.

    ##
    # Gets the VLAN whose outbound traffic is rate filtered. This is only valid for the
    # DIRECTION_VLAN direction.
    # :method: get_direction_vlan
    # :call-seq:
    # get_direction_vlan(rate_classes)
    #
    # Parameters:
    # - rate_classes String[] Names of the rate filter classes to query

    ##
    # Gets the name of the drop policy, specifying how a rate filter drops packets when
    # the rate filter is throttling traffic.
    # :method: get_drop_policy
    # :call-seq:
    # get_drop_policy(rate_classes)
    #
    # Parameters:
    # - rate_classes String[] Names of the rate filter classes to query

    ##
    # Gets the average packet (maximum transmission unit (MTU)) size. This is only valid
    # for the &amp;quot;fred" and &amp;quot;red" types.
    # :method: get_drop_policy_average_packet_size
    # :call-seq:
    # get_drop_policy_average_packet_size(drop_policies)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to query

    ##
    # Gets the drop limit factor. This is only valid for the &amp;quot;fred" type.
    # :method: get_drop_policy_drop_limit_factor
    # :call-seq:
    # get_drop_policy_drop_limit_factor(drop_policies)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to query

    ##
    # Gets a list of all drop policies
    # :method: get_drop_policy_list

    ##
    # Gets the maximum number of active connections for each queue. This is only valid
    # for the &amp;quot;fred" type.
    # :method: get_drop_policy_maximum_active_connections
    # :call-seq:
    # get_drop_policy_maximum_active_connections(drop_policies)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to query

    ##
    # Gets the maximum probability for dropping packets when the average queue length is
    # between the minimum and maximum thresholds. This is only valid for the &amp;quot;red"
    # and &amp;quot;fred" types.
    # :method: get_drop_policy_maximum_probability
    # :call-seq:
    # get_drop_policy_maximum_probability(drop_policies)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to query

    ##
    # Gets the maximum queue size. This is only valid for the &amp;quot;red" type.
    # :method: get_drop_policy_maximum_queue_size
    # :call-seq:
    # get_drop_policy_maximum_queue_size(drop_policies)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to query

    ##
    # Gets the queue length threshold above which packets are dropped when the rate filter
    # is throttling traffic. This is only valid for the &amp;quot;red" and &amp;quot;fred"
    # types.
    # :method: get_drop_policy_maximum_queue_threshold
    # :call-seq:
    # get_drop_policy_maximum_queue_threshold(drop_policies)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to query

    ##
    # Gets the queue length threshold below which packets are not dropped when the rate
    # filter is throttling traffic. This is only valid for the &amp;quot;red" and &amp;quot;fred"
    # types.
    # :method: get_drop_policy_minimum_queue_threshold
    # :call-seq:
    # get_drop_policy_minimum_queue_threshold(drop_policies)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to query

    ##
    # Gets the no-drop limit factor. This is only valid for the &amp;quot;fred" type.
    # :method: get_drop_policy_no_drop_limit_factor
    # :call-seq:
    # get_drop_policy_no_drop_limit_factor(drop_policies)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to query

    ##
    # Gets the drop policy type
    # :method: get_drop_policy_type
    # :call-seq:
    # get_drop_policy_type(drop_policies)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to query

    ##
    # Gets the weight used to calculate the average queue lengths. This is only valid for
    # the &amp;quot;red" and &amp;quot;fred" types.
    # :method: get_drop_policy_weight
    # :call-seq:
    # get_drop_policy_weight(drop_policies)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to query

    ##
    # Gets a list of all rate classes.
    # :method: get_list

    ##
    # Gets the name of the parent rate class. Any child Rate Class has the ability to borrow
    # bandwidth from its parent. If the parent rate class is not specified in the definition
    # of a rate class, the Rate Class is not a child, but may be a parent if another Rate
    # Class refers to it as such.
    # :method: get_parent
    # :call-seq:
    # get_parent(rate_classes)
    #
    # Parameters:
    # - rate_classes String[] The names of the rate classes.

    ##
    # Gets the base rate, if specified as a percentage of the parent rate filter class'
    # base rate. This is zero if the base rate is specified as bandwidth (see set/get_base_rate).
    # :method: get_percent_of_parent_base_rate
    # :call-seq:
    # get_percent_of_parent_base_rate(rate_classes)
    #
    # Parameters:
    # - rate_classes String[] Names of the rate filter classes to query

    ##
    # Gets the ceiling rate, if specified as a percentage of the parent's ceiling rate.
    # This is zero if the ceiling rate is specified as a throughput (see set/get_ceiling_rate).
    # :method: get_percent_of_parent_ceiling_rate
    # :call-seq:
    # get_percent_of_parent_ceiling_rate(rate_classes)
    #
    # Parameters:
    # - rate_classes String[] Names of the rate filter classes to query

    ##
    # Gets the queue types being used by the specified rate classes. See also the get_queueing_method
    # method.
    # :method: get_queue_type
    # :call-seq:
    # get_queue_type(rate_classes)
    #
    # Parameters:
    # - rate_classes String[] The names of the rate classes.

    ##
    # Gets the queueing method, specifying how packets are queued for rate filtering, effectively
    # determining the class of traffic which is dropped if necessary.
    # :method: get_queueing_method
    # :call-seq:
    # get_queueing_method(rate_classes)
    #
    # Parameters:
    # - rate_classes String[] Names of the rate filter classes

    ##
    # Gets the number of the buckets used to divide the traffic for each queue. This is
    # only valid for the stochastic fair queueing type.
    # :method: get_queueing_method_bucket_count
    # :call-seq:
    # get_queueing_method_bucket_count(queues)
    #
    # Parameters:
    # - queues String[] Names of the queueing methods to query

    ##
    # Gets the size of the buckets used to divide the traffic for each queue. This is only
    # valid for the stochastic fair queueing type.
    # :method: get_queueing_method_bucket_size
    # :call-seq:
    # get_queueing_method_bucket_size(queues)
    #
    # Parameters:
    # - queues String[] Names of the queueing methods to query

    ##
    # Gets a list of all queueing methods
    # :method: get_queueing_method_list

    ##
    # Gets the maximum queue size. This is only valid for the Priority FIFO queueing type.
    # :method: get_queueing_method_maximum_queue_size
    # :call-seq:
    # get_queueing_method_maximum_queue_size(queues)
    #
    # Parameters:
    # - queues String[] Names of the queueing methods to query

    ##
    # Gets the minimum queue size. This is only valid for the Priority FIFO queueing type.
    # :method: get_queueing_method_minimum_queue_size
    # :call-seq:
    # get_queueing_method_minimum_queue_size(queues)
    #
    # Parameters:
    # - queues String[] Names of the queueing methods to query

    ##
    # Gets the perburation interval, the interval at which the system reconfigures the
    # bucket hash function. This is only valid for the stochastic fair queueing type.
    # :method: get_queueing_method_perturbation_interval
    # :call-seq:
    # get_queueing_method_perturbation_interval(queues)
    #
    # Parameters:
    # - queues String[] Names of the queueing methods to query

    ##
    # Gets the queueing method types, i.e., the method use to store and remove traffic
    # from the queues managed by a rate filter.
    # :method: get_queueing_method_type
    # :call-seq:
    # get_queueing_method_type(queues)
    #
    # Parameters:
    # - queues String[] Names of the queueing methods to query

    ##
    # Gets the name of shaping policy, used to specify custom drop policies and queueing
    # methods.
    # :method: get_shaping_policy
    # :call-seq:
    # get_shaping_policy(rate_classes)
    #
    # Parameters:
    # - rate_classes String[] Names of the rate filter classes to query

    ##
    # Gets the burst size for a shaping policy, the maximum number of bytes that traffic
    # is allowed to burst beyond the base rate.
    # :method: get_shaping_policy_burst_size
    # :call-seq:
    # get_shaping_policy_burst_size(policies)
    #
    # Parameters:
    # - policies String[] Names of the shaping policies to query

    ##
    # Gets the name of the drop policy for a shaping policy, specifying how a rate filter
    # drops packets when the rate filter is throttling traffic.
    # :method: get_shaping_policy_drop_policy
    # :call-seq:
    # get_shaping_policy_drop_policy(policies)
    #
    # Parameters:
    # - policies String[] Names of the shaping policies to query

    ##
    # Gets a list of all shaping policies
    # :method: get_shaping_policy_list

    ##
    # Gets the base rate for a shaping policy, if specified as a percentage of the parent
    # rate filter class' base rate.
    # :method: get_shaping_policy_percent_of_parent_base_rate
    # :call-seq:
    # get_shaping_policy_percent_of_parent_base_rate(policies)
    #
    # Parameters:
    # - policies String[] Names of the shaping policies to query

    ##
    # Gets the ceiling rate for a shaping policy, if specified as a percentage of the parent
    # rate filter class' ceiling rate.
    # :method: get_shaping_policy_percent_of_parent_ceiling_rate
    # :call-seq:
    # get_shaping_policy_percent_of_parent_ceiling_rate(policies)
    #
    # Parameters:
    # - policies String[] Names of the shaping policies to query

    ##
    # Gets the queueing method for a shaping policy, specifying how packets are queued
    # for rate filtering, effectively determining the class of traffic which is dropped
    # if necessary.
    # :method: get_shaping_policy_queueing_method
    # :call-seq:
    # get_shaping_policy_queueing_method(policies)
    #
    # Parameters:
    # - policies String[] Names of the shaping policies to query

    ##
    # Gets the statistics for the specified rate classes.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(rate_classes)
    #
    # Parameters:
    # - rate_classes String[] The names of the rate classes.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Resets the statistics for the specified rate classes.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(rate_classes)
    #
    # Parameters:
    # - rate_classes String[] The names of the rate classes.

    ##
    # Sets the base rates for the specified rate classes. The base rate specifies the maximum
    # throughput to allot to traffic handled by the Rate Class. Packets in excess of the
    # posted rate will be dropped.
    # :method: set_base_rate
    # :call-seq:
    # set_base_rate(rate_classes ,rates)
    #
    # Parameters:
    # - rate_classes String[] The names of the rate classes.
    # - rates RateUnit[] The base rates to set for the rate classes.

    ##
    # Sets the burst sizes for the specified rate classes. The burst size specifies maximum
    # number of bytes that traffic is allowed to burst beyond the base rate.
    # :method: set_burst_size
    # :call-seq:
    # set_burst_size(rate_classes ,burst_sizes)
    #
    # Parameters:
    # - rate_classes String[] The names of the rate classes.
    # - burst_sizes long[] The burst sizes to set for the rate classes.

    ##
    # Sets the ceiling rates for the specified rate classes. The ceiling rate specifies
    # how far beyond the base rate the traffic is allowed to flow when bursting. The ceiling
    # rate is an absolute limit - it is impossible for traffic to flow at a higher rate
    # than the ceiling rate, even when bursting. If the ceiling rate is omitted or is equal
    # to the base rate, the traffic may not exceed the base rate. It is illegal for the
    # ceiling rate to be less than the base rate.
    # :method: set_ceiling_rate
    # :call-seq:
    # set_ceiling_rate(rate_classes ,rates)
    #
    # Parameters:
    # - rate_classes String[] The names of the rate classes.
    # - rates RateUnit[] The ceiling rates to set for the rate classes.

    ##
    # Sets the direction types to be used by the specified rate classes. For the DIRECTION_VLAN
    # type, it is best to use set_direction_vlan.
    # :method: set_direction
    # :call-seq:
    # set_direction(rate_classes ,direction_types)
    #
    # Parameters:
    # - rate_classes String[] The names of the rate classes.
    # - direction_types DirectionType[] The direction types to set for the rate classes.

    ##
    # Sets the direction type to apply rate filtering to traffic leaving via a specified
    # VLAN.
    # :method: set_direction_vlan
    # :call-seq:
    # set_direction_vlan(rate_classes ,vlans)
    #
    # Parameters:
    # - rate_classes String[] Names of the rate filter classes to modify
    # - vlans String[] Name of the egress VLAN for each specified rate filter class (default: none, i.e., this must be specified)

    ##
    # A drop policy controls which packets are dropped when a rate filter needs to throttle
    # traffic. A rate filter collects traffic in a number of queues, classified according
    # to the rate filter's queueing method (see set_queueing_method). The drop policy determines
    # how traffic is dropped from each queue with each queue's being treated the same.
    # This method sets the name of the drop policy. Three pre-defined drop policies exist.
    # &amp;quot;fred" drops packets according to the type of traffic. &amp;quot;red" drops
    # packets randomly. &amp;quot;tail" drops packets from the end of the queues.
    # :method: set_drop_policy
    # :call-seq:
    # set_drop_policy(rate_classes ,policies)
    #
    # Parameters:
    # - rate_classes String[] Names of the rate filter classes to modify
    # - policies String[] Name of the drop policy for each specified rate filter class (default: "tail")

    ##
    # Sets the average packet (maximum transmission unit (MTU)) size. This is only valid
    # for the &amp;quot;fred" and &amp;quot;red" types.
    # :method: set_drop_policy_average_packet_size
    # :call-seq:
    # set_drop_policy_average_packet_size(drop_policies ,mtus)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to modify
    # - mtus long[] Average packet (MTU) size for each specified drop policy (maximum: 10000 default: zero)

    ##
    # Sets the drop limit factor. A larger value increases the hard drop limit. This is
    # only valid for the &amp;quot;fred" type.
    # :method: set_drop_policy_drop_limit_factor
    # :call-seq:
    # set_drop_policy_drop_limit_factor(drop_policies ,factors)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to modify
    # - factors long[] Drop limit factor for each specified drop policy (arbitrary units 0-400, default: zero)

    ##
    # Sets the maximum number of active connections for each queue. This is only valid
    # for the &amp;quot;fred" type.
    # :method: set_drop_policy_maximum_active_connections
    # :call-seq:
    # set_drop_policy_maximum_active_connections(drop_policies ,max_conns)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to modify
    # - max_conns long[] Maximum number of connections for each specified drop policy (maximum: 10000. default: zero (disables the active connection limitation))

    ##
    # Sets the maximum probability for dropping packets when the average queue length is
    # between the minimum and maximum thresholds. This is only used for the &amp;quot;red"
    # and &amp;quot;fred" types.
    # :method: set_drop_policy_maximum_probability
    # :call-seq:
    # set_drop_policy_maximum_probability(drop_policies ,probabilities)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to modify
    # - probabilities long[] Maximum probability (percent) for each specified drop policy (default: zero)

    ##
    # Sets the maximum queue size. If a queue exceeds that size, any additional packets
    # are dropped if the rate filter is throttling traffic. This is only valid for the
    # &amp;quot;red" type.
    # :method: set_drop_policy_maximum_queue_size
    # :call-seq:
    # set_drop_policy_maximum_queue_size(drop_policies ,max_sizes)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to modify
    # - max_sizes long[] Maximum queue size for each specified drop policy (bytes) (default: zero)

    ##
    # Sets the queue length threshold above which packets are dropped when the rate filter
    # is throttling traffic. This is only used for the &amp;quot;red" and &amp;quot;fred"
    # types.
    # :method: set_drop_policy_maximum_queue_threshold
    # :call-seq:
    # set_drop_policy_maximum_queue_threshold(drop_policies ,thresholds)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to modify
    # - thresholds long[] Queue length above which packets are dropped for each specified drop policy (default: zero)

    ##
    # Sets the queue length threshold below which packets are not dropped when the rate
    # filter is throttling traffic. This is only used for the &amp;quot;red" and &amp;quot;fred"
    # types.
    # :method: set_drop_policy_minimum_queue_threshold
    # :call-seq:
    # set_drop_policy_minimum_queue_threshold(drop_policies ,thresholds)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to modify
    # - thresholds long[] Queue length below which packets are not dropped for each specified drop policy (default: zero)

    ##
    # Sets the no-drop limit factor. A larger value prevents packets from being dropped.
    # This is only valid for the &amp;quot;fred" type.
    # :method: set_drop_policy_no_drop_limit_factor
    # :call-seq:
    # set_drop_policy_no_drop_limit_factor(drop_policies ,factors)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to modify
    # - factors long[] No-drop limit factor for each specified drop policy (arbitrary units 0-100, default: zero)

    ##
    # Sets the drop policy type, i.e., the general strategy for a rate filter's dropping
    # packets when throttling traffic. See the DropPolicyType enumeration for details.
    # :method: set_drop_policy_type
    # :call-seq:
    # set_drop_policy_type(drop_policies ,types)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to modify
    # - types DropPolicyType[] Drop policy type for each specified drop policy (default: DROP_TAIL)

    ##
    # Sets the weight used to calculate the average lengths of the rate filter's queues.
    # This is only used for the &amp;quot;red" and &amp;quot;fred" types.
    # :method: set_drop_policy_weight
    # :call-seq:
    # set_drop_policy_weight(drop_policies ,weights)
    #
    # Parameters:
    # - drop_policies String[] Names of the drop policies to modify
    # - weights long[] Weight used to calculate the average queue length for each specified drop policy (valid: 0, 64, 128, 256, 512. default: zero).

    ##
    # Sets the name of the parent rate class. Any child Rate Class has the ability to borrow
    # bandwidth from its parent. If the parent rate class is not specified in the definition
    # of a rate class, the Rate Class is not a child, but may be a parent if another Rate
    # Class refers to it as such.
    # :method: set_parent
    # :call-seq:
    # set_parent(rate_classes ,parents)
    #
    # Parameters:
    # - rate_classes String[] The names of the rate classes.
    # - parents String[] The parent rate class names.

    ##
    # Sets base rate by specifying a percentage of the parent's base rate. The base rate
    # is the maximum throughput for traffic handled by the rate filter.
    # :method: set_percent_of_parent_base_rate
    # :call-seq:
    # set_percent_of_parent_base_rate(rate_classes ,percents)
    #
    # Parameters:
    # - rate_classes String[] Names of the rate filter classes to modify
    # - percents long[] Percent of the parent's base rate for each specified rate filter class (default: zero, i.e., the base rate is specified as bandwidth (see set_base_rate))

    ##
    # Sets the ceiling rate by specifying a percentage of the parent's ceiling rate. The
    # ceiling rate specifies the absolute throughput limit for traffic handled by the rate
    # filter.
    # :method: set_percent_of_parent_ceiling_rate
    # :call-seq:
    # set_percent_of_parent_ceiling_rate(rate_classes ,percents)
    #
    # Parameters:
    # - rate_classes String[] Names of the rate filter classes to modify
    # - percents long[] Percent of the parent's ceiling rate for each specified rate filter class (default: zero, i.e., the ceiling rate is specified as bandwidth (see set_ceiling_rate)

    ##
    # Sets the queue types to be used by the specified rate classes. See also the set_queueing_method
    # method.
    # :method: set_queue_type
    # :call-seq:
    # set_queue_type(rate_classes ,queue_types)
    #
    # Parameters:
    # - rate_classes String[] The names of the rate classes.
    # - queue_types QueueType[] The queue types to set for the rate classes.

    ##
    # Sets the queueing method, specifying how packets are queued for rate filtering, effectively
    # determining the class of traffic which is dropped, if necessary. Two pre-defined
    # methods exist. &amp;quot;sfq" queues traffic according to the connection information,
    # i.e., being fair to individual connections. &amp;quot;pfifo" queues traffic according
    # to the Type of Service (ToS) packet field. This method is a more expansive version
    # of the set_queue_type method, whose two enumerated types map exactly to the pre-defined
    # &amp;quot;pfifo" and &amp;quot;sfq" objects.
    # :method: set_queueing_method
    # :call-seq:
    # set_queueing_method(rate_classes ,methods)
    #
    # Parameters:
    # - rate_classes String[] Names of the rate filter classes
    # - methods String[] Name of the queueing method object for each specified rate filter class (default: "sfq")

    ##
    # Sets the number of the buckets used to divide the traffic for each queue. This is
    # only used by the stochastic fair queueing type.
    # :method: set_queueing_method_bucket_count
    # :call-seq:
    # set_queueing_method_bucket_count(queues ,bucket_counts)
    #
    # Parameters:
    # - queues String[] Names of the queueing methods to modify
    # - bucket_counts long[] Number of buckets for each specified queueing method (valid: 0, 16, 32, 64, 128, 256, 512, 1024 default: zero)

    ##
    # Sets the size of the buckets used to divide the traffic for each queue. This is only
    # used by the stochastic fair queueing type.
    # :method: set_queueing_method_bucket_size
    # :call-seq:
    # set_queueing_method_bucket_size(queues ,bucket_sizes)
    #
    # Parameters:
    # - queues String[] Names of the queueing methods to modify
    # - bucket_sizes long[] Bucket size (bytes) for each specified queueing method (default: zero)

    ##
    # Sets the maximum queue size. This is only used by the Priority FIFO queueing type.
    # :method: set_queueing_method_maximum_queue_size
    # :call-seq:
    # set_queueing_method_maximum_queue_size(queues ,max_sizes)
    #
    # Parameters:
    # - queues String[] Names of the queueing methods to modify
    # - max_sizes long[] Maximum queue size (bytes) for each specified queueing method (default: zero)

    ##
    # Sets the minimum queue size. This is only used by the Priority FIFO queueing type.
    # :method: set_queueing_method_minimum_queue_size
    # :call-seq:
    # set_queueing_method_minimum_queue_size(queues ,min_sizes)
    #
    # Parameters:
    # - queues String[] Names of the queueing methods to modify
    # - min_sizes long[] Minimum queue size (bytes) for each specified queueing method (default: zero)

    ##
    # Sets the perturbation interval, i.e. the interval at which the rate filter reconfigures
    # the bucket hash function. This is only used by the stochastic fair queueing type.
    # :method: set_queueing_method_perturbation_interval
    # :call-seq:
    # set_queueing_method_perturbation_interval(queues ,intervals)
    #
    # Parameters:
    # - queues String[] Names of the queueing methods to modify
    # - intervals long[] Perturbation interval (seconds) for each specified queueing method (default: 10sec)

    ##
    # Sets the queueing method type, i.e., the method use to store and remove traffic from
    # the queues managed by a rate filter. See the QueueType enumeration for more details.
    # :method: set_queueing_method_type
    # :call-seq:
    # set_queueing_method_type(queues ,types)
    #
    # Parameters:
    # - queues String[] Names of the queueing methods to modify
    # - types QueueType[] Queueing method type for each specified queueing method (default: none, i.e., this must be specified)

    ##
    # Sets the shaping policy, used to specify custom drop policies and queueing methods.
    # A shaping policy encapsulates a set of rate filter class configuration attributes
    # into a single object. Once created, this object can be used to create rate filter
    # classes more easily, by specifying a shaping policy rather than all of its attributes
    # individually. Note that this is purely a convenience interface. There is nothing
    # in a shaping policy which cannot also be done via a rate filter class object.
    # :method: set_shaping_policy
    # :call-seq:
    # set_shaping_policy(rate_classes ,policies)
    #
    # Parameters:
    # - rate_classes String[] Names of the rate filter classes to modify
    # - policies String[] Name of the shaping policy object for each specified rate filter class (default: none)

    ##
    # Sets the burst size in a shaping policy, the maximum number of bytes that traffic
    # is allowed to burst beyond the base rate.
    # :method: set_shaping_policy_burst_size
    # :call-seq:
    # set_shaping_policy_burst_size(policies ,burst_sizes)
    #
    # Parameters:
    # - policies String[] Names of the shaping policies to modify
    # - burst_sizes long[] Burst size (bytes) for each specified shaping policy

    ##
    # Sets the name of the drop policy in a shaping policy, specifying how the rate filter
    # drops packets when throttling traffic. Three pre-defined drop policies exist. &amp;quot;fred"
    # drops packets according to the type of traffic. &amp;quot;red" drops packets randomly.
    # &amp;quot;tail" drops packets from the end of the queues. See the drop policy methods
    # for more information.
    # :method: set_shaping_policy_drop_policy
    # :call-seq:
    # set_shaping_policy_drop_policy(policies ,drop_policies)
    #
    # Parameters:
    # - policies String[] Names of the shaping policies to modify
    # - drop_policies String[] Name of the drop policy for each specified shaping policy (default: "tail")

    ##
    # Sets base rate in a shaping policy by specifying a percentage of the parent's rate
    # filter class' base rate. The base rate is the maximum throughput for traffic handled
    # by the rate filter.
    # :method: set_shaping_policy_percent_of_parent_base_rate
    # :call-seq:
    # set_shaping_policy_percent_of_parent_base_rate(policies ,percents)
    #
    # Parameters:
    # - policies String[] Names of the shaping policies to modify
    # - percents long[] Percent of parent base rates for each specified shaping policy (default: zero)

    ##
    # Sets the ceiling rate for a shaping policy by specifying a percentage of the parent's
    # rate filter class' ceiling rate. The ceiling rate specifies the absolute throughput
    # limit for traffic handled by the rate filter.
    # :method: set_shaping_policy_percent_of_parent_ceiling_rate
    # :call-seq:
    # set_shaping_policy_percent_of_parent_ceiling_rate(policies ,percents)
    #
    # Parameters:
    # - policies String[] Names of the shaping policies to modify
    # - percents long[] Percent of parent base rates (default: zero) for each specified shaping policy

    ##
    # Sets the queueing method for a shaping policy, specifying how packets are queued
    # for rate filtering, effectively determining the class of traffic which is dropped
    # if necessary. Two pre-defined methods exist. &amp;quot;sfq" queues traffic according
    # to the connection information, i.e., fair to individual connections. &amp;quot;pfifo"
    # queues traffic according to the Type of Service (ToS) packet field. See the queueing
    # method methods for more details.
    # :method: set_shaping_policy_queueing_method
    # :call-seq:
    # set_shaping_policy_queueing_method(policies ,methods)
    #
    # Parameters:
    # - policies String[] Names of the shaping policies to modify
    # - methods String[] Name of the queueing method object for each shaping policy (default: "sfq")


  end
end
