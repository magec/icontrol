module IControl::Management
  ##
  # The EventNotification interface is used for system configuration change events that
  # are configured with the EventSubscriptions interface.
  class EventNotification < IControl::Base
    class EventDataType < IControl::Base::Enumeration; end
    class EventData < IControl::Base::Struct; end
    class EventDataItem < IControl::Base::Struct; end
    class EventSource < IControl::Base::Struct; end    ## A Sequence of EventDataItem enumeration values.
    class EventDataItemSequence < IControl::Base::Sequence ; end## A Sequence of EventData structures.
    class EventDataSequence < IControl::Base::Sequence ; end## A Sequence of EventDataType enumeration values.
    class EventDataTypeSequence < IControl::Base::Sequence ; end## A Sequence of EventDataSource structures.
    class EventSourceSequence < IControl::Base::Sequence ; end##
    # The EventDataType enum contains the supported data types in a valid notification
    # message.
    class EventDataType < IControl::Base::Enumeration
      # A hexadecimal string representing a sequence of bits.
      DATATYPE_BITS = :DATATYPE_BITS
      # A string representing an opaque data blob.
      DATATYPE_BLOB = :DATATYPE_BLOB
      # a boolean type with valid values of 0 or 1.
      DATATYPE_BOOL = :DATATYPE_BOOL
      # 16 bit short integer.
      DATATYPE_BYTE = :DATATYPE_BYTE
      # A string represnting a date.
      DATATYPE_DATE = :DATATYPE_DATE
      # A IPv4 or IPv6 address represented in string form.
      DATATYPE_IP_ADDRESS = :DATATYPE_IP_ADDRESS
      # A 32 bit long integer.
      DATATYPE_LONG = :DATATYPE_LONG
      # A string representing the mac address of a network interface.
      DATATYPE_MAC = :DATATYPE_MAC
      # A hexadecimal string representing a pointer to a memory address.
      DATATYPE_PTR = :DATATYPE_PTR
      # A 32 bit long.
      DATATYPE_SERVICE = :DATATYPE_SERVICE
      # A string value.
      DATATYPE_STRING = :DATATYPE_STRING
      # A string representing an internal schema tag.
      DATATYPE_TAG = :DATATYPE_TAG
      # A string representing a time.
      DATATYPE_TIME = :DATATYPE_TIME
      # A 32 bit unsigned long integer.
      DATATYPE_ULONG = :DATATYPE_ULONG
      # A 16 bit unsigned word.
      DATATYPE_UWORD = :DATATYPE_UWORD
      # A 64 bit unsigned long long integer.
      DATATYPE_UQUAD = :DATATYPE_UQUAD
    end

    ##
    # Event notifications are sent as a sequence of EventData structures. Each EventData
    # structure represents a single data object that changed.
    class EventData < IControl::Base::Struct
      # The user who initiated the change.
      icontrol_attribute :username, String
      # The sequence number is a persisted value that will increment by one for each event
      # notification message configured to be sent to the notification endpoint.
      icontrol_attribute :sequence_number, Numeric
      # The type of event that triggered the notification.
      icontrol_attribute :event_type, IControl::Management::EventSubscription::EventType
      # The object type specified in this notification.
      icontrol_attribute :object_type, IControl::Management::EventSubscription::ObjectType
      # The list of the objects attributes that changed.
      icontrol_attribute :event_data_item_list, IControl::Management::EventNotification::EventDataItemSequence
    end

    ##
    # The EventDataItem sequence is a list of attributes of the object that have changed.
    class EventDataItem < IControl::Base::Struct
      # The name of the data item.
      icontrol_attribute :event_data_name, String
      # The data items type to be used in interpreting the data value.
      icontrol_attribute :event_data_type, IControl::Management::EventNotification::EventDataType
      # The data items value represented as a string.
      icontrol_attribute :event_data_value, String
    end

    ##
    # The identification of the event notification source. This will be the identification
    # of the F5 device that sent the notification.
    class EventSource < IControl::Base::Struct
      # The system identifier for the source of the event.
      icontrol_attribute :system_id, String
      # The management url for the source of the event.
      icontrol_attribute :url, String
    end

    ##
    # The notification mechanism used to send event notification messages. Clients must
    # implement this interface to act as an endpoint of event notifications.
    # :method: events_occurred
    # :call-seq:
    # events_occurred(event_source ,subscription_id ,event_data_list ,time_stamp)
    #
    # Parameters:
    # - event_source EventSource The identifier for the source of the event.
    # - subscription_id String The subscription that this message was sent on behalf of.
    # - event_data_list EventData[] A list of EventData notifications.
    # - time_stamp TimeStamp The time the notification was sent.


  end
end
