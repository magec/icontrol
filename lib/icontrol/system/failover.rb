module IControl::System
  ##
  # The Failover interface enables you to manipulate a device's fail-over states. For example, you can get the state, active or standby, in which a device is running in a redundant configuration. You can also switch a device's state from active to standby.
  class Failover < IControl::Base

    set_id_name "nil"

    # A list of fail-over modes of operation.
    class FailoverMode < IControl::Base::Enumeration; end
    # A list of fail-over states.
    class FailoverState < IControl::Base::Enumeration; end    ##
    # Gets the current fail-over mode that the device is running in.
    # @return [FailoverMode]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def failover_mode
      super
    end

    ##
    # Gets the current fail-over state that the device is running in.
    # @return [FailoverState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def failover_state
      super
    end

    ##
    # Gets the peer IP address(es) in a redundant pair. There will be a primary address and possibly a secondary address. The primary will be the first entry in the returned list.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def peer_address
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Checks to see if this device is part of a redundant pair.
    # @return [boolean]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def is_redundant
      super
    end

    ##
    # Restores an active-active device configuration after a failure. You can only use this command after the DB key &amp;quot;Failover.ManFailBack" has been created, and set to a value of &amp;quot;enable".
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_failback
      super
    end

    ##
    # Sets the device to &amp;quot;forced offline" state.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_offline
      super
    end

    ##
    # Sets the device to release the &amp;quot;forced offline" state.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_offline_release
      super
    end

    ##
    # Sets the device to standby mode.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_standby
      super
    end


    ## A sequence of fail-over modes.
    class FailoverModeSequence < IControl::Base::Sequence ; end
    ## A sequence of fail-over states.
    class FailoverStateSequence < IControl::Base::Sequence ; end
    # A list of fail-over modes of operation.
    class FailoverMode < IControl::Base::Enumeration
      # Active-active mode.
      FAILOVER_MODE_ACTIVE_ACTIVE = :FAILOVER_MODE_ACTIVE_ACTIVE
      # Active-standby mode.
      FAILOVER_MODE_ACTIVE_STANDBY = :FAILOVER_MODE_ACTIVE_STANDBY
    end


    # A list of fail-over states.
    class FailoverState < IControl::Base::Enumeration
      # Fail-over is in standby mode.
      FAILOVER_STATE_STANDBY = :FAILOVER_STATE_STANDBY
      # Fail-over is in active mode.
      FAILOVER_STATE_ACTIVE = :FAILOVER_STATE_ACTIVE
    end


  end
end
