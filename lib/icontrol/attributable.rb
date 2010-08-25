module Attributable # :nodoc: 

  def self.included(klass)
    klass.class_eval do
      extend ClassMethods
      include InstanceMethods
    end
  end

  module ClassMethods # :nodoc:
    def set_id_name(id_name)
      @id_name = id_name
    end
    
    def id_name
      @id_name
    end
  end

  module InstanceMethods # :nodoc:

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
