# For the 
IControl::LocalLB::Monitor

class IControl::LocalLB::Monitor

  set_id_name :pool_name
  
  def self.id_name 
    :pool_name
  end


private
  def default_body
    {"pool_names" =>  {:value => [@attributes[:id]] }}
  end
end
