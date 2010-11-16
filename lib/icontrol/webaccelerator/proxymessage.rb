module IControl::WebAccelerator
  ##
  # The ProxyMessage interface enables you to send Invalidations to the WAM on the other
  # Active BIG-IP to invalidate content.
  class ProxyMessage < IControl::Base
    ##
    # Invalidates the WA content after receiving an ESI Invaidation.
    # :method: esi_invalidate_content
    # :call-seq:
    # esi_invalidate_content(invalidation_message)
    #
    # Parameters:
    # - invalidation_message char[]

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Invalidates the content on the peer pvac after receiving a trigger in a HTTP request.
    # :method: invalidate_content
    # :call-seq:
    # invalidate_content(invalidation_message)
    #
    # Parameters:
    # - invalidation_message char[]


  end
end
