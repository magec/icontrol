module IControl::Management
  ##
  # The DBVariable interface exposes methods that enable you to work directly with our
  # internal database that contains configuration variables using name/value pairs.
  class DBVariable < IControl::Base
    class VariableNameValue < IControl::Base::Struct; end    ## A sequence of VariableNameValue structures.
    class VariableNameValueSequence < IControl::Base::Sequence ; end##
    # A struct that describes the name and value of a database variable.
    class VariableNameValue < IControl::Base::Struct
      # The key name.
      icontrol_attribute :name, String
      # The key value.
      icontrol_attribute :value, String
    end

    ##
    # Creates the specified variables in the database.
    # :method: create
    # :call-seq:
    # create(variables)
    #
    # Parameters:
    # - variables VariableNameValue[] The names/values of the database variables.

    ##
    # Deletes the variables referenced from the database.
    # :method: delete_variable
    # :call-seq:
    # delete_variable(variables)
    #
    # Parameters:
    # - variables String[] The names of the database variables.

    ##
    # Retrieves the values of all variables defined in the database. This list can potentially
    # be huge.
    # :method: get_list

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Verifies the existence of the specified variables in the database.
    # :method: is_variable_available
    # :call-seq:
    # is_variable_available(variables)
    #
    # Parameters:
    # - variables String[] The names of the database variables.

    ##
    # Modifies the specified variables in the database.
    # :method: modify
    # :call-seq:
    # modify(variables)
    #
    # Parameters:
    # - variables VariableNameValue[] The names/values of the database variables.

    ##
    # Queries the values of the specified variables.
    # :method: query
    # :call-seq:
    # query(variables)
    #
    # Parameters:
    # - variables String[] The names of the database variables.

    ##
    # Resets the specified variables to their default values.
    # :method: reset
    # :call-seq:
    # reset(variables)
    #
    # Parameters:
    # - variables String[] Names of the database variables to modify


  end
end
