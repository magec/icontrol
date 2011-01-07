# Predeclares a couple of things in order to get loaded

module IControl

  module Common
   class String
     def self.from_soap(xml)
       xml
     end
   end
  end
  
  module GlobalLB
    class VirtualServerDefinitionSequence < IControl::Base::Sequence ; end
  end

  module System
    class CPUMetricSequenceSequence < IControl::Base::SequenceSequence; end

    class FanMetricSequenceSequence < IControl::Base::SequenceSequence; end
    class PSMetricSequenceSequence  < IControl::Base::SequenceSequence; end
    class TemperatureMetricSequenceSequence < IControl::Base::SequenceSequence; end 
  end

  module Management
    class EventSubscription < IControl::Base
      class EventType < IControl::Base::Enumeration; end
      class ObjectType < IControl::Base::Enumeration; end
    end
  end

end

