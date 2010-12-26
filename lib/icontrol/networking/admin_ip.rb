module IControl::Networking
  ##
  # The AdminIP interface enables you to work with the definitions and attributes contained in a device's administrative IP.
  class AdminIP < IControl::Base

    set_id_name "cluster_names"

    ##
    # Creates this admin IP addresses with extended attributes.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :admin_ips The list of admin IPs to create.
    # @option opts [String] :netmasks The list of netmasks for the admin IPs .
    def create(opts)
      check_params(opts,[:admin_ips,:netmasks])
      super
    end

    ##
    # Creates this cluster name&amp; IP addresses.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [String[]] :cluster_ips The list of lists of cluster admin IPs to create.
    # @option opts [String[]] :netmasks The list of lists of netmasks for the cluster IPs .
    def create_cluster(opts)
      check_params(opts,[:cluster_ips,:netmasks])
      super
    end

    ##
    # Creates this admin IP addresses on the designated slots.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [String] :cluster_name The cluster name.
    # @option opts [long] :slot_ids
    # @option opts [String[]] :slot_ips The list of lists of slot admin IPs to create.
    def create_slot_ip(opts)
      check_params(opts,[:cluster_name,:slot_ids,:slot_ips])
      super
    end

    ##
    # Deletes this admin IP addresses.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :admin_ips The list of admin IPs to delete.
    def delete_administrative_ip(opts)
      check_params(opts,[:admin_ips])
      super
    end

    ##
    # Deletes all admin IP addresses.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_administrative_ips
      super
    end

    ##
    # Deletes all cluster admin IP addresses.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    def delete_all_cluster_ips
      super
    end

    ##
    # Deletes all admin IP addresses on the designated slots.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [long[]] :slot_ids
    def delete_all_slot_ips(opts)
      check_params(opts,[:slot_ids])
      super
    end

    ##
    # Deletes this cluster admin IP addresses.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [String[]] :cluster_ips
    def delete_cluster_ip(opts)
      check_params(opts,[:cluster_ips])
      super
    end

    ##
    # Deletes this admin IP addresses on the designated slots.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [String] :cluster_name The cluster name.
    # @option opts [long] :slot_ids
    # @option opts [String[]] :slot_ips The list of list of slot admin IPs to delete.
    def delete_slot_ip(opts)
      check_params(opts,[:cluster_name,:slot_ids,:slot_ips])
      super
    end

    ##
    # Gets a list of all cluster admin IPs on this cluster.
    # @return [String[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    def cluster_list
      super
    end

    ##
    # Gets the netmasks of this cluster admin IPs.
    # @return [String[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [String[]] :cluster_ips The list of lists of cluster admin IPs .
    def cluster_netmask(opts)
      check_params(opts,[:cluster_ips])
      super
    end

    ##
    # Gets a list of all admin IPs on this device.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the netmasks of this admin IPs.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :admin_ips The list of admin IPs .
    def netmask(opts)
      check_params(opts,[:admin_ips])
      super
    end

    ##
    # Gets a list of all admin IPs on the designated slots.
    # @return [String[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [String] :cluster_name The cluster name.
    # @option opts [long] :slot_ids
    def slot_ip(opts)
      check_params(opts,[:cluster_name,:slot_ids])
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Replaces this admin IP addresses with extended attributes.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [String] :old_ips The list of current admin IPs to be replaced.
    # @option opts [String] :new_ips The list of new admin IPs to replace the old values.
    # @option opts [String] :netmasks The list of netmasks for the admin IPs .
    def replace_administrative_ip(opts)
      check_params(opts,[:old_ips,:new_ips,:netmasks])
      super
    end

    ##
    # Replaces this cluster name with new admin IP addresses.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [String[]] :old_ips The list of lists of cluster admin IPs to be replaced.
    # @option opts [String[]] :new_ips The list of lists of cluster admin IPs to replace the old values.
    # @option opts [String[]] :netmasks The list of lists of netmasks for the cluster IPs .
    def replace_cluster_ip(opts)
      check_params(opts,[:old_ips,:new_ips,:netmasks])
      super
    end

    ##
    # Replaces this admin IP addresses on the designated slots.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [String] :cluster_name The cluster name.
    # @option opts [long] :slot_ids
    # @option opts [String[]] :old_ips The list of lists of cluster admin IPs to be replaced.
    # @option opts [String[]] :new_ips The list of lists of cluster admin IPs to replace the old values.
    def replace_slot_ip(opts)
      check_params(opts,[:cluster_name,:slot_ids,:old_ips,:new_ips])
      super
    end

    ##
    # Sets the netmasks of this cluster admin IPs.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [String[]] :cluster_ips The list of lists of cluster admin IPs .
    # @option opts [String[]] :netmasks The list of lists of netmasks for the cluster IPs .
    def set_cluster_netmask(opts)
      check_params(opts,[:cluster_ips,:netmasks])
      super
    end

    ##
    # Sets the netmasks of this admin IPs.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :admin_ips The list of admin IPs .
    # @option opts [String] :netmasks The list of netmasks of the specified admin IPs .
    def set_netmask(opts)
      check_params(opts,[:admin_ips,:netmasks])
      super
    end


  end
end
