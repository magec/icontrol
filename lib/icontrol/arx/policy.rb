module IControl::ARX
  ##
  # The Policy Interface allows applications to retrieve ARX policy information.
  class Policy < IControl::Base

    set_id_name "namespace"

    ##
    # Returns the details of this policies.
    # @rspec_example
    # @return [PolicyDefinition]
    # @param [Hash] opts
    # @option opts [String] :volume Volume name.
    # @option opts [String] :policies List of policy names.
    def definition(opts)
      opts = check_params(opts,[:volume,:policies])
      super(opts)
    end

    ##
    # Returns the list of policies for this namespac and volume.
    # @rspec_example
    # @return [String]
    # @param [Hash] opts
    # @option opts [String] :volume Volume name.
    def list(opts)
      opts = check_params(opts,[:volume])
      super(opts)
    end

    ##
    # Returns the details of this schedule.
    # @rspec_example
    # @return [PolicySchedule]
    # @param [Hash] opts
    # @option opts [String] :schedule Schedule name.
    def schedule(opts)
      opts = check_params(opts,[:schedule])
      super(opts)
    end


  end
end
