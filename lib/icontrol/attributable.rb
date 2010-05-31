module Attributable

  def self.included(klass)
    klass.class_eval do
      extend ClassMethods
      include InstanceMethods
    end
  end

  module ClassMethods
    def set_id_name(id_name)
      @id_name = id_name
    end
    
    def id_name
      @id_name
    end
  end

  module InstanceMethods
    def initialize(attributes)
      id = attributes.delete(self.class.id_name) if attributes && attributes[self.class.id_name]
      @attributes = attributes || {}
      @attributes[:id] ||= id 
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
