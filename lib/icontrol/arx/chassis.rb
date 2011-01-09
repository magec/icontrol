module IControl::ARX
  ##
  # The Chassis Interface lets applications retrieve ARX system information.
  class Chassis < IControl::Base

    set_id_name "nil"

    ##
    # Returns the status of this ARX's high availability peer.
    # @rspec_example
    # @return [HAStatus]
    def ha_peer
      super
    end

    ##
    # Returns this ARX's high availability status.
    # @rspec_example
    # @return [HAStatus]
    def ha_status
      super
    end

    ##
    # Returns a list of system health events.
    # @rspec_example
    # @return [HealthDefinition]
    def health
      super
    end

    ##
    # Returns the system hostname.
    # @rspec_example
    # @return [String]
    def hostname
      super
    end

    ##
    # Returns the ARX chassis hardware version.
    # @rspec_example
    # @return [String]
    def hw_version
      super
    end

    ##
    # Returns the ARX model.
    # @rspec_example
    # @return [String]
    def model
      super
    end

    ##
    # Returns a list of processor statistics for this system.
    # @rspec_example
    # @return [ProcessorStats]
    def processor_stats
      super
    end

    ##
    # Returns the ARX serial number.
    # @rspec_example
    # @return [String]
    def serial
      super
    end

    ##
    # Returns a list of storage system statuses.
    # @rspec_example
    # @return [StorageStatus]
    def storage_status
      super
    end

    ##
    # Returns the system software version.
    # @rspec_example
    # @return [String]
    def sw_version
      super
    end

    ##
    # Returns the system type.
    # @rspec_example
    # @return [String]
    def type
      super
    end


  end
end
