module IControl::ARX
  ##
  # The Namespace Interface lets applications retrieve ARX namespace information.
  class Namespace < IControl::Base

    set_id_name "namespaces"

    ##
    # Returns a list of namespace definitions for this namespace.
    # @rspec_example
    # @return [NamespaceDefinition]
    def definition
      super
    end

    ##
    # Returns the list of configured namespace.
    # @rspec_example
    # @return [String]
    def list
      super
    end


  end
end
