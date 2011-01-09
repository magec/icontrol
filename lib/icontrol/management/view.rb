module IControl::Management
  ##
  # The View interface contains all calls necessary to manipulate views
  class View < IControl::Base

    set_id_name "views"

    ##
    # Adds this Views to the server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def add_view
      super
    end

    ##
    # Adds new options to the view.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::ViewInfo] :view_infos The ViewInfo structs with the view options to add.
    def add_view_option(opts)
      check_params(opts,[:view_infos])
      super
    end

    ##
    # Delete this view (and all their zones) from a server.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_view
      super
    end

    ##
    # Deletes the options from the view.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::ViewInfo] :view_infos The ViewInfo structs with the view options to delete
    def delete_view_option(opts)
      check_params(opts,[:view_infos])
      super
    end

    ##
    # Get a sequence of ViewInfo structs from the server
    # @rspec_example
    # @return [ViewInfo]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
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
    # Get the ViewInfo structs from the server for this view.
    # @rspec_example
    # @return [ViewInfo]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :view_names The names of the views to retrieve.
    def view(opts)
      check_params(opts,[:view_names])
      super
    end

    ##
    # Moves this Views to the spot indicated in the named.conf
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def move_view
      super
    end

    ##
    # Sets (changes) the values of existing options of the view specified.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::ViewInfo] :view_infos The ViewInfo structs with the view options to set.
    def set_view_option(opts)
      check_params(opts,[:view_infos])
      super
    end


  end
end
