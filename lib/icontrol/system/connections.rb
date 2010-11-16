module IControl::System
  ##
  # The Connections interface enables you to get information about a device's connections.
  # For example, use Connection interface to get a list of all active connections or
  # to get a list of all active connections for a specific client.
  class Connections < IControl::Base
    class ActiveConnection < IControl::Base::Struct; end
    class ConnectionID < IControl::Base::Struct; end    ## A list of active connections for the device.
    class ActiveConnectionSequence < IControl::Base::Sequence ; end## A list of connection IDs.
    class ConnectionIDSequence < IControl::Base::Sequence ; end##
    # A struct that describes a device's active connections in details.
    class ActiveConnection < IControl::Base::Struct
      # The connection identification.
      icontrol_attribute :connection_id, IControl::System::Connections::ConnectionID
      # The client address/port of the server-side connection.
      icontrol_attribute :serverside_client, IControl::Common::IPPortDefinition
      # The virtual server that this active connection is going through.
      icontrol_attribute :virtual_path, IControl::Common::IPPortDefinition
      # The unit ID of this action connection.
      icontrol_attribute :unit_id, Numeric
      # The number of client-side incoming bytes for this connection.
      icontrol_attribute :clientside_bytes_in, IControl::Common::ULong64
      # The number of client-side outgoing bytes for this connection.
      icontrol_attribute :clientside_bytes_out, IControl::Common::ULong64
      # The number of client-side incoming packets for this connection.
      icontrol_attribute :clientside_packets_in, IControl::Common::ULong64
      # The number of client-side outgoing packets for this connection.
      icontrol_attribute :clientside_packets_out, IControl::Common::ULong64
      # The number of server-side incoming bytes for this connection.
      icontrol_attribute :serverside_bytes_in, IControl::Common::ULong64
      # The number of server-side outgoing bytes for this connection.
      icontrol_attribute :serverside_bytes_out, IControl::Common::ULong64
      # The number of server-side incoming packets for this connection.
      icontrol_attribute :serverside_packets_in, IControl::Common::ULong64
      # The number of server-side outgoing packets for this connection.
      icontrol_attribute :serverside_packets_out, IControl::Common::ULong64
      # The time this connection has been idle.
      icontrol_attribute :idle_time, Numeric
      # The idle timeout after which the connection will be reaped.
      icontrol_attribute :idle_timeout, Numeric
      # The lasthop information string.
      icontrol_attribute :lasthop_info, String
    end

    ##
    # A struct that identifies a connection.
    class ConnectionID < IControl::Base::Struct
      # The client address/port of the client-side connection.
      icontrol_attribute :clientside_client, IControl::Common::IPPortDefinition
      # The server address/port of the client-side connection.
      icontrol_attribute :clientside_server, IControl::Common::IPPortDefinition
      # The server address/port of the server-side connection.
      icontrol_attribute :serverside_server, IControl::Common::IPPortDefinition
      # The protocol used by this connection.
      icontrol_attribute :protocol, IControl::Common::ProtocolType
    end

    ##
    # Deletes the specified connections from the connection table.
    # :method: delete_active_connection
    # :call-seq:
    # delete_active_connection(connections)
    #
    # Parameters:
    # - connections ConnectionID[] The connections to be deleted. These will be string representations		 of some forms of connection identifications.

    ##
    # Deletes all active connections from the connection table.
    # :method: delete_all_active_connections

    ##
    # Gets the active connections in details for the specified connections.
    # :method: get_active_connection
    # :call-seq:
    # get_active_connection(connections)
    #
    # Parameters:
    # - connections ConnectionID[] The connection string identifications.

    ##
    # Gets all active connections in details on the local load balancer.
    # :method: get_all_active_connections

    ##
    # Gets the list of active connections.
    # :method: get_list

    ##
    # Gets the version information for this interface.
    # :method: get_version


  end
end
