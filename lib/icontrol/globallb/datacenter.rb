module IControl::GlobalLB
  ##
  # The DataCenter interface enables you to manipulate the data center attributes for
  # a Global TM. For example, use the DataCenter interface to add or remove a data center,
  # transfer server assignments from one data center to another, get and set data center
  # attributes, remove a server from a data center, and so on.
  class DataCenter < IControl::Base
    class DataCenterAttribute < IControl::Base::Struct; end
    class DataCenterLinkDefinition < IControl::Base::Struct; end
    class DataCenterServerDefinition < IControl::Base::Struct; end
    class DataCenterStatisticEntry < IControl::Base::Struct; end
    class DataCenterStatistics < IControl::Base::Struct; end    ## A sequence of data center attributes.
    class DataCenterAttributeSequence < IControl::Base::Sequence ; end## A sequence of DataCenterLinkDefinition's.
    class DataCenterLinkSequence < IControl::Base::Sequence ; end## A sequence of DataCenterServerDefinition's.
    class DataCenterServerSequence < IControl::Base::Sequence ; end## A sequence of DataCenter statistics.
    class DataCenterStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes data center attributes: name, location, and contact information.
    class DataCenterAttribute < IControl::Base::Struct
      # The name of the data center.
      icontrol_attribute :name, String
      # The location of the data center.
      icontrol_attribute :location, String
      # The contact information.
      icontrol_attribute :contact, String
    end

    ##
    # A struct that contains definition for the data center and the associated links.
    class DataCenterLinkDefinition < IControl::Base::Struct
      # The name that identifies a data center.
      icontrol_attribute :data_center, String
      # The links in the data center.
      icontrol_attribute :links, StringSequence
    end

    ##
    # A struct that contains definition for the data center and the associated servers.
    class DataCenterServerDefinition < IControl::Base::Struct
      # The name that identifies a data center.
      icontrol_attribute :data_center, String
      # The servers in the data center.
      icontrol_attribute :servers, StringSequence
    end

    ##
    # A struct that describes statistics for a particular data center.
    class DataCenterStatisticEntry < IControl::Base::Struct
      # The name that identifies a data center.
      icontrol_attribute :data_center, String
      # The statistics for the data center.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes data center statistics and timestamp.
    class DataCenterStatistics < IControl::Base::Struct
      # The statistics for a sequence of data centers.
      icontrol_attribute :statistics, IControl::GlobalLB::DataCenter::DataCenterStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified data centers.
    # :method: create
    # :call-seq:
    # create(data_centers)
    #
    # Parameters:
    # - data_centers DataCenterAttribute[] The data centers.

    ##
    # Deletes all data centers.
    # :method: delete_all_data_centers

    ##
    # Deletes the specified data centers.
    # :method: delete_data_center
    # :call-seq:
    # delete_data_center(data_centers)
    #
    # Parameters:
    # - data_centers String[] The data centers.

    ##
    # Gets the statistics for all the data centers.
    # :method: get_all_statistics

    ##
    # Gets contact information for the specified data centers.
    # :method: get_contact_information
    # :call-seq:
    # get_contact_information(data_centers)
    #
    # Parameters:
    # - data_centers String[] The data centers.

    ##
    # Gets the enabled state of the specified data centers.
    # :method: get_enabled_state
    # :call-seq:
    # get_enabled_state(data_centers)
    #
    # Parameters:
    # - data_centers String[] The data centers.

    ##
    # Gets a list of links of the specified data centers.
    # :method: get_link
    # :call-seq:
    # get_link(data_centers)
    #
    # Parameters:
    # - data_centers String[] The list of data centers.

    ##
    # Gets a list of data centers.
    # :method: get_list

    ##
    # Gets location information for the specified data centers.
    # :method: get_location_information
    # :call-seq:
    # get_location_information(data_centers)
    #
    # Parameters:
    # - data_centers String[] The data centers.

    ##
    # Gets the statuses of the specified data centers.
    # :method: get_object_status
    # :call-seq:
    # get_object_status(data_centers)
    #
    # Parameters:
    # - data_centers String[] The data centers.

    ##
    # Gets a list of servers of the specified data centers.
    # :method: get_server
    # :call-seq:
    # get_server(data_centers)
    #
    # Parameters:
    # - data_centers String[] The list of data centers.

    ##
    # Gets the statistics for the specified data centers.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(data_centers)
    #
    # Parameters:
    # - data_centers String[] The data centers.

    ##
    # Get the version information for this interface.
    # :method: get_version

    ##
    # Resets the statistics for the specified data centers.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(data_centers)
    #
    # Parameters:
    # - data_centers String[] The data centers.

    ##
    # Sets contact information for the specified data centers.
    # :method: set_contact_information
    # :call-seq:
    # set_contact_information(data_centers ,contacts)
    #
    # Parameters:
    # - data_centers String[] The data centers.
    # - contacts String[] The contact information.

    ##
    # Sets the enabled state of the specified data centers.
    # :method: set_enabled_state
    # :call-seq:
    # set_enabled_state(data_centers ,states)
    #
    # Parameters:
    # - data_centers String[] The data centers.
    # - states EnabledState[] The enabled states to set.

    ##
    # Sets location information for the specified data centers.
    # :method: set_location_information
    # :call-seq:
    # set_location_information(data_centers ,locations)
    #
    # Parameters:
    # - data_centers String[] The data centers.
    # - locations String[] The location information.


  end
end
