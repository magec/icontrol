module IControl::LTConfig
  ##
  # The Class interface enables you to manage classes and class instances in the Loosely-Typed
  # Configuration system.
  class Klass < IControl::Base
    ##
    # Creates a loosely-typed configuration class instance.
    # :method: create_instance
    # :call-seq:
    # create_instance(class_instance_keys)
    #
    # Parameters:
    # - class_instance_keys ClassInstanceKey[] Class instance keys defining the keys	 for the new instances. Each of these specifies the	 name of the instance, the class name of the	 instance, and if appropriate, a container class for	 the instance.

    ##
    # Deletes a loosely-typed configuration class instance.
    # :method: delete_instance
    # :call-seq:
    # delete_instance(class_instance_keys)
    #
    # Parameters:
    # - class_instance_keys ClassInstanceKey[] Class instance keys defining the keys	 for the instances to delete. Each of these specifies	 the name of the instance, the class name of the	 instance, and if appropriate, a container class for	 the instance.

    ##
    # Gets the category for the specified loosely-typed configuration classes.
    # :method: get_category
    # :call-seq:
    # get_category(class_names)
    #
    # Parameters:
    # - class_names String[] A list of loosely-typed configuration classes.

    ##
    # Gets the clustered state for the specified loosely-typed configuration classes.
    # :method: get_clustered_state
    # :call-seq:
    # get_clustered_state(class_names)
    #
    # Parameters:
    # - class_names String[] A list of loosely-typed configuration classes.

    ##
    # Gets the configsyncd state for the specified loosely-typed configuration classes.
    # :method: get_configsyncd_state
    # :call-seq:
    # get_configsyncd_state(class_names)
    #
    # Parameters:
    # - class_names String[] A list of loosely-typed configuration classes.

    ##
    # Gets the constraints for the specified loosely-typed configuration classes.
    # :method: get_constraints
    # :call-seq:
    # get_constraints(class_names)
    #
    # Parameters:
    # - class_names String[] A list of loosely-typed configuration classes.

    ##
    # Gets the field count for the specified loosely-typed configuration classes.
    # :method: get_field_count
    # :call-seq:
    # get_field_count(class_names)
    #
    # Parameters:
    # - class_names String[] A list of loosely-typed configuration classes.

    ##
    # Gets a list of loosely-typed configuration classes.
    # :method: get_list

    ##
    # Gets a list of loosely-typed configuration class instances.
    # :method: get_list_of_instances
    # :call-seq:
    # get_list_of_instances(class_names)
    #
    # Parameters:
    # - class_names String[] A classes for which to get instance	 information.

    ##
    # Gets the nested classes for the specified loosely-typed configuration classes.
    # :method: get_nested_classes
    # :call-seq:
    # get_nested_classes(class_names)
    #
    # Parameters:
    # - class_names String[] A list of loosely-typed configuration classes.

    ##
    # Gets the partitioned state for the specified loosely-typed configuration classes.
    # :method: get_partitioned_state
    # :call-seq:
    # get_partitioned_state(class_names)
    #
    # Parameters:
    # - class_names String[] A list of loosely-typed configuration classes.

    ##
    # Gets the singleton state for the specified loosely-typed configuration classes.
    # :method: get_singleton_state
    # :call-seq:
    # get_singleton_state(class_names)
    #
    # Parameters:
    # - class_names String[] A list of loosely-typed configuration classes.

    ##
    # Gets the statistics for the specified loosely-typed configuration classes.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(class_names)
    #
    # Parameters:
    # - class_names String[] A list of loosely-typed configuration classes.

    ##
    # Gets the toplevelcmd state for the specified loosely-typed configuration classes.
    # :method: get_toplevelcmd_state
    # :call-seq:
    # get_toplevelcmd_state(class_names)
    #
    # Parameters:
    # - class_names String[] A list of loosely-typed configuration classes.

    ##
    # Gets the version information for this interface.
    # :method: get_version


  end
end
