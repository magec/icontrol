module IControl::WebAccelerator
  ##
  # Allows manipulation of Policies.
  class Policies < IControl::Base
    ##
    # Delete a named Policy.
    # :method: delete_policy
    # :call-seq:
    # delete_policy(name)
    #
    # Parameters:
    # - name String A Policy name.

    ##
    # Get a list of Policies present on this WebAccelerator.
    # :method: get_list

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Import a Policy onto this WebAccelerator.
    # :method: import_policy
    # :call-seq:
    # import_policy(filename ,overwrite)
    #
    # Parameters:
    # - filename String The filename of the Policy file to install. Length limit: 255.
    # - overwrite boolean If true, the imported policy will overwrite any existing policy of the same name.


  end
end
