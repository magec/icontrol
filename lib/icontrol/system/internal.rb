module IControl::System
  ##
  # The Internal interface is a private interface to support internal F5 capabilities.
  class Internal < IControl::Base
    class URI < IControl::Base::Struct; end    ## A sequence of URIs
    class URISequence < IControl::Base::Sequence ; end##
    # A struct that contains a URI.
    class URI < IControl::Base::Struct
      # The URI itself (the path to the desired page)
      icontrol_attribute :path, String
      # A list of key/value pairs that will allow mapping EM		 internal arguments to URI
      # parameters to the page.
      icontrol_attribute :argmap, IControl::Common::KeyValueSequence
    end

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Returns a sequence of URIs given a list of tags.
    # :method: map_uri
    # :call-seq:
    # map_uri(target_tags)
    #
    # Parameters:
    # - target_tags String[] Tag names of target URIs to return.

    ##
    # Tests a connection from the device to the caller
    # :method: test_connection
    # :call-seq:
    # test_connection(addresses ,ports)
    #
    # Parameters:
    # - addresses String[] Addresses to test
    # - ports long[] Ports to test


  end
end
