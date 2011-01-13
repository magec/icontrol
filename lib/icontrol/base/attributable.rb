module IControl

  class Base

    module Attributable # :nodoc: 
      
      def self.included(klass)
        klass.class_eval do
          include InstanceMethods
        end
      end

      module InstanceMethods # :nodoc:

        def type
          return @attributes[:type] || super
        end

        def initialize(attributes)
          @attributes = attributes || {}
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
