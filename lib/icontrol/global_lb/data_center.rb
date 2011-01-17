module IControl::GlobalLB
  ##
  # The DataCenter interface enables you to manipulate the data center attributes for
  # a Global TM. For example, use the DataCenter interface to add or remove a data center,
  # transfer server assignments from one data center to another, get and set data center
  # attributes, remove a server from a data center, and so on.
  class DataCenter < IControl::Base

    set_id_name "data_centers"

    class DataCenterAttribute < IControl::Base::Struct; end
    class DataCenterLinkDefinition < IControl::Base::Struct; end
    class DataCenterServerDefinition < IControl::Base::Struct; end
    class DataCenterStatisticEntry < IControl::Base::Struct; end
    class DataCenterStatistics < IControl::Base::Struct; end
    class DataCenterAttributeSequence < IControl::Base::Sequence ; end
    class DataCenterLinkSequence < IControl::Base::Sequence ; end
    class DataCenterServerSequence < IControl::Base::Sequence ; end
    class DataCenterStatisticEntrySequence < IControl::Base::Sequence ; end    ##
    # Creates this data center.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def create
      super
    end

    ##
    # Deletes all data center.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_data_centers
      super
    end

    ##
    # Deletes this data center.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_data_center
      super
    end

    ##
    # Gets the statistics for all the data center.
    # @rspec_example
    # @return [DataCenterStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets contact information for this data center.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def contact_information
      super
    end

    ##
    # Gets the enabled state of this data center.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def enabled_state
      super
    end

    ##
    # Gets a list of links of this data center.
    # @rspec_example
    # @return [DataCenterLinkDefinition]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def link
      super
    end

    ##
    # Gets a list of data center.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets location information for this data center.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def location_information
      super
    end

    ##
    # Gets the statuses of this data center.
    # @rspec_example
    # @return [ObjectStatus]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def object_status
      super
    end

    ##
    # Gets a list of servers of this data center.
    # @rspec_example
    # @return [DataCenterServerDefinition]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def server
      super
    end

    ##
    # Gets the statistics for this data center.
    # @rspec_example
    # @return [DataCenterStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Get the version information for this interface.
    # @rspec_example
    # @return [String]
    def version
      super
    end

    ##
    # Resets the statistics for this data center.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets contact information for this data center.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :contacts The contact information.
    def set_contact_information(opts)
      opts = check_params(opts,[:contacts])
      super(opts)
    end

    ##
    # Sets the enabled state of this data center.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The enabled states to set.
    def set_enabled_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets location information for this data center.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :locations The location information.
    def set_location_information(opts)
      opts = check_params(opts,[:locations])
      super(opts)
    end

    ##
    # A struct that describes data center attributes: name, location, and contact information.
    # @attr [String] name The name of the data center.
    # @attr [String] location The location of the data center.
    # @attr [String] contact The contact information.
    class DataCenterAttribute < IControl::Base::Struct
      icontrol_attribute :name, String
      icontrol_attribute :location, String
      icontrol_attribute :contact, String
    end

    ##
    # A struct that contains definition for the data center and the associated links.
    # @attr [String] data_center The name that identifies a data center.
    # @attr [StringSequence] links The links in the data center.
    class DataCenterLinkDefinition < IControl::Base::Struct
      icontrol_attribute :data_center, String
      icontrol_attribute :links, StringSequence
    end

    ##
    # A struct that contains definition for the data center and the associated servers.
    # @attr [String] data_center The name that identifies a data center.
    # @attr [StringSequence] servers The servers in the data center.
    class DataCenterServerDefinition < IControl::Base::Struct
      icontrol_attribute :data_center, String
      icontrol_attribute :servers, StringSequence
    end

    ##
    # A struct that describes statistics for a particular data center.
    # @attr [String] data_center The name that identifies a data center.
    # @attr [IControl::Common::StatisticSequence] statistics The statistics for the data center.
    class DataCenterStatisticEntry < IControl::Base::Struct
      icontrol_attribute :data_center, String
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes data center statistics and timestamp.
    # @attr [IControl::GlobalLB::DataCenter::DataCenterStatisticEntrySequence] statistics The statistics for a sequence of data centers.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class DataCenterStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::GlobalLB::DataCenter::DataCenterStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of data center attributes.
    class DataCenterAttributeSequence < IControl::Base::Sequence ; end
    ## A sequence of DataCenterLinkDefinition's.
    class DataCenterLinkSequence < IControl::Base::Sequence ; end
    ## A sequence of DataCenterServerDefinition's.
    class DataCenterServerSequence < IControl::Base::Sequence ; end
    ## A sequence of DataCenter statistics.
    class DataCenterStatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
