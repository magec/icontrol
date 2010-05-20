IControl::LocalLB::PoolMember

class IControl::LocalLB::PoolMember
  def self.id_name
    :pool_name
  end

private
  def default_body
    {"pool_names" =>  {:value => [@attributes[:id]] }}
  end
  
end
