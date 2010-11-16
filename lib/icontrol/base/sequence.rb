class BasicSequence
  class << self
    def set_conversion_method(conversion_method)
      @conversion_method = conversion_method
    end
    def from_soap(xml)
      return [*xml[:item]].map { |i| i.send(@conversion_method) }
    end
  end
end

class StringSequence < BasicSequence
  set_conversion_method :to_s
end

class NumericSequence < BasicSequence
  set_conversion_method :to_i
end

class FloatSequence < BasicSequence
  set_conversion_method :to_f
end

class LongSequence < BasicSequence
  set_conversion_method :to_i
end

class DoubleSequence < BasicSequence
  set_conversion_method :to_f
end

class FixnumSequence < BasicSequence
    set_conversion_method :to_i
end

module IControl
  
  class Base
    class Sequence

      def self.elements_class
        instance_eval(name.sub("Sequence",""))
      end

      def self.from_soap(xml)
        return [xml[:item]].flatten.map{|i| elements_class.from_soap(i)}        
      end
    end
    
    class SequenceSequence
      def self.from_soap(xml)
        puts "PEPE SequenceSequence"
      end
    end
  end
end
