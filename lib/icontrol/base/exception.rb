module IControl
  class Base

    ##
    # This is the base class for all the exceptions
    # we subclass to allow the object to hold the error info
    class Exception < Exception
      
      attr_reader :exception_info 
      
      def initialize(exception_info)
        @exception_info = exception_info
      end

    end

    class ExceptionFactory
      def self.raise_from_xml(xml)
        aux = {}
	raise xml unless Savon::SOAP::XML.to_hash(xml)[:fault]
        faultstring = Savon::SOAP::XML.to_hash(xml)[:fault][:faultstring]
        exception_type = "IControl::#{$1}" if faultstring  =~ /Exception:\ (.*)$/        
        aux[:primary_error_code] = $1.to_i if faultstring  =~ /primary_error_code\ +:\ (\d+)\ .*$/        
        aux[:secondary_error_code] = $1.to_i if faultstring  =~ /secondary_error_code\ +:\ (\d+)\ ?.*$/        
        error_string = $1 if faultstring  =~ /error_string\ +:\ (.*)$/        
        raise faultstring unless exception_type
        raise eval(exception_type).new(:aux),error_string
      end
    end
  end
end
