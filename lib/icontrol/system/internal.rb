module IControl::System
  ##
  # The Internal interface is a private interface to support internal F5 capabilities.
  class Internal < IControl::Base

    set_id_name "target_tags"

    class URI < IControl::Base::Struct; end
    class URISequence < IControl::Base::Sequence ; end    ##
    # Gets the version information for this interface.
    # @rspec_example
    # @return [String]
    def version
      super
    end

    ##
    # Returns a sequence of URIs given a list of tags.
    # @rspec_example
    # @return [URI]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def map_uri
      super
    end

    ##
    # Tests a connection from the device to the caller
    # @rspec_example
    # @return [boolean]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :addresses Addresses to test
    # @option opts [long] :ports Ports to test
    def test_connection(opts)
      check_params(opts,[:addresses,:ports])
      super
    end

    ##
    # A struct that contains a URI.
    # @attr [String] path The URI itself (the path to the desired page)
    # @attr [IControl::Common::KeyValueSequence] argmap A list of key/value pairs that will allow mapping EM		 internal arguments to URI parameters to the page.
    class URI < IControl::Base::Struct
      icontrol_attribute :path, String
      icontrol_attribute :argmap, IControl::Common::KeyValueSequence
    end


    ## A sequence of URIs
    class URISequence < IControl::Base::Sequence ; end
  end
end
