$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__),"icontrol","icontrol"))

require 'icontrol/base'

# Predeclares a couple of things in order to get loaded

module IControl

  module LocalLB
    class VirtualServer < IControl::Base
      class << self
        def id_name
          "virtual_server"
        end
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

require 'icontrol/icontrol'
