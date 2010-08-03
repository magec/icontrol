# For the 
IControl::LocalLB::ProfileHttpClass

class IControl::LocalLB::ProfileHttpClass

  set_id_name :profile_name

  def profile_type
    return IControl::LocalLB::ProfileType::PROFILE_TYPE_HTTPCLASS
  end

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

  # Determines whether the specified profile is base/pre-configured profile, or user-defined profile.
  def base_profile?
    self.is_base_profile
  end

  # Gets the names of the default profile from which the specifie profile will derive default values for its attributes.
  def default_profile
    profile = super
    IControl::LocalLB::ProfileHttpClass.find(profile)
  end

end
