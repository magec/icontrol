# For the 
IControl::LocalLB::Pool

class IControl::LocalLB::Pool
  
  # This method clones a pool with another name (id)
  def clone(id)
    
  end
  
  def self.create(attributes)    
    response = super do |soap|      
      item = 0
      members = attributes[:members].map{ |i| {:address => i.address, :port => i.port } }.map { |i| {:"item#{item+=1}" => i}}
      soap.body = {
        "pool_names" => {:item => attributes[:id] },
        "lb_methods" => {:item => attributes[:lb_method]},
        "members" => {:item => members}
      }
    end
    return new(attributes)
  end

private
  def default_body
    {"pool_names" =>  {:value => [@attributes[:id]] }}
  end
end
