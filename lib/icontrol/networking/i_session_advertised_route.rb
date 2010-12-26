module IControl::Networking
  ##
  # The iSession AdvertisedRoute interface enables you to work with the definitions and attributes contained in a device's optimized endpoint subnets.
  class ISessionAdvertisedRoute < IControl::Base

    set_id_name "subnets"

    class SubnetOptKey < IControl::Base::Struct; end
    class ISessionAdvertisedRouteStruct < IControl::Base::Struct; end    ##
    # Creates a specified subnet object with all its attributes.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::iSessionAdvertisedRoute::iSessionAdvertisedRouteStruct] :subnet The subnet struct to create.
    def create(opts)
      check_params(opts,[:subnet])
      super
    end

    ##
    # Deletes all exisiting subnet objects.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_subnets
      super
    end

    ##
    # Deletes this subnet via its IP address and netmask.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_subnets
      super
    end

    ##
    # Gets the enabled flag on the target subnet.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def enabled_state
      super
    end

    ##
    # Gets the label string on the target subnet.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def label
      super
    end

    ##
    # Get a list of all subnet interfaces and their netmasks.
    # @return [SubnetOptKey]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the metric with which this subnet IPs are associated.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def metric
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Sets/Resets the enabled flag on the target subnet.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::iSessionAdvertisedRoute::SubnetOptKey] :ip The subnet IP.
    # @option opts [IControl::Common::EnabledState] :included The new included setting.
    def set_enabled_state(opts)
      check_params(opts,[:ip,:included])
      super
    end

    ##
    # Sets/Resets the label string on the target subnet.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::iSessionAdvertisedRoute::SubnetOptKey] :ip The subnet IP.
    # @option opts [String] :labels The new subnet labels
    def set_label(opts)
      check_params(opts,[:ip,:labels])
      super
    end

    ##
    # Sets the metric with which this subnet IPs are associated.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Networking::iSessionAdvertisedRoute::SubnetOptKey] :subnet The subnet IPs .
    # @option opts [long] :metric value.
    def set_metric(opts)
      check_params(opts,[:subnet,:metric])
      super
    end

    ##
    # A struct that specifies the subnet key
    # @attr [String] ip The ip address of the route
    # @attr [String] mask The mask address of the route
    class SubnetOptKey < IControl::Base::Struct
      icontrol_attribute :ip, String
      icontrol_attribute :mask, String
    end

    ##
    # A struct that specifies the subnet key
    # @attr [IControl::Networking::ISessionAdvertisedRoute::SubnetOptKey] key The key address and mask of the route
    # @attr [IControl::Common::EnabledState] included The included setting of the route
    # @attr [Numeric] metric The metrics value of the route
    # @attr [String] label The alpha label name of the route
    class ISessionAdvertisedRouteStruct < IControl::Base::Struct
      icontrol_attribute :key, IControl::Networking::ISessionAdvertisedRoute::SubnetOptKey
      icontrol_attribute :included, IControl::Common::EnabledState
      icontrol_attribute :metric, Numeric
      icontrol_attribute :label, String
    end


    ## A sequence of structs that specifies a series of subnet interfaces
    class SubnetOptKeySequence < IControl::Base::Sequence ; end
    ## A sequence of sequence of subnet entries.
    class SubnetOptKeySequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of structs that specifies a series of subnet interfaces
    class ISessionAdvertisedRouteStructSequence < IControl::Base::Sequence ; end
  end
end
