module IControl::ARX
  ##
  # The Share Interface lets applications retrieve ARX share information.
  class Share < IControl::Base

    set_id_name "namespace"

    ##
    # Returns a list of share definitions for this shares.
    # @rspec_example
    # @return [ShareDefinition]
    # @param [Hash] opts
    # @option opts [String] :volume The volume name.
    # @option opts [String] :shares A list of share names.
    def definition(opts)
      check_params(opts,[:volume,:shares])
      super
    end

    ##
    # Returns the list of shares.
    # @rspec_example
    # @return [String]
    # @param [Hash] opts
    # @option opts [String] :volume The volume name.
    def list(opts)
      check_params(opts,[:volume])
      super
    end


  end
end
