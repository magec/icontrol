module IControl::LTConfig
  ##
  # The Field interface enables you to manage fields and field instances in the Loosely-Typed
  # Configuration system.
  class Field < IControl::Base

    set_id_name "class_names"

    class EnabledStateSequenceSequence < IControl::Base::SequenceSequence ; end    ##
    # Gets application data for one or more loosely-typed configuration fields for this
    # classes. This is the &amp;quot;back-end application hook".
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :field_names A list of (list of) fields for which to get type information, with one list for each class specified, each with one entry for each field requested.
    def application_data(opts)
      opts = check_params(opts,[:field_names])
      super(opts)
    end

    ##
    # Gets the clustered state for one or more specified loosely-typed configuration fields
    # for this classes. If the field is clustered, that means don't use the default.
    # @rspec_example
    # @return [EnabledState[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :field_names A list of (list of) fields for which to get clustered states, with one list for each class specified, each with one entry for each field requested.
    def clustered_state(opts)
      opts = check_params(opts,[:field_names])
      super(opts)
    end

    ##
    # Gets the configsyncd state for one or more specified loosely-typed configuration
    # fields for this classes. If the field is configsyncd, that means don't use the default.
    # @rspec_example
    # @return [EnabledState[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :field_names A list of (list of) fields for which to get configsyncd states, with one list for each class specified, each with one entry for each field requested.
    def configsyncd_state(opts)
      opts = check_params(opts,[:field_names])
      super(opts)
    end

    ##
    # Gets db variable mirror information for one or more loosely-typed configuration fields
    # for this classes. This, if non-empty, indicates which db variable should have its
    # value mirrored with this field.
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :field_names A list of (list of) fields for which to get type information, with one list for each class specified, each with one entry for each field requested.
    def db_variable_mirror_information(opts)
      opts = check_params(opts,[:field_names])
      super(opts)
    end

    ##
    # Gets default value information for one or more loosely-typed configuration fields
    # for this classes.
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :field_names A list of (list of) fields for which to get type information, with one list for each class specified, each with one entry for each field requested.
    def default(opts)
      opts = check_params(opts,[:field_names])
      super(opts)
    end

    ##
    # Gets display name information for one or more loosely-typed configuration fields
    # for this classes.
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :field_names A list of (list of) fields for which to get type information, with one list for each class specified, each with one entry for each field requested.
    def display_name(opts)
      opts = check_params(opts,[:field_names])
      super(opts)
    end

    ##
    # Gets a list of loosely-typed configuration fields for this classes.
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the required state for one or more specified loosely-typed configuration fields
    # for this classes. If the field is required, that means don't use the default.
    # @rspec_example
    # @return [EnabledState[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :field_names A list of (list of) fields for which to get required states, with one list for each class specified, each with one entry for each field requested.
    def required_state(opts)
      opts = check_params(opts,[:field_names])
      super(opts)
    end

    ##
    # Gets type information for one or more loosely-typed configuration fields for this
    # classes. (This is not to be confused with type; type information gives information
    # relevant to the processing of a basic type, for example, type int might have type
    # information specifying min and max value).
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :field_names A list of (list of) fields for which to get type information, with one list for each class specified, each with one entry for each field requested.
    def type_information(opts)
      opts = check_params(opts,[:field_names])
      super(opts)
    end

    ##
    # Gets the value for one loosely-typed configuration field instance for this class
    # instance. This is for convenience, when you want to get just one value in just one
    # class instance. Use get_values instead for greater efficiency when getting multiple
    # field values.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LTConfig::ClassInstanceKey] :class_instance_key The class instance containing the field of interest.
    # @option opts [String] :field_instance_name A field instance for which to get value.
    def value(opts)
      opts = check_params(opts,[:class_instance_key,:field_instance_name])
      super(opts)
    end

    ##
    # Gets values for one or more loosely-typed configuration field instances for this
    # class instances.
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LTConfig::ClassInstanceKey] :class_instance_keys The class instances containing the fields of interest.
    # @option opts [String[]] :field_instance_names A list of (list of) field instances for which to get values, with one list for each class instance specified, each with one entry for each field requested. As a convenience, if the fields are the same for each class instance, you may pass just 1 list of fields to be used for all class instances. In any case, the class instance must have the fields requested on pain of exception.
    def values(opts)
      opts = check_params(opts,[:class_instance_keys,:field_instance_names])
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
    # Sets the value for one loosely-typed configuration field instance for this class
    # instance. This is for convenience, when you want to set just one value in just one
    # class instance. Use set_values instead for greater efficiency when setting multiple
    # field values.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [boolean] :create_instances_if_needed Whether to create the class instances if needed.
    # @option opts [IControl::LTConfig::ClassInstanceKey] :class_instance_key The class instance containing the field of interest.
    # @option opts [String] :field_instance_name A field instance for which to set value.
    # @option opts [String] :value A field instance value. The value is given as a string when using this method.
    def set_value(opts)
      opts = check_params(opts,[:create_instances_if_needed,:class_instance_key,:field_instance_name,:value])
      super(opts)
    end

    ##
    # Sets values for one or more loosely-typed configuration field instances for this
    # class instances.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [boolean] :create_instances_if_needed Whether to create the class instances if needed.
    # @option opts [IControl::LTConfig::ClassInstanceKey] :class_instance_keys The class instances containing the fields of interest.
    # @option opts [String[]] :field_instance_names A list of (list of) field instances for which to set values, with one list for each class instance specified, each with one entry for each field to set. As a convenience, if the fields are the same for each class instance, you may pass just 1 list of fields to be used for all class instances. In any case, the class instance must have the fields requested on pain of exception.
    # @option opts [String[]] :values A list of (list of) field instance values, with one list for each class specified, each with one entry for each field specified. Values are given as strings when using this method. As a convenience, if the values are the same for each class instance, you may pass just 1 list of values to be used for all class instances. In any case, the number of fields must match the number of values for a given class instance (and must make sense for each class instance) on pain of exception.
    def set_values(opts)
      opts = check_params(opts,[:create_instances_if_needed,:class_instance_keys,:field_instance_names,:values])
      super(opts)
    end


    ##
    class EnabledStateSequenceSequence < IControl::Base::SequenceSequence ; end
  end
end
