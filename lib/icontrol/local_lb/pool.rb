# For the 
IControl::LocalLB::Pool

class IControl::LocalLB::Pool

  set_id_name :pool_name

  def status_for(pool_member)
    status = IControl::LocalLB::PoolMember.get_object_status do |soap|
      soap.body = { "pool_names" => {:value => [@attributes[:id]] } }
    end
    pool_info = status.find { |i| i.address == pool_member.address && i.port == pool_member.port }
    return pool_info.status if pool_info
  end

    # This method clones a pool with another name (id)
  def clone(new_id)
    return IControl::LocalLB::Pool.create(:id => new_id, :lb_methods => lb_method, :members => member)
  end
  
  def self.create(attributes)    
    response = super do |soap|      
      item = 0
      members = attributes[:members].map{ |i| {:address => i.address, :port => i.port } }.map { |i| {:"item#{item+=1}" => i}}
      soap.body = {
        "pool_names" => {:item => attributes[:id] },
        "lb_methods" => {:item => attributes[:lb_method]},
        "members"    => {:item => members}
      }
    end
    return new(attributes)
  end
end
