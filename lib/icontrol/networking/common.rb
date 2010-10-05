module IControl # :nodoc:
  module Networking # :nodoc: 

    ##
    # An enumeration of media statuses
    class MediaStatus
      
      class << self; include ConstGetter end
      
      # Active status, has link and is initialized.
      MEDIA_STATUS_UP = :MEDIA_STATUS_UP
      # Down status, has no link and is initialized.
      MEDIA_STATUS_DOWN = :MEDIA_STATUS_DOWN
      # Disabled status, has been forced down.
      MEDIA_STATUS_DISABLED = :MEDIA_STATUS_DISABLED
      # Unitialized status.
      MEDIA_STATUS_UNINITIALIZED = :MEDIA_STATUS_UNI
      # In loopback mode.NITIALIZED
      MEDIA_STATUS_LOOPBACK = :MEDIA_STATUS_LOOPBACK
      # Interface not physically populated. 
      MEDIA_STATUS_UNPOPULATED = :MEDIA_STATUS_UNPOPULATED
    end

    ##
    #  An enumeration of filter actions. 
    class FilterAction

      class << self; include ConstGetter end

      # Invalid state.
      FILTER_ACTION_NONE = :FILTER_ACTION_NONE
      # Accept the packet.
      FILTER_ACTION_ACCEPT = :FILTER_ACTION_ACCEPT
      # Drop the packet.
      FILTER_ACTION_DISCARD = :FILTER_ACTION_DISCA
      # Drop the packet and return an ICMP response to the sender indicating the packet was refused .RD
      FILTER_ACTION_REJECT = :FILTER_ACTION_REJECT
      # No action. It can be used for pure accounting or logging purposes without making a decision on how to handle the traffic. Traffic matching this action will continue to be evaluated by the filter rule list, starting with the next rule in the list. 
      FILTER_ACTION_CONTINUE = :FILTER_ACTION_CONTINUE
    end

    ##
    # A list of flow control types. 
    class FlowControlType

      class << self; include ConstGetter end

      # No pausing.
      FLOW_CONTROL_PAUSE_NONE =:FLOW_CONTROL_PAUSE_NONE
      # Pause transmitting.
      FLOW_CONTROL_PAUSE_TX =:FLOW_CONTROL_PAUSE_TX
      # Pause receiving.
      FLOW_CONTROL_PAUSE_RX =:FLOW_CONTROL_PAUSE_RX
      # Pause both transmitting/receiving. 
      FLOW_CONTROL_PAUSE_TX_RX =:FLOW_CONTROL_PAUSE_TX_RX
    end

    ##
    #  A list of learning modes. 
    class LearningMode

      class << self; include ConstGetter end

      # Learning is enabled, packets are forwarded.
      LEARNING_MODE_ENABLE_FORWARD =:LEARNING_MODE_ENABLE_FORWARD
      # Learning is disabled, packets are forwarded.
      LEARNING_MODE_DISABLE_FORWARD =:LEARNING_MODE_DISABLE_FORWARD
      # Learning is disabled, packets are discarded. 
      LEARNING_MODE_DISABLE_DROP =:LEARNING_MODE_DISABLE_DROP
    end

    ##
    #  A list of member tagged/untagged types.
    class MemberTagType 

      class << self; include ConstGetter end

      # Tagged member.
      MEMBER_TAGGED =:MEMBER_TAGGED
      # Untagged member. 
      MEMBER_UNTAGGED =:MEMBER_UNTAGGED
    end

    ##
    # A list of member types.
    class MemberType 

      class << self; include ConstGetter end

      # The member is an interface.
      MEMBER_INTERFACE =:MEMBER_INTERFACE
      # The member is a trunk. 
      MEMBER_TRUNK =:MEMBER_TRUNK
    end

    ##
    # A list of PHY master/slave relationship modes.
    class PhyMasterSlaveMode 

      class << self; include ConstGetter end

      # No PHY master/slave relationship.
      PHY_MODE_NONE =:PHY_MODE_NONE
      # PHY slave mode.
      PHY_MODE_SLAVE =:PHY_MODE_SLAVE
      # PHY master mode.
      PHY_MODE_MASTER =:PHY_MODE_MASTER
      # PHY auto mode. 
      PHY_MODE_AUTO =:PHY_MODE_AUTO
    end

    ##
    # A list of route entry types.
    class RouteEntryType 

      class << self; include ConstGetter end

      # Route uses gateway.
      ROUTE_TYPE_GATEWAY =:ROUTE_TYPE_GATEWAY
      # Route uses pool.
      ROUTE_TYPE_POOL =:ROUTE_TYPE_POOL
      # Route uses interface/vlan.
      ROUTE_TYPE_INTERFACE =:ROUTE_TYPE_INTERFACE
      # Route rejects all requests. 
      ROUTE_TYPE_REJECT =:ROUTE_TYPE_REJECT
    end

    ##
    # A list of Spanning Tree Protocol link types. The spanning tree algorithms include important optimizations that can only be used on point-to-point links, that is, on links which connect just two bridges. If these optimizations are used on shared links, incorrect or unstable behavior may result. By default, the implementation assumes that full-duplex links are point-to-point and that half-duplex links are shared.
    class STPLinkType 

      class << self; include ConstGetter end

      # Point-To-Point links.
      STP_LINK_TYPE_P2P =:STP_LINK_TYPE_P2P
      # Shared links.
      STP_LINK_TYPE_SHARED =:STP_LINK_TYPE_SHARED
      # The default behavior. 
      STP_LINK_TYPE_AUTO =:STP_LINK_TYPE_AUTO
    end

    ##
    # A list of Spanning Tree Protocol modes. The difference between STP_MODE_TYPE_DISABLED and STP_MODE_TYPE_PASSTHROUGH is that the pass-through mode forwards spanning tree bridge protocol data units (BPDUs) received on any interface to all other interfaces, whereas the disabled mode discards them.
    class STPModeType 

      class << self; include ConstGetter end

      # Disables Spanning Tree Protocol entirely.
      STP_MODE_TYPE_DISABLED =:STP_MODE_TYPE_DISABLED
      # BIG-IP will be transparent to spanning tree BPDUs, forwarding the BPDUs to all interfaces.
      STP_MODE_TYPE_PASSTHROUGH =:STP_MODE_TYPE_PASSTHROUGH
      # The original version of STP.
      STP_MODE_TYPE_STP =:STP_MODE_TYPE_STP
      # The improved version of STP, Rapid STP.
      STP_MODE_TYPE_RSTP =:STP_MODE_TYPE_RSTP
      # The Multiple STP, VLAN-aware implementation. 
      STP_MODE_TYPE_MSTP =:STP_MODE_TYPE_MSTP
    end

    ##
    # A list of Spanning Tree Protocol role types.
    class STPRoleType 

      class << self; include ConstGetter end

      # Disabled.
      STP_ROLE_TYPE_DISABLE =:STP_ROLE_TYPE_DISABLE
      # Root role.
      STP_ROLE_TYPE_ROOT =:STP_ROLE_TYPE_ROOT
      # Designate role.
      STP_ROLE_TYPE_DESIGNATE =:STP_ROLE_TYPE_DESIGNATE
      # Alternate role.
      STP_ROLE_TYPE_ALTERNATE =:STP_ROLE_TYPE_ALTERNATE
      # Backup role.
      STP_ROLE_TYPE_BACKUP =:STP_ROLE_TYPE_BACKUP
      # Master role. 
      STP_ROLE_TYPE_MASTER =:STP_ROLE_TYPE_MASTER
    end

    ##
    # A list of Spanning Tree Protocol states. 
    class STPStateType 

      class << self; include ConstGetter end

      # STP detaching state.
      STP_STATE_TYPE_DETACH =:STP_STATE_TYPE_DETACH
      # STP blocking state.
      STP_STATE_TYPE_BLOCK =:STP_STATE_TYPE_BLOCK
      # STP listening state.
      STP_STATE_TYPE_LISTEN =:STP_STATE_TYPE_LISTEN
      # STP learning state.
      STP_STATE_TYPE_LEARN =:STP_STATE_TYPE_LEARN
      # STP forwarding state.
      STP_STATE_TYPE_FORWARD =:STP_STATE_TYPE_FORWARD
      # STP is disabled. 
      STP_STATE_TYPE_DISABLE =:STP_STATE_TYPE_DISABLE
    end
    
  end
end




