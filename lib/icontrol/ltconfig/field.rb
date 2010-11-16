module IControl::LTConfig
  ##
  # The Field interface enables you to manage fields and field instances in the Loosely-Typed
  # Configuration system.
  class Field < IControl::Base
    ##
    class EnabledStateSequenceSequence < IControl::Base::SequenceSequence ; end##
    # Gets application data for one or more loosely-typed configuration fields for the
    # specified classes. This is the &amp;quot;back-end application hook".
    # :method: get_application_data
    # :call-seq:
    # get_application_data(class_names ,field_names)
    #
    # Parameters:
    # - class_names String[] The classes containing the fields of interest.
    # - field_names String[][] A list of (list of) fields for which to get type information, with one list for each class specified, each with one entry for each field requested.

    ##
    # Gets the clustered state for one or more specified loosely-typed configuration fields
    # for the specified classes. If the field is clustered, that means don't use the default.
    # :method: get_clustered_state
    # :call-seq:
    # get_clustered_state(class_names ,field_names)
    #
    # Parameters:
    # - class_names String[] The classes containing the fields of interest.
    # - field_names String[][] A list of (list of) fields for which to get clustered states, with one list for each class specified, each with one entry for each field requested.

    ##
    # Gets the configsyncd state for one or more specified loosely-typed configuration
    # fields for the specified classes. If the field is configsyncd, that means don't use
    # the default.
    # :method: get_configsyncd_state
    # :call-seq:
    # get_configsyncd_state(class_names ,field_names)
    #
    # Parameters:
    # - class_names String[] The classes containing the fields of interest.
    # - field_names String[][] A list of (list of) fields for which to get configsyncd states, with one list for each class specified, each with one entry for each field requested.

    ##
    # Gets db variable mirror information for one or more loosely-typed configuration fields
    # for the specified classes. This, if non-empty, indicates which db variable should
    # have its value mirrored with this field.
    # :method: get_db_variable_mirror_information
    # :call-seq:
    # get_db_variable_mirror_information(class_names ,field_names)
    #
    # Parameters:
    # - class_names String[] The classes containing the fields of interest.
    # - field_names String[][] A list of (list of) fields for which to get type information, with one list for each class specified, each with one entry for each field requested.

    ##
    # Gets default value information for one or more loosely-typed configuration fields
    # for the specified classes.
    # :method: get_default
    # :call-seq:
    # get_default(class_names ,field_names)
    #
    # Parameters:
    # - class_names String[] The classes containing the fields of interest.
    # - field_names String[][] A list of (list of) fields for which to get type information, with one list for each class specified, each with one entry for each field requested.

    ##
    # Gets display name information for one or more loosely-typed configuration fields
    # for the specified classes.
    # :method: get_display_name
    # :call-seq:
    # get_display_name(class_names ,field_names)
    #
    # Parameters:
    # - class_names String[] The classes containing the fields of interest.
    # - field_names String[][] A list of (list of) fields for which to get type information, with one list for each class specified, each with one entry for each field requested.

    ##
    # Gets a list of loosely-typed configuration fields for the specified classes.
    # :method: get_list
    # :call-seq:
    # get_list(class_names)
    #
    # Parameters:
    # - class_names String[] The classes for which to get fields.

    ##
    # Gets the required state for one or more specified loosely-typed configuration fields
    # for the specified classes. If the field is required, that means don't use the default.
    # :method: get_required_state
    # :call-seq:
    # get_required_state(class_names ,field_names)
    #
    # Parameters:
    # - class_names String[] The classes containing the fields of interest.
    # - field_names String[][] A list of (list of) fields for which to get required states, with one list for each class specified, each with one entry for each field requested.

    ##
    # Gets type information for one or more loosely-typed configuration fields for the
    # specified classes. (This is not to be confused with type; type information gives
    # information relevant to the processing of a basic type, for example, type int might
    # have type information specifying min and max value).
    # :method: get_type_information
    # :call-seq:
    # get_type_information(class_names ,field_names)
    #
    # Parameters:
    # - class_names String[] The classes containing the fields of interest.
    # - field_names String[][] A list of (list of) fields for which to get type information, with one list for each class specified, each with one entry for each field requested.

    ##
    # Gets the value for one loosely-typed configuration field instance for the specified
    # class instance. This is for convenience, when you want to get just one value in just
    # one class instance. Use get_values instead for greater efficiency when getting multiple
    # field values.
    # :method: get_value
    # :call-seq:
    # get_value(class_instance_key ,field_instance_name)
    #
    # Parameters:
    # - class_instance_key ClassInstanceKey The class instance containing the field of interest.
    # - field_instance_name String A field instance for which to get value.

    ##
    # Gets values for one or more loosely-typed configuration field instances for the specified
    # class instances.
    # :method: get_values
    # :call-seq:
    # get_values(class_instance_keys ,field_instance_names)
    #
    # Parameters:
    # - class_instance_keys ClassInstanceKey[] The class instances containing the fields of interest.
    # - field_instance_names String[][] A list of (list of) field instances for which to get values, with one list for each class instance specified, each with one entry for each field requested. As a convenience, if the fields are the same for each class instance, you may pass just 1 list of fields to be used for all class instances. In any case, the class instance must have the fields requested on pain of exception.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Sets the value for one loosely-typed configuration field instance for the specified
    # class instance. This is for convenience, when you want to set just one value in just
    # one class instance. Use set_values instead for greater efficiency when setting multiple
    # field values.
    # :method: set_value
    # :call-seq:
    # set_value(create_instances_if_needed ,class_instance_key ,field_instance_name ,value)
    #
    # Parameters:
    # - create_instances_if_needed boolean Whether to create the class instances if needed.
    # - class_instance_key ClassInstanceKey The class instance containing the field of interest.
    # - field_instance_name String A field instance for which to set value.
    # - value String A field instance value. The value is given as a string when using this method.

    ##
    # Sets values for one or more loosely-typed configuration field instances for the specified
    # class instances.
    # :method: set_values
    # :call-seq:
    # set_values(create_instances_if_needed ,class_instance_keys ,field_instance_names ,values)
    #
    # Parameters:
    # - create_instances_if_needed boolean Whether to create the class instances if needed.
    # - class_instance_keys ClassInstanceKey[] The class instances containing the fields of interest.
    # - field_instance_names String[][] A list of (list of) field instances for which to set values, with one list for each class instance specified, each with one entry for each field to set. As a convenience, if the fields are the same for each class instance, you may pass just 1 list of fields to be used for all class instances. In any case, the class instance must have the fields requested on pain of exception.
    # - values String[][] A list of (list of) field instance values, with one list for each class specified, each with one entry for each field specified. Values are given as strings when using this method. As a convenience, if the values are the same for each class instance, you may pass just 1 list of values to be used for all class instances. In any case, the number of fields must match the number of values for a given class instance (and must make sense for each class instance) on pain of exception.


  end
end
