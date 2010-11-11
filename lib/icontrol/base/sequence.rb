class StringSequence
  def self.from_soap(xml)
    return xml[:item]
  end
end
class LongSequence
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
