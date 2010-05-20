module IControl

  class ArrayMapper
    def self.map_object(result)
      case result[:array_type]
      when /string/ then result[:item]
      when /iControl:LocalLB\.ProfileMatchPatternStringArray/ then map_object(result[:item][:values])
      when /iControl:LocalLB\.MatchPatternString/ then [result[:item]].flatten
      when /iControl:Common\.IPPortDefinition\[\]/ then [result[:item][:item]].flatten.map{|i| IControl::LocalLB::PoolMember.new(i)}
      when /iControl:LocalLB.LBMethod/ then [result[:item]].flatten
      when /VirtualServerProfileAttribute\[\]/ then [result[:item][:item]].flatten.map{|i| IControl::LocalLB::VirtualServer::VirtualServerProfileAttribute.new(i) }
      when /iControl:LocalLB.VirtualServer.VirtualServerHttpClass\[\]/ then [result[:item][:item]].flatten.map{|i| IControl::LocalLB::ProfileHttpClass.new(i)}
      when /iControl:LocalLB\.ProfileString\[/ then [result[:item]].flatten.map{|i| IControl::LocalLB::Pool.new(i.merge({:id => i[:value] }) ) }
      when /iControl:LocalLB\.PoolMember\.MemberObjectStatus\[\]\[/ then result[:item][:item].map{|j| IControl::LocalLB::PoolMember.new(j[:member].merge(:status => j[:object_status])  ) }
      else
        raise "No type matching found"
      end
    end
  end
  
  MAPPINGS = { "A:Array" => ArrayMapper }

  class Mappings
    def self.map_object(return_object)
      return MAPPINGS[return_object[:type]].map_object(return_object)
    end
  end
end
