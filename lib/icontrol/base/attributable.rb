module IControl

  class Base

    module Attributable # :nodoc: 
      
      def self.included(klass)
        klass.class_eval do
          include InstanceMethods
          class << self;
            attr_accessor :id_name
            def set_id_name(name)
              @id_name = name
            end
          end
        end
      end

      module InstanceMethods # :nodoc:
        
        def id
          @attributes[:id]
        end

        def initialize(attributes)
          id = attributes.delete(self.class.id_name) if attributes && attributes[self.class.id_name]
          @attributes = attributes || {}
          @attributes[:id] ||= id       
          
          # Now we define an alias for the id_name
          id_name = self.class.id_name

          (class << self; self; end).instance_eval do        
            define_method(id_name) do 
              @attributes[:id]
            end
          end if id_name
        end

        def method_missing(method_name,*args,&block)
          if @attributes && @attributes.has_key?(method_name)
            return @attributes[method_name] 
          else
            super
          end 
        end  
      end

    end
  end
end
