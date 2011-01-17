module IControl::Management
  ##
  # The ChangeControl interface is a private interface to support Change Control capabilities.
  class ChangeControl < IControl::Base

    set_id_name "instance_names"

    class ClassInfo < IControl::Base::Struct; end
    class ClassTransactionInfo < IControl::Base::Struct; end
    class DeprecatedClassInfo < IControl::Base::Struct; end
    class Instance < IControl::Base::Struct; end
    class InstanceInfo < IControl::Base::Struct; end
    class InstanceVariable < IControl::Base::Struct; end
    class ModuleInfo < IControl::Base::Struct; end
    class ClassInfoSequence < IControl::Base::Sequence ; end
    class ClassTransactionInfoSequence < IControl::Base::Sequence ; end
    class DeprecatedClassInfoSequence < IControl::Base::Sequence ; end
    class InstanceInfoSequence < IControl::Base::Sequence ; end
    class InstanceInfoSequenceSequence < IControl::Base::SequenceSequence ; end
    class InstanceSequence < IControl::Base::Sequence ; end
    class InstanceSequenceSequence < IControl::Base::SequenceSequence ; end
    class InstanceVariableSequence < IControl::Base::Sequence ; end
    class InstanceVariableSequenceSequence < IControl::Base::SequenceSequence ; end
    class ModuleInfoSequence < IControl::Base::Sequence ; end
    # This enum defines instance format types.
    class InstanceFormatType < IControl::Base::Enumeration; end
    # This enum defines instance variable types.
    class InstanceVariableType < IControl::Base::Enumeration; end    ##
    # Delete object instance
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_instance
      super
    end

    ##
    # Gets the sequence of class information for the classes of objects available on the
    # system
    # @rspec_example
    # @return [ClassInfo]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :filter The filter to apply to the class names
    def class_info(opts)
      opts = check_params(opts,[:filter])
      super(opts)
    end

    ##
    # Gets the sequence of deprecated class information for the classes of objects that
    # have been deprecated
    # @rspec_example
    # @return [DeprecatedClassInfo]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :filter The filter to apply to the class names
    def deprecated_class_info(opts)
      opts = check_params(opts,[:filter])
      super(opts)
    end

    ##
    # Gets the information and contents of each instance requested
    # @rspec_example
    # @return [Instance]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::ChangeControl::InstanceFormatType] :instance_format The format of contents
    def instance(opts)
      opts = check_params(opts,[:instance_format])
      super(opts)
    end

    ##
    # Gets the sequence of dependencies for each instance
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :depth Limits the depth of search. Zero indicates no limit.
    def instance_dependency(opts)
      opts = check_params(opts,[:depth])
      super(opts)
    end

    ##
    # Gets the sequence of information for each instance of each class
    # @rspec_example
    # @return [InstanceInfo[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::ChangeControl::ClassTransactionInfo] :classes Class names and transaction information (tx = 0 indicates all instances)
    def instance_info(opts)
      opts = check_params(opts,[:classes])
      super(opts)
    end

    ##
    # Gets the sequence of variable items for each instance
    # @rspec_example
    # @return [InstanceVariable[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::ChangeControl::InstanceVariableType] :instance_variable The format of contents
    def instance_variable(opts)
      opts = check_params(opts,[:instance_variable])
      super(opts)
    end

    ##
    # Gets the last time that the configuration was loaded.
    # @rspec_example
    # @return [TimeStamp]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def last_load_time
      super
    end

    ##
    # Gets the sequence of module information for the modules available on the system
    # @rspec_example
    # @return [ModuleInfo]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :filter The filter to apply to the module names
    def module_info(opts)
      opts = check_params(opts,[:filter])
      super(opts)
    end

    ##
    # Gets the version information for this interface.
    # @rspec_example
    # @return [String]
    def version
      super
    end

    ##
    # Put object configuration (formatted contents)
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::ChangeControl::InstanceFormatType] :instance_format The instance format used in the data (same for all instances)
    # @option opts [String] :data Formatted configuration (collection of instance data)
    def put_config(opts)
      opts = check_params(opts,[:instance_format,:data])
      super(opts)
    end

    ##
    # Put object instance (native format)
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::ChangeControl::Instance] :instances The instances to put (transaction_id discarded)
    def put_instance(opts)
      opts = check_params(opts,[:instances])
      super(opts)
    end

    ##
    # Verify object configuration (formatted contents) can be put/saved
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::ChangeControl::InstanceFormatType] :instance_format The instance format used in the data (same for all instances)
    # @option opts [String] :data Formatted configuration (collection of instance data)
    def verify_config(opts)
      opts = check_params(opts,[:instance_format,:data])
      super(opts)
    end

    ##
    # Verify that object instance (native format) can be put
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::ChangeControl::Instance] :instances The instances to verify (transaction_id discarded)
    def verify_instance(opts)
      opts = check_params(opts,[:instances])
      super(opts)
    end

    ##
    # A struct that describes class information.
    # @attr [String] name The class name.
    # @attr [Numeric] transaction_id Last transaction id for create/update/delete instances in class.
    # @attr [Numeric] delete_transaction_id Last transaction id for deleted instances in class.
    # @attr [Object] supports_delete Class supports delete operation.
    # @attr [Object] supports_transaction_id Class supports transaction information.
    # @attr [Object] supports_verify Class supports verify operation.
    # @attr [Object] is_singleton Class only has one instance.
    # @attr [Object] header_needs_instance_name Class headers need to include instance name.
    # @attr [Object] is_partitioned Class is partitioned.
    class ClassInfo < IControl::Base::Struct
      icontrol_attribute :name, String
      icontrol_attribute :transaction_id, Numeric
      icontrol_attribute :delete_transaction_id, Numeric
      icontrol_attribute :supports_delete, Object
      icontrol_attribute :supports_transaction_id, Object
      icontrol_attribute :supports_verify, Object
      icontrol_attribute :is_singleton, Object
      icontrol_attribute :header_needs_instance_name, Object
      icontrol_attribute :is_partitioned, Object
    end

    ##
    # A struct that describes class transaction information.
    # @attr [String] name The class name.
    # @attr [Numeric] transaction_id The last transaction id for object instances in this class.
    class ClassTransactionInfo < IControl::Base::Struct
      icontrol_attribute :name, String
      icontrol_attribute :transaction_id, Numeric
    end

    ##
    # A struct that describes deprecated class information.
    # @attr [String] old_name The old class name.
    # @attr [String] new_name The new class name that replaces the old class name.
    # @attr [String] transition_version The product version when the transition occurred.
    class DeprecatedClassInfo < IControl::Base::Struct
      icontrol_attribute :old_name, String
      icontrol_attribute :new_name, String
      icontrol_attribute :transition_version, String
    end

    ##
    # A struct that describes an object instance.
    # @attr [IControl::Management::ChangeControl::InstanceInfo] info Object instance information.
    # @attr [IControl::Management::ChangeControl::InstanceFormatType] format The data format type.
    # @attr [String] data The object instance data (blob).
    class Instance < IControl::Base::Struct
      icontrol_attribute :info, IControl::Management::ChangeControl::InstanceInfo
      icontrol_attribute :format, IControl::Management::ChangeControl::InstanceFormatType
      icontrol_attribute :data, String
    end

    ##
    # A struct that describes object instance information.
    # @attr [String] name The name of the object instance.
    # @attr [Numeric] transaction_id The last transaction id for the object instance.
    class InstanceInfo < IControl::Base::Struct
      icontrol_attribute :name, String
      icontrol_attribute :transaction_id, Numeric
    end

    ##
    # A struct that describes an instance variable.
    # @attr [String] name The name of the variable.
    # @attr [String] display_name The display name of the variable.
    # @attr [String] value The value of the variable.
    class InstanceVariable < IControl::Base::Struct
      icontrol_attribute :name, String
      icontrol_attribute :display_name, String
      icontrol_attribute :value, String
    end

    ##
    # A struct that describes module information.
    # @attr [String] name The module name.
    # @attr [Numeric] transaction_id Last transaction id for create/update/delete instances in module.
    # @attr [Numeric] delete_transaction_id Last transaction id for deleted instances in module.
    # @attr [Object] supports_transaction_id Module supports transaction information.
    class ModuleInfo < IControl::Base::Struct
      icontrol_attribute :name, String
      icontrol_attribute :transaction_id, Numeric
      icontrol_attribute :delete_transaction_id, Numeric
      icontrol_attribute :supports_transaction_id, Object
    end


    ## A sequence of ClassInfo structures.
    class ClassInfoSequence < IControl::Base::Sequence ; end
    ## A sequence of ClassTransactionInfo structures.
    class ClassTransactionInfoSequence < IControl::Base::Sequence ; end
    ## A sequence of DeprecatedClassInfo structures.
    class DeprecatedClassInfoSequence < IControl::Base::Sequence ; end
    ## A sequence of InstanceInfo structures.
    class InstanceInfoSequence < IControl::Base::Sequence ; end
    ## A sequence of InstanceInfoSequence structures.
    class InstanceInfoSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of Instance structures.
    class InstanceSequence < IControl::Base::Sequence ; end
    ## A sequence of InstanceSequence structures.
    class InstanceSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of InstanceVariable structures.
    class InstanceVariableSequence < IControl::Base::Sequence ; end
    ## A sequence of InstanceVariableSequence structures.
    class InstanceVariableSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of ModuleInfo structures.
    class ModuleInfoSequence < IControl::Base::Sequence ; end
    # This enum defines instance format types.
    class InstanceFormatType < IControl::Base::Enumeration
      # bigpipe output.
      FORMAT_SHELL = :FORMAT_SHELL
    end


    # This enum defines instance variable types.
    class InstanceVariableType < IControl::Base::Enumeration
      # device variables.
      TYPE_DEVICE = :TYPE_DEVICE
    end


  end
end
