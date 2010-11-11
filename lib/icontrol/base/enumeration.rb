module IControl
  class Base
    class Enumeration      
      class << self
        def from_hash(hash)
          return class_eval { hash[:item] }
        end
        
        def from_soap(value)
          return class_eval {value}
        end
      end
    end
  end
end

