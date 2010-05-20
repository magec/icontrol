# For the 
IControl::LocalLB::ProfileHttpClass

class IControl::LocalLB::ProfileHttpClass

  def self.id_name; :profile_name ; end

  def pool
    self.pool_name.first
  end

  end

private
  def default_body
    {"profile_names" =>  {:value => [@attributes[:id]] }}
  end
end
