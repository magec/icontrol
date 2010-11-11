module IControl # :nodoc:
  class Base
    class ArrayMapper # :nodoc: 
      def self.map_object(result)
        
        ## First of all we check how many items do we have
        elements = []
        regexp = /\[(\d*)\]/

        if result[:array_type] =~ regexp
          ## There should be a better way to match several times
          elements << (( $1 == "" ) ? -1 : $1.to_i)
          while $' =~ regexp
            elements << (( $1 == "" ) ? -1 : $1.to_i)
          end
        end

        klass = IControl::Base::Mappings.icontrol_to_ruby_type(result[:array_type])

        aux = []

        elements.each do |element_number|
          
          # To solve a bug in the library (savon) that not 
          # returns an array when just 1 result is received
          result[:item] = [result[:item]] if element_number == 1  

          element_number.times do |i|
            
            if klass.name =~ /IControl/
              # In this case we are dealing with a IControl Type
              aux << klass.from_soap(result[:item].pop)
            else
              
              # In this case its a ruby type
              if klass == Fixnum
                aux << result[:item].pop.to_i
              end
              
              if klass == String
                aux << result[:item].pop
              end
              
            end
          end
        end

        if aux.length > 0
          return aux
        else
          raise "No type matching found (#{result[:array_type]})" 
        end
      end
    end


    class StatMapper # :nodoc:
      def self.map_object(result)
        ArrayMapper.map_object(result[:statistics])
      end
    end
    
    MAPPINGS = { "A:Array" => ArrayMapper, "iControl:LocalLB.VirtualServer.VirtualServerStatistics" => StatMapper, "iControl:LocalLB.Pool.PoolStatistics" => StatMapper ,"iControl:LocalLB.PoolMember.MemberStatistics" => StatMapper}
    
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
