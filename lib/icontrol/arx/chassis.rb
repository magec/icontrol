module IControl::ARX
  ##
  # The Chassis Interface lets applications retrieve ARX system information.
  class Chassis < IControl::Base

    set_id_name "nil"

    ##
    # Returns the status of this ARX's high availability peer.
    # @return [HAStatus]
    def ha_peer
      super
    end

    ##
    # Returns this ARX's high availability status.
    # @return [HAStatus]
    def ha_status
      super
    end

    ##
    # Returns a list of system health events.
    # @return [HealthDefinition]
    def health
      super
    end

    ##
    # Returns the system hostname.
    # @return [String]
    def hostname
      super
    end

    ##
    # Returns the ARX chassis hardware version.
    # @return [String]
    def hw_version
      super
    end

    ##
    # Returns the ARX model.
    # @return [String]
    def model
      super
    end

    ##
    # Returns a list of processor statistics for this system.
    # @return [ProcessorStats]
    def processor_stats
      super
    end

    ##
    # Returns the ARX serial number.
    # @return [String]
    def serial
      super
    end

    ##
    # Returns a list of storage system statuses.
    # @return [StorageStatus]
    def storage_status
      super
    end

    ##
    # Returns the system software version.
    # @return [String]
    def sw_version
      super
    end

    ##
    # Returns the system type.
    # @return [String]
    def type
      super
    end


  end
end
