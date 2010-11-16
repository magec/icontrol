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
    class RAIDStatus < IControl::Base::Enumeration; end
    class LogicalDisk < IControl::Base::Struct; end    ## A sequence of LogicalDisks.
    class LogicalDiskSequence < IControl::Base::Sequence ; end## A sequence of LogicalDisk sequences.
    class LogicalDiskSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of RAID status items.
    class RAIDStatusSequence < IControl::Base::Sequence ; end##
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

    ##
    # A struct that contains a key for logical_disk.
    class LogicalDisk < IControl::Base::Struct
      # The slot identifier for the logical disk. For a non-clustered system, this is zero.
      icontrol_attribute :slot_id, Numeric
      # The name for the logical disk, e.g., "HD2", "CF1", "MD1"
      icontrol_attribute :name, String
    end

    ##
    # Adds physical disks to a set of logical disk arrays. For a clustered system, this
    # must be run on the chassis slot holding the disk array. This only works for logical
    # disks which represent disk arrays.
    # :method: add_array_member
    # :call-seq:
    # add_array_member(disks ,serial_numbers)
    #
    # Parameters:
    # - disks LogicalDisk[] The names of the arrays of interest.
    # - serial_numbers String[][] The serial numbers of the physical disks to add to each specified logical disk array.

    ##
    # Adds physical disks to a set of logical disk arrays. For a clustered system, this
    # must be run on the chassis slot holding the disk array. This only works for logical
    # disks which represent disk arrays. This method does exactly the same thing as &amp;quot;add_array_member",
    # except that the added physical disks are specified by their LogicalDisk identifiers,
    # more convenient for user input than the serial numbers used in &amp;quot;remove_array_member".
    # It is supplied for convenience purposes only.
    # :method: add_array_member_by_logical_id
    # :call-seq:
    # add_array_member_by_logical_id(disks ,names)
    #
    # Parameters:
    # - disks LogicalDisk[] The names of the arrays of interest.
    # - names LogicalDisk[][] The identifiers of the logical disks to add to each specified logical disk array.

    ##
    # Gets a list of physical disks that are members of a logical disk. Note that this
    # can be used for any type of logical disk -- single disk drives or disk arrays. However,
    # it may not work for all physical disk logical identifiers.
    # :method: get_array_member
    # :call-seq:
    # get_array_member(disks)
    #
    # Parameters:
    # - disks LogicalDisk[] The names of the arrays of interest.

    ##
    # Gets RAID disk array statuses for a set of physical disks. Note: RAID status will
    # be RAID_STATUS_UNDEFINED if the disk is not a member of a RAID disk array (see get_physical_disk_is_array_member).
    # :method: get_array_status
    # :call-seq:
    # get_array_status(serial_numbers)
    #
    # Parameters:
    # - serial_numbers String[] The serial numbers of the disks of interest.

    ##
    # Gets a list of serial numbers of disks installed for a set of disk bays.
    # :method: get_bay_disk_serial_number
    # :call-seq:
    # get_bay_disk_serial_number(ids)
    #
    # Parameters:
    # - ids long[] The identifiers for the disk bays of interest.

    ##
    # Gets a list of physical disks in the system, identified by serial number.
    # :method: get_list

    ##
    # Gets a list of disk bays in the system.
    # :method: get_list_of_bays

    ##
    # Gets a list of logical disks in the system.
    # :method: get_list_of_logical_disks

    ##
    # Gets device names for a set of logical disks. These are names like hda, hdb, etc.
    # (Note: Currently, the strings are for descriptive purposes and are subject to change).
    # :method: get_logical_disk_device_name
    # :call-seq:
    # get_logical_disk_device_name(disks)
    #
    # Parameters:
    # - disks LogicalDisk[] The logical disks of interest.

    ##
    # Gets the formats for a set of logical disks. These are strings like multiboot, lvm,
    # etc. (Note: Currently, the strings are for descriptive purposes and are subject to
    # change).
    # :method: get_logical_disk_format
    # :call-seq:
    # get_logical_disk_format(disks)
    #
    # Parameters:
    # - disks LogicalDisk[] The logical disks of interest.

    ##
    # Gets media types for a set of logical disks. These are strings like hd, cf, cft,
    # etc. (Note: Currently, the strings are for descriptive purposes and are subject to
    # change).
    # :method: get_logical_disk_media
    # :call-seq:
    # get_logical_disk_media(disks)
    #
    # Parameters:
    # - disks LogicalDisk[] The logical disks of interest.

    ##
    # Gets sizes (in MiB) for a set of logical disks.
    # :method: get_logical_disk_size
    # :call-seq:
    # get_logical_disk_size(disks)
    #
    # Parameters:
    # - disks LogicalDisk[] The logical disks of interest.

    ##
    # Gets names for a set of physical disks. This name is part of the physical disk's
    # LogicalDisk identifier.
    # :method: get_name
    # :call-seq:
    # get_name(serial_numbers)
    #
    # Parameters:
    # - serial_numbers String[] The serial numbers of the disks of interest.

    ##
    # Gets slot identifiers for a set of physical disks. The slot identifier is part of
    # the physical disk's LogicalDisk identifer.
    # :method: get_slot_id
    # :call-seq:
    # get_slot_id(serial_numbers)
    #
    # Parameters:
    # - serial_numbers String[] The serial numbers of the disks of interest.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Gets states indicating whether a disk is a member of a RAID disk array for a set
    # of physical disks.
    # :method: is_array_member
    # :call-seq:
    # is_array_member(serial_numbers)
    #
    # Parameters:
    # - serial_numbers String[] The serial numbers of the disks of interest.

    ##
    # Gets an indication of whether the system is capable of RAID operations.
    # :method: is_raid_capable

    ##
    # Removes phyiscal disks from a set of logical disk arrays. For a clustered system,
    # this must be run on the chassis slot holding the disk array. This only works for
    # logical disks which represent disk arrays.
    # :method: remove_array_member
    # :call-seq:
    # remove_array_member(disks ,serial_numbers)
    #
    # Parameters:
    # - disks LogicalDisk[] The names of the arrays of interest.
    # - serial_numbers String[][] The serial numbers of the physical disks to add to each specified logical disk array.

    ##
    # Removes physical disks from a set of logical disk arrays. For a clustered system,
    # this must be run on the chassis slot holding the disk array. This only works for
    # logical disks which represent disk arrays. This method does exactly the same thing
    # as &amp;quot;remove_array_member", except that the removed physical disks are specified
    # by their LogicalDisk identifiers, more convenient for user input than the serial
    # numbers used in &amp;quot;remove_array_member". It is supplied for convenience purposes
    # only.
    # :method: remove_array_member_by_logical_id
    # :call-seq:
    # remove_array_member_by_logical_id(disks ,names)
    #
    # Parameters:
    # - disks LogicalDisk[] The names of the arrays of interest.
    # - names LogicalDisk[][]


  end
end
