
# This is a helper for defining constants
module IControl

  class NoSuchPoolException < Exception; end

  module ConstDefiner

    def self.included(base)
      base.extend(ClassMethods)
    end
    
    module ClassMethods

      def class_name
        self.name.split("::").last
      end
      
      def declare_constants(constants,parent)
        constants.each do |const_name|
          klass = Class.new(parent)
          self.const_set(const_name,klass)
        end
      end
      
      def from_string(klass)
        return eval("::#{self}::#{klass}")
      end 
    end
  end


  module Common

    class VLANFilterList
      attr_accessor :state,:vlans
      def initialize(attributes)
        @state = IControl::Common::EnabledState.from_string(attributes[:state])
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
      include ConstDefiner
      declare_constants [:SOURCE_PORT_PRESERVE,:SOURCE_PORT_PRESERVE_STRICT,:SOURCE_PORT_CHANGE],SourcePortBehavior
    end

    class EnabledState      
      include ConstDefiner
      declare_constants [:STATE_ENABLED,:STATE_DISABLED],EnabledState
    end

    class ProtocolType
      
      include ConstDefiner
      
      valid_consts = [:PROTOCOL_ANY,:PROTOCOL_IPV6,:PROTOCOL_ROUTING,:PROTOCOL_NONE,
                      :PROTOCOL_FRAGMENT,:PROTOCOL_DSTOPTS,:PROTOCOL_TCP,:PROTOCOL_UDP,
                      :PROTOCOL_ICMP,:PROTOCOL_ICMPV6,:PROTOCOL_OSPF,:PROTOCOL_SCTP]
      
      declare_constants valid_consts,ProtocolType

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
