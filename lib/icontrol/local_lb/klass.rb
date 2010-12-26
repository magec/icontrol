module IControl::LocalLB
  ##
  # The Class interface enables you to manipulate a local load balancer's Class attributes. There are 3 different Class types: Address, String, and Value.
  class Klass < IControl::Base

    set_id_name "class_members"

    class AddressClass < IControl::Base::Struct; end
    class AddressEntry < IControl::Base::Struct; end
    class MetaInformation < IControl::Base::Struct; end
    class StringClass < IControl::Base::Struct; end
    class ValueClass < IControl::Base::Struct; end
    # A list of different class types.
    class ClassType < IControl::Base::Enumeration; end
    # A list of different file format types.
    class FileFormatType < IControl::Base::Enumeration; end
    # A list of different file mode types.
    class FileModeType < IControl::Base::Enumeration; end    ##
    # Incrementally adds address class member.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def add_address_class_member
      super
    end

    ##
    # Incrementally adds string class member.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def add_string_class_member
      super
    end

    ##
    # Incrementally adds value class member.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def add_value_class_member
      super
    end

    ##
    # Creates address classes. The specified classes must not already exist.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::Class::AddressClass] :classes The class names and the class members.
    def create_address_class(opts)
      check_params(opts,[:classes])
      super
    end

    ##
    # Creates external classes. Note: As of v9.6.0, the validation on the file_name field in external_classes was improved to ensure the class file exists on pain of Common::OperationFailed exception.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::Class::MetaInformation] :external_classes The sequence of external classes to create.
    def create_external_class(opts)
      check_params(opts,[:external_classes])
      super
    end

    ##
    # Creates string classes. The specified classes must not already exist.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::Class::StringClass] :classes The class names and the class members.
    def create_string_class(opts)
      check_params(opts,[:classes])
      super
    end

    ##
    # Creates value classes. The specified classes must not already exist.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::Class::ValueClass] :classes The class names and the class members.
    def create_value_class(opts)
      check_params(opts,[:classes])
      super
    end

    ##
    # Incrementally deletes address class member.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_address_class_member
      super
    end

    ##
    # Deletes all address classes.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_address_classes
      super
    end

    ##
    # Deletes all string classes.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_string_classes
      super
    end

    ##
    # Deletes all value classes.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_value_classes
      super
    end

    ##
    # Deletes this classes. The specified classes can be of any class type, even external classes.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :classes The classes to delete.
    def delete_class(opts)
      check_params(opts,[:classes])
      super
    end

    ##
    # Incrementally deletes string class member.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_string_class_member
      super
    end

    ##
    # Incrementally deletes value class member.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_value_class_member
      super
    end

    ##
    # Checks to see if this class member are in this class names.
    # @return [boolean[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def find_address_class_member
      super
    end

    ##
    # Checks to see if this class member are in this class names.
    # @return [boolean[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def find_string_class_member
      super
    end

    ##
    # Checks to see if this class member are in this class names.
    # @return [boolean[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def find_value_class_member
      super
    end

    ##
    # Gets this address classes.
    # @return [AddressClass]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :class_names The class names.
    def address_class(opts)
      check_params(opts,[:class_names])
      super
    end

    ##
    # Gets the list of available address classes.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def address_class_list
      super
    end

    ##
    # Gets the data values associated with a set of address class member. This method is effectively the lookup method for using the class as a value map.
    # @return [String[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def address_class_member_data_value
      super
    end

    ##
    # Gets the meta data information for this classes. For external classes, the meta information will indicate the external file and other relevant information. For non-external classes, only applicable information such as class name/type will be of importance.
    # @return [MetaInformation]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :class_names The class names to retrieve class meta information from.
    def class_meta_information(opts)
      check_params(opts,[:class_names])
      super
    end

    ##
    # Gets the class types for this classes.
    # @return [ClassType]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :class_names The class names to retrieve class types.
    def class_type(opts)
      check_params(opts,[:class_names])
      super
    end

    ##
    # Gets the strings used to separate a class member value from its optional associated data value for a set of classes.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :class_names Names of the requested classes
    def data_separator(opts)
      check_params(opts,[:class_names])
      super
    end

    ##
    # Gets the file format for this classes. This should only be called for external classes, since it does not make sense for non-external classes.
    # @return [FileFormatType]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :class_names The class names to retrieve file formats.
    def external_class_file_format(opts)
      check_params(opts,[:class_names])
      super
    end

    ##
    # Gets the file modes for this classes. This should only be called for external classes, since it does not make sense for non-external classes.
    # @return [FileModeType]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :class_names The class names to retrieve file modes.
    def external_class_file_mode(opts)
      check_params(opts,[:class_names])
      super
    end

    ##
    # Gets the file names for this classes. This should only be called for external classes, since it does not make sense for non-external classes.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :class_names The class names to retrieve file names.
    def external_class_file_name(opts)
      check_params(opts,[:class_names])
      super
    end

    ##
    # Gets the list of all available external classes.
    # @return [MetaInformation]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def external_class_list
      super
    end

    ##
    # Gets this string classes.
    # @return [StringClass]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :class_names The class names.
    def string_class(opts)
      check_params(opts,[:class_names])
      super
    end

    ##
    # Gets the list of available string classes.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def string_class_list
      super
    end

    ##
    # Gets the data values associated with a set of string class member. This method is effectively the lookup method for using the class as a value map.
    # @return [String[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def string_class_member_data_value
      super
    end

    ##
    # Gets this value classes.
    # @return [ValueClass]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :class_names The class names.
    def value_class(opts)
      check_params(opts,[:class_names])
      super
    end

    ##
    # Gets the list of available value classes.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def value_class_list
      super
    end

    ##
    # Gets the data values associated with a set of value class member. This method is effectively the lookup method for using the class as a value map.
    # @return [String[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def value_class_member_data_value
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Modifies address classes. The specified classes must already exist.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::Class::AddressClass] :classes The class names and the class members.		 The result is that the class now has the members specified in		 the class_members, regardless of what the class has before.
    def modify_address_class(opts)
      check_params(opts,[:classes])
      super
    end

    ##
    # Modifies string classes. The specified classes must already exist.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::Class::StringClass] :classes The class names and the class members.		 The result is that the class now has the members specified in		 the class_members, regardless of what the class has before.
    def modify_string_class(opts)
      check_params(opts,[:classes])
      super
    end

    ##
    # Modifies value classes. The specified classes must already exist.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::Class::ValueClass] :classes The class names and the class members.		 The result is that the class now has the members specified in		 the class_members, regardless of what the class has before.
    def modify_value_class(opts)
      check_params(opts,[:classes])
      super
    end

    ##
    # Sets the data values associated with a set of address class member. This data value is an optional arbitrary string, which can be retrieved given the class member information, allowing the class to be used as a value map.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :values Data values to associate with each class			 member, organized in the same manner as			 the class member IP addresses			 (default: "" (i.e., no value))
    def set_address_class_member_data_value(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the strings used to separate a class member value from its optional associated data value for a set of classes. This is used for listing and storing both external and internal classes.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :class_names Names of the requested classes
    # @option opts [String] :separators String separator for each class			 (default: ":=")
    def set_data_separator(opts)
      check_params(opts,[:class_names,:separators])
      super
    end

    ##
    # Sets the file format for this classes. This should only be called for external classes, since it does not make sense for non-external classes. If called for non-external classes, it will silently accept it, but nothing will be done.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :class_names The class names to set the file formats.
    # @option opts [IControl::LocalLB::Class::FileFormatType] :file_formats A list of file formats to set for the specified classes.
    def set_external_class_file_format(opts)
      check_params(opts,[:class_names,:file_formats])
      super
    end

    ##
    # Sets the file mode for this classes. This should only be called for external classes, since it does not make sense for non-external classes. If called for non-external classes, it will silently accept it, but nothing will be done.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :class_names The class names to set the file modes.
    # @option opts [IControl::LocalLB::Class::FileModeType] :file_modes A list of file modes to set for the specified classes.
    def set_external_class_file_mode(opts)
      check_params(opts,[:class_names,:file_modes])
      super
    end

    ##
    # Sets the file names for this external classes. This should only be called for external classes, since it does not make sense for non-external classes. If called for non-external classes, it will silently accept it, but nothing will be done.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :class_names The class names to set the file names.
    # @option opts [String] :file_names A list of file names to set for the specified classes.
    def set_external_class_file_name(opts)
      check_params(opts,[:class_names,:file_names])
      super
    end

    ##
    # Sets the data values associated with a set of string class member. This data value is an optional arbitrary string, which can be retrieved given the class member information, allowing the class to be used as a value map.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :values Data values to associate with each class			 member, organized in the same manner as			 the class member string values			 (default: "" (i.e., no value))
    def set_string_class_member_data_value(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the data values associated with a set of value class member. This data value is an arbitrary optional string, which can be retrieved given the class member information, allowing the class to be used as a value map.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :values Data values to associate with each class			 member, organized in the same manner as			 the class member integer values			 (default: "" (i.e., no value))
    def set_value_class_member_data_value(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # A struct that describes an Address class.
    # @attr [String] name The Address class name.
    # @attr [IControl::LocalLB::Klass::AddressEntry] members The Address class member list.
    class AddressClass < IControl::Base::Struct
      icontrol_attribute :name, String
      icontrol_attribute :members, IControl::LocalLB::Klass::AddressEntry
    end

    ##
    # A struct that describes an Address class member.
    # @attr [String] address The IP address of the Address class member.
    # @attr [String] netmask The netmask of the Address class member.
    class AddressEntry < IControl::Base::Struct
      icontrol_attribute :address, String
      icontrol_attribute :netmask, String
    end

    ##
    # A struct that describes the meta information of a class.
    # @attr [String] class_name The name of the external class.
    # @attr [IControl::LocalLB::Klass::ClassType] class_type The type of the external class.
    # @attr [String] file_name The name of the file holding the data. If file_name is not empty, it indicates an external class.
    # @attr [IControl::LocalLB::Klass::FileModeType] file_mode The mode determines whether the external data is updated by a save operation. Default is "READ". Only applicable for external classes.
    # @attr [IControl::LocalLB::Klass::FileFormatType] file_format The file format of an external class. Only applicable for external classes.
    class MetaInformation < IControl::Base::Struct
      icontrol_attribute :class_name, String
      icontrol_attribute :class_type, IControl::LocalLB::Klass::ClassType
      icontrol_attribute :file_name, String
      icontrol_attribute :file_mode, IControl::LocalLB::Klass::FileModeType
      icontrol_attribute :file_format, IControl::LocalLB::Klass::FileFormatType
    end

    ##
    # A struct that describes a String class.
    # @attr [String] name The String class name.
    # @attr [String] members The String class member list.
    class StringClass < IControl::Base::Struct
      icontrol_attribute :name, String
      icontrol_attribute :members, String
    end

    ##
    # A struct that describes a Value class.
    # @attr [String] name The Value class name.
    # @attr [Numeric] members The Value class member list.
    class ValueClass < IControl::Base::Struct
      icontrol_attribute :name, String
      icontrol_attribute :members, Numeric
    end


    ## A sequence of Address classes.
    class AddressClassSequence < IControl::Base::Sequence ; end
    ## A sequence of Address class members.
    class AddressEntrySequence < IControl::Base::Sequence ; end
    ## A sequence of Address class entry sequences.
    class AddressEntrySequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of class types.
    class ClassTypeSequence < IControl::Base::Sequence ; end
    ## A sequence of file format types.
    class FileFormatTypeSequence < IControl::Base::Sequence ; end
    ## A sequence of file mode types.
    class FileModeTypeSequence < IControl::Base::Sequence ; end
    ## A sequence of external class properties.
    class MetaInformationSequence < IControl::Base::Sequence ; end
    ## A sequence of String classes.
    class StringClassSequence < IControl::Base::Sequence ; end
    ## A sequence of Value classes.
    class ValueClassSequence < IControl::Base::Sequence ; end
    # A list of different class types.
    class ClassType < IControl::Base::Enumeration
      # Class type is undefined.
      CLASS_TYPE_UNDEFINED = :CLASS_TYPE_UNDEFINED
      # Address class.
      CLASS_TYPE_ADDRESS = :CLASS_TYPE_ADDRESS
      # String class.
      CLASS_TYPE_STRING = :CLASS_TYPE_STRING
      # Value class.
      CLASS_TYPE_VALUE = :CLASS_TYPE_VALUE
    end


    # A list of different file format types.
    class FileFormatType < IControl::Base::Enumeration
      # File format is unknown.
      FILE_FORMAT_UNKNOWN = :FILE_FORMAT_UNKNOWN
      # File format is comma-separated values.
      FILE_FORMAT_CSV = :FILE_FORMAT_CSV
    end


    # A list of different file mode types.
    class FileModeType < IControl::Base::Enumeration
      # File mode type is unknown.
      FILE_MODE_UNKNOWN = :FILE_MODE_UNKNOWN
      # File mode type is READ.
      FILE_MODE_TYPE_READ = :FILE_MODE_TYPE_READ
      # File mode type is READ/WRITE.
      FILE_MODE_TYPE_READ_WRITE = :FILE_MODE_TYPE_READ_WRITE
    end


  end
end
