
# This is a helper for defining constants
module IControl

  class NoSuchPoolException < Exception; end
  class MethodNotImplementedException < Exception; end

  module Common

    class VLANFilterList
      attr_accessor :state,:vlans
      def initialize(attributes)
        @state = IControl::Common::EnabledState.const_get(attributes[:state])
        @vlans = [attributes[:vlans][:item]].flatten.compact
      end

    end

    class ULong64
      attr_accessor :high,:low

      def initialize(options)
        @high = options[:high].to_i
        @low  = options[:low].to_i
      end    

      def to_f
        retVal = 0.0
        if @high >=0
          retVal = @high << 32 & 0xffff0000
        else 
          retVal = ((@high & 0x7fffffff) << 32) + (0x80000000 << 32)
        end
        if  @low >=0
          retVal += @low
        else 
          retVal += ((@low & 0x7fffffff) + 0x7fffffff)
        end
        return retVal; 
      end
      
      def to_hash
        return {:high => @high,:low => @low}
      end

    end

    class SourcePortBehavior
      #   Attempt to preserve the source port (best effort). This is the default.
      class SOURCE_PORT_PRESERVE ; VALUE = 0; end
      #  Preserve source port. Use of the preserve-strict setting should be restricted to UDP only under very special circumstances such as nPath or transparent (that is, no translation of any other L3/L4 field), where there is a 1:1 relationship between virtual IP addresses and node addresses, or when clustered multi-processing (CMP) is disabled.
      class SOURCE_PORT_PRESERVE_STRICT ; VALUE = 1; end
      #  The change setting is useful for obfuscating internal network addresses. 
      class SOURCE_PORT_CHANGE ; VALUE = 2; end
    end
    
    ## 
    #  A list of enabled states. 
    class EnabledState      
      class STATE_DISABLED ; VALUE = 0; end
      class STATE_ENABLED  ; VALUE = 1; end
    end

    ##
    #  A list of TMOS modules. 
    class TMOSModule
      class TMOS_MODULE_SAM ; VALUE = 0; end
      class TMOS_MODULE_ASM ; VALUE = 1; end
      class TMOS_MODULE_WAM ; VALUE = 2; end
    end

    ##
    #  An enumeration of protocol types.
    class ProtocolType
      #   Protocol is wildcard.
      class PROTOCOL_ANY ; VALUE = 0; end
      #  Protocol is IPv6 header.
      class PROTOCOL_IPV6 ; VALUE = 1; end
      #  Protocol is IPv6 routing header.
      class PROTOCOL_ROUTING ; VALUE = 2; end
      #  Protocol is IPv6 no next header.
      class PROTOCOL_NONE ; VALUE = 3; end
      #  Protocol is IPv6 fragmentation header.
      class PROTOCOL_FRAGMENT ; VALUE = 4; end
      #  Protocol is IPv6 destination options.
      class PROTOCOL_DSTOPTS ; VALUE = 5; end
      #  Protocol is TCP.
      class PROTOCOL_TCP ; VALUE = 6; end
      #  Protocol is UDP.
      class PROTOCOL_UDP ; VALUE = 7; end
      #  Protocol is ICMP.
      class PROTOCOL_ICMP ; VALUE = 8; end
      #  Protocol is ICMPv6.
      class PROTOCOL_ICMPV6 ; VALUE = 9; end
      #  Protocol is OSPF.
      class PROTOCOL_OSPF ; VALUE = 10; end
      #  Protocol is SCTP.             
      class PROTOCOL_SCTP ; VALUE = 11; end
    end

    class IPPortDefinition
      attr_accessor :address,:port
      def initialize(options)
        @address = options[:address]
        @port = options[:port]
      end
    end    
  end
end
