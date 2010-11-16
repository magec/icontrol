module IControl::Management
  ##
  # The Partition interface enables you to manage AuthZ Administrative Partitions, as
  # well as relationship between users, roles, and their associated partitions.
  class Partition < IControl::Base
    class AuthZPartition < IControl::Base::Struct; end    ## A sequence of AuthZPartition.
    class AuthZPartitionSequence < IControl::Base::Sequence ; end##
    # A struct that describes an AuthZ partition.
    class AuthZPartition < IControl::Base::Struct
      # The name of the partition.
      icontrol_attribute :partition_name, String
      # The partition's description.
      icontrol_attribute :description, String
    end

    ##
    # Creates the specified AuthZ partitions.
    # :method: create_partition
    # :call-seq:
    # create_partition(partitions)
    #
    # Parameters:
    # - partitions AuthZPartition[] The AuthZ partitions to create.

    ##
    # Deletes all AuthZ partitions, except for the &amp;quot;Common" partition.
    # :method: delete_all_partitions

    ##
    # Deletes the specified AuthZ partitions. It's recommended that if a partition to be
    # deleted is also the current active partition, the user should change the active partition
    # to something else first (using set_active_partition). Otherwise, in the event that
    # the partition to be deleted is the current active partition, iControl will automatically
    # default the new active partition to the &amp;quot;Common" partition.
    # :method: delete_partition
    # :call-seq:
    # delete_partition(partition_names)
    #
    # Parameters:
    # - partition_names String[] The names of the AuthZ partitions to delete.

    ##
    # Gets the active partition for the current user. The active partition is the administrative
    # partition where all configuration will take place until a new active partition is
    # selected. Each user can only be in one active partition at any given time. By default,
    # if not explicitly set, the active partition for a user will be &amp;quot;Common".
    # :method: get_active_partition

    ##
    # Gets a list of all AuthZ partitions.
    # :method: get_partition_list

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Sets the active partition for the current user. The active partition is the administrative
    # partition where all configuration will take place until a new active partition is
    # selected. Each user can only be in one active partition at any given time. By default,
    # if not explicitly set, the active partition for a user will be &amp;quot;Common".
    # :method: set_active_partition
    # :call-seq:
    # set_active_partition(active_partition)
    #
    # Parameters:
    # - active_partition String The active partition to set.


  end
end
