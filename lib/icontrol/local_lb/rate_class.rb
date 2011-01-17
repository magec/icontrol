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

    set_id_name "rate_classes"

    class RateClassStatisticEntry < IControl::Base::Struct; end
    class RateClassStatistics < IControl::Base::Struct; end
    class RateUnit < IControl::Base::Struct; end
    class DirectionTypeSequence < IControl::Base::Sequence ; end
    class DropPolicyTypeSequence < IControl::Base::Sequence ; end
    class QueueTypeSequence < IControl::Base::Sequence ; end
    class RateClassStatisticEntrySequence < IControl::Base::Sequence ; end
    class RateUnitSequence < IControl::Base::Sequence ; end
    class UnitTypeSequence < IControl::Base::Sequence ; end
    # A list of different directions to indicate how rate shaping should be applied to.
    class DirectionType < IControl::Base::Enumeration; end
    # A list of drop policy types
    class DropPolicyType < IControl::Base::Enumeration; end
    # Queueing method types
    class QueueType < IControl::Base::Enumeration; end
    # A list of unit types.
    class UnitType < IControl::Base::Enumeration; end    ##
    # Creates this rate classe.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::RateClass::RateUnit] :base_rates The base rates at which the maximum throughput to allot to traffic handled		 by the Rate Classes. Packets in excess of the posted rate will be dropped.
    def create(opts)
      opts = check_params(opts,[:base_rates])
      super(opts)
    end

    ##
    # Creates this drop policies, given the drop policy type, the general strategy used
    # by the rate filter to throttle traffic. Note that pre-defined drop policies exist
    # with a basic configuration for each type - &amp;quot;tail", &amp;quot;red", and &amp;quot;fred".
    # Also note that a rate filter class defaults to using a &amp;quot;tail" drop policy.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to create
    # @option opts [IControl::LocalLB::RateClass::DropPolicyType] :types Type for each created drop policy
    def create_drop_policy(opts)
      opts = check_params(opts,[:drop_policies,:types])
      super(opts)
    end

    ##
    # Creates this queueing methods, given their queueing method type.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :queues Names of the queueing methods to create
    # @option opts [IControl::LocalLB::RateClass::QueueType] :types Type for each created queueing method
    def create_queueing_method(opts)
      opts = check_params(opts,[:queues,:types])
      super(opts)
    end

    ##
    # Creates this shaping policies.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policies Names of the shaping policies to create
    def create_shaping_policy(opts)
      opts = check_params(opts,[:policies])
      super(opts)
    end

    ##
    # Deletes all drop policies
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_drop_policies
      super
    end

    ##
    # Deletes all queueing methods.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_queueing_methods
      super
    end

    ##
    # Deletes all rate classe.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_rate_classes
      super
    end

    ##
    # Deletes all shaping policies.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_shaping_policies
      super
    end

    ##
    # Deletes this drop policies
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to delete
    def delete_drop_policy(opts)
      opts = check_params(opts,[:drop_policies])
      super(opts)
    end

    ##
    # Deletes this queueing methods.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :queues Names of the queueing methods to delete
    def delete_queueing_method(opts)
      opts = check_params(opts,[:queues])
      super(opts)
    end

    ##
    # Deletes this rate classe.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_rate_class
      super
    end

    ##
    # Deletes this shaping policies.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policies Names of the shaping policies to delete
    def delete_shaping_policy(opts)
      opts = check_params(opts,[:policies])
      super(opts)
    end

    ##
    # Gets the statistics for all the rate classe.
    # @rspec_example
    # @return [RateClassStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the base rates for this rate classe. The base rate specifies the maximum throughput
    # to allot to traffic handled by the Rate Class. Packets in excess of the posted rate
    # will be dropped.
    # @rspec_example
    # @return [RateUnit]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def base_rate
      super
    end

    ##
    # Gets the burst sizes for this rate classe. The burst size specifies maximum number
    # of bytes that traffic is allowed to burst beyond the base rate.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def burst_size
      super
    end

    ##
    # Gets the ceiling rates for this rate classe. The ceiling rate specifies how far beyond
    # the base rate the traffic is allowed to flow when bursting. The ceiling rate is an
    # absolute limit - it is impossible for traffic to flow at a higher rate than the ceiling
    # rate, even when bursting. If the ceiling rate is omitted or is equal to the base
    # rate, the traffic may not exceed the base rate. It is illegal for the ceiling rate
    # to be less than the base rate.
    # @rspec_example
    # @return [RateUnit]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ceiling_rate
      super
    end

    ##
    # Gets the direction types being used by this rate classe.
    # @rspec_example
    # @return [DirectionType]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def direction
      super
    end

    ##
    # Gets the VLAN whose outbound traffic is rate filtered. This is only valid for the
    # DIRECTION_VLAN direction.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def direction_vlan
      super
    end

    ##
    # Gets the name of the drop policy, specifying how a rate filter drops packets when
    # the rate filter is throttling traffic.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def drop_policy
      super
    end

    ##
    # Gets the average packet (maximum transmission unit (MTU)) size. This is only valid
    # for the &amp;quot;fred" and &amp;quot;red" types.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to query
    def drop_policy_average_packet_size(opts)
      opts = check_params(opts,[:drop_policies])
      super(opts)
    end

    ##
    # Gets the drop limit factor. This is only valid for the &amp;quot;fred" type.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to query
    def drop_policy_drop_limit_factor(opts)
      opts = check_params(opts,[:drop_policies])
      super(opts)
    end

    ##
    # Gets a list of all drop policies
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def drop_policy_list
      super
    end

    ##
    # Gets the maximum number of active connections for each queue. This is only valid
    # for the &amp;quot;fred" type.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to query
    def drop_policy_maximum_active_connections(opts)
      opts = check_params(opts,[:drop_policies])
      super(opts)
    end

    ##
    # Gets the maximum probability for dropping packets when the average queue length is
    # between the minimum and maximum thresholds. This is only valid for the &amp;quot;red"
    # and &amp;quot;fred" types.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to query
    def drop_policy_maximum_probability(opts)
      opts = check_params(opts,[:drop_policies])
      super(opts)
    end

    ##
    # Gets the maximum queue size. This is only valid for the &amp;quot;red" type.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to query
    def drop_policy_maximum_queue_size(opts)
      opts = check_params(opts,[:drop_policies])
      super(opts)
    end

    ##
    # Gets the queue length threshold above which packets are dropped when the rate filter
    # is throttling traffic. This is only valid for the &amp;quot;red" and &amp;quot;fred"
    # types.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to query
    def drop_policy_maximum_queue_threshold(opts)
      opts = check_params(opts,[:drop_policies])
      super(opts)
    end

    ##
    # Gets the queue length threshold below which packets are not dropped when the rate
    # filter is throttling traffic. This is only valid for the &amp;quot;red" and &amp;quot;fred"
    # types.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to query
    def drop_policy_minimum_queue_threshold(opts)
      opts = check_params(opts,[:drop_policies])
      super(opts)
    end

    ##
    # Gets the no-drop limit factor. This is only valid for the &amp;quot;fred" type.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to query
    def drop_policy_no_drop_limit_factor(opts)
      opts = check_params(opts,[:drop_policies])
      super(opts)
    end

    ##
    # Gets the drop policy type
    # @rspec_example
    # @return [DropPolicyType]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to query
    def drop_policy_type(opts)
      opts = check_params(opts,[:drop_policies])
      super(opts)
    end

    ##
    # Gets the weight used to calculate the average queue lengths. This is only valid for
    # the &amp;quot;red" and &amp;quot;fred" types.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to query
    def drop_policy_weight(opts)
      opts = check_params(opts,[:drop_policies])
      super(opts)
    end

    ##
    # Gets a list of all rate classe.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the name of the parent rate class. Any child Rate Class has the ability to borrow
    # bandwidth from its parent. If the parent rate class is not specified in the definition
    # of a rate class, the Rate Class is not a child, but may be a parent if another Rate
    # Class refers to it as such.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def parent
      super
    end

    ##
    # Gets the base rate, if specified as a percentage of the parent rate filter class'
    # base rate. This is zero if the base rate is specified as bandwidth (see set/get_base_rate).
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def percent_of_parent_base_rate
      super
    end

    ##
    # Gets the ceiling rate, if specified as a percentage of the parent's ceiling rate.
    # This is zero if the ceiling rate is specified as a throughput (see set/get_ceiling_rate).
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def percent_of_parent_ceiling_rate
      super
    end

    ##
    # Gets the queue types being used by this rate classe. See also the get_queueing_method
    # method.
    # @rspec_example
    # @return [QueueType]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def queue_type
      super
    end

    ##
    # Gets the queueing method, specifying how packets are queued for rate filtering, effectively
    # determining the class of traffic which is dropped if necessary.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def queueing_method
      super
    end

    ##
    # Gets the number of the buckets used to divide the traffic for each queue. This is
    # only valid for the stochastic fair queueing type.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :queues Names of the queueing methods to query
    def queueing_method_bucket_count(opts)
      opts = check_params(opts,[:queues])
      super(opts)
    end

    ##
    # Gets the size of the buckets used to divide the traffic for each queue. This is only
    # valid for the stochastic fair queueing type.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :queues Names of the queueing methods to query
    def queueing_method_bucket_size(opts)
      opts = check_params(opts,[:queues])
      super(opts)
    end

    ##
    # Gets a list of all queueing methods
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def queueing_method_list
      super
    end

    ##
    # Gets the maximum queue size. This is only valid for the Priority FIFO queueing type.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :queues Names of the queueing methods to query
    def queueing_method_maximum_queue_size(opts)
      opts = check_params(opts,[:queues])
      super(opts)
    end

    ##
    # Gets the minimum queue size. This is only valid for the Priority FIFO queueing type.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :queues Names of the queueing methods to query
    def queueing_method_minimum_queue_size(opts)
      opts = check_params(opts,[:queues])
      super(opts)
    end

    ##
    # Gets the perburation interval, the interval at which the system reconfigures the
    # bucket hash function. This is only valid for the stochastic fair queueing type.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :queues Names of the queueing methods to query
    def queueing_method_perturbation_interval(opts)
      opts = check_params(opts,[:queues])
      super(opts)
    end

    ##
    # Gets the queueing method types, i.e., the method use to store and remove traffic
    # from the queues managed by a rate filter.
    # @rspec_example
    # @return [QueueType]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :queues Names of the queueing methods to query
    def queueing_method_type(opts)
      opts = check_params(opts,[:queues])
      super(opts)
    end

    ##
    # Gets the name of shaping policy, used to specify custom drop policies and queueing
    # methods.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def shaping_policy
      super
    end

    ##
    # Gets the burst size for a shaping policy, the maximum number of bytes that traffic
    # is allowed to burst beyond the base rate.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policies Names of the shaping policies to query
    def shaping_policy_burst_size(opts)
      opts = check_params(opts,[:policies])
      super(opts)
    end

    ##
    # Gets the name of the drop policy for a shaping policy, specifying how a rate filter
    # drops packets when the rate filter is throttling traffic.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policies Names of the shaping policies to query
    def shaping_policy_drop_policy(opts)
      opts = check_params(opts,[:policies])
      super(opts)
    end

    ##
    # Gets a list of all shaping policies
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def shaping_policy_list
      super
    end

    ##
    # Gets the base rate for a shaping policy, if specified as a percentage of the parent
    # rate filter class' base rate.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policies Names of the shaping policies to query
    def shaping_policy_percent_of_parent_base_rate(opts)
      opts = check_params(opts,[:policies])
      super(opts)
    end

    ##
    # Gets the ceiling rate for a shaping policy, if specified as a percentage of the parent
    # rate filter class' ceiling rate.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policies Names of the shaping policies to query
    def shaping_policy_percent_of_parent_ceiling_rate(opts)
      opts = check_params(opts,[:policies])
      super(opts)
    end

    ##
    # Gets the queueing method for a shaping policy, specifying how packets are queued
    # for rate filtering, effectively determining the class of traffic which is dropped
    # if necessary.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policies Names of the shaping policies to query
    def shaping_policy_queueing_method(opts)
      opts = check_params(opts,[:policies])
      super(opts)
    end

    ##
    # Gets the statistics for this rate classe.
    # @rspec_example
    # @return [RateClassStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
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
    # Resets the statistics for this rate classe.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the base rates for this rate classe. The base rate specifies the maximum throughput
    # to allot to traffic handled by the Rate Class. Packets in excess of the posted rate
    # will be dropped.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::RateClass::RateUnit] :rates The base rates to set for the rate classes.
    def set_base_rate(opts)
      opts = check_params(opts,[:rates])
      super(opts)
    end

    ##
    # Sets the burst sizes for this rate classe. The burst size specifies maximum number
    # of bytes that traffic is allowed to burst beyond the base rate.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :burst_sizes The burst sizes to set for the rate classes.
    def set_burst_size(opts)
      opts = check_params(opts,[:burst_sizes])
      super(opts)
    end

    ##
    # Sets the ceiling rates for this rate classe. The ceiling rate specifies how far beyond
    # the base rate the traffic is allowed to flow when bursting. The ceiling rate is an
    # absolute limit - it is impossible for traffic to flow at a higher rate than the ceiling
    # rate, even when bursting. If the ceiling rate is omitted or is equal to the base
    # rate, the traffic may not exceed the base rate. It is illegal for the ceiling rate
    # to be less than the base rate.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::RateClass::RateUnit] :rates The ceiling rates to set for the rate classes.
    def set_ceiling_rate(opts)
      opts = check_params(opts,[:rates])
      super(opts)
    end

    ##
    # Sets the direction types to be used by this rate classe. For the DIRECTION_VLAN type,
    # it is best to use set_direction_vlan.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::RateClass::DirectionType] :direction_types The direction types to set for the rate classes.
    def set_direction(opts)
      opts = check_params(opts,[:direction_types])
      super(opts)
    end

    ##
    # Sets the direction type to apply rate filtering to traffic leaving via a specified
    # VLAN.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :vlans Name of the egress VLAN for each specified rate filter class (default: none, i.e., this must be specified)
    def set_direction_vlan(opts)
      opts = check_params(opts,[:vlans])
      super(opts)
    end

    ##
    # A drop policy controls which packets are dropped when a rate filter needs to throttle
    # traffic. A rate filter collects traffic in a number of queues, classified according
    # to the rate filter's queueing method (see set_queueing_method). The drop policy determines
    # how traffic is dropped from each queue with each queue's being treated the same.
    # This method sets the name of the drop policy. Three pre-defined drop policies exist.
    # &amp;quot;fred" drops packets according to the type of traffic. &amp;quot;red" drops
    # packets randomly. &amp;quot;tail" drops packets from the end of the queues.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policies Name of the drop policy for each specified rate filter class (default: "tail")
    def set_drop_policy(opts)
      opts = check_params(opts,[:policies])
      super(opts)
    end

    ##
    # Sets the average packet (maximum transmission unit (MTU)) size. This is only valid
    # for the &amp;quot;fred" and &amp;quot;red" types.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to modify
    # @option opts [long] :mtus Average packet (MTU) size for each specified drop policy (maximum: 10000 default: zero)
    def set_drop_policy_average_packet_size(opts)
      opts = check_params(opts,[:drop_policies,:mtus])
      super(opts)
    end

    ##
    # Sets the drop limit factor. A larger value increases the hard drop limit. This is
    # only valid for the &amp;quot;fred" type.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to modify
    # @option opts [long] :factors Drop limit factor for each specified drop policy (arbitrary units 0-400, default: zero)
    def set_drop_policy_drop_limit_factor(opts)
      opts = check_params(opts,[:drop_policies,:factors])
      super(opts)
    end

    ##
    # Sets the maximum number of active connections for each queue. This is only valid
    # for the &amp;quot;fred" type.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to modify
    # @option opts [long] :max_conns Maximum number of connections for each specified drop policy (maximum: 10000. default: zero (disables the active connection limitation))
    def set_drop_policy_maximum_active_connections(opts)
      opts = check_params(opts,[:drop_policies,:max_conns])
      super(opts)
    end

    ##
    # Sets the maximum probability for dropping packets when the average queue length is
    # between the minimum and maximum thresholds. This is only used for the &amp;quot;red"
    # and &amp;quot;fred" types.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to modify
    # @option opts [long] :probabilities Maximum probability (percent) for each specified drop policy (default: zero)
    def set_drop_policy_maximum_probability(opts)
      opts = check_params(opts,[:drop_policies,:probabilities])
      super(opts)
    end

    ##
    # Sets the maximum queue size. If a queue exceeds that size, any additional packets
    # are dropped if the rate filter is throttling traffic. This is only valid for the
    # &amp;quot;red" type.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to modify
    # @option opts [long] :max_sizes Maximum queue size for each specified drop policy (bytes) (default: zero)
    def set_drop_policy_maximum_queue_size(opts)
      opts = check_params(opts,[:drop_policies,:max_sizes])
      super(opts)
    end

    ##
    # Sets the queue length threshold above which packets are dropped when the rate filter
    # is throttling traffic. This is only used for the &amp;quot;red" and &amp;quot;fred"
    # types.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to modify
    # @option opts [long] :thresholds Queue length above which packets are dropped for each specified drop policy (default: zero)
    def set_drop_policy_maximum_queue_threshold(opts)
      opts = check_params(opts,[:drop_policies,:thresholds])
      super(opts)
    end

    ##
    # Sets the queue length threshold below which packets are not dropped when the rate
    # filter is throttling traffic. This is only used for the &amp;quot;red" and &amp;quot;fred"
    # types.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to modify
    # @option opts [long] :thresholds Queue length below which packets are not dropped for each specified drop policy (default: zero)
    def set_drop_policy_minimum_queue_threshold(opts)
      opts = check_params(opts,[:drop_policies,:thresholds])
      super(opts)
    end

    ##
    # Sets the no-drop limit factor. A larger value prevents packets from being dropped.
    # This is only valid for the &amp;quot;fred" type.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to modify
    # @option opts [long] :factors No-drop limit factor for each specified drop policy (arbitrary units 0-100, default: zero)
    def set_drop_policy_no_drop_limit_factor(opts)
      opts = check_params(opts,[:drop_policies,:factors])
      super(opts)
    end

    ##
    # Sets the drop policy type, i.e., the general strategy for a rate filter's dropping
    # packets when throttling traffic. See the DropPolicyType enumeration for details.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to modify
    # @option opts [IControl::LocalLB::RateClass::DropPolicyType] :types Drop policy type for each specified drop policy (default: DROP_TAIL)
    def set_drop_policy_type(opts)
      opts = check_params(opts,[:drop_policies,:types])
      super(opts)
    end

    ##
    # Sets the weight used to calculate the average lengths of the rate filter's queues.
    # This is only used for the &amp;quot;red" and &amp;quot;fred" types.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :drop_policies Names of the drop policies to modify
    # @option opts [long] :weights Weight used to calculate the average queue length for each specified drop policy (valid: 0, 64, 128, 256, 512. default: zero).
    def set_drop_policy_weight(opts)
      opts = check_params(opts,[:drop_policies,:weights])
      super(opts)
    end

    ##
    # Sets the name of the parent rate class. Any child Rate Class has the ability to borrow
    # bandwidth from its parent. If the parent rate class is not specified in the definition
    # of a rate class, the Rate Class is not a child, but may be a parent if another Rate
    # Class refers to it as such.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :parents The parent rate class names.
    def set_parent(opts)
      opts = check_params(opts,[:parents])
      super(opts)
    end

    ##
    # Sets base rate by specifying a percentage of the parent's base rate. The base rate
    # is the maximum throughput for traffic handled by the rate filter.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :percents Percent of the parent's base rate for each specified rate filter class (default: zero, i.e., the base rate is specified as bandwidth (see set_base_rate))
    def set_percent_of_parent_base_rate(opts)
      opts = check_params(opts,[:percents])
      super(opts)
    end

    ##
    # Sets the ceiling rate by specifying a percentage of the parent's ceiling rate. The
    # ceiling rate specifies the absolute throughput limit for traffic handled by the rate
    # filter.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :percents Percent of the parent's ceiling rate for each specified rate filter class (default: zero, i.e., the ceiling rate is specified as bandwidth (see set_ceiling_rate)
    def set_percent_of_parent_ceiling_rate(opts)
      opts = check_params(opts,[:percents])
      super(opts)
    end

    ##
    # Sets the queue types to be used by this rate classe. See also the set_queueing_method
    # method.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::RateClass::QueueType] :queue_types The queue types to set for the rate classes.
    def set_queue_type(opts)
      opts = check_params(opts,[:queue_types])
      super(opts)
    end

    ##
    # Sets the queueing method, specifying how packets are queued for rate filtering, effectively
    # determining the class of traffic which is dropped, if necessary. Two pre-defined
    # methods exist. &amp;quot;sfq" queues traffic according to the connection information,
    # i.e., being fair to individual connections. &amp;quot;pfifo" queues traffic according
    # to the Type of Service (ToS) packet field. This method is a more expansive version
    # of the set_queue_type method, whose two enumerated types map exactly to the pre-defined
    # &amp;quot;pfifo" and &amp;quot;sfq" objects.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :methods Name of the queueing method object for each specified rate filter class (default: "sfq")
    def set_queueing_method(opts)
      opts = check_params(opts,[:methods])
      super(opts)
    end

    ##
    # Sets the number of the buckets used to divide the traffic for each queue. This is
    # only used by the stochastic fair queueing type.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :queues Names of the queueing methods to modify
    # @option opts [long] :bucket_counts Number of buckets for each specified queueing method (valid: 0, 16, 32, 64, 128, 256, 512, 1024 default: zero)
    def set_queueing_method_bucket_count(opts)
      opts = check_params(opts,[:queues,:bucket_counts])
      super(opts)
    end

    ##
    # Sets the size of the buckets used to divide the traffic for each queue. This is only
    # used by the stochastic fair queueing type.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :queues Names of the queueing methods to modify
    # @option opts [long] :bucket_sizes Bucket size (bytes) for each specified queueing method (default: zero)
    def set_queueing_method_bucket_size(opts)
      opts = check_params(opts,[:queues,:bucket_sizes])
      super(opts)
    end

    ##
    # Sets the maximum queue size. This is only used by the Priority FIFO queueing type.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :queues Names of the queueing methods to modify
    # @option opts [long] :max_sizes Maximum queue size (bytes) for each specified queueing method (default: zero)
    def set_queueing_method_maximum_queue_size(opts)
      opts = check_params(opts,[:queues,:max_sizes])
      super(opts)
    end

    ##
    # Sets the minimum queue size. This is only used by the Priority FIFO queueing type.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :queues Names of the queueing methods to modify
    # @option opts [long] :min_sizes Minimum queue size (bytes) for each specified queueing method (default: zero)
    def set_queueing_method_minimum_queue_size(opts)
      opts = check_params(opts,[:queues,:min_sizes])
      super(opts)
    end

    ##
    # Sets the perturbation interval, i.e. the interval at which the rate filter reconfigures
    # the bucket hash function. This is only used by the stochastic fair queueing type.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :queues Names of the queueing methods to modify
    # @option opts [long] :intervals Perturbation interval (seconds) for each specified queueing method (default: 10sec)
    def set_queueing_method_perturbation_interval(opts)
      opts = check_params(opts,[:queues,:intervals])
      super(opts)
    end

    ##
    # Sets the queueing method type, i.e., the method use to store and remove traffic from
    # the queues managed by a rate filter. See the QueueType enumeration for more details.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :queues Names of the queueing methods to modify
    # @option opts [IControl::LocalLB::RateClass::QueueType] :types Queueing method type for each specified queueing method (default: none, i.e., this must be specified)
    def set_queueing_method_type(opts)
      opts = check_params(opts,[:queues,:types])
      super(opts)
    end

    ##
    # Sets the shaping policy, used to specify custom drop policies and queueing methods.
    # A shaping policy encapsulates a set of rate filter class configuration attributes
    # into a single object. Once created, this object can be used to create rate filter
    # classes more easily, by specifying a shaping policy rather than all of its attributes
    # individually. Note that this is purely a convenience interface. There is nothing
    # in a shaping policy which cannot also be done via a rate filter class object.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policies Name of the shaping policy object for each specified rate filter class (default: none)
    def set_shaping_policy(opts)
      opts = check_params(opts,[:policies])
      super(opts)
    end

    ##
    # Sets the burst size in a shaping policy, the maximum number of bytes that traffic
    # is allowed to burst beyond the base rate.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policies Names of the shaping policies to modify
    # @option opts [long] :burst_sizes Burst size (bytes) for each specified shaping policy
    def set_shaping_policy_burst_size(opts)
      opts = check_params(opts,[:policies,:burst_sizes])
      super(opts)
    end

    ##
    # Sets the name of the drop policy in a shaping policy, specifying how the rate filter
    # drops packets when throttling traffic. Three pre-defined drop policies exist. &amp;quot;fred"
    # drops packets according to the type of traffic. &amp;quot;red" drops packets randomly.
    # &amp;quot;tail" drops packets from the end of the queues. See the drop policy methods
    # for more information.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policies Names of the shaping policies to modify
    # @option opts [String] :drop_policies Name of the drop policy for each specified shaping policy (default: "tail")
    def set_shaping_policy_drop_policy(opts)
      opts = check_params(opts,[:policies,:drop_policies])
      super(opts)
    end

    ##
    # Sets base rate in a shaping policy by specifying a percentage of the parent's rate
    # filter class' base rate. The base rate is the maximum throughput for traffic handled
    # by the rate filter.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policies Names of the shaping policies to modify
    # @option opts [long] :percents Percent of parent base rates for each specified shaping policy (default: zero)
    def set_shaping_policy_percent_of_parent_base_rate(opts)
      opts = check_params(opts,[:policies,:percents])
      super(opts)
    end

    ##
    # Sets the ceiling rate for a shaping policy by specifying a percentage of the parent's
    # rate filter class' ceiling rate. The ceiling rate specifies the absolute throughput
    # limit for traffic handled by the rate filter.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policies Names of the shaping policies to modify
    # @option opts [long] :percents Percent of parent base rates (default: zero) for each specified shaping policy
    def set_shaping_policy_percent_of_parent_ceiling_rate(opts)
      opts = check_params(opts,[:policies,:percents])
      super(opts)
    end

    ##
    # Sets the queueing method for a shaping policy, specifying how packets are queued
    # for rate filtering, effectively determining the class of traffic which is dropped
    # if necessary. Two pre-defined methods exist. &amp;quot;sfq" queues traffic according
    # to the connection information, i.e., fair to individual connections. &amp;quot;pfifo"
    # queues traffic according to the Type of Service (ToS) packet field. See the queueing
    # method methods for more details.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :policies Names of the shaping policies to modify
    # @option opts [String] :methods Name of the queueing method object for each shaping policy (default: "sfq")
    def set_shaping_policy_queueing_method(opts)
      opts = check_params(opts,[:policies,:methods])
      super(opts)
    end

    ##
    # A struct that describes statistics for a particular rate class.
    # @attr [String] rate_class The rate class class name.
    # @attr [IControl::Common::StatisticSequence] statistics The statistics for the rate class.
    class RateClassStatisticEntry < IControl::Base::Struct
      icontrol_attribute :rate_class, String
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes rate class statistics and timestamp.
    # @attr [IControl::LocalLB::RateClass::RateClassStatisticEntrySequence] statistics The statistics for a sequence of rate classes.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class RateClassStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::RateClass::RateClassStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes rate and the unit being used.
    # @attr [Numeric] rate The rate.
    # @attr [IControl::LocalLB::RateClass::UnitType] unit The unit that the rate is expressed in.
    class RateUnit < IControl::Base::Struct
      icontrol_attribute :rate, Numeric
      icontrol_attribute :unit, IControl::LocalLB::RateClass::UnitType
    end


    ## A sequence of direction types.
    class DirectionTypeSequence < IControl::Base::Sequence ; end
    ## A sequence of drop policy types
    class DropPolicyTypeSequence < IControl::Base::Sequence ; end
    ## A sequence of queueing method types.
    class QueueTypeSequence < IControl::Base::Sequence ; end
    ## A sequence of rate class statistics.
    class RateClassStatisticEntrySequence < IControl::Base::Sequence ; end
    ## A sequence of rates and their units.
    class RateUnitSequence < IControl::Base::Sequence ; end
    ## A sequence of unit types
    class UnitTypeSequence < IControl::Base::Sequence ; end
    # A list of different directions to indicate how rate shaping should be applied to.
    class DirectionType < IControl::Base::Enumeration
      # Apply rate shaping to traffic to both client and server.
      DIRECTION_ANY = :DIRECTION_ANY
      # Apply rate shaping to traffic to the client.
      DIRECTION_CLIENT = :DIRECTION_CLIENT
      # Apply rate shaping to traffic to the server.
      DIRECTION_SERVER = :DIRECTION_SERVER
    end


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


    # Queueing method types
    class QueueType < IControl::Base::Enumeration
      # Invalid state.
      QUEUE_NONE = :QUEUE_NONE
      # Queue discipline where all traffic is queued under a set of many lists, with the specific list				 chosen based on a hash of the connection information, such that traffic from the same connection				 will always be queued in the same list. Traffic is dequeued from the set of the lists in a round-robin				 fashion. The net effect is that fairness of dequeueing is achieved such that one connection can not				 "hog" the queue at the exclusion of another..
      QUEUE_STOCHASTIC_FAIR = :QUEUE_STOCHASTIC_FAIR
      # Queue discipline where all traffic is queued under a set of five lists based on the Type of Service ( ToS )			 field of the traffic. Four of the lists correspond to the 4 possible ToS values of Minimum delay, Maximum			 throughput, Maximum reliability and Minimum cost. The fifth list represents traffic with no ToS setting.			 These lists are processed in such a fashion as to preserve the meaning of the ToS field as much as possible.			 For example, a Minimum cost packet might yield dequeuing to a Minimum delay packet..
      QUEUE_PRIORITY_FIFO = :QUEUE_PRIORITY_FIFO
    end


    # A list of unit types.
    class UnitType < IControl::Base::Enumeration
      # The unit is bits per second.
      UNIT_BPS = :UNIT_BPS
      # The unit is Kilobits per second.
      UNIT_KBPS = :UNIT_KBPS
      # The unit is Megabits per second.
      UNIT_MBPS = :UNIT_MBPS
    end


  end
end
