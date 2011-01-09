module IControl::ARX

  class ExportDefinition < IControl::Base::Struct; end
  class FileChangeDefinition < IControl::Base::Struct; end
  class FileChangeResponse < IControl::Base::Struct; end
  class FileServerDefinition < IControl::Base::Struct; end
  class HAStatus < IControl::Base::Struct; end
  class HealthDefinition < IControl::Base::Struct; end
  class NamespaceDefinition < IControl::Base::Struct; end
  class NetworkDefinition < IControl::Base::Struct; end
  class NetworkStats < IControl::Base::Struct; end
  class PolicyDefinition < IControl::Base::Struct; end
  class PolicySchedule < IControl::Base::Struct; end
  class ProcessorStats < IControl::Base::Struct; end
  class ProtocolDefinition < IControl::Base::Struct; end
  class ShareDefinition < IControl::Base::Struct; end
  class SnapshotDefinition < IControl::Base::Struct; end
  class StorageStatus < IControl::Base::Struct; end
  class VirtualServiceDefinition < IControl::Base::Struct; end
  class VirtualServiceStats < IControl::Base::Struct; end
  class VolumeDefinition < IControl::Base::Struct; end
  class ARXStatusTypeSequence < IControl::Base::Sequence ; end
  class ExportDefinitionSequence < IControl::Base::Sequence ; end
  class FileChangeDefinitionSequence < IControl::Base::Sequence ; end
  class FileChangeResponseSequence < IControl::Base::Sequence ; end
  class FileChangeTypeSequence < IControl::Base::Sequence ; end
  class FileServerDefinitionSequence < IControl::Base::Sequence ; end
  class FileServerTypeSequence < IControl::Base::Sequence ; end
  class HARoleTypeSequence < IControl::Base::Sequence ; end
  class HAStatusSequence < IControl::Base::Sequence ; end
  class HealthDefinitionSequence < IControl::Base::Sequence ; end
  class NamespaceDefinitionSequence < IControl::Base::Sequence ; end
  class NetworkDefinitionSequence < IControl::Base::Sequence ; end
  class NetworkStatsSequence < IControl::Base::Sequence ; end
  class PolicyDefinitionSequence < IControl::Base::Sequence ; end
  class PolicyScheduleIntervalTypeSequence < IControl::Base::Sequence ; end
  class PolicyScheduleSequence < IControl::Base::Sequence ; end
  class PolicyTypeSequence < IControl::Base::Sequence ; end
  class ProcessorStatsSequence < IControl::Base::Sequence ; end
  class ProtocolDefinitionSequence < IControl::Base::Sequence ; end
  class ProtocolTypeSequence < IControl::Base::Sequence ; end
  class ProtocolVersionSequence < IControl::Base::Sequence ; end
  class ShareDefinitionSequence < IControl::Base::Sequence ; end
  class SnapshotDefinitionSequence < IControl::Base::Sequence ; end
  class StorageStatusSequence < IControl::Base::Sequence ; end
  class VirtualServiceDefinitionSequence < IControl::Base::Sequence ; end
  class VirtualServiceStatsSequence < IControl::Base::Sequence ; end
  class VolumeDefinitionSequence < IControl::Base::Sequence ; end
  class VolumeTypeSequence < IControl::Base::Sequence ; end
  class Api < IControl::Base; end
  class Chassis < IControl::Base; end
  class Export < IControl::Base; end
  class FileChangeNotification < IControl::Base; end
  class FileServer < IControl::Base; end
  class Namespace < IControl::Base; end
  class Network < IControl::Base; end
  class Policy < IControl::Base; end
  class Share < IControl::Base; end
  class VirtualService < IControl::Base; end
  class Volume < IControl::Base; end
  # The ARXStatusType class defines the status types that can be returned by methods
  # that return the status of an object or module.
  class ARXStatusType < IControl::Base::Enumeration; end
  # Possible File Change Types.
  class FileChangeType < IControl::Base::Enumeration; end
  # Possible File Server Types.
  class FileServerType < IControl::Base::Enumeration; end
  # The possible HA Roles of a chassis.
  class HARoleType < IControl::Base::Enumeration; end
  # Enumeration of policy schedule interval types.
  class PolicyScheduleIntervalType < IControl::Base::Enumeration; end
  # Enumeration of policy types.
  class PolicyType < IControl::Base::Enumeration; end
  # A structure that enumerates supported file access protocol types.
  class ProtocolType < IControl::Base::Enumeration; end
  # A structure that enumerates supported file access protocol versions.
  class ProtocolVersion < IControl::Base::Enumeration; end
  # Enumeration of ARX volume types.
  class VolumeType < IControl::Base::Enumeration; end##
  # A structure that contains the details of a virtual service export.
  # @attr [String] name The name of the export.
  # @attr [String] service The name of the virtual service that hosts the export.
  # @attr [String] namespace The name of the namespace the export is hosted from.
  # @attr [String] volume The name of the volume the export is hosted from.
  # @attr [String] path The virtual volume path of the export.
  # @attr [IControl::ARX::ProtocolType] protocol The file access protocol used for the export.
  # @attr [IControl::ARX::ARXStatusType] status The status of the export.
  class ExportDefinition < IControl::Base::Struct
    icontrol_attribute :name, String
    icontrol_attribute :service, String
    icontrol_attribute :namespace, String
    icontrol_attribute :volume, String
    icontrol_attribute :path, String
    icontrol_attribute :protocol, IControl::ARX::ProtocolType
    icontrol_attribute :status, IControl::ARX::ARXStatusType
  end

  ##
  # A structure that contains the details of a file change.
  # @attr [IControl::ARX::FileChangeType] type The type of file change.
  # @attr [String] src_path The file's original path. The path is relative to src_root. This field is not used when the file change is either FileChangeType ::FILECHANGE_FILE_NEW or FileChangeType ::FILECHANGE_DIR_NEW.
  # @attr [String] dst_path The file's new path. When the file change is FileChangeType ::FILECHANGE_FILE_OTHER, FileChangeType ::FILECHANGE_DIR_OTHER, FileChangeType ::FILECHANGE_FILE_NEW or FileChangeType ::FILECHANGE_DIR_NEW the path is relative to dst_root. However, if the file change is FileChangeType ::FILECHANGE_FILE_RENAME or FileChangeType ::FILECHANGE_DIR_RENAME then it is the full path. For any other file change type, this field is not used.
  # @attr [String] src_link If this change is for a link to another file on NFS, then the source link will represent the original path for the target of the link. This path can be used to group links that link to the same file. However, this path can only be used as a key to group links during this session because a different path may be used in other sessions.
  # @attr [String] dst_link If this change is for a link to another file on NFS, then the destination link will represent the new path for the target of the link. This path can be used to group links that link to the same file. However, this path can only be used as a key to group links during this session because a different path may be used in other sessions.
  class FileChangeDefinition < IControl::Base::Struct
    icontrol_attribute :type, IControl::ARX::FileChangeType
    icontrol_attribute :src_path, String
    icontrol_attribute :dst_path, String
    icontrol_attribute :src_link, String
    icontrol_attribute :dst_link, String
  end

  ##
  # A structure that contains the details of a file change response.
  # @attr [Numeric] count Number of file changes returned from FileChangeResponse ::getChanges.
  # @attr [Object] more This is set to true when there are more file changes left to retrieve for this session and false when there are no more changes left to retrieve for the session. When this is true, the user should call get_notifications to retrieve the next batch of file changes.
  # @attr [Numeric] error_code Reserved for future development. Errors will be handled through the SOAP fault mechanism.
  # @attr [String] change_idx The change index is used as a placeholder while retrieving batches of file changes. This value is provided to get_notifications in order to get the next set of file changes.
  # @attr [String] src_root Parent directory path of all file sources returned in this response.
  # @attr [String] dst_root Parent directory path of all file destinations returned in this response. This field is empty if it is the same as FileChangeResponse ::src_root. In this case, the caller must use the source root to reconstruct the file destination's full path.
  # @attr [IControl::ARX::FileChangeDefinitionSequence] changes A list of file change details.
  class FileChangeResponse < IControl::Base::Struct
    icontrol_attribute :count, Numeric
    icontrol_attribute :more, Object
    icontrol_attribute :error_code, Numeric
    icontrol_attribute :change_idx, String
    icontrol_attribute :src_root, String
    icontrol_attribute :dst_root, String
    icontrol_attribute :changes, IControl::ARX::FileChangeDefinitionSequence
  end

  ##
  # A structure that contains file server details.
  # @attr [String] name The file server name.
  # @attr [String] description A description of the file server.
  # @attr [String] ip The filer server's IP address.
  # @attr [String] mgmt_ip The file server's management IP address.
  # @attr [IControl::ARX::FileServerType] type The file server's type.
  # @attr [Numeric] cifs_port The file server's CIFS port number.
  # @attr [String] spn The file server's Service Principal Name.
  class FileServerDefinition < IControl::Base::Struct
    icontrol_attribute :name, String
    icontrol_attribute :description, String
    icontrol_attribute :ip, String
    icontrol_attribute :mgmt_ip, String
    icontrol_attribute :type, IControl::ARX::FileServerType
    icontrol_attribute :cifs_port, Numeric
    icontrol_attribute :spn, String
  end

  ##
  # A structure that contains the details of a chassis's HA status.
  # @attr [String] name The hostname of the ARX.
  # @attr [String] ip The ARX's management IP address.
  # @attr [IControl::ARX::HARoleType] role The ARX's role in the HA pair.
  # @attr [IControl::ARX::ARXStatusType] status The ARX's status.
  class HAStatus < IControl::Base::Struct
    icontrol_attribute :name, String
    icontrol_attribute :ip, String
    icontrol_attribute :role, IControl::ARX::HARoleType
    icontrol_attribute :status, IControl::ARX::ARXStatusType
  end

  ##
  # A structure that contains the details of system health events.
  # @attr [Numeric] date The date of the occurrence of the event.
  # @attr [Numeric] id The event's unique identifier.
  # @attr [String] event The event's name.
  # @attr [String] description A description of the event.
  class HealthDefinition < IControl::Base::Struct
    icontrol_attribute :date, Numeric
    icontrol_attribute :id, Numeric
    icontrol_attribute :event, String
    icontrol_attribute :description, String
  end

  ##
  # A structure that contains the details of a namespace.
  # @attr [String] name The namespace's name.
  # @attr [String] description A description of the namespace.
  # @attr [IControl::ARX::ARXStatusType] status The namespace's status.
  # @attr [IControl::ARX::ProtocolDefinitionSequence] protocols A list of protocols configured for this namespace.
  class NamespaceDefinition < IControl::Base::Struct
    icontrol_attribute :name, String
    icontrol_attribute :description, String
    icontrol_attribute :status, IControl::ARX::ARXStatusType
    icontrol_attribute :protocols, IControl::ARX::ProtocolDefinitionSequence
  end

  ##
  # A structure that contains network interface details.
  # @attr [String] id The network interface's identifier.
  # @attr [Numeric] slot The network interface's slot number.
  # @attr [Numeric] port The network interface's port number.
  # @attr [String] type The network interface's type.
  # @attr [String] speed The network interface's speed.
  # @attr [String] duplex The network interface's duplex setting.
  # @attr [String] negotiate The network interface's auto negotiation setting.
  # @attr [String] mac The network interfaces's MAC address.
  # @attr [IControl::ARX::ARXStatusType] status The network interface's status.
  class NetworkDefinition < IControl::Base::Struct
    icontrol_attribute :id, String
    icontrol_attribute :slot, Numeric
    icontrol_attribute :port, Numeric
    icontrol_attribute :type, String
    icontrol_attribute :speed, String
    icontrol_attribute :duplex, String
    icontrol_attribute :negotiate, String
    icontrol_attribute :mac, String
    icontrol_attribute :status, IControl::ARX::ARXStatusType
  end

  ##
  # A structure that contains the statistics of a network.
  # @attr [String] id The network interface's identifier.
  # @attr [Numeric] tx_octets The number of bytes transmitted by this interface.
  # @attr [Numeric] tx_total The total number of bytes transmitted by this interface.
  # @attr [Numeric] tx_unicast The number of unicast packets transmitted by this interface.
  # @attr [Numeric] tx_multicast The number of multicast packets transmitted by this interface.
  # @attr [Numeric] tx_broadcast The number of broadcast packets transmitted by this interface.
  # @attr [Numeric] rx_octets The number of bytes received by this interface.
  # @attr [Numeric] rx_total The total number of bytes received by this interface.
  # @attr [Numeric] rx_unicast The number of unicast packets received by this interface.
  # @attr [Numeric] rx_multicast The number of multicast packets received by this interface.
  # @attr [Numeric] rx_broadcast The number of broadcast packets received by this interface.
  # @attr [Numeric] crc_errors The number of CRC errors encountered by this interface.
  # @attr [Numeric] discarded The number of packets discarded by this interface.
  # @attr [Numeric] collisions The number of packet collisions encountered by this interface.
  class NetworkStats < IControl::Base::Struct
    icontrol_attribute :id, String
    icontrol_attribute :tx_octets, Numeric
    icontrol_attribute :tx_total, Numeric
    icontrol_attribute :tx_unicast, Numeric
    icontrol_attribute :tx_multicast, Numeric
    icontrol_attribute :tx_broadcast, Numeric
    icontrol_attribute :rx_octets, Numeric
    icontrol_attribute :rx_total, Numeric
    icontrol_attribute :rx_unicast, Numeric
    icontrol_attribute :rx_multicast, Numeric
    icontrol_attribute :rx_broadcast, Numeric
    icontrol_attribute :crc_errors, Numeric
    icontrol_attribute :discarded, Numeric
    icontrol_attribute :collisions, Numeric
  end

  ##
  # A structure that contains policy details.
  # @attr [String] name The name of the policy.
  # @attr [String] namespace The name of the namespace that hosts the policy.
  # @attr [String] volume The name of the volume that hosts the policy.
  # @attr [String] schedule The run schedule this policy is assigned to.
  # @attr [IControl::ARX::PolicyType] type The policy type.
  # @attr [IControl::ARX::ARXStatusType] status The status of the policy.
  class PolicyDefinition < IControl::Base::Struct
    icontrol_attribute :name, String
    icontrol_attribute :namespace, String
    icontrol_attribute :volume, String
    icontrol_attribute :schedule, String
    icontrol_attribute :type, IControl::ARX::PolicyType
    icontrol_attribute :status, IControl::ARX::ARXStatusType
  end

  ##
  # A structure that contains the details of a policy schedule.
  # @attr [String] name The name of the schedule.
  # @attr [Numeric] start The start time of the schedule.
  # @attr [Numeric] next The next scheduled start time.
  # @attr [Numeric] last The last scheduled run time.
  # @attr [Numeric] interval The number of intervals between scheduled runs.
  # @attr [IControl::ARX::PolicyScheduleIntervalType] interval_type The type of interval between scheduled runs.
  # @attr [Numeric] duration The duration of the schedule.
  class PolicySchedule < IControl::Base::Struct
    icontrol_attribute :name, String
    icontrol_attribute :start, Numeric
    icontrol_attribute :next, Numeric
    icontrol_attribute :last, Numeric
    icontrol_attribute :interval, Numeric
    icontrol_attribute :interval_type, IControl::ARX::PolicyScheduleIntervalType
    icontrol_attribute :duration, Numeric
  end

  ##
  # A structure that contains processor statistics.
  # @attr [String] processor The processor's identifier.
  # @attr [String] module_type The processor's module type (e.g. ACM, ACM/NSM, ACM/NSM/ASM).
  # @attr [IControl::ARX::ARXStatusType] status The processor's status.
  # @attr [Numeric] uptime The number of seconds since the last reboot.
  # @attr [Numeric] totalmem The processor's total memory.
  # @attr [Numeric] freemem The processor's free memory.
  # @attr [Numeric] cpu1min The processor's load level for the last 1 minute.
  # @attr [Numeric] cpu5min The processor's load level for the last 5 minutes.
  class ProcessorStats < IControl::Base::Struct
    icontrol_attribute :processor, String
    icontrol_attribute :module_type, String
    icontrol_attribute :status, IControl::ARX::ARXStatusType
    icontrol_attribute :uptime, Numeric
    icontrol_attribute :totalmem, Numeric
    icontrol_attribute :freemem, Numeric
    icontrol_attribute :cpu1min, Numeric
    icontrol_attribute :cpu5min, Numeric
  end

  ##
  # A structure that contains file access protocol details.
  # @attr [IControl::ARX::ProtocolType] type The protocol's type (CIFS or NFS).
  # @attr [IControl::ARX::ProtocolVersion] version The protocol's version (only for NFS).
  class ProtocolDefinition < IControl::Base::Struct
    icontrol_attribute :type, IControl::ARX::ProtocolType
    icontrol_attribute :version, IControl::ARX::ProtocolVersion
  end

  ##
  # A structure that contains share details.
  # @attr [String] name The share name.
  # @attr [String] namespace The name of the namespace that contains the volume this share is a part of.
  # @attr [String] volume The name of the volume that this share is a part of.
  # @attr [String] nfs_path The share's NFS export path.
  # @attr [String] cifs_share The share's CIFS share name.
  # @attr [String] ip The IP address of the file server that hosts this share.
  # @attr [Numeric] total_space Total space on the share.
  # @attr [Numeric] free_space Free space on the share.
  # @attr [Numeric] transitions Number of times this share has transitioned to the Active state.
  # @attr [Numeric] last_transition The last time this share transitioned to the Active state.
  # @attr [IControl::ARX::ARXStatusType] status The status of the share.
  class ShareDefinition < IControl::Base::Struct
    icontrol_attribute :name, String
    icontrol_attribute :namespace, String
    icontrol_attribute :volume, String
    icontrol_attribute :nfs_path, String
    icontrol_attribute :cifs_share, String
    icontrol_attribute :ip, String
    icontrol_attribute :total_space, Numeric
    icontrol_attribute :free_space, Numeric
    icontrol_attribute :transitions, Numeric
    icontrol_attribute :last_transition, Numeric
    icontrol_attribute :status, IControl::ARX::ARXStatusType
  end

  ##
  # A structure that contains notification snapshot details.
  # @attr [String] name The name of the snapshot.
  # @attr [Numeric] create_time The creation time of the snapshot.
  # @attr [String] volume_path The snapshot path relative to the root of the virtual volume in NFS format: {@literal //}
  # @attr [StringSequence] backend_paths A list of paths to the physical snapshots that compose this virtual snapshot for all of the included shares in the virtual volume in NFS format: {@literal :///}
  class SnapshotDefinition < IControl::Base::Struct
    icontrol_attribute :name, String
    icontrol_attribute :create_time, Numeric
    icontrol_attribute :volume_path, String
    icontrol_attribute :backend_paths, StringSequence
  end

  ##
  # A structure that contains the details of a storage subsystem's status for a chassis.
  # @attr [String] name The name of the storage subsystem.
  # @attr [Numeric] total_space Total space on the storage subsystem in bytes.
  # @attr [Numeric] used_space Used space on the storage subsystem in bytes.
  # @attr [Numeric] free_space Available free space on the storage subsystem in bytes.
  class StorageStatus < IControl::Base::Struct
    icontrol_attribute :name, String
    icontrol_attribute :total_space, Numeric
    icontrol_attribute :used_space, Numeric
    icontrol_attribute :free_space, Numeric
  end

  ##
  # A structure that contains virtual service details.
  # @attr [String] name The name of the virtual service.
  # @attr [String] cifs_namespace The name of the CIFS namespace.
  # @attr [String] nfs_namespace The name of the NFS namespace.
  # @attr [String] ip The IP address of the virtual service.
  # @attr [String] netmask The netmask of the virtual service.
  # @attr [Numeric] vlan The VLAN of the virtual service.
  # @attr [String] win_domain The Windows domain name.
  # @attr [String] pre_win2k_domain The pre-Windows 2000 domain name.
  # @attr [Numeric] export_count Export count.
  # @attr [IControl::ARX::ARXStatusType] status Service Status.
  # @attr [IControl::ARX::ARXStatusType] nfs_status NFS Service Status.
  # @attr [IControl::ARX::ARXStatusType] cifs_status CIFS Service Status.
  class VirtualServiceDefinition < IControl::Base::Struct
    icontrol_attribute :name, String
    icontrol_attribute :cifs_namespace, String
    icontrol_attribute :nfs_namespace, String
    icontrol_attribute :ip, String
    icontrol_attribute :netmask, String
    icontrol_attribute :vlan, Numeric
    icontrol_attribute :win_domain, String
    icontrol_attribute :pre_win2k_domain, String
    icontrol_attribute :export_count, Numeric
    icontrol_attribute :status, IControl::ARX::ARXStatusType
    icontrol_attribute :nfs_status, IControl::ARX::ARXStatusType
    icontrol_attribute :cifs_status, IControl::ARX::ARXStatusType
  end

  ##
  # A structure that contains the statistics of a particular virtual service.
  # @attr [String] name The name of the virtual service.
  # @attr [Numeric] tx_octets The number of bytes transmitted.
  # @attr [Numeric] tx_unicast The number of unicast packets transmitted.
  # @attr [Numeric] tx_nonunicast The number of nonunicast packets transmitted.
  # @attr [Numeric] tx_dropped The number of transmit packets dropped.
  # @attr [Numeric] rx_octets The number of bytes received.
  # @attr [Numeric] rx_unicast The number of unicast packets received.
  # @attr [Numeric] rx_nonunicast The number of nonunicast packets received.
  # @attr [Numeric] rx_dropped The number of receive packets dropped.
  class VirtualServiceStats < IControl::Base::Struct
    icontrol_attribute :name, String
    icontrol_attribute :tx_octets, Numeric
    icontrol_attribute :tx_unicast, Numeric
    icontrol_attribute :tx_nonunicast, Numeric
    icontrol_attribute :tx_dropped, Numeric
    icontrol_attribute :rx_octets, Numeric
    icontrol_attribute :rx_unicast, Numeric
    icontrol_attribute :rx_nonunicast, Numeric
    icontrol_attribute :rx_dropped, Numeric
  end

  ##
  # A structure that contains the details of a volume.
  # @attr [String] name The path that represents the name of the volume.
  # @attr [IControl::ARX::VolumeType] type The volume type.
  # @attr [String] namespace The namespace name that contains the volume.
  # @attr [String] description The volume description.
  # @attr [Numeric] vpu The Virtual Processor Unit that hosts the volume.
  # @attr [Numeric] failure_domain The volume's Failure domain.
  # @attr [Numeric] total_space Total space on the volume.
  # @attr [Numeric] free_space Free space available on the volume.
  # @attr [Numeric] file_count Total number of files on the volume.
  # @attr [Numeric] file_max_free Maximum number of file credits on the volume.
  # @attr [Numeric] file_max_reserve Maximum number of reserved file credits for the volume.
  # @attr [Numeric] dir_count Total number of directories in the volume.
  # @attr [Numeric] share_count The number of shares in the volume.
  # @attr [IControl::ARX::ARXStatusType] status The status of the volume.
  class VolumeDefinition < IControl::Base::Struct
    icontrol_attribute :name, String
    icontrol_attribute :type, IControl::ARX::VolumeType
    icontrol_attribute :namespace, String
    icontrol_attribute :description, String
    icontrol_attribute :vpu, Numeric
    icontrol_attribute :failure_domain, Numeric
    icontrol_attribute :total_space, Numeric
    icontrol_attribute :free_space, Numeric
    icontrol_attribute :file_count, Numeric
    icontrol_attribute :file_max_free, Numeric
    icontrol_attribute :file_max_reserve, Numeric
    icontrol_attribute :dir_count, Numeric
    icontrol_attribute :share_count, Numeric
    icontrol_attribute :status, IControl::ARX::ARXStatusType
  end


  ## A sequence of ARXStatusType values.
  class ARXStatusTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of ExportDefinition values.
  class ExportDefinitionSequence < IControl::Base::Sequence ; end

  ## A sequence of FileChangeDefinition values.
  class FileChangeDefinitionSequence < IControl::Base::Sequence ; end

  ## A sequence of FileChangeResponse values.
  class FileChangeResponseSequence < IControl::Base::Sequence ; end

  ## A sequence of FileChangeType values.
  class FileChangeTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of FileServerDefinition values.
  class FileServerDefinitionSequence < IControl::Base::Sequence ; end

  ## A sequence of FileServerType values.
  class FileServerTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of HARoleType values.
  class HARoleTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of HAStatus values.
  class HAStatusSequence < IControl::Base::Sequence ; end

  ## A sequence of HealthDefinition values.
  class HealthDefinitionSequence < IControl::Base::Sequence ; end

  ## A sequence of NamespaceDefinition values.
  class NamespaceDefinitionSequence < IControl::Base::Sequence ; end

  ## A sequence of NetworkDefinition values.
  class NetworkDefinitionSequence < IControl::Base::Sequence ; end

  ## A sequence of NetworkStats values.
  class NetworkStatsSequence < IControl::Base::Sequence ; end

  ## A sequence of PolicyDefinition values.
  class PolicyDefinitionSequence < IControl::Base::Sequence ; end

  ## A sequence of PolicyScheduleIntervalType values.
  class PolicyScheduleIntervalTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of PolicySchedule values.
  class PolicyScheduleSequence < IControl::Base::Sequence ; end

  ## A sequence of PolicyType values.
  class PolicyTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of ProcessorStats values.
  class ProcessorStatsSequence < IControl::Base::Sequence ; end

  ## A sequence of ProtocolDefinition values.
  class ProtocolDefinitionSequence < IControl::Base::Sequence ; end

  ## A sequence of ProtocolType values.
  class ProtocolTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of ProtocolVersion values.
  class ProtocolVersionSequence < IControl::Base::Sequence ; end

  ## A sequence of ShareDefinition values.
  class ShareDefinitionSequence < IControl::Base::Sequence ; end

  ## A sequence of SnapshotDefinition values.
  class SnapshotDefinitionSequence < IControl::Base::Sequence ; end

  ## A sequence of StorageStatus values.
  class StorageStatusSequence < IControl::Base::Sequence ; end

  ## A sequence of VirtualServiceDefinition values.
  class VirtualServiceDefinitionSequence < IControl::Base::Sequence ; end

  ## A sequence of VirtualServiceStats values.
  class VirtualServiceStatsSequence < IControl::Base::Sequence ; end

  ## A sequence of VolumeDefinition values.
  class VolumeDefinitionSequence < IControl::Base::Sequence ; end

  ## A sequence of VolumeType values.
  class VolumeTypeSequence < IControl::Base::Sequence ; end

  # The ARXStatusType class defines the status types that can be returned by methods
  # that return the status of an object or module.
  class ARXStatusType < IControl::Base::Enumeration
    # The status cannot be determined.
    ARX_UNKNOWN = :ARX_UNKNOWN
    # The object is configured but administratively disabled. This state may also occur if an object has sub-objects that have their own status and all of the sub-objects are either disabled or not currently operational.
    ARX_DISABLED = :ARX_DISABLED
    # The object and all sub-objects are enabled and fully operational.
    ARX_ONLINE = :ARX_ONLINE
    # At least one sub-object is either disabled or not currently operational.
    ARX_DEGRADED = :ARX_DEGRADED
    # The object is administratively enabled but not currently operational.
    ARX_OFFLINE = :ARX_OFFLINE
    # The object is not operational due to component failures that require manual intervention.
    ARX_FAILED = :ARX_FAILED
    # The object is not fully configured.
    ARX_UNINITIALIZED = :ARX_UNINITIALIZED
    # The operation has been scheduled to start but has not yet started.
    ARX_PENDING = :ARX_PENDING
    # The operation is currently starting.
    ARX_STARTING = :ARX_STARTING
    # Starting the operation has failed.
    ARX_STARTING_FAILED = :ARX_STARTING_FAILED
    # The operation is currently stopping.
    ARX_STOPPING = :ARX_STOPPING
    # Stopping the operation has failed.
    ARX_STOPPING_FAILED = :ARX_STOPPING_FAILED
    # The object is ready, but not currently in use.
    ARX_STANDBY = :ARX_STANDBY
    # The object perational but has been administratively suspended.
    ARX_SUSPENDED = :ARX_SUSPENDED
    # The volume is currently migrating files.
    ARX_MIGRATING = :ARX_MIGRATING
  end


  # Possible File Change Types.
  class FileChangeType < IControl::Base::Enumeration
    # The file may have been changed, and the change is not one of FileChangeType ::FILECHANGE_FILE_RENAME, FileChangeType ::FILECHANGE_FILE_DELETE or FileChangeType ::FILECHANGE_FILE_NEW.
    FILECHANGE_FILE_OTHER = :FILECHANGE_FILE_OTHER
    # The directory may have been changed, and the change is not one of FileChangeType ::FILECHANGE_DIR_RENAME, FileChangeType ::FILECHANGE_DIR_DELETE or FileChangeType ::FILECHANGE_DIR_NEW.
    FILECHANGE_DIR_OTHER = :FILECHANGE_DIR_OTHER
    # The file has been renamed.
    FILECHANGE_FILE_RENAME = :FILECHANGE_FILE_RENAME
    # The directory has been renamed.
    FILECHANGE_DIR_RENAME = :FILECHANGE_DIR_RENAME
    # The file has been deleted.
    FILECHANGE_FILE_DELETE = :FILECHANGE_FILE_DELETE
    # The directory has been deleted.
    FILECHANGE_DIR_DELETE = :FILECHANGE_DIR_DELETE
    # The file has been created.
    FILECHANGE_FILE_NEW = :FILECHANGE_FILE_NEW
    # The directory has been created.
    FILECHANGE_DIR_NEW = :FILECHANGE_DIR_NEW
  end


  # Possible File Server Types.
  class FileServerType < IControl::Base::Enumeration
    # Unknown file server type.
    FILESERVER_UNKNOWN = :FILESERVER_UNKNOWN
    # Network Appliance file server type.
    FILESERVER_NETAPP = :FILESERVER_NETAPP
    # EMC file server type.
    FILESERVER_EMC = :FILESERVER_EMC
    # BlueArc file server type.
    FILESERVER_BLUEARC = :FILESERVER_BLUEARC
    # Microsoft Windows file server type.
    FILESERVER_WINDOWS = :FILESERVER_WINDOWS
    # Data Domain file server type.
    FILESERVER_DATADOMAIN = :FILESERVER_DATADOMAIN
  end


  # The possible HA Roles of a chassis.
  class HARoleType < IControl::Base::Enumeration
    # This ARX is not part of an HA cluster.
    ROLE_NONE = :ROLE_NONE
    # This ARX is acting as the active/primary peer in the HA pair.
    ROLE_ACTIVE = :ROLE_ACTIVE
    # This ARX is acting as the backup/secondary peer in the HA pair.
    ROLE_BACKUP = :ROLE_BACKUP
  end


  # Enumeration of policy schedule interval types.
  class PolicyScheduleIntervalType < IControl::Base::Enumeration
    # Minute Intervals.
    POLICY_SCHEDULE_INTERVAL_MINUTES = :POLICY_SCHEDULE_INTERVAL_MINUTES
    # Hourly Intervals.
    POLICY_SCHEDULE_INTERVAL_HOURS = :POLICY_SCHEDULE_INTERVAL_HOURS
    # Daily Intervals.
    POLICY_SCHEDULE_INTERVAL_DAYS = :POLICY_SCHEDULE_INTERVAL_DAYS
    # Weekly Intervals.
    POLICY_SCHEDULE_INTERVAL_WEEKS = :POLICY_SCHEDULE_INTERVAL_WEEKS
    # Monthly Intervals.
    POLICY_SCHEDULE_INTERVAL_MONTHS = :POLICY_SCHEDULE_INTERVAL_MONTHS
    # Quarterly Intervals.
    POLICY_SCHEDULE_INTERVAL_QUARTERS = :POLICY_SCHEDULE_INTERVAL_QUARTERS
    # Yearly Intervals.
    POLICY_SCHEDULE_INTERVAL_YEARS = :POLICY_SCHEDULE_INTERVAL_YEARS
  end


  # Enumeration of policy types.
  class PolicyType < IControl::Base::Enumeration
    # File placement policy rule.
    POLICY_PLACERULE = :POLICY_PLACERULE
    # Shadow copy policy rule.
    POLICY_SHADOWCOPY = :POLICY_SHADOWCOPY
    # Snapshot policy rule.
    POLICY_SNAPSHOT = :POLICY_SNAPSHOT
    # Notification policy rule.
    POLICY_NOTIFICATION = :POLICY_NOTIFICATION
    # Replica snapshot policy rule.
    POLICY_REPLICA_SNAPSHOT = :POLICY_REPLICA_SNAPSHOT
  end


  # A structure that enumerates supported file access protocol types.
  class ProtocolType < IControl::Base::Enumeration
    # The Common Internet File System (CIFS) protocol.
    PROTOCOL_CIFS = :PROTOCOL_CIFS
    # The Network File System (NFS) protocol.
    PROTOCOL_NFS = :PROTOCOL_NFS
  end


  # A structure that enumerates supported file access protocol versions.
  class ProtocolVersion < IControl::Base::Enumeration
    # Version Not Applicable.
    PROTOCOL_VERSION_NA = :PROTOCOL_VERSION_NA
    # NFS Version 2
    PROTOCOL_VERSION_NFSV2 = :PROTOCOL_VERSION_NFSV2
    # NFS Version 3 UDP.
    PROTOCOL_VERSION_NFSV3UDP = :PROTOCOL_VERSION_NFSV3UDP
    # NFS Version 3 TCP.
    PROTOCOL_VERSION_NFSV3TCP = :PROTOCOL_VERSION_NFSV3TCP
  end


  # Enumeration of ARX volume types.
  class VolumeType < IControl::Base::Enumeration
    # Presentation Volume.
    PRESENTATION_VOLUME = :PRESENTATION_VOLUME
    # Managed Volume.
    MANAGED_VOLUME = :MANAGED_VOLUME
  end


end
require "arx/api"
require "arx/chassis"
require "arx/export"
require "arx/file_change_notification"
require "arx/file_server"
require "arx/namespace"
require "arx/network"
require "arx/policy"
require "arx/share"
require "arx/virtual_service"
require "arx/volume"
