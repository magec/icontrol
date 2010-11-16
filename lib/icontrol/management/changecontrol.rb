module IControl::Management
  ##
  # The ChangeControl interface is a private interface to support Change Control capabilities.
  class ChangeControl < IControl::Base
    class InstanceFormatType < IControl::Base::Enumeration; end
    class InstanceVariableType < IControl::Base::Enumeration; end
    class ClassInfo < IControl::Base::Struct; end
    class ClassTransactionInfo < IControl::Base::Struct; end
    class DeprecatedClassInfo < IControl::Base::Struct; end
    class Instance < IControl::Base::Struct; end
    class InstanceInfo < IControl::Base::Struct; end
    class InstanceVariable < IControl::Base::Struct; end
    class ModuleInfo < IControl::Base::Struct; end    ## A sequence of ClassInfo structures.
    class ClassInfoSequence < IControl::Base::Sequence ; end## A sequence of ClassTransactionInfo structures.
    class ClassTransactionInfoSequence < IControl::Base::Sequence ; end## A sequence of DeprecatedClassInfo structures.
    class DeprecatedClassInfoSequence < IControl::Base::Sequence ; end## A sequence of InstanceInfo structures.
    class InstanceInfoSequence < IControl::Base::Sequence ; end## A sequence of InstanceInfoSequence structures.
    class InstanceInfoSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of Instance structures.
    class InstanceSequence < IControl::Base::Sequence ; end## A sequence of InstanceSequence structures.
    class InstanceSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of InstanceVariable structures.
    class InstanceVariableSequence < IControl::Base::Sequence ; end## A sequence of InstanceVariableSequence structures.
    class InstanceVariableSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of ModuleInfo structures.
    class ModuleInfoSequence < IControl::Base::Sequence ; end##
    # This enum defines instance format types.
    class InstanceFormatType < IControl::Base::Enumeration
      # bigpipe output.
      FORMAT_SHELL = :FORMAT_SHELL
    end

    ##
    # This enum defines instance variable types.
    class InstanceVariableType < IControl::Base::Enumeration
      # device variables.
      TYPE_DEVICE = :TYPE_DEVICE
    end

    ##
    # A struct that describes class information.
    class ClassInfo < IControl::Base::Struct
      # The class name.
      icontrol_attribute :name, String
      # Last transaction id for create/update/delete instances in class.
      icontrol_attribute :transaction_id, Numeric
      # Last transaction id for deleted instances in class.
      icontrol_attribute :delete_transaction_id, Numeric
      # Class supports delete operation.
      icontrol_attribute :supports_delete, Object
      # Class supports transaction information.
      icontrol_attribute :supports_transaction_id, Object
      # Class supports verify operation.
      icontrol_attribute :supports_verify, Object
      # Class only has one instance.
      icontrol_attribute :is_singleton, Object
      # Class headers need to include instance name.
      icontrol_attribute :header_needs_instance_name, Object
      # Class is partitioned.
      icontrol_attribute :is_partitioned, Object
    end

    ##
    # A struct that describes class transaction information.
    class ClassTransactionInfo < IControl::Base::Struct
      # The class name.
      icontrol_attribute :name, String
      # The last transaction id for object instances in this class.
      icontrol_attribute :transaction_id, Numeric
    end

    ##
    # A struct that describes deprecated class information.
    class DeprecatedClassInfo < IControl::Base::Struct
      # The old class name.
      icontrol_attribute :old_name, String
      # The new class name that replaces the old class name.
      icontrol_attribute :new_name, String
      # The product version when the transition occurred.
      icontrol_attribute :transition_version, String
    end

    ##
    # A struct that describes an object instance.
    class Instance < IControl::Base::Struct
      # Object instance information.
      icontrol_attribute :info, IControl::Management::ChangeControl::InstanceInfo
      # The data format type.
      icontrol_attribute :format, IControl::Management::ChangeControl::InstanceFormatType
      # The object instance data (blob).
      icontrol_attribute :data, String
    end

    ##
    # A struct that describes object instance information.
    class InstanceInfo < IControl::Base::Struct
      # The name of the object instance.
      icontrol_attribute :name, String
      # The last transaction id for the object instance.
      icontrol_attribute :transaction_id, Numeric
    end

    ##
    # A struct that describes an instance variable.
    class InstanceVariable < IControl::Base::Struct
      # The name of the variable.
      icontrol_attribute :name, String
      # The display name of the variable.
      icontrol_attribute :display_name, String
      # The value of the variable.
      icontrol_attribute :value, String
    end

    ##
    # A struct that describes module information.
    class ModuleInfo < IControl::Base::Struct
      # The module name.
      icontrol_attribute :name, String
      # Last transaction id for create/update/delete instances in module.
      icontrol_attribute :transaction_id, Numeric
      # Last transaction id for deleted instances in module.
      icontrol_attribute :delete_transaction_id, Numeric
      # Module supports transaction information.
      icontrol_attribute :supports_transaction_id, Object
    end

    ##
    # Delete object instances
    # :method: delete_instance
    # :call-seq:
    # delete_instance(instance_names)
    #
    # Parameters:
    # - instance_names String[] The names of the instances

    ##
    # Gets the sequence of class information for the classes of objects available on the
    # system
    # :method: get_class_info
    # :call-seq:
    # get_class_info(filter)
    #
    # Parameters:
    # - filter String The filter to apply to the class names

    ##
    # Gets the sequence of deprecated class information for the classes of objects that
    # have been deprecated
    # :method: get_deprecated_class_info
    # :call-seq:
    # get_deprecated_class_info(filter)
    #
    # Parameters:
    # - filter String The filter to apply to the class names

    ##
    # Gets the information and contents of each instance requested
    # :method: get_instance
    # :call-seq:
    # get_instance(instance_names ,instance_format)
    #
    # Parameters:
    # - instance_names String[] The names of the instances
    # - instance_format InstanceFormatType The format of contents

    ##
    # Gets the sequence of dependencies for each instance
    # :method: get_instance_dependency
    # :call-seq:
    # get_instance_dependency(instance_names ,depth)
    #
    # Parameters:
    # - instance_names String[] The names of the instances
    # - depth long Limits the depth of search. Zero indicates no limit.

    ##
    # Gets the sequence of information for each instance of each class
    # :method: get_instance_info
    # :call-seq:
    # get_instance_info(classes)
    #
    # Parameters:
    # - classes ClassTransactionInfo[] Class names and transaction information (tx = 0 indicates all instances)

    ##
    # Gets the sequence of variable items for each instance
    # :method: get_instance_variable
    # :call-seq:
    # get_instance_variable(instance_names ,instance_variable)
    #
    # Parameters:
    # - instance_names String[] The names of the instances
    # - instance_variable InstanceVariableType The format of contents

    ##
    # Gets the last time that the configuration was loaded.
    # :method: get_last_load_time

    ##
    # Gets the sequence of module information for the modules available on the system
    # :method: get_module_info
    # :call-seq:
    # get_module_info(filter)
    #
    # Parameters:
    # - filter String The filter to apply to the module names

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Put object configuration (formatted contents)
    # :method: put_config
    # :call-seq:
    # put_config(instance_format ,data)
    #
    # Parameters:
    # - instance_format InstanceFormatType The instance format used in the data (same for all instances)
    # - data String Formatted configuration (collection of instance data)

    ##
    # Put object instances (native format)
    # :method: put_instance
    # :call-seq:
    # put_instance(instances)
    #
    # Parameters:
    # - instances Instance[] The instances to put (transaction_id discarded)

    ##
    # Verify object configuration (formatted contents) can be put/saved
    # :method: verify_config
    # :call-seq:
    # verify_config(instance_format ,data)
    #
    # Parameters:
    # - instance_format InstanceFormatType The instance format used in the data (same for all instances)
    # - data String Formatted configuration (collection of instance data)

    ##
    # Verify that object instances (native format) can be put
    # :method: verify_instance
    # :call-seq:
    # verify_instance(instances)
    #
    # Parameters:
    # - instances Instance[] The instances to verify (transaction_id discarded)


  end
end
