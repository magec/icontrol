module IControl::LocalLB
  ##
  # The Class interface enables you to manipulate a local load balancer's Class attributes.
  # There are 3 different Class types: Address, String, and Value.
  class Klass < IControl::Base
    class ClassType < IControl::Base::Enumeration; end
    class FileFormatType < IControl::Base::Enumeration; end
    class FileModeType < IControl::Base::Enumeration; end
    class AddressClass < IControl::Base::Struct; end
    class AddressEntry < IControl::Base::Struct; end
    class MetaInformation < IControl::Base::Struct; end
    class StringClass < IControl::Base::Struct; end
    class ValueClass < IControl::Base::Struct; end    ## A sequence of Address classes.
    class AddressClassSequence < IControl::Base::Sequence ; end## A sequence of Address class members.
    class AddressEntrySequence < IControl::Base::Sequence ; end## A sequence of Address class entry sequences.
    class AddressEntrySequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of class types.
    class ClassTypeSequence < IControl::Base::Sequence ; end## A sequence of file format types.
    class FileFormatTypeSequence < IControl::Base::Sequence ; end## A sequence of file mode types.
    class FileModeTypeSequence < IControl::Base::Sequence ; end## A sequence of external class properties.
    class MetaInformationSequence < IControl::Base::Sequence ; end## A sequence of String classes.
    class StringClassSequence < IControl::Base::Sequence ; end## A sequence of Value classes.
    class ValueClassSequence < IControl::Base::Sequence ; end##
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

    ##
    # A list of different file format types.
    class FileFormatType < IControl::Base::Enumeration
      # File format is unknown.
      FILE_FORMAT_UNKNOWN = :FILE_FORMAT_UNKNOWN
      # File format is comma-separated values.
      FILE_FORMAT_CSV = :FILE_FORMAT_CSV
    end

    ##
    # A list of different file mode types.
    class FileModeType < IControl::Base::Enumeration
      # File mode type is unknown.
      FILE_MODE_UNKNOWN = :FILE_MODE_UNKNOWN
      # File mode type is READ.
      FILE_MODE_TYPE_READ = :FILE_MODE_TYPE_READ
      # File mode type is READ/WRITE.
      FILE_MODE_TYPE_READ_WRITE = :FILE_MODE_TYPE_READ_WRITE
    end

    ##
    # A struct that describes an Address class.
    class AddressClass < IControl::Base::Struct
      # The Address class name.
      icontrol_attribute :name, String
      # The Address class member list.
      icontrol_attribute :members, IControl::LocalLB::Klass::AddressEntrySequence
    end

    ##
    # A struct that describes an Address class member.
    class AddressEntry < IControl::Base::Struct
      # The IP address of the Address class member.
      icontrol_attribute :address, String
      # The netmask of the Address class member.
      icontrol_attribute :netmask, String
    end

    ##
    # A struct that describes the meta information of a class.
    class MetaInformation < IControl::Base::Struct
      # The name of the external class.
      icontrol_attribute :class_name, String
      # The type of the external class.
      icontrol_attribute :class_type, IControl::LocalLB::Klass::ClassType
      # The name of the file holding the data. If file_name is not empty, it indicates an
      # external class.
      icontrol_attribute :file_name, String
      # The mode determines whether the external data is updated by a save operation. Default
      # is "READ". Only applicable for external classes.
      icontrol_attribute :file_mode, IControl::LocalLB::Klass::FileModeType
      # The file format of an external class. Only applicable for external classes.
      icontrol_attribute :file_format, IControl::LocalLB::Klass::FileFormatType
    end

    ##
    # A struct that describes a String class.
    class StringClass < IControl::Base::Struct
      # The String class name.
      icontrol_attribute :name, String
      # The String class member list.
      icontrol_attribute :members, StringSequence
    end

    ##
    # A struct that describes a Value class.
    class ValueClass < IControl::Base::Struct
      # The Value class name.
      icontrol_attribute :name, String
      # The Value class member list.
      icontrol_attribute :members, LongSequence
    end

    ##
    # Incrementally adds address class members.
    # :method: add_address_class_member
    # :call-seq:
    # add_address_class_member(class_members)
    #
    # Parameters:
    # - class_members AddressClass[] The class members to add to the existing members of specified classes.

    ##
    # Incrementally adds string class members.
    # :method: add_string_class_member
    # :call-seq:
    # add_string_class_member(class_members)
    #
    # Parameters:
    # - class_members StringClass[] The class members to add to the existing members of specified classes.

    ##
    # Incrementally adds value class members.
    # :method: add_value_class_member
    # :call-seq:
    # add_value_class_member(class_members)
    #
    # Parameters:
    # - class_members ValueClass[] The class members to add to the existing members of specified classes.

    ##
    # Creates address classes. The specified classes must not already exist.
    # :method: create_address_class
    # :call-seq:
    # create_address_class(classes)
    #
    # Parameters:
    # - classes AddressClass[] The class names and the class members.

    ##
    # Creates external classes. Note: As of v9.6.0, the validation on the file_name field
    # in external_classes was improved to ensure the class file exists on pain of Common::OperationFailed
    # exception.
    # :method: create_external_class
    # :call-seq:
    # create_external_class(external_classes)
    #
    # Parameters:
    # - external_classes MetaInformation[] The sequence of external classes to create.

    ##
    # Creates string classes. The specified classes must not already exist.
    # :method: create_string_class
    # :call-seq:
    # create_string_class(classes)
    #
    # Parameters:
    # - classes StringClass[] The class names and the class members.

    ##
    # Creates value classes. The specified classes must not already exist.
    # :method: create_value_class
    # :call-seq:
    # create_value_class(classes)
    #
    # Parameters:
    # - classes ValueClass[] The class names and the class members.

    ##
    # Incrementally deletes address class members.
    # :method: delete_address_class_member
    # :call-seq:
    # delete_address_class_member(class_members)
    #
    # Parameters:
    # - class_members AddressClass[] The class members to delete from the existing members of specified classes.

    ##
    # Deletes all address classes.
    # :method: delete_all_address_classes

    ##
    # Deletes all string classes.
    # :method: delete_all_string_classes

    ##
    # Deletes all value classes.
    # :method: delete_all_value_classes

    ##
    # Deletes the specified classes. The specified classes can be of any class type, even
    # external classes.
    # :method: delete_class
    # :call-seq:
    # delete_class(classes)
    #
    # Parameters:
    # - classes String[] The classes to delete.

    ##
    # Incrementally deletes string class members.
    # :method: delete_string_class_member
    # :call-seq:
    # delete_string_class_member(class_members)
    #
    # Parameters:
    # - class_members StringClass[] The class members to delete from the existing members of specified classes.

    ##
    # Incrementally deletes value class members.
    # :method: delete_value_class_member
    # :call-seq:
    # delete_value_class_member(class_members)
    #
    # Parameters:
    # - class_members ValueClass[] The class members to delete from the existing members of specified classes.

    ##
    # Checks to see if the specified class members are in the specified class names.
    # :method: find_address_class_member
    # :call-seq:
    # find_address_class_member(class_members)
    #
    # Parameters:
    # - class_members AddressClass[] The class members to check in the specified classes.

    ##
    # Checks to see if the specified class members are in the specified class names.
    # :method: find_string_class_member
    # :call-seq:
    # find_string_class_member(class_members)
    #
    # Parameters:
    # - class_members StringClass[] The class members to check in the specified classes.

    ##
    # Checks to see if the specified class members are in the specified class names.
    # :method: find_value_class_member
    # :call-seq:
    # find_value_class_member(class_members)
    #
    # Parameters:
    # - class_members ValueClass[] The class members to check in the specified classes.

    ##
    # Gets the specified address classes.
    # :method: get_address_class
    # :call-seq:
    # get_address_class(class_names)
    #
    # Parameters:
    # - class_names String[] The class names.

    ##
    # Gets the list of available address classes.
    # :method: get_address_class_list

    ##
    # Gets the data values associated with a set of address class members. This method
    # is effectively the lookup method for using the class as a value map.
    # :method: get_address_class_member_data_value
    # :call-seq:
    # get_address_class_member_data_value(class_members)
    #
    # Parameters:
    # - class_members AddressClass[] Address class members whose data value is			 retrieved

    ##
    # Gets the meta data information for the specified classes. For external classes, the
    # meta information will indicate the external file and other relevant information.
    # For non-external classes, only applicable information such as class name/type will
    # be of importance.
    # :method: get_class_meta_information
    # :call-seq:
    # get_class_meta_information(class_names)
    #
    # Parameters:
    # - class_names String[] The class names to retrieve class meta information from.

    ##
    # Gets the class types for the specified classes.
    # :method: get_class_type
    # :call-seq:
    # get_class_type(class_names)
    #
    # Parameters:
    # - class_names String[] The class names to retrieve class types.

    ##
    # Gets the strings used to separate a class member value from its optional associated
    # data value for a set of classes.
    # :method: get_data_separator
    # :call-seq:
    # get_data_separator(class_names)
    #
    # Parameters:
    # - class_names String[] Names of the requested classes

    ##
    # Gets the file format for the specified classes. This should only be called for external
    # classes, since it does not make sense for non-external classes.
    # :method: get_external_class_file_format
    # :call-seq:
    # get_external_class_file_format(class_names)
    #
    # Parameters:
    # - class_names String[] The class names to retrieve file formats.

    ##
    # Gets the file modes for the specified classes. This should only be called for external
    # classes, since it does not make sense for non-external classes.
    # :method: get_external_class_file_mode
    # :call-seq:
    # get_external_class_file_mode(class_names)
    #
    # Parameters:
    # - class_names String[] The class names to retrieve file modes.

    ##
    # Gets the file names for the specified classes. This should only be called for external
    # classes, since it does not make sense for non-external classes.
    # :method: get_external_class_file_name
    # :call-seq:
    # get_external_class_file_name(class_names)
    #
    # Parameters:
    # - class_names String[] The class names to retrieve file names.

    ##
    # Gets the list of all available external classes.
    # :method: get_external_class_list

    ##
    # Gets the specified string classes.
    # :method: get_string_class
    # :call-seq:
    # get_string_class(class_names)
    #
    # Parameters:
    # - class_names String[] The class names.

    ##
    # Gets the list of available string classes.
    # :method: get_string_class_list

    ##
    # Gets the data values associated with a set of string class members. This method is
    # effectively the lookup method for using the class as a value map.
    # :method: get_string_class_member_data_value
    # :call-seq:
    # get_string_class_member_data_value(class_members)
    #
    # Parameters:
    # - class_members StringClass[] String class members whose data value is			 retrieved

    ##
    # Gets the specified value classes.
    # :method: get_value_class
    # :call-seq:
    # get_value_class(class_names)
    #
    # Parameters:
    # - class_names String[] The class names.

    ##
    # Gets the list of available value classes.
    # :method: get_value_class_list

    ##
    # Gets the data values associated with a set of value class members. This method is
    # effectively the lookup method for using the class as a value map.
    # :method: get_value_class_member_data_value
    # :call-seq:
    # get_value_class_member_data_value(class_members)
    #
    # Parameters:
    # - class_members ValueClass[] Value class members whose data value is			 retrieved

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Modifies address classes. The specified classes must already exist.
    # :method: modify_address_class
    # :call-seq:
    # modify_address_class(classes)
    #
    # Parameters:
    # - classes AddressClass[] The class names and the class members.		 The result is that the class now has the members specified in		 the class_members, regardless of what the class has before.

    ##
    # Modifies string classes. The specified classes must already exist.
    # :method: modify_string_class
    # :call-seq:
    # modify_string_class(classes)
    #
    # Parameters:
    # - classes StringClass[] The class names and the class members.		 The result is that the class now has the members specified in		 the class_members, regardless of what the class has before.

    ##
    # Modifies value classes. The specified classes must already exist.
    # :method: modify_value_class
    # :call-seq:
    # modify_value_class(classes)
    #
    # Parameters:
    # - classes ValueClass[] The class names and the class members.		 The result is that the class now has the members specified in		 the class_members, regardless of what the class has before.

    ##
    # Sets the data values associated with a set of address class members. This data value
    # is an optional arbitrary string, which can be retrieved given the class member information,
    # allowing the class to be used as a value map.
    # :method: set_address_class_member_data_value
    # :call-seq:
    # set_address_class_member_data_value(class_members ,values)
    #
    # Parameters:
    # - class_members AddressClass[] Address class members whose data value is			 set
    # - values String[][] Data values to associate with each class			 member, organized in the same manner as			 the class member IP addresses			 (default: "" (i.e., no value))

    ##
    # Sets the strings used to separate a class member value from its optional associated
    # data value for a set of classes. This is used for listing and storing both external
    # and internal classes.
    # :method: set_data_separator
    # :call-seq:
    # set_data_separator(class_names ,separators)
    #
    # Parameters:
    # - class_names String[] Names of the requested classes
    # - separators String[] String separator for each class			 (default: ":=")

    ##
    # Sets the file format for the specified classes. This should only be called for external
    # classes, since it does not make sense for non-external classes. If called for non-external
    # classes, it will silently accept it, but nothing will be done.
    # :method: set_external_class_file_format
    # :call-seq:
    # set_external_class_file_format(class_names ,file_formats)
    #
    # Parameters:
    # - class_names String[] The class names to set the file formats.
    # - file_formats FileFormatType[] A list of file formats to set for the specified classes.

    ##
    # Sets the file mode for the specified classes. This should only be called for external
    # classes, since it does not make sense for non-external classes. If called for non-external
    # classes, it will silently accept it, but nothing will be done.
    # :method: set_external_class_file_mode
    # :call-seq:
    # set_external_class_file_mode(class_names ,file_modes)
    #
    # Parameters:
    # - class_names String[] The class names to set the file modes.
    # - file_modes FileModeType[] A list of file modes to set for the specified classes.

    ##
    # Sets the file names for the specified external classes. This should only be called
    # for external classes, since it does not make sense for non-external classes. If called
    # for non-external classes, it will silently accept it, but nothing will be done.
    # :method: set_external_class_file_name
    # :call-seq:
    # set_external_class_file_name(class_names ,file_names)
    #
    # Parameters:
    # - class_names String[] The class names to set the file names.
    # - file_names String[] A list of file names to set for the specified classes.

    ##
    # Sets the data values associated with a set of string class members. This data value
    # is an optional arbitrary string, which can be retrieved given the class member information,
    # allowing the class to be used as a value map.
    # :method: set_string_class_member_data_value
    # :call-seq:
    # set_string_class_member_data_value(class_members ,values)
    #
    # Parameters:
    # - class_members StringClass[] String class members whose data value is set
    # - values String[][] Data values to associate with each class			 member, organized in the same manner as			 the class member string values			 (default: "" (i.e., no value))

    ##
    # Sets the data values associated with a set of value class members. This data value
    # is an arbitrary optional string, which can be retrieved given the class member information,
    # allowing the class to be used as a value map.
    # :method: set_value_class_member_data_value
    # :call-seq:
    # set_value_class_member_data_value(class_members ,values)
    #
    # Parameters:
    # - class_members ValueClass[] Value class members whose data value is set
    # - values String[][] Data values to associate with each class			 member, organized in the same manner as			 the class member integer values			 (default: "" (i.e., no value))


  end
end
