module IControl::ARX
  ##
  # The FileServer Interface lets applications retrieve ARX file server information.
  class FileServer < IControl::Base

    set_id_name "fileservers"

    ##
    # Returns a list of file server definitions for this file servers.
    # @return [FileServerDefinition]
    def definition
      super
    end

    ##
    # Returns the list of file server names.
    # @return [String]
    def list
      super
    end


  end
end
