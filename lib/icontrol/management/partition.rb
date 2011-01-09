module IControl::Management
  ##
  # The Partition interface enables you to manage AuthZ Administrative Partitions, as
  # well as relationship between users, roles, and their associated partitions.
  class Partition < IControl::Base

    set_id_name "partitions"

    class AuthZPartition < IControl::Base::Struct; end
    class AuthZPartitionSequence < IControl::Base::Sequence ; end    ##
    # Creates this AuthZ partition.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def create_partition
      super
    end

    ##
    # Deletes all AuthZ partition, except for the &amp;quot;Common" partition.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_partitions
      super
    end

    ##
    # Deletes this AuthZ partition. It's recommended that if a partition to be deleted
    # is also the current active partition, the user should change the active partition
    # to something else first (using set_active_partition). Otherwise, in the event that
    # the partition to be deleted is the current active partition, iControl will automatically
    # default the new active partition to the &amp;quot;Common" partition.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :partition_names The names of the AuthZ partitions to delete.
    def delete_partition(opts)
      check_params(opts,[:partition_names])
      super
    end

    ##
    # Gets the active partition for the current user. The active partition is the administrative
    # partition where all configuration will take place until a new active partition is
    # selected. Each user can only be in one active partition at any given time. By default,
    # if not explicitly set, the active partition for a user will be &amp;quot;Common".
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def active_partition
      super
    end

    ##
    # Gets a list of all AuthZ partition.
    # @rspec_example
    # @return [AuthZPartition]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def partition_list
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
    # Sets the active partition for the current user. The active partition is the administrative
    # partition where all configuration will take place until a new active partition is
    # selected. Each user can only be in one active partition at any given time. By default,
    # if not explicitly set, the active partition for a user will be &amp;quot;Common".
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :active_partition The active partition to set.
    def set_active_partition(opts)
      check_params(opts,[:active_partition])
      super
    end

    ##
    # A struct that describes an AuthZ partition.
    # @attr [String] partition_name The name of the partition.
    # @attr [String] description The partition's description.
    class AuthZPartition < IControl::Base::Struct
      icontrol_attribute :partition_name, String
      icontrol_attribute :description, String
    end


    ## A sequence of AuthZPartition.
    class AuthZPartitionSequence < IControl::Base::Sequence ; end
  end
end
