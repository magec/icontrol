module IControl::ARX
  ##
  # The Volume Interface lets applications retrieve ARX volume information.
  class Volume < IControl::Base

    set_id_name "namespace"

    ##
    # Returns the volume definitions for this volumes.
    # @rspec_example
    # @return [VolumeDefinition]
    # @param [Hash] opts
    # @option opts [String] :volumes A list of volume names.
    def definition(opts)
      opts = check_params(opts,[:volumes])
      super(opts)
    end

    ##
    # Returns the list of volumes for this namespac.
    # @rspec_example
    # @return [String]
    def list
      super
    end


  end
end
