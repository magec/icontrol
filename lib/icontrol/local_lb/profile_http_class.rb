# For the 
IControl::LocalLB::ProfileHttpClass

class IControl::LocalLB::ProfileHttpClass

  set_id_name :profile_name


  # Deletes the specified HTTP class profiles.
  def delete
    super.delete_profile
  end

  def ==(profile)
    return self.id == profile.id
  end


  # Creates the specified HTTP class profiles.
  def self.create!(profile_name)
    self.create do |soap|
      soap.body = {"profile_names" => {"value" => profile_name} }
    end
    return self.find(profile_name)
  end  

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

  # Sets the names of the default profiles from which the specified profiles will derive default values for its attributes.
  def default_profile=(profile)
    IControl::LocalLB::ProfileHttpClass.set_default_profile do |soap|
      soap.body = {
        "profile_names" => {"value" => id},
        "defaults" => {"value" => profile.id}
      }
    end
  end

  # Gets the lists of patterns used to match the hosts.
  def host_match_pattern
    super
  end

  # Resets the lists to parent defaults.
  def set_default_host_match_pattern
    super
    host_match_pattern
  end

  # Adds a new pattern to the lists of patterns used to match the hosts
  # * pattern: The string of the pattern that is to be used
  # * is_glob: Whether the pattern is a string or not (defaults to false, i.e. regexps)
  def add_host_match_pattern (pattern,is_glob = false)
    pattern_operation("add","host",pattern,is_glob)
  end

  # Removes from the  lists of patterns used to match the hosts
  # * pattern: The string of the pattern that is to be used
  # * is_glob: Whether the pattern is a string or not (defaults to false, i.e. regexps)
  def remove_host_match_pattern (pattern,is_glob = false)
    pattern_operation("remove","host",pattern,is_glob)
  end

  # Gets the lists of patterns used to match the paths.
  def path_match_pattern
    super
  end

  # Resets the lists to parent defaults.
  def set_default_path_match_pattern
    super
    path_match_pattern
  end

  # Adds a pattern to the lists of patterns used to match the paths
  # * pattern: The string of the pattern that is to be used
  # * is_glob: Whether the pattern is a string or not (defaults to false, i.e. regexps)
  def add_path_match_pattern (pattern,is_glob = false)
    pattern_operation("add","path",pattern,is_glob)    
  end

  # Removes from the lists of patterns used to match the paths
  # * pattern: The string of the pattern that is to be used
  # * is_glob: Whether the pattern is a string or not (defaults to false, i.e. regexps)
  def remove_path_match_pattern (pattern,is_glob = false)
    pattern_operation("remove","path",pattern,is_glob)
  end

  # Gets the lists of  used to match the headers.
  def header_match_pattern
    super
  end

  # Resets the lists to parent defaults.
  def set_default_header_match_pattern
    super
    header_match_pattern
  end

  # Adds a pattern to the lists of patterns used to match the headers
  # * pattern: The string of the pattern that is to be used
  # * is_glob: Whether the pattern is a string or not (defaults to false, i.e. regexps)
  def add_header_match_pattern (pattern,is_glob = false)
    pattern_operation("add","header",pattern,is_glob)
  end

  # Removes from the lists of patterns used to match the headers
  # * pattern: The string of the pattern that is to be used
  # * is_glob: Whether the pattern is a string or not (defaults to false, i.e. regexps)
  def remove_header_match_pattern (pattern,is_glob = false)
    pattern_operation("remove","header",pattern,is_glob)
  end

  # Gets the lists of  used to match the headers.
  def cookie_match_pattern
    super
  end

  # Resets the lists to parent defaults.
  def set_default_cookie_match_pattern
    super
    cookie_match_pattern
  end

  # Adds a pattern to the lists of patterns used to match the cookies
  # * pattern: The string of the pattern that is to be used
  # * is_glob: Whether the pattern is a string or not (defaults to false, i.e. regexps)
  def add_cookie_match_pattern (pattern,is_glob = false)
    pattern_operation("add","cookie",pattern,is_glob)
  end

  # Removes from the lists of patterns used to match the cookies
  # * pattern: The string of the pattern that is to be used
  # * is_glob: Whether the pattern is a string or not (defaults to false, i.e. regexps)
  def remove_cookie_match_pattern (pattern,is_glob = false)
    pattern_operation("remove","cookie",pattern,is_glob)
  end

  # Gets the string (which may include a TCL expression) with which to rewrite the URLs.
  def rewrite_url    
    value = super.first
    if value
      value_string = value.value
      value_string = "" if value_string.class != String      
      return {:rule => value_string,:default_flag => value.default_flag}
    end
    value
  end

  # Sets the strings (which may include a TCL expression) with which to rewrite the URLs.
  # if default_flag is true then the rewriting is disabled (default_flag means work as default)
  def set_rewrite_url(rule,default_flag = false)
    match_operation("rewrite_url",rule,default_flag)
  end

  # Unsets the rewrite url
  def unset_rewrite_url
    set_rewrite_url("",true)
  end

  # Gets the string (which may include a TCL expression) to indicates where to
  # redirect the original HTTP request once a match occurs.  For example, to redirect
  # requests to https://myserver.com to http://myotherserver.com.
  def redirect_location
    value = super.first
    if value
      value_string = value.value
      value_string = "" if value_string.class != String
      return {:rule => value_string,:default_flag => value.default_flag}
    end
    value
  end

  # Sets the strings (which may include a TCL expression) with which to rewrite the URLs.
  # if default_flag is true then the rewriting is disabled (default_flag means work as default)
  def set_redirect_location(rule,default_flag = false)
    match_operation("redirect_location",rule,default_flag)
  end

  # Unsets the rewrite url
  def unset_redirect_location
    set_redirect_location("",true)
  end

  private

  #
  def match_operation(type,rule,default_flag)
    parameter = type == "redirect_location" ? "redirect_locations" : "urls"
    IControl::LocalLB::ProfileHttpClass.send("set_#{type}") do |soap|
      soap.body = {
        "profile_names" => {"value" => id},
        parameter => {"item" => {"value" => rule,"default_flag" => default_flag}}
      }
    end
    send("#{type}")
  end

  # Generic method for matching manipulation
  def pattern_operation(op,type,pattern,is_glob)
    if pattern.class == Hash
      pattern["is_glob"] = pattern[:is_glob]
      pattern_hash = pattern
    else
      pattern_hash = {"pattern" => pattern ,"is_glob" => is_glob} 
    end
    IControl::LocalLB::ProfileHttpClass.send("#{op}_#{type}_match_pattern") do |soap|
      soap.body = {
        "profile_names" => {"value" => id},
        "patterns" => {"item" => {"value" => pattern_hash }}
      }
    end
    pattern_hash    
  end

end
