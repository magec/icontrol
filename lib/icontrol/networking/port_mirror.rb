module IControl::Networking
  ##
  # The PortMirror interface enables you to work with the definitions and attributes of port mirroring.
  class PortMirror < IControl::Base

    set_id_name "pmirrors"

    ##
    # Adds the lists of mirrored-from interfaces to this port mirrors (mirrored-to interfaces).
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :interfaces The lists of mirrored-from interfaces.
    def add_interface(opts)
      check_params(opts,[:interfaces])
      super
    end

    ##
    # Creates this port mirrors (mirrored-to interfaces) from the list of specified interfaces (mirrored-from interfaces).
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :interfaces The lists of interfaces from which mirroring will take place.
    def create(opts)
      check_params(opts,[:interfaces])
      super
    end

    ##
    # Deletes all port mirrors (mirrored-to interfaces).
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_port_mirrors
      super
    end

    ##
    # Deletes this port mirrors (mirrored-to interfaces).
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_port_mirror
      super
    end

    ##
    # Gets the lists of mirrored-from interfaces associated with this port mirrors.
    # @return [String[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def interface
      super
    end

    ##
    # Gets a list of all port mirrors (mirrored-to interfaces) on this device.
    # @return [String]
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
    # Removes all mirrored-from interfaces from this port mirrors (mirrored-to interfaces).
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_interfaces
      super
    end

    ##
    # Removes the lists of mirrored-from interfaces from this port mirrors (mirrored-to interfaces).
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :interfaces The lists of mirrored-from interfaces.
    def remove_interface(opts)
      check_params(opts,[:interfaces])
      super
    end


  end
end
