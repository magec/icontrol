module IControl::ARX
  ##
  # The VirtualService Interface lets applications retrieve ARX virtual service information.
  class VirtualService < IControl::Base

    set_id_name "virtual_services"

    ##
    # Returns the details of this virtual service.
    # @rspec_example
    # @return [VirtualServiceDefinition]
    def definition
      super
    end

    ##
    # Returns the list of virtual service names.
    # @rspec_example
    # @return [String]
    def list
      super
    end

    ##
    # Returns the statistics of this virtual service.
    # @rspec_example
    # @return [VirtualServiceStats]
    def stats
      super
    end


  end
end
