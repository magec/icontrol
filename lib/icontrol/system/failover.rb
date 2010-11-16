module IControl::System
  ##
  # The Failover interface enables you to manipulate a device's fail-over states. For
  # example, you can get the state, active or standby, in which a device is running in
  # a redundant configuration. You can also switch a device's state from active to standby.
  class Failover < IControl::Base
    class FailoverMode < IControl::Base::Enumeration; end
    class FailoverState < IControl::Base::Enumeration; end    ## A sequence of fail-over modes.
    class FailoverModeSequence < IControl::Base::Sequence ; end## A sequence of fail-over states.
    class FailoverStateSequence < IControl::Base::Sequence ; end##
    # A list of fail-over modes of operation.
    class FailoverMode < IControl::Base::Enumeration
      # Active-active mode.
      FAILOVER_MODE_ACTIVE_ACTIVE = :FAILOVER_MODE_ACTIVE_ACTIVE
      # Active-standby mode.
      FAILOVER_MODE_ACTIVE_STANDBY = :FAILOVER_MODE_ACTIVE_STANDBY
    end

    ##
    # A list of fail-over states.
    class FailoverState < IControl::Base::Enumeration
      # Fail-over is in standby mode.
      FAILOVER_STATE_STANDBY = :FAILOVER_STATE_STANDBY
      # Fail-over is in active mode.
      FAILOVER_STATE_ACTIVE = :FAILOVER_STATE_ACTIVE
    end

    ##
    # Gets the current fail-over mode that the device is running in.
    # :method: get_failover_mode

    ##
    # Gets the current fail-over state that the device is running in.
    # :method: get_failover_state

    ##
    # Gets the peer IP address(es) in a redundant pair. There will be a primary address
    # and possibly a secondary address. The primary will be the first entry in the returned
    # list.
    # :method: get_peer_address

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Checks to see if this device is part of a redundant pair.
    # :method: is_redundant

    ##
    # Restores an active-active device configuration after a failure. You can only use
    # this command after the DB key &amp;quot;Failover.ManFailBack" has been created, and
    # set to a value of &amp;quot;enable".
    # :method: set_failback

    ##
    # Sets the device to &amp;quot;forced offline" state.
    # :method: set_offline

    ##
    # Sets the device to release the &amp;quot;forced offline" state.
    # :method: set_offline_release

    ##
    # Sets the device to standby mode.
    # :method: set_standby


  end
end
