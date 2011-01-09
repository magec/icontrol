module IControl::Management
  ##
  # The Zone interface enables the user to perform &amp;quot;zone" operations on a dns
  # database
  class Zone < IControl::Base

    set_id_name "zones"

    ##
    # Adds the Zones in this views, using the file names specified as the contents of the
    # zone files. Files must be local to target machine.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::ZoneInfo] :zone_records The ZoneInfo struct containing information about the zone to be added
    # @option opts [String] :src_file_names The files containing the zone's resource records.
    # @option opts [boolean] :sync_ptrs A list containing sequences of states indicating whether PTR records should		 automatically be generated.
    def add_zone_file(opts)
      check_params(opts,[:zone_records,:src_file_names,:sync_ptrs])
      super
    end

    ##
    # Adds new options to this zone.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def add_zone_option
      super
    end

    ##
    # Adds the Zones in this views, using the texts specified as the contents of the zone
    # files.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::ZoneInfo] :zone_records The ZoneInfo structs containing information about the zones to be added.
    # @option opts [String[]] :text The list of sequence of strings containing the resource records to create	 in the zones (SOA, NS, etc)
    # @option opts [boolean] :sync_ptrs A list containing sequences of states indicating whether PTR records should		 automatically be generated.
    def add_zone_text(opts)
      check_params(opts,[:zone_records,:text,:sync_ptrs])
      super
    end

    ##
    # Deletes this Zones in this views.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::ViewZone] :view_zones The view/zone information.
    def delete_zone(opts)
      check_params(opts,[:view_zones])
      super
    end

    ##
    # Deletes existing options of this zone
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_zone_option
      super
    end

    ##
    # Gets the version information for this interface.
    # @rspec_example
    # @return [String]
    def version
      super
    end

    ##
    # Gets the ZoneInfo structs for this zone in this views.
    # @rspec_example
    # @return [ZoneInfo]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::ViewZone] :view_zones The view/zone information.
    def zone(opts)
      check_params(opts,[:view_zones])
      super
    end

    ##
    # Gets the list of zone names for this views.
    # @rspec_example
    # @return [ViewZone]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :view_names The names of the views.
    def zone_name(opts)
      check_params(opts,[:view_names])
      super
    end

    ##
    # Sets existing options of this zone to new values.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def set_zone_option
      super
    end

    ##
    # Transfers the Zones from this remote named servers, creating them on the local zrd
    # server, using this views and zone info (type, file name, etc )
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :server_names The names of the servers to request the zones from.
    # @option opts [String] :src_zone_names The names of the zones on the source servers.
    # @option opts [String] :dst_view_names The names of the views to add the zones to.
    # @option opts [IControl::Management::ZoneInfo] :zone_records The ZoneInfo structs containing information about the zones to be added.
    def transfer_zone(opts)
      check_params(opts,[:server_names,:src_zone_names,:dst_view_names,:zone_records])
      super
    end

    ##
    # Tests whether this zone exists
    # @rspec_example
    # @return [boolean]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::ViewZone] :view_zones The view/zone information.
    def zone_exist(opts)
      check_params(opts,[:view_zones])
      super
    end


  end
end
