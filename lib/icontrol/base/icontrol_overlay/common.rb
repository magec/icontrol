module IControl
  module Common 
    class ULong64 < IControl::Base::Struct
      def to_f
        retVal = 0.0
        if high >=0
          retVal = high << 32 & 0xffff0000
        else
          retVal = ((high & 0x7fffffff) << 32) + (0x80000000 << 32)
        end
        if low >=0
          retVal += low
        else
          retVal += ((low & 0x7fffffff) + 0x7fffffff)
        end
        return retVal;
      end    
    end
  end
end
