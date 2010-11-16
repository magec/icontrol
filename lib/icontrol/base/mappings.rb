module IControl # :nodoc:
  class Base
    class Mappings # :nodoc:
      ##
      # This method will translate the icontrol struct into a ruby class following the convention used in the source code
      # That is:
      # The classes will mantain an structure of: IControl::Module::Class[::Class]
      # The inner types like iControl:LocalLB.VirtualServer.VirtualServerRule instead of translate to
      #           IControl::LocalLB::VirtualServer::VirtualServerRule the translate to
      #           IControl::LocalLB::VirtualServer::Rule to avoid redundancy
      def self.icontrol_to_ruby_type(type)

        type = type.gsub("iControl","IControl")
        type = type.gsub(/\[\d*\]/,"")

        return Fixnum if type == "y:long"
        return String if type == "y:string"

        splitted = type.split(":")
        temp_name = [splitted.shift,*splitted.shift.split(".")]
        last_names = temp_name.last(2)
        if last_names.last =~ /#{last_names.first}/
          temp_name.pop
          temp_name << last_names.last
        end
        return eval(temp_name.join("::"))

      end
      
      def self.normalized_array_type(array_type)
        
        return instance_eval(icontrol_to_ruby_type(array_type).to_s + array_type.gsub(/.*\[\d*\]/,"Sequence"))
      end

      def self.map_object(return_object)
        if return_object[:type] == "A:Array"
          normalized_array_type(return_object[:array_type]).from_soap(return_object)
        else
          unless return_object[:type]
            puts "NOTYPE"
          else
            klass = icontrol_to_ruby_type(return_object[:type])
            if klass.name =~ /^IControl/
              return klass.from_soap(return_object)
            else
              return return_object
            end
          end
        end
      end
    end
  end
end
