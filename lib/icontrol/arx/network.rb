module IControl::ARX
  ##
  # The Network interface lets applications retrieve ARX network interface information.
  class Network < IControl::Base

    set_id_name "interface_ids"

    ##
    # Returns a list of network interface definitions for this network interfaces.
    # @return [NetworkDefinition]
    def definition
      super
    end

    ##
    # Returns the list of network interfaces.
    # @return [String]
    def list
      super
    end

    ##
    # Returns a list of network interface statistics for this network interfaces.
    # @return [NetworkStats]
    def stats
      super
    end


  end
end
