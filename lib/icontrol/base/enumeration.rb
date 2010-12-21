module IControl
  class Base
    class Enumeration      
      class << self
        def from_soap(value)
          return nil unless value
          return class_eval "#{self.name}::#{[*value].last}"
        end
      end
    end
  end
end

