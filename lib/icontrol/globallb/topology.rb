module IControl::GlobalLB
  ##
  # The Topology interface enables you to work with topology attributes. For example,
  # you can create and delete a topology. You can also use the Topology interface to
  # add virtual server entries to, or remove virtual server entries from, a topology.
  class Topology < IControl::Base
    class TopologyEndpoint < IControl::Base::Struct; end
    class TopologyRecord < IControl::Base::Struct; end    ## A sequence of Topology endpoints
    class TopologyEndpointSequence < IControl::Base::Sequence ; end## A sequence of Topology entries
    class TopologyRecordSequence < IControl::Base::Sequence ; end##
    # A struct that describes a topology record's end point
    class TopologyEndpoint < IControl::Base::Struct
      # The type of topology end point.
      icontrol_attribute :type, IControl::GlobalLB::RegionType
      # The content of the topology end point.
      icontrol_attribute :content, String
      # Whether the end point is not equal to the definition.
      icontrol_attribute :negate, Object
    end

    ##
    # A struct that describes a record in topology list.
    class TopologyRecord < IControl::Base::Struct
      # The location of the virtual servers.
      icontrol_attribute :server, IControl::GlobalLB::Topology::TopologyEndpoint
      # The location of the LDNS making the name resolution request.
      icontrol_attribute :ldns, IControl::GlobalLB::Topology::TopologyEndpoint
    end

    ##
    # Adds or creates the specified topology records.
    # :method: create
    # :call-seq:
    # create(records ,weights ,orders)
    #
    # Parameters:
    # - records TopologyRecord[] The topology records to add.
    # - weights long[] The weights for the records.
    # - orders long[] The sort orders for the records. These sort orders are used when		longest match sorting is not available.

    ##
    # Deletes all topology records.
    # :method: delete_all_topology_records

    ##
    # Deletes the specified topology records.
    # :method: delete_topology_record
    # :call-seq:
    # delete_topology_record(records)
    #
    # Parameters:
    # - records TopologyRecord[] The topology records to delete.

    ##
    # Gets a list of of topology records.
    # :method: get_list

    ##
    # Gets the sort orders for the specified topology records.
    # :method: get_order
    # :call-seq:
    # get_order(records)
    #
    # Parameters:
    # - records TopologyRecord[] The topology records.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Gets the weights for the specified links.
    # :method: get_weight
    # :call-seq:
    # get_weight(records)
    #
    # Parameters:
    # - records TopologyRecord[] The topology records.

    ##
    # Sets the sort orders used when longest match sorting is not available for the specified
    # topology records.
    # :method: set_order
    # :call-seq:
    # set_order(records ,orders)
    #
    # Parameters:
    # - records TopologyRecord[] The topology records.
    # - orders long[] The sort orders to set.

    ##
    # Sets the weights for the specified topology records.
    # :method: set_weight
    # :call-seq:
    # set_weight(records ,weights)
    #
    # Parameters:
    # - records TopologyRecord[] The topology records.
    # - weights long[] The weights to set.


  end
end
