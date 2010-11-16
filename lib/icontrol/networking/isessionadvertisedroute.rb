module IControl::Networking
  ##
  # The iSession AdvertisedRoute interface enables you to work with the definitions and
  # attributes contained in a device's optimized endpoint subnets.
  class ISessionAdvertisedRoute < IControl::Base
    class SubnetOptKey < IControl::Base::Struct; end
    class ISessionAdvertisedRouteStruct < IControl::Base::Struct; end    ## A sequence of structs that specifies a series of subnet interfaces
    class SubnetOptKeySequence < IControl::Base::Sequence ; end## A sequence of sequence of subnet entries.
    class SubnetOptKeySequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of structs that specifies a series of subnet interfaces
    class ISessionAdvertisedRouteStructSequence < IControl::Base::Sequence ; end##
    # A struct that specifies the subnet key
    class SubnetOptKey < IControl::Base::Struct
      # The ip address of the route
      icontrol_attribute :ip, String
      # The mask address of the route
      icontrol_attribute :mask, String
    end

    ##
    # A struct that specifies the subnet key
    class ISessionAdvertisedRouteStruct < IControl::Base::Struct
      # The key address and mask of the route
      icontrol_attribute :key, IControl::Networking::ISessionAdvertisedRoute::SubnetOptKey
      # The included setting of the route
      icontrol_attribute :included, IControl::Common::EnabledState
      # The metrics value of the route
      icontrol_attribute :metric, Numeric
      # The alpha label name of the route
      icontrol_attribute :label, String
    end

    ##
    # Creates a specified subnet object with all its attributes.
    # :method: create
    # :call-seq:
    # create(subnet)
    #
    # Parameters:
    # - subnet iSessionAdvertisedRouteStruct The subnet struct to create.

    ##
    # Deletes all exisiting subnet objects.
    # :method: delete_all_subnets

    ##
    # Deletes the specified subnet via its IP address and netmask.
    # :method: delete_subnets
    # :call-seq:
    # delete_subnets(subnets)
    #
    # Parameters:
    # - subnets SubnetOptKey[] The subnets to delete.

    ##
    # Gets the enabled flag on the target subnets.
    # :method: get_enabled_state
    # :call-seq:
    # get_enabled_state(subnets)
    #
    # Parameters:
    # - subnets SubnetOptKey[] The target subnets.

    ##
    # Gets the label string on the target subnets.
    # :method: get_label
    # :call-seq:
    # get_label(subnets)
    #
    # Parameters:
    # - subnets SubnetOptKey[] The subnet IP.

    ##
    # Get a list of all subnet interfaces and their netmasks.
    # :method: get_list

    ##
    # Gets the metric with which the specified subnet IPs are associated.
    # :method: get_metric
    # :call-seq:
    # get_metric(subnets)
    #
    # Parameters:
    # - subnets SubnetOptKey[] The target subnets.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Sets/Resets the enabled flag on the target subnets.
    # :method: set_enabled_state
    # :call-seq:
    # set_enabled_state(ip ,included)
    #
    # Parameters:
    # - ip SubnetOptKey[] The subnet IP.
    # - included EnabledState[] The new included setting.

    ##
    # Sets/Resets the label string on the target subnets.
    # :method: set_label
    # :call-seq:
    # set_label(ip ,labels)
    #
    # Parameters:
    # - ip SubnetOptKey[] The subnet IP.
    # - labels String[] The new subnet labels

    ##
    # Sets the metric with which the specified subnet IPs are associated.
    # :method: set_metric
    # :call-seq:
    # set_metric(subnet ,metric)
    #
    # Parameters:
    # - subnet SubnetOptKey[] The subnet IPs .
    # - metric long[] value.


  end
end
