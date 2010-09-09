module AttributeInitializer  # :nodoc:

  ##
  # Creates a new instance. +attributes+ is a hash with the attributes as keys and their values as values
  # :singleton-method: new(attributes)


  # This is a test
  def initialize(attributes)
    attributes.each do |k,v|
      self.send(k.to_s + "=",v)
    end
  end
end

module IControl # :nodoc: 

  class NoSuchPoolException < Exception; end
  class MethodNotImplementedException < Exception; end

  module Common # :nodoc:
    
    class VLANFilterList
      attr_accessor :state,:vlans
      def initialize(attributes)
        @state = attributes[:state]
        @vlans = attributes[:vlans]
      end

      def self.from_hash(hash)
        hash[:vlans] = [hash[:vlans][:item]].flatten.compact
        hash[:state] = IControl::Common::EnabledState.const_get(hash[:state])
        return self.new(hash)
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
      SOURCE_PORT_PRESERVE = :SOURCE_PORT_PRESERVE
      #  Preserve source port. Use of the preserve-strict setting should be restricted to UDP only under very special circumstances such as nPath or transparent (that is, no translation of any other L3/L4 field), where there is a 1:1 relationship between virtual IP addresses and node addresses, or when clustered multi-processing (CMP) is disabled.
      SOURCE_PORT_PRESERVE_STRICT = :SOURCE_PORT_PRESERVE_STRICT
      #  The change setting is useful for obfuscating internal network addresses. 
      SOURCE_PORT_CHANGE = :SOURCE_PORT_CHANGE
    end
    
    ## 
    #  A list of enabled states. 
    class EnabledState  
      
      STATE_DISABLED = :STATE_DISABLED

      STATE_ENABLED  = :STATE_ENABLED 
      
    end

    ##
    #  A list of TMOS modules. 
    class TMOSModule
      TMOS_MODULE_SAM = :TMOS_MODULE_SAM
      TMOS_MODULE_ASM = :TMOS_MODULE_ASM
      TMOS_MODULE_WAM = :TMOS_MODULE_WAM
    end

    ##
    #  An enumeration of protocol types.
    class ProtocolType
      #   Protocol is wildcard.
      PROTOCOL_ANY = :PROTOCOL_ANY
      #  Protocol is IPv6 header.
      PROTOCOL_IPV6 = :PROTOCOL_IPV6
      #  Protocol is IPv6 routing header.
      PROTOCOL_ROUTING = :PROTOCOL_ROUTING
      #  Protocol is IPv6 no next header.
      PROTOCOL_NONE = :PROTOCOL_NONE
      #  Protocol is IPv6 fragmentation header.
      PROTOCOL_FRAGMENT = :PROTOCOL_FRAGMENT
      #  Protocol is IPv6 destination options.
      PROTOCOL_DSTOPTS = :PROTOCOL_DSTOPTS
      #  Protocol is TCP.
      PROTOCOL_TCP = :PROTOCOL_TCP
      #  Protocol is UDP.
      PROTOCOL_UDP = :PROTOCOL_UDP
      #  Protocol is ICMP.
      PROTOCOL_ICMP = :PROTOCOL_ICMP
      #  Protocol is ICMPv6.
      PROTOCOL_ICMPV6 = :PROTOCOL_ICMPV6
      #  Protocol is OSPF.
      PROTOCOL_OSPF = :PROTOCOL_OSPF
      #  Protocol is SCTP.             
      PROTOCOL_SCTP = :PROTOCOL_SCTP
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
