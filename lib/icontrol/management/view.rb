module IControl::Management
  ##
  # The View interface contains all calls necessary to manipulate views
  class View < IControl::Base
    ##
    # Adds the specified Views to the server.
    # :method: add_view
    # :call-seq:
    # add_view(views)
    #
    # Parameters:
    # - views ViewInfo[] The ViewInfo structs containing information about the views to be added.

    ##
    # Adds new options to the views.
    # :method: add_view_option
    # :call-seq:
    # add_view_option(view_infos)
    #
    # Parameters:
    # - view_infos ViewInfo[] The ViewInfo structs with the view options to add.

    ##
    # Delete the specified views (and all their zones) from a server.
    # :method: delete_view
    # :call-seq:
    # delete_view(views)
    #
    # Parameters:
    # - views ViewInfo[] The ViewInfo structs containing the views to be deleted

    ##
    # Deletes the options from the views.
    # :method: delete_view_option
    # :call-seq:
    # delete_view_option(view_infos)
    #
    # Parameters:
    # - view_infos ViewInfo[] The ViewInfo structs with the view options to delete

    ##
    # Get a sequence of ViewInfo structs from the server
    # :method: get_list

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Get the ViewInfo structs from the server for the specified views.
    # :method: get_view
    # :call-seq:
    # get_view(view_names)
    #
    # Parameters:
    # - view_names String[] The names of the views to retrieve.

    ##
    # Moves the specified Views to the spot indicated in the named.conf
    # :method: move_view
    # :call-seq:
    # move_view(views)
    #
    # Parameters:
    # - views ViewInfo[] The ViewInfo structs containing information about the views to be added.

    ##
    # Sets (changes) the values of existing options of the views specified.
    # :method: set_view_option
    # :call-seq:
    # set_view_option(view_infos)
    #
    # Parameters:
    # - view_infos ViewInfo[] The ViewInfo structs with the view options to set.


  end
end
