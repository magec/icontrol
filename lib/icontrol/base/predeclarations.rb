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
    class CPUMetricSequence < IControl::Base::Sequence; end
    class FanMetricSequence < IControl::Base::Sequence; end
    class PSMetricSequence  < IControl::Base::Sequence; end
    class TemperatureMetricSequence < IControl::Base::Sequence; end 
  end

  module Management
    class EventSubscription < IControl::Base
      class EventType < IControl::Base::Enumeration; end
      class ObjectType < IControl::Base::Enumeration; end
    end
  end

end

