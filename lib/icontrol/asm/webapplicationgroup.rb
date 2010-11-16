module IControl::ASM
  ##
  # The WebApplicationGroup interface enables you to manipulate a group of ASM Web Applications.
  class WebApplicationGroup < IControl::Base
    ##
    # Adds web applications to the specified web application group.
    # :method: add_webapp
    # :call-seq:
    # add_webapp(group_names ,webapp_names)
    #
    # Parameters:
    # - group_names String[] The names of the web application groups.
    # - webapp_names String[][] The names of the web applications to add to the specified groups.

    ##
    # Creates a new web application group.
    # :method: create
    # :call-seq:
    # create(group_names)
    #
    # Parameters:
    # - group_names String[] The Web Application Groups to create.

    ##
    # Deletes all web application groups.
    # :method: delete_all_groups

    ##
    # Deletes the specified web application group.
    # :method: delete_group
    # :call-seq:
    # delete_group(group_names)
    #
    # Parameters:
    # - group_names String[] The names of the web application groups to delete.

    ##
    # Gets a list of all web application groups.
    # :method: get_list

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Returns a list of the web applications associated with the specified web application
    # group.
    # :method: get_webapp_list
    # :call-seq:
    # get_webapp_list(group_names)
    #
    # Parameters:
    # - group_names WebApplicationGroupDefinition[] The web application groups.

    ##
    # Removes all web applications from the specified web application group.
    # :method: remove_all_webapps
    # :call-seq:
    # remove_all_webapps(group_names)
    #
    # Parameters:
    # - group_names String[] The names of the web application groups.

    ##
    # Removes web applications from the specified web application group.
    # :method: remove_webapp
    # :call-seq:
    # remove_webapp(group_names ,webapp_names)
    #
    # Parameters:
    # - group_names String[] The names of the web application groups.
    # - webapp_names String[][] The names of the web applications to remove from the specified groups.


  end
end
