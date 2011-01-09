module IControl::ARX
  ##
  # The Api Interface allows applications to retrieve ARX API information.
  class Api < IControl::Base

    set_id_name "nil"

    ##
    # Returns the ARX running release version.
    # @rspec_example
    # @return [String]
    def version
      super
    end


  end
end
