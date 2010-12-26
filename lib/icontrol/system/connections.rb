module IControl::System
  ##
  # The Connections interface enables you to get information about a device's connections. For example, use Connection interface to get a list of all active connections or to get a list of all active connections for a specific client.
  class Connections < IControl::Base

    set_id_name "connections"

    class ActiveConnection < IControl::Base::Struct; end
    class ConnectionID < IControl::Base::Struct; end    ##
    # Deletes this connection from the connection table.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_active_connection
      super
    end

    ##
    # Deletes all active connection from the connection table.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_active_connections
      super
    end

    ##
    # Gets the active connection in details for this connection.
    # @return [ActiveConnection]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def active_connection
      super
    end

    ##
    # Gets all active connection in details on the local load balancer.
    # @return [ActiveConnection]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_active_connections
      super
    end

    ##
    # Gets the list of active connection.
    # @return [ConnectionID]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # A struct that describes a device's active connections in details.
    # @attr [IControl::System::Connections::ConnectionID] connection_id The connection identification.
    # @attr [IControl::Common::IPPortDefinition] serverside_client The client address/port of the server-side connection.
    # @attr [IControl::Common::IPPortDefinition] virtual_path The virtual server that this active connection is going through.
    # @attr [Numeric] unit_id The unit ID of this action connection.
    # @attr [IControl::Common::ULong64] clientside_bytes_in The number of client-side incoming bytes for this connection.
    # @attr [IControl::Common::ULong64] clientside_bytes_out The number of client-side outgoing bytes for this connection.
    # @attr [IControl::Common::ULong64] clientside_packets_in The number of client-side incoming packets for this connection.
    # @attr [IControl::Common::ULong64] clientside_packets_out The number of client-side outgoing packets for this connection.
    # @attr [IControl::Common::ULong64] serverside_bytes_in The number of server-side incoming bytes for this connection.
    # @attr [IControl::Common::ULong64] serverside_bytes_out The number of server-side outgoing bytes for this connection.
    # @attr [IControl::Common::ULong64] serverside_packets_in The number of server-side incoming packets for this connection.
    # @attr [IControl::Common::ULong64] serverside_packets_out The number of server-side outgoing packets for this connection.
    # @attr [Numeric] idle_time The time this connection has been idle.
    # @attr [Numeric] idle_timeout The idle timeout after which the connection will be reaped.
    # @attr [String] lasthop_info The lasthop information string.
    class ActiveConnection < IControl::Base::Struct
      icontrol_attribute :connection_id, IControl::System::Connections::ConnectionID
      icontrol_attribute :serverside_client, IControl::Common::IPPortDefinition
      icontrol_attribute :virtual_path, IControl::Common::IPPortDefinition
      icontrol_attribute :unit_id, Numeric
      icontrol_attribute :clientside_bytes_in, IControl::Common::ULong64
      icontrol_attribute :clientside_bytes_out, IControl::Common::ULong64
      icontrol_attribute :clientside_packets_in, IControl::Common::ULong64
      icontrol_attribute :clientside_packets_out, IControl::Common::ULong64
      icontrol_attribute :serverside_bytes_in, IControl::Common::ULong64
      icontrol_attribute :serverside_bytes_out, IControl::Common::ULong64
      icontrol_attribute :serverside_packets_in, IControl::Common::ULong64
      icontrol_attribute :serverside_packets_out, IControl::Common::ULong64
      icontrol_attribute :idle_time, Numeric
      icontrol_attribute :idle_timeout, Numeric
      icontrol_attribute :lasthop_info, String
    end

    ##
    # A struct that identifies a connection.
    # @attr [IControl::Common::IPPortDefinition] clientside_client The client address/port of the client-side connection.
    # @attr [IControl::Common::IPPortDefinition] clientside_server The server address/port of the client-side connection.
    # @attr [IControl::Common::IPPortDefinition] serverside_server The server address/port of the server-side connection.
    # @attr [IControl::Common::ProtocolType] protocol The protocol used by this connection.
    class ConnectionID < IControl::Base::Struct
      icontrol_attribute :clientside_client, IControl::Common::IPPortDefinition
      icontrol_attribute :clientside_server, IControl::Common::IPPortDefinition
      icontrol_attribute :serverside_server, IControl::Common::IPPortDefinition
      icontrol_attribute :protocol, IControl::Common::ProtocolType
    end


    ## A list of active connections for the device.
    class ActiveConnectionSequence < IControl::Base::Sequence ; end
    ## A list of connection IDs.
    class ConnectionIDSequence < IControl::Base::Sequence ; end
  end
end
