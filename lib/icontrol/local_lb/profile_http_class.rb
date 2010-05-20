# For the 
IControl::LocalLB::ProfileHttpClass

class IControl::LocalLB::ProfileHttpClass

  def self.id_name; :profile_name ; end

  def pool
    self.pool_name.first
  end

  def pool=(pool,default_flag = false)
    IControl::LocalLB::ProfileHttpClass.set_pool_name do |soap|
      soap.body = {
        "pool_names" => { :item => {:value => pool.id, "default_flag" => default_flag } },
        "profile_names" => { "value" => id }
      }
    end
  end

private
  def default_body
    {"profile_names" =>  {:value => [@attributes[:id]] }}
  end
end
