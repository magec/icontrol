# For the 
IControl::LocalLB::ProfileHttpClass

class IControl::LocalLB::ProfileHttpClass

  set_id_name :profile_name

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

end
