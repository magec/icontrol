IControl::LocalLB::PoolMember

class IControl::LocalLB::PoolMember

  attr_accessor :ip_port_definition,:pool,:status
  
  class StatisticEntry < IControl::StatisticEntry
    set_item_initializer :pool_member do |item|
      IControl::LocalLB::PoolMember.new(IControl::LocalLB::IPPortDefinition.new(item))
    end
  end


  def initialize(ip_port_definition,pool_name=nil,status = nil)
    self.pool = IControl::LocalLB::Pool.find(pool_name) if pool_name
    self.ip_port_definition = ip_port_definition
    self.status = status
  end

  def statistics
    status = IControl::LocalLB::PoolMember.get_statistics do |soap|
      soap.body = { 
        "pool_names" => {:value => [pool.id] },
        "members" => {:value => {:item => {:address => ip_port_definition.address,:port => ip_port_definition.port}}}
      }
    end
  end

end
