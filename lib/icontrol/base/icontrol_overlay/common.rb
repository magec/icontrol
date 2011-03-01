require 'bindata'
module IControl
  module Common 
    class ULong64 < IControl::Base::Struct

      def from_soap(xml)
        puts "HEY"
        puts xml.inspect
      end
      
      def to_f
        BinData::Uint64be.read(BinData::Int32be.new(high).to_binary_s + BinData::Int32be.new(low).to_binary_s)
      end

      def to_fd
        retVal = 0.0        
        u_high = high.to_s.unpack("L").first || 0
        u_low  = low.to_s.unpack("L").first  || 0
        if u_high >=0
          retVal = u_high << 32 & 0xffff0000
        else
          retVal = ((u_high & 0x7fffffff) << 32) + (0x80000000 << 32)
        end
        if u_low >=0
          retVal += u_low
        else
          retVal += ((u_low & 0x7fffffff) + 0x7fffffff)
        end
        return retVal;
      end    
    end
  end
end
