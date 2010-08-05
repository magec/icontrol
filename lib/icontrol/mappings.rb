module IControl

  class ArrayMapper
    def self.map_object(result)
      case result[:array_type]
      when /string/ then result[:item]
      when /iControl:LocalLB\.ProfileMatchPatternStringArray/ then map_object(result[:item][:values])
      when /iControl:LocalLB\.MatchPatternString/ then [result[:item]].flatten.compact
      when /iControl:Common\.IPPortDefinition\[\]/ then [result[:item][:item]].flatten.map{|i| IControl::LocalLB::PoolMember.new(i)}
      when /iControl:LocalLB.LBMethod/ then [result[:item]].flatten
      when /VirtualServerProfileAttribute\[\]/ then [result[:item][:item]].flatten.map{|i| IControl::LocalLB::VirtualServer::VirtualServerProfileAttribute.new(i) }
      when /iControl:LocalLB.VirtualServer.VirtualServerHttpClass\[\]/ then [result[:item][:item]].flatten.compact.map{|i| IControl::LocalLB::ProfileHttpClass.new(i)}
      when /iControl:LocalLB\.ProfileString\[/ then [result[:item]].flatten.map{|i| IControl::LocalLB::Pool.new(i.merge({:id => i[:value] }) ) }
      when /iControl:LocalLB\.PoolMember\.MemberObjectStatus\[\]\[/ then  [result[:item][:item]].map do |j| 
          IControl::LocalLB::PoolMember.new( j[:member].merge(:status => j[:object_status])  ) 
        end
      when /iControl:LocalLB\.Pool\.MonitorAssociation\[/ then IControl::LocalLB::MonitorRule.from_xml(result[:item][:monitor_rule])
      when /iControl:LocalLB\.ObjectStatus\[/ then (result[:item])
      when /iControl:LocalLB.VirtualServer.VirtualServerType\[/ then IControl::LocalLB::VirtualServer::VirtualServerType.from_string(result[:item])
      when /iControl:LocalLB.VirtualServer.VirtualServerCMPEnableMode\[/ then IControl::LocalLB::VirtualServer::VirtualServerCMPEnableMode.from_string(result[:item])
      when /iControl:Common\.IPPortDefinition\[/ then IControl::Common::IPPortDefinition.new(result[:item])
      when /iControl:Common.ProtocolType\[/ then IControl::Common::ProtocolType.from_string(result[:item])
      when /iControl:Common.EnabledState\[/ then IControl::Common::EnabledState.from_string(result[:item])
      when /iControl:Common.ULong64\[\d+\]/ then IControl::Common::ULong64.new(result[:item])
      when /iControl:Common.SourcePortBehavior\[\d+\]/ then IControl::Common::SourcePortBehavior.from_string(result[:item])
      when /iControl:LocalLB.HardwareAccelerationMode\[/ then IControl::LocalLB::HardwareAccelerationMode.from_string(result[:item])
      when /iControl:LocalLB.SnatType\[/ then IControl::LocalLB::SnatType.from_string(result[:item])
      when /iControl:Common.VLANFilterList\[/ then IControl::Common::VLANFilterList.new(result[:item])
      when /iControl:LocalLB.VirtualServer.VirtualServerPersistence\[\]\[\d+\]/ then  result[:item][:item] && IControl::LocalLB::VirtualServer::VirtualServerPersistence.new(result[:item][:item])
      when /iControl:LocalLB.VirtualServer.VirtualServerRule\[\]\[\d+\]/ then [result[:item][:item]].flatten.compact.map{ |i| IControl::LocalLB::VirtualServerRule.new(i) }
      when /iControl:LocalLB.VirtualServer.VirtualServerClonePool\[\]\[\d+\]/ then  [result[:item][:item]].flatten.compact.map{ |i| IControl::LocalLB::VirtualServer::VirtualServerClonePool.new(i) }
      when /iControl:LocalLB.VirtualServer.VirtualServerStatisticEntry\[/ then IControl::LocalLB::VirtualServer::VirtualServerStatisticEntry.new(result)
      when /y:boolean\[/ then  result[:item]
      else
        raise "No type matching found (#{result[:array_type]})" 
      end
    end
  end


  class StatMapper
    def self.map_object(result)
      ArrayMapper.map_object(result[:statistics])
    end
  end
  
  MAPPINGS = { "A:Array" => ArrayMapper, "iControl:LocalLB.VirtualServer.VirtualServerStatistics" => StatMapper }

  class Mappings
    def self.map_object(return_object)
      return MAPPINGS[return_object[:type]].map_object(return_object) if return_object.is_a?(Hash) 
      return return_object
    end
  end
end
