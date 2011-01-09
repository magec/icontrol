module IControl::WebAccelerator
  ##
  # The ProxyMessage interface enables you to send Invalidations to the WAM on the other
  # Active BIG-IP to invalidate content.
  class ProxyMessage < IControl::Base

    set_id_name "invalidation_message"

    ##
    # Invalidates the WA content after receiving an ESI Invaidation.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied]
    # @raise [IControl::IControl::Common::InvalidArgument]
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def esi_invalidate_content
      super
    end

    ##
    # Gets the version information for this interface.
    # @rspec_example
    # @return [String]
    def version
      super
    end

    ##
    # Invalidates the content on the peer pvac after receiving a trigger in a HTTP request.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied]
    # @raise [IControl::IControl::Common::InvalidArgument]
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def invalidate_content
      super
    end


  end
end
