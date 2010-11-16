module IControl::Networking
  ##
  # The AdminIP interface enables you to work with the definitions and attributes contained
  # in a device's administrative IP.
  class AdminIP < IControl::Base
    ##
    # Creates the specified admin IP addresses with extended attributes.
    # :method: create
    # :call-seq:
    # create(admin_ips ,netmasks)
    #
    # Parameters:
    # - admin_ips String[] The list of admin IPs to create.
    # - netmasks String[] The list of netmasks for the admin IPs .

    ##
    # Creates the specified cluster name&amp; IP addresses.
    # :method: create_cluster
    # :call-seq:
    # create_cluster(cluster_names ,cluster_ips ,netmasks)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.
    # - cluster_ips String[][] The list of lists of cluster admin IPs to create.
    # - netmasks String[][] The list of lists of netmasks for the cluster IPs .

    ##
    # Creates the specified admin IP addresses on the designated slots.
    # :method: create_slot_ip
    # :call-seq:
    # create_slot_ip(cluster_name ,slot_ids ,slot_ips)
    #
    # Parameters:
    # - cluster_name String The cluster name.
    # - slot_ids long[]
    # - slot_ips String[][] The list of lists of slot admin IPs to create.

    ##
    # Deletes the specified admin IP addresses.
    # :method: delete_administrative_ip
    # :call-seq:
    # delete_administrative_ip(admin_ips)
    #
    # Parameters:
    # - admin_ips String[] The list of admin IPs to delete.

    ##
    # Deletes all admin IP addresses.
    # :method: delete_all_administrative_ips

    ##
    # Deletes all cluster admin IP addresses.
    # :method: delete_all_cluster_ips
    # :call-seq:
    # delete_all_cluster_ips(cluster_names)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.

    ##
    # Deletes all admin IP addresses on the designated slots.
    # :method: delete_all_slot_ips
    # :call-seq:
    # delete_all_slot_ips(cluster_names ,slot_ids)
    #
    # Parameters:
    # - cluster_names String[]
    # - slot_ids long[][]

    ##
    # Deletes the specified cluster admin IP addresses.
    # :method: delete_cluster_ip
    # :call-seq:
    # delete_cluster_ip(cluster_names ,cluster_ips)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.
    # - cluster_ips String[][]

    ##
    # Deletes the specified admin IP addresses on the designated slots.
    # :method: delete_slot_ip
    # :call-seq:
    # delete_slot_ip(cluster_name ,slot_ids ,slot_ips)
    #
    # Parameters:
    # - cluster_name String The cluster name.
    # - slot_ids long[]
    # - slot_ips String[][] The list of list of slot admin IPs to delete.

    ##
    # Gets a list of all cluster admin IPs on this cluster.
    # :method: get_cluster_list
    # :call-seq:
    # get_cluster_list(cluster_names)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.

    ##
    # Gets the netmasks of the specified cluster admin IPs.
    # :method: get_cluster_netmask
    # :call-seq:
    # get_cluster_netmask(cluster_names ,cluster_ips)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.
    # - cluster_ips String[][] The list of lists of cluster admin IPs .

    ##
    # Gets a list of all admin IPs on this device.
    # :method: get_list

    ##
    # Gets the netmasks of the specified admin IPs.
    # :method: get_netmask
    # :call-seq:
    # get_netmask(admin_ips)
    #
    # Parameters:
    # - admin_ips String[] The list of admin IPs .

    ##
    # Gets a list of all admin IPs on the designated slots.
    # :method: get_slot_ip
    # :call-seq:
    # get_slot_ip(cluster_name ,slot_ids)
    #
    # Parameters:
    # - cluster_name String The cluster name.
    # - slot_ids long[]

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Replaces the specified admin IP addresses with extended attributes.
    # :method: replace_administrative_ip
    # :call-seq:
    # replace_administrative_ip(old_ips ,new_ips ,netmasks)
    #
    # Parameters:
    # - old_ips String[] The list of current admin IPs to be replaced.
    # - new_ips String[] The list of new admin IPs to replace the old values.
    # - netmasks String[] The list of netmasks for the admin IPs .

    ##
    # Replaces the specified cluster name with new admin IP addresses.
    # :method: replace_cluster_ip
    # :call-seq:
    # replace_cluster_ip(cluster_names ,old_ips ,new_ips ,netmasks)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.
    # - old_ips String[][] The list of lists of cluster admin IPs to be replaced.
    # - new_ips String[][] The list of lists of cluster admin IPs to replace the old values.
    # - netmasks String[][] The list of lists of netmasks for the cluster IPs .

    ##
    # Replaces the specified admin IP addresses on the designated slots.
    # :method: replace_slot_ip
    # :call-seq:
    # replace_slot_ip(cluster_name ,slot_ids ,old_ips ,new_ips)
    #
    # Parameters:
    # - cluster_name String The cluster name.
    # - slot_ids long[]
    # - old_ips String[][] The list of lists of cluster admin IPs to be replaced.
    # - new_ips String[][] The list of lists of cluster admin IPs to replace the old values.

    ##
    # Sets the netmasks of the specified cluster admin IPs.
    # :method: set_cluster_netmask
    # :call-seq:
    # set_cluster_netmask(cluster_names ,cluster_ips ,netmasks)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.
    # - cluster_ips String[][] The list of lists of cluster admin IPs .
    # - netmasks String[][] The list of lists of netmasks for the cluster IPs .

    ##
    # Sets the netmasks of the specified admin IPs.
    # :method: set_netmask
    # :call-seq:
    # set_netmask(admin_ips ,netmasks)
    #
    # Parameters:
    # - admin_ips String[] The list of admin IPs .
    # - netmasks String[] The list of netmasks of the specified admin IPs .


  end
end
