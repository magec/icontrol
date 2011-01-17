module IControl::GlobalLB
  ##
  # The Topology interface enables you to work with topology attributes. For example,
  # you can create and delete a topology. You can also use the Topology interface to
  # add virtual server entries to, or remove virtual server entries from, a topology.
  class Topology < IControl::Base

    set_id_name "records"

    class TopologyEndpoint < IControl::Base::Struct; end
    class TopologyRecord < IControl::Base::Struct; end
    class TopologyEndpointSequence < IControl::Base::Sequence ; end
    class TopologyRecordSequence < IControl::Base::Sequence ; end    ##
    # Adds or creates this topology record.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :weights The weights for the records.
    # @option opts [long] :orders The sort orders for the records. These sort orders are used when		longest match sorting is not available.
    def create(opts)
      opts = check_params(opts,[:weights,:orders])
      super(opts)
    end

    ##
    # Deletes all topology record.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_topology_records
      super
    end

    ##
    # Deletes this topology record.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_topology_record
      super
    end

    ##
    # Gets a list of of topology record.
    # @rspec_example
    # @return [TopologyRecord]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the sort orders for this topology record.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def order
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
    # Gets the weights for this links.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def weight
      super
    end

    ##
    # Sets the sort orders used when longest match sorting is not available for this topology
    # record.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :orders The sort orders to set.
    def set_order(opts)
      opts = check_params(opts,[:orders])
      super(opts)
    end

    ##
    # Sets the weights for this topology record.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :weights The weights to set.
    def set_weight(opts)
      opts = check_params(opts,[:weights])
      super(opts)
    end

    ##
    # A struct that describes a topology record's end point
    # @attr [IControl::GlobalLB::RegionType] type The type of topology end point.
    # @attr [String] content The content of the topology end point.
    # @attr [Object] negate Whether the end point is not equal to the definition.
    class TopologyEndpoint < IControl::Base::Struct
      icontrol_attribute :type, IControl::GlobalLB::RegionType
      icontrol_attribute :content, String
      icontrol_attribute :negate, Object
    end

    ##
    # A struct that describes a record in topology list.
    # @attr [IControl::GlobalLB::Topology::TopologyEndpoint] server The location of the virtual servers.
    # @attr [IControl::GlobalLB::Topology::TopologyEndpoint] ldns The location of the LDNS making the name resolution request.
    class TopologyRecord < IControl::Base::Struct
      icontrol_attribute :server, IControl::GlobalLB::Topology::TopologyEndpoint
      icontrol_attribute :ldns, IControl::GlobalLB::Topology::TopologyEndpoint
    end


    ## A sequence of Topology endpoints
    class TopologyEndpointSequence < IControl::Base::Sequence ; end
    ## A sequence of Topology entries
    class TopologyRecordSequence < IControl::Base::Sequence ; end
  end
end
