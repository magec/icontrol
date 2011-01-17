module IControl::System
  ##
  # The Cluster interface enables you to work with the definitions and attributes in
  # a clustered device.
  class Cluster < IControl::Base

    set_id_name "cluster_names"

    ##
    # Gets the cluster enabled states.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    def cluster_enabled_state
      super
    end

    ##
    # Gets the cluster high-availability states.
    # @rspec_example
    # @return [HAState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    def cluster_ha_state
      super
    end

    ##
    # Gets the primary slot numbers.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    def current_primary_slot
      super
    end

    ##
    # Gets a list of the cluster names.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    def list
      super
    end

    ##
    # Gets the cluster member enabled states.
    # @rspec_example
    # @return [EnabledState[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [long[]] :slot_ids The list of lists of slot ids.
    def member_enabled_state(opts)
      opts = check_params(opts,[:slot_ids])
      super(opts)
    end

    ##
    # Gets the cluster member high-availability states.
    # @rspec_example
    # @return [HAState[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [long[]] :slot_ids The list of lists of slot ids.
    def member_ha_state(opts)
      opts = check_params(opts,[:slot_ids])
      super(opts)
    end

    ##
    # Gets the cluster member licensed states.
    # @rspec_example
    # @return [EnabledState[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [long[]] :slot_ids The list of lists of slot ids.
    def member_licensed_state(opts)
      opts = check_params(opts,[:slot_ids])
      super(opts)
    end

    ##
    # Gets the cluster member priming states.
    # @rspec_example
    # @return [EnabledState[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [long[]] :slot_ids The list of lists of slot ids.
    def member_priming_state(opts)
      opts = check_params(opts,[:slot_ids])
      super(opts)
    end

    ##
    # Gets the minimum up members values.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    def min_up_members
      super
    end

    ##
    # Gets the cluster minimum up members actions.
    # @rspec_example
    # @return [HAAction]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    def min_up_members_action
      super
    end

    ##
    # Gets the cluster minimum up members enabled states.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    def min_up_members_state
      super
    end

    ##
    # Get a list of list of slot ids (the size of each list is the number of slots).
    # @rspec_example
    # @return [long[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    def slot_id
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
    # Checks to see whether the system is a clustered environment.
    # @rspec_example
    # @return [boolean]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    def is_clustered_environment
      super
    end

    ##
    # Sets the cluster enabled states.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :cluster_states The list of enabled states.
    def set_cluster_enabled_state(opts)
      opts = check_params(opts,[:cluster_states])
      super(opts)
    end

    ##
    # Currently this is not implemented.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [long] :primary_slots
    def set_current_primary_slot(opts)
      opts = check_params(opts,[:primary_slots])
      super(opts)
    end

    ##
    # Sets the cluster member enabled states.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [long[]] :slot_ids The list of lists of slot ids.
    # @option opts [IControl::Common::EnabledState[]] :member_states
    def set_member_enabled_state(opts)
      opts = check_params(opts,[:slot_ids,:member_states])
      super(opts)
    end

    ##
    # Sets the cluster member priming states.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [long[]] :slot_ids The list of lists of slot ids.
    # @option opts [IControl::Common::EnabledState[]] :priming_states The list of lists of priming states.
    def set_member_priming_state(opts)
      opts = check_params(opts,[:slot_ids,:priming_states])
      super(opts)
    end

    ##
    # Sets the minimum up members values.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [long] :min_up_members The list of minimum up members values.
    def set_min_up_members(opts)
      opts = check_params(opts,[:min_up_members])
      super(opts)
    end

    ##
    # Sets the cluster minimum up members actions.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [IControl::Common::HAAction] :min_up_actions The list of minimum up members actions.
    def set_min_up_members_action(opts)
      opts = check_params(opts,[:min_up_actions])
      super(opts)
    end

    ##
    # Sets the cluster minimum up members enabled states.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :min_up_states The list of minimum up members enabled states.
    def set_min_up_members_state(opts)
      opts = check_params(opts,[:min_up_states])
      super(opts)
    end


  end
end
