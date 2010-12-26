module IControl::ARX
  ##
  # The Policy Interface allows applications to retrieve ARX policy information.
  class Policy < IControl::Base

    set_id_name "namespace"

    ##
    # Returns the details of this policies.
    # @return [PolicyDefinition]
    # @param [Hash] opts
    # @option opts [String] :volume Volume name.
    # @option opts [String] :policies List of policy names.
    def definition(opts)
      check_params(opts,[:volume,:policies])
      super
    end

    ##
    # Returns the list of policies for this namespac and volume.
    # @return [String]
    # @param [Hash] opts
    # @option opts [String] :volume Volume name.
    def list(opts)
      check_params(opts,[:volume])
      super
    end

    ##
    # Returns the details of this schedule.
    # @return [PolicySchedule]
    # @param [Hash] opts
    # @option opts [String] :schedule Schedule name.
    def schedule(opts)
      check_params(opts,[:schedule])
      super
    end


  end
end
