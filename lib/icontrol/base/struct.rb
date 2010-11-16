module IControl # :nodoc: 

  class Base

    class Struct
      
      class << self
        
        attr_accessor :attributes

        ##
        # When defining an struct we have to indicate every attribute type cause the soap responses are typed
        # This method accepts three arguments:
        #   attribute           = The name the atribute is going to be referenced in the instances (i.e. the ruby name)
        #   klass               = The Ruby class of the attribute
        #   soap_attribute_name = The soap name of the attribute in case it differs from the attribute name (DEPRECATED)

        def icontrol_attribute(attribute,klass,soap_attribute_name = nil)
          @attributes ||= {}
          @attributes[attribute] = klass 
        end


        def from_soap(xml)
          aux = {}
          @attributes.each do |k,v|
            
            if v.respond_to?(:from_soap) # v.ancestors.find{ |i| i.name  =~ /^IControl/ }              
              aux[k] = v.from_soap(xml[k])
            else 
              aux[k] = xml[k]
            end
          end if xml
          return self.new(aux)
        end
      end    
        
      include IControl::Base::Attributable

    end
  end
end
