module IControl
  class Base
    class Enumeration      
      class << self
        def from_soap(value)
          
          # WorkArround when there are two  values with the same key (even if this one is an attribute) the hash contains an array of values, 
          # instead of just one value. In this case we choose the one that does not starts with iControl (cause this usually happends when
          # type clashes with the attribute class type) this happends when calling IControl::LocalLB::Pool#monitor_association for example

          value = value.find { |i| i =~ /^[^iControl].*/ } if value.respond_to?(:find)

          return nil unless value
          return class_eval "#{self.name}::#{[*value].last}"
        end
      end
    end
  end
end

