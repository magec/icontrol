module IControl::Networking

  class Uuid_128 < IControl::Base::Struct; end
  class FilterActionSequence < IControl::Base::Sequence ; end
  class FlowControlTypeSequence < IControl::Base::Sequence ; end
  class LearningModeSequence < IControl::Base::Sequence ; end
  class MediaStatusSequence < IControl::Base::Sequence ; end
  class MemberTagTypeSequence < IControl::Base::Sequence ; end
  class MemberTypeSequence < IControl::Base::Sequence ; end
  class PhyMasterSlaveModeSequence < IControl::Base::Sequence ; end
  class RouteEntryTypeSequence < IControl::Base::Sequence ; end
  class STPLinkTypeSequence < IControl::Base::Sequence ; end
  class STPModeTypeSequence < IControl::Base::Sequence ; end
  class STPRoleTypeSequence < IControl::Base::Sequence ; end
  class STPStateTypeSequence < IControl::Base::Sequence ; end
  class Uuid_128Sequence < IControl::Base::Sequence ; end
  class ARP < IControl::Base; end
  class AdminIP < IControl::Base; end
  class Interfaces < IControl::Base; end
  class PacketFilter < IControl::Base; end
  class PacketFilterGlobals < IControl::Base; end
  class PortMirror < IControl::Base; end
  class ProfileGRE < IControl::Base; end
  class ProfileIPIP < IControl::Base; end
  class ProfileWCCPGRE < IControl::Base; end
  class RouteDomain < IControl::Base; end
  class RouteTable < IControl::Base; end
  class STPGlobals < IControl::Base; end
  class STPInstance < IControl::Base; end
  class SelfIP < IControl::Base; end
  class SelfIPPortLockdown < IControl::Base; end
  class Trunk < IControl::Base; end
  class Tunnel < IControl::Base; end
  class VLAN < IControl::Base; end
  class VLANGroup < IControl::Base; end
  class ISessionAdvertisedRoute < IControl::Base; end
  class ISessionLocalInterface < IControl::Base; end
  class ISessionPeerDiscovery < IControl::Base; end
  class ISessionRemoteInterface < IControl::Base; end
  # An enumeration of filter actions.
  class FilterAction < IControl::Base::Enumeration; end
  # A list of flow control types.
  class FlowControlType < IControl::Base::Enumeration; end
  # A list of learning modes.
  class LearningMode < IControl::Base::Enumeration; end
  # A list of interface media statuses.
  class MediaStatus < IControl::Base::Enumeration; end
  # A list of member tagged/untagged types.
  class MemberTagType < IControl::Base::Enumeration; end
  # A list of member types.
  class MemberType < IControl::Base::Enumeration; end
  # A list of PHY master/slave relationship modes.
  class PhyMasterSlaveMode < IControl::Base::Enumeration; end
  # A list of route entry types.
  class RouteEntryType < IControl::Base::Enumeration; end
  # A list of Spanning Tree Protocol link types. The spanning tree algorithms include
  # important optimizations that can only be used on point-to-point links, that is, on
  # links which connect just two bridges. If these optimizations are used on shared links,
  # incorrect or unstable behavior may result. By default, the implementation assumes
  # that full-duplex links are point-to-point and that half-duplex links are shared.
  class STPLinkType < IControl::Base::Enumeration; end
  # A list of Spanning Tree Protocol modes. The difference between STP_MODE_TYPE_DISABLED
  # and STP_MODE_TYPE_PASSTHROUGH is that the pass-through mode forwards spanning tree
  # bridge protocol data units (BPDUs) received on any interface to all other interfaces,
  # whereas the disabled mode discards them.
  class STPModeType < IControl::Base::Enumeration; end
  # A list of Spanning Tree Protocol role types.
  class STPRoleType < IControl::Base::Enumeration; end
  # A list of Spanning Tree Protocol states.
  class STPStateType < IControl::Base::Enumeration; end##
  # A struct that specifies the WOM 128 bit uuid as two unsigned 64bit values
  # @attr [IControl::Common::ULong64] low_part The lower half of the UUID number.
  # @attr [IControl::Common::ULong64] high_part The upper half of the UUID number.
  class Uuid_128 < IControl::Base::Struct
    icontrol_attribute :low_part, IControl::Common::ULong64
    icontrol_attribute :high_part, IControl::Common::ULong64
  end


  ## A sequence of filter actions.
  class FilterActionSequence < IControl::Base::Sequence ; end

  ## A sequence of FlowControlTypes.
  class FlowControlTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of learning modes.
  class LearningModeSequence < IControl::Base::Sequence ; end

  ## A sequence of interface media statii.
  class MediaStatusSequence < IControl::Base::Sequence ; end

  ## A sequence of member tag types.
  class MemberTagTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of member types.
  class MemberTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of PhyMasterSlaveMode.
  class PhyMasterSlaveModeSequence < IControl::Base::Sequence ; end

  ## A sequence of route entry types.
  class RouteEntryTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of STP Link types.
  class STPLinkTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of STP Mode types.
  class STPModeTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of STP role types.
  class STPRoleTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of STP state types.
  class STPStateTypeSequence < IControl::Base::Sequence ; end

  ## A sequence of WOM name entries.
  class Uuid_128Sequence < IControl::Base::Sequence ; end

  # An enumeration of filter actions.
  class FilterAction < IControl::Base::Enumeration
    # Invalid state.
    FILTER_ACTION_NONE = :FILTER_ACTION_NONE
    # Accept the packet.
    FILTER_ACTION_ACCEPT = :FILTER_ACTION_ACCEPT
    # Drop the packet.
    FILTER_ACTION_DISCARD = :FILTER_ACTION_DISCARD
    # Drop the packet and return an ICMP response to the sender indicating the packet was refused .
    FILTER_ACTION_REJECT = :FILTER_ACTION_REJECT
    # No action. It can be used for pure accounting or logging purposes without making a				 decision on how to handle the traffic. Traffic matching this action will continue				 to be evaluated by the filter rule list, starting with the next rule in the list.
    FILTER_ACTION_CONTINUE = :FILTER_ACTION_CONTINUE
  end


  # A list of flow control types.
  class FlowControlType < IControl::Base::Enumeration
    # No pausing.
    FLOW_CONTROL_PAUSE_NONE = :FLOW_CONTROL_PAUSE_NONE
    # Pause transmitting.
    FLOW_CONTROL_PAUSE_TX = :FLOW_CONTROL_PAUSE_TX
    # Pause receiving.
    FLOW_CONTROL_PAUSE_RX = :FLOW_CONTROL_PAUSE_RX
    # Pause both transmitting/receiving.
    FLOW_CONTROL_PAUSE_TX_RX = :FLOW_CONTROL_PAUSE_TX_RX
  end


  # A list of learning modes.
  class LearningMode < IControl::Base::Enumeration
    # Learning is enabled, packets are forwarded.
    LEARNING_MODE_ENABLE_FORWARD = :LEARNING_MODE_ENABLE_FORWARD
    # Learning is disabled, packets are forwarded.
    LEARNING_MODE_DISABLE_FORWARD = :LEARNING_MODE_DISABLE_FORWARD
    # Learning is disabled, packets are discarded.
    LEARNING_MODE_DISABLE_DROP = :LEARNING_MODE_DISABLE_DROP
  end


  # A list of interface media statuses.
  class MediaStatus < IControl::Base::Enumeration
    # Active status, has link and is initialized.
    MEDIA_STATUS_UP = :MEDIA_STATUS_UP
    # Down status, has no link and is initialized.
    MEDIA_STATUS_DOWN = :MEDIA_STATUS_DOWN
    # Disabled status, has been forced down.
    MEDIA_STATUS_DISABLED = :MEDIA_STATUS_DISABLED
    # Unitialized status.
    MEDIA_STATUS_UNINITIALIZED = :MEDIA_STATUS_UNINITIALIZED
    # In loopback mode.
    MEDIA_STATUS_LOOPBACK = :MEDIA_STATUS_LOOPBACK
    # Interface not physically populated.
    MEDIA_STATUS_UNPOPULATED = :MEDIA_STATUS_UNPOPULATED
  end


  # A list of member tagged/untagged types.
  class MemberTagType < IControl::Base::Enumeration
    # Tagged member.
    MEMBER_TAGGED = :MEMBER_TAGGED
    # Untagged member.
    MEMBER_UNTAGGED = :MEMBER_UNTAGGED
  end


  # A list of member types.
  class MemberType < IControl::Base::Enumeration
    # The member is an interface.
    MEMBER_INTERFACE = :MEMBER_INTERFACE
    # The member is a trunk.
    MEMBER_TRUNK = :MEMBER_TRUNK
  end


  # A list of PHY master/slave relationship modes.
  class PhyMasterSlaveMode < IControl::Base::Enumeration
    # No PHY master/slave relationship.
    PHY_MODE_NONE = :PHY_MODE_NONE
    # PHY slave mode.
    PHY_MODE_SLAVE = :PHY_MODE_SLAVE
    # PHY master mode.
    PHY_MODE_MASTER = :PHY_MODE_MASTER
    # PHY auto mode.
    PHY_MODE_AUTO = :PHY_MODE_AUTO
  end


  # A list of route entry types.
  class RouteEntryType < IControl::Base::Enumeration
    # Route uses gateway.
    ROUTE_TYPE_GATEWAY = :ROUTE_TYPE_GATEWAY
    # Route uses pool.
    ROUTE_TYPE_POOL = :ROUTE_TYPE_POOL
    # Route uses interface/vlan.
    ROUTE_TYPE_INTERFACE = :ROUTE_TYPE_INTERFACE
    # Route rejects all requests.
    ROUTE_TYPE_REJECT = :ROUTE_TYPE_REJECT
  end


  # A list of Spanning Tree Protocol link types. The spanning tree algorithms include
  # important optimizations that can only be used on point-to-point links, that is, on
  # links which connect just two bridges. If these optimizations are used on shared links,
  # incorrect or unstable behavior may result. By default, the implementation assumes
  # that full-duplex links are point-to-point and that half-duplex links are shared.
  class STPLinkType < IControl::Base::Enumeration
    # Point-To-Point links.
    STP_LINK_TYPE_P2P = :STP_LINK_TYPE_P2P
    # Shared links.
    STP_LINK_TYPE_SHARED = :STP_LINK_TYPE_SHARED
    # The default behavior.
    STP_LINK_TYPE_AUTO = :STP_LINK_TYPE_AUTO
  end


  # A list of Spanning Tree Protocol modes. The difference between STP_MODE_TYPE_DISABLED
  # and STP_MODE_TYPE_PASSTHROUGH is that the pass-through mode forwards spanning tree
  # bridge protocol data units (BPDUs) received on any interface to all other interfaces,
  # whereas the disabled mode discards them.
  class STPModeType < IControl::Base::Enumeration
    # Disables Spanning Tree Protocol entirely.
    STP_MODE_TYPE_DISABLED = :STP_MODE_TYPE_DISABLED
    # BIG-IP will be transparent to spanning tree BPDUs , forwarding				 the BPDUs to all interfaces.
    STP_MODE_TYPE_PASSTHROUGH = :STP_MODE_TYPE_PASSTHROUGH
    # The original version of STP.
    STP_MODE_TYPE_STP = :STP_MODE_TYPE_STP
    # The improved version of STP, Rapid STP.
    STP_MODE_TYPE_RSTP = :STP_MODE_TYPE_RSTP
    # The Multiple STP, VLAN-aware implementation.
    STP_MODE_TYPE_MSTP = :STP_MODE_TYPE_MSTP
  end


  # A list of Spanning Tree Protocol role types.
  class STPRoleType < IControl::Base::Enumeration
    # Disabled.
    STP_ROLE_TYPE_DISABLE = :STP_ROLE_TYPE_DISABLE
    # Root role.
    STP_ROLE_TYPE_ROOT = :STP_ROLE_TYPE_ROOT
    # Designate role.
    STP_ROLE_TYPE_DESIGNATE = :STP_ROLE_TYPE_DESIGNATE
    # Alternate role.
    STP_ROLE_TYPE_ALTERNATE = :STP_ROLE_TYPE_ALTERNATE
    # Backup role.
    STP_ROLE_TYPE_BACKUP = :STP_ROLE_TYPE_BACKUP
    # Master role.
    STP_ROLE_TYPE_MASTER = :STP_ROLE_TYPE_MASTER
  end


  # A list of Spanning Tree Protocol states.
  class STPStateType < IControl::Base::Enumeration
    # STP detaching state.
    STP_STATE_TYPE_DETACH = :STP_STATE_TYPE_DETACH
    # STP blocking state.
    STP_STATE_TYPE_BLOCK = :STP_STATE_TYPE_BLOCK
    # STP listening state.
    STP_STATE_TYPE_LISTEN = :STP_STATE_TYPE_LISTEN
    # STP learning state.
    STP_STATE_TYPE_LEARN = :STP_STATE_TYPE_LEARN
    # STP forwarding state.
    STP_STATE_TYPE_FORWARD = :STP_STATE_TYPE_FORWARD
    # STP is disabled.
    STP_STATE_TYPE_DISABLE = :STP_STATE_TYPE_DISABLE
  end


end
require "networking/arp"
require "networking/admin_ip"
require "networking/interfaces"
require "networking/packet_filter"
require "networking/packet_filter_globals"
require "networking/port_mirror"
require "networking/profile_gre"
require "networking/profile_ipip"
require "networking/profile_wccpgre"
require "networking/route_domain"
require "networking/route_table"
require "networking/stp_globals"
require "networking/stp_instance"
require "networking/self_ip"
require "networking/self_ip_port_lockdown"
require "networking/trunk"
require "networking/tunnel"
require "networking/vlan"
require "networking/vlan_group"
require "networking/i_session_advertised_route"
require "networking/i_session_local_interface"
require "networking/i_session_peer_discovery"
require "networking/i_session_remote_interface"
