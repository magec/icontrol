module IControl::System
  ##
  # The Disk interface enables you to manage the disks in the system. The disk objects
  # come in two flavors. &amp;quot;Physical disks" are the actual hardware disk drives,
  # which can be anything from a true hard disk to a compact flash drive to a USB flash
  # drive. Physical disks are addressed by their serial numbers. &amp;quot;Logical disks"
  # are the view of the disk drives from the system's point of view, abstracting the
  # disk itself, making all disk drives look the same whether they are a true hard disk,
  # a flash drive, or a full disk array. In other words, a logical disk can hold one
  # or more physical disks. Logical disks are addressed by the LogicalDisk identifier,
  # which includes their logical name (e.g., &amp;quot;HD2", &amp;quot;CF1", &amp;quot;MD1")
  # and their chassis slot identifier. It is important to note the potentially confusing
  # relationship between logical and physical disks and their identifiers. All physical
  # disks can be addressed by a LogicalDisk identifier, though it is not guaranteed that
  # all physical disks have an entry in the logical disk table. The logical disk identifier
  # for a physical disk is dependent on the connection of the disk drive to the system,
  # so can change if the system's disk drive configuration changes. On the other hand,
  # all logical disks hold one or more physical disks, which can have a direct one-to-one
  # mapping for a single disk drive or a one-to-many mapping for a disk array. To avoid
  # problems, physical disks should be ideally addressed only by their serial numbers
  # and logical disks only by their LogicalDisk identifiers. Addressing physical disks
  # by their LogicalDisk identifier is supported as a convenience for any user-generated
  # input. Be careful with these distinctions as you use this interface.
  class Disk < IControl::Base

    set_id_name "disks"

    class LogicalDisk < IControl::Base::Struct; end
    class LogicalDiskSequence < IControl::Base::Sequence ; end
    class LogicalDiskSequenceSequence < IControl::Base::SequenceSequence ; end
    class RAIDStatusSequence < IControl::Base::Sequence ; end
    # An enumeration of RAID status.
    class RAIDStatus < IControl::Base::Enumeration; end    ##
    # Adds physical disk to a set of logical disk arrays. For a clustered system, this
    # must be run on the chassis slot holding the disk array. This only works for logical
    # disk which represent disk arrays.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :serial_numbers The serial numbers of the physical disks to add to each specified logical disk array.
    def add_array_member(opts)
      opts = check_params(opts,[:serial_numbers])
      super(opts)
    end

    ##
    # Adds physical disk to a set of logical disk arrays. For a clustered system, this
    # must be run on the chassis slot holding the disk array. This only works for logical
    # disk which represent disk arrays. This method does exactly the same thing as &amp;quot;add_array_member",
    # except that the added physical disk are specified by their LogicalDisk identifiers,
    # more convenient for user input than the serial numbers used in &amp;quot;remove_array_member".
    # It is supplied for convenience purposes only.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::System::Disk::LogicalDisk[]] :names The identifiers of the logical disks to add to each specified logical disk array.
    def add_array_member_by_logical_id(opts)
      opts = check_params(opts,[:names])
      super(opts)
    end

    ##
    # Gets a list of physical disk that are members of a logical disk. Note that this can
    # be used for any type of logical disk -- single disk drives or disk arrays. However,
    # it may not work for all physical disk logical identifiers.
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def array_member
      super
    end

    ##
    # Gets RAID disk array statuses for a set of physical disk. Note: RAID status will
    # be RAID_STATUS_UNDEFINED if the disk is not a member of a RAID disk array (see get_physical_disk_is_array_member).
    # @rspec_example
    # @return [RAIDStatus]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :serial_numbers The serial numbers of the disks of interest.
    def array_status(opts)
      opts = check_params(opts,[:serial_numbers])
      super(opts)
    end

    ##
    # Gets a list of serial numbers of disk installed for a set of disk bays.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :ids The identifiers for the disk bays of interest.
    def bay_disk_serial_number(opts)
      opts = check_params(opts,[:ids])
      super(opts)
    end

    ##
    # Gets a list of physical disk in the system, identified by serial number.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets a list of disk bays in the system.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list_of_bays
      super
    end

    ##
    # Gets a list of logical disk in the system.
    # @rspec_example
    # @return [LogicalDisk]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list_of_logical_disks
      super
    end

    ##
    # Gets device names for a set of logical disk. These are names like hda, hdb, etc.
    # (Note: Currently, the strings are for descriptive purposes and are subject to change).
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def logical_disk_device_name
      super
    end

    ##
    # Gets the formats for a set of logical disk. These are strings like multiboot, lvm,
    # etc. (Note: Currently, the strings are for descriptive purposes and are subject to
    # change).
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def logical_disk_format
      super
    end

    ##
    # Gets media types for a set of logical disk. These are strings like hd, cf, cft, etc.
    # (Note: Currently, the strings are for descriptive purposes and are subject to change).
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def logical_disk_media
      super
    end

    ##
    # Gets sizes (in MiB) for a set of logical disk.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def logical_disk_size
      super
    end

    ##
    # Gets names for a set of physical disk. This name is part of the physical disk's LogicalDisk
    # identifier.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :serial_numbers The serial numbers of the disks of interest.
    def name(opts)
      opts = check_params(opts,[:serial_numbers])
      super(opts)
    end

    ##
    # Gets slot identifiers for a set of physical disk. The slot identifier is part of
    # the physical disk's LogicalDisk identifer.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :serial_numbers The serial numbers of the disks of interest.
    def slot_id(opts)
      opts = check_params(opts,[:serial_numbers])
      super(opts)
    end

    ##
    # Gets the version information for this interface.
    # @rspec_example
    # @return [String]
    def version
      super
    end

    ##
    # Gets states indicating whether a disk is a member of a RAID disk array for a set
    # of physical disk.
    # @rspec_example
    # @return [boolean]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :serial_numbers The serial numbers of the disks of interest.
    def is_array_member(opts)
      opts = check_params(opts,[:serial_numbers])
      super(opts)
    end

    ##
    # Gets an indication of whether the system is capable of RAID operations.
    # @rspec_example
    # @return [boolean]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def is_raid_capable
      super
    end

    ##
    # Removes phyiscal disk from a set of logical disk arrays. For a clustered system,
    # this must be run on the chassis slot holding the disk array. This only works for
    # logical disk which represent disk arrays.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :serial_numbers The serial numbers of the physical disks to add to each specified logical disk array.
    def remove_array_member(opts)
      opts = check_params(opts,[:serial_numbers])
      super(opts)
    end

    ##
    # Removes physical disk from a set of logical disk arrays. For a clustered system,
    # this must be run on the chassis slot holding the disk array. This only works for
    # logical disk which represent disk arrays. This method does exactly the same thing
    # as &amp;quot;remove_array_member", except that the removed physical disk are specified
    # by their LogicalDisk identifiers, more convenient for user input than the serial
    # numbers used in &amp;quot;remove_array_member". It is supplied for convenience purposes
    # only.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::System::Disk::LogicalDisk[]] :names
    def remove_array_member_by_logical_id(opts)
      opts = check_params(opts,[:names])
      super(opts)
    end

    ##
    # A struct that contains a key for logical_disk.
    # @attr [Numeric] slot_id The slot identifier for the logical disk. For a non-clustered system, this is zero.
    # @attr [String] name The name for the logical disk, e.g., "HD2", "CF1", "MD1"
    class LogicalDisk < IControl::Base::Struct
      icontrol_attribute :slot_id, Numeric
      icontrol_attribute :name, String
    end


    ## A sequence of LogicalDisks.
    class LogicalDiskSequence < IControl::Base::Sequence ; end
    ## A sequence of LogicalDisk sequences.
    class LogicalDiskSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of RAID status items.
    class RAIDStatusSequence < IControl::Base::Sequence ; end
    # An enumeration of RAID status.
    class RAIDStatus < IControl::Base::Enumeration
      # Array status is undefined (or is unknown to iControl).
      RAID_STATUS_UNDEFINED = :RAID_STATUS_UNDEFINED
      #
      RAID_STATUS_SYNCHRONIZED = :RAID_STATUS_SYNCHRONIZED
      #
      RAID_STATUS_REPLICATING = :RAID_STATUS_REPLICATING
      #
      RAID_STATUS_MISSING = :RAID_STATUS_MISSING
      #
      RAID_STATUS_FAILED = :RAID_STATUS_FAILED
    end


  end
end
