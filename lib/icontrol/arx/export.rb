module IControl::ARX
  ##
  # The Export Interface allows applications to retrieve ARX export information.
  class Export < IControl::Base

    set_id_name "virtual_service"

    ##
    # Returns the list of export definitions for a list of exports from this virtual servic
    # and protocol.
    # @rspec_example
    # @return [ExportDefinition]
    # @param [Hash] opts
    # @option opts [IControl::ARX::ProtocolType] :protocol Protocol type.
    # @option opts [String] :exports The list of export names.
    def definition(opts)
      opts = check_params(opts,[:protocol,:exports])
      super(opts)
    end

    ##
    # Returns the list of exports for this virtual servic and protocol.
    # @rspec_example
    # @return [String]
    # @param [Hash] opts
    # @option opts [IControl::ARX::ProtocolType] :protocol The protocol type.
    def list(opts)
      opts = check_params(opts,[:protocol])
      super(opts)
    end


  end
end
