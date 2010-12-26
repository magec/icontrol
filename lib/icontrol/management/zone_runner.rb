module IControl::Management
  ##
  # The ZoneRunner interface handles all the top level calls
  class ZoneRunner < IControl::Base

    set_id_name "level"

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # (re)init ZoneRunner instructs ZoneRunner to re-read named.conf and rebuild its internal data structures based on contents
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def init
      super
    end

    ##
    # Set the logging leve for messages
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_loglevel
      super
    end


  end
end
