IControl::LocalLB::VirtualServer
class IControl::LocalLB::VirtualServer

  class VirtualServerType    
    
    include IControl::ConstDefiner
    
    valid_consts = [:RESOURCE_TYPE_POOL,:RESOURCE_TYPE_IP_FORWARDING,:RESOURCE_TYPE_L2_FORWARDING,
                    :RESOURCE_TYPE_REJECT,:RESOURCE_TYPE_FAST_L4,:RESOURCE_TYPE_FAST_HTTP]
    
    declare_constants valid_consts,VirtualServerType
    
  end
  
  class VirtualServerCMPEnableMode
    
    include IControl::ConstDefiner
    
    valid_consts = [:RESOURCE_TYPE_CMP_ENABLE_ALL,:RESOURCE_TYPE_CMP_ENABLE_SINGLE,
                    :RESOURCE_TYPE_CMP_ENABLE_GROUP,:RESOURCE_TYPE_CMP_ENABLE_UNKNOWN]
    
    declare_constants valid_consts,VirtualServerCMPEnableMode
    
  end
  
  class VirtualServerRule
    attr_accessor :rule_name,:priority
    def initialize(attributes)
      @rule_name = attributes[:rule_name]
      @priority  = ( attributes[:priority] && attributes[:priority].to_i ) || -1
    end
  end

  class VirtualServerClonePool
    attr_accessor :pool,:clone_type
    def initialize(attributes)
      @pool = IControl::LocalLB::Pool.find(attributes[:pool_name])
      @clone_type = IControl::LocalLB::ClonePoolType.from_string(attributes[:type])
    end
  end

  class VirtualServerProfileAttribute
    attr_accessor :profile_type,:profile_context,:profile_name
    def initialize(options)
      @profile_type = options[:profile_type]
      @profile_context = options[:profile_context]
      @profile_name = options[:profile_name]
    end
  end

  class VirtualServerPersistence
    attr_accessor :profile_name,:default_profile
    def initialize(options)
      @profile_name = options[:profile_name]
      @default_profile = ( options[:default_profile] == "true" )
    end
  end


  set_id_name :virtual_server

  # This method creates a new virtual_server
  # receives a Hash with this values
  # :name     => "The name of the virtual host"
  # :address  => "the ip address of the virtual server"
  # :port     => "the port the server is going to listen to"
  # :protocol => "a protocol type"
  def self.create(attributes)
    
  end

  # Gets the wildmasks for the specified virtual servers.
  def wildmask
    super
  end

  def type
    super
  end

  # Gets the CMP enable modes from the specified virtual servers.
  # This is read-only, as the modes are set according to the system and
  # configuration, and influenced by the desired CMP enabled state.
  
  def cmp_enable_mode
    super
  end

  # Gets the destination IP and port of the specified virtual servers.
  def destination
    super
  end


  # Gets the protocols supported by the specified virtual servers
  def protocol
    super
  end
  
  # Gets the protocols supported by the specified virtual servers.
  def enabled_state
    super
  end

  #  Gets the rate classes that will be used to rate limit the traffic. 
  def rate_class
    super
  end

  # Gets the mirror connection states for the specified virtual servers.
  def connection_mirror_state
    super
  end
  
  #  Gets the connection limits for the specified virtual servers.
  def connection_limit
    super
  end

  # Gets the port translation states for the specified virtual servers.  Enables or disables port translation.
  def translate_port_state
    super
  end

  # Gets the address translation states for the specified virtual servers.  Enables or disables address translation.
  def translate_address_state
    super
  end

  # Gets the source port behavior for the specified virtual servers.
  def source_port_behavior
    super
  end

  # Gets the last hop pools for the specified virtual servers.
  def last_hop_pool
    pool_name = super
    IControl::LocalLB::Pool.find(pool_name) if pool_name
  end

  # Gets the actual hardware acceleration modes for the specified virtual servers.
  def actual_hardware_acceleration
    super
  end

  # Gets the SNAT type for the specified virtual servers.
  def snat_type
    super
  end

  # Gets the SNAT pools to be used in iSNAT configurations for the specified virtual servers.
  def snat_pool
    super
  end

  # Gets the persistence profiles to use for fallback persistence for the specified virtual servers. 
  def fallback_persistence_profile
    super
  end

  # Gets the lists of VLANs on which access to the specified Virtual Servers are enabled/disabled.
  def vlan
    super
  end

  # Gets the lists of profiles the specified virtual server are associated with.
  def profiles
    return get_profile
  end

  # Gets the default pool for the specified virtual server. 
  def default_pool
    return IControl::LocalLB::Pool.find(default_pool_name)
  end
    
  # Gets the lists of persistence profiles the virtual server is associated with.
  def persistence_profile
    super
  end  
  
  # Gets the lists of clone pools the virtual server is associated with.
  def clone_pool
    super
  end

  # Gets the lists of rules the specified virtual servers are associated with.
  # If a specified virtual server is not associated with any rule, then the list
  # of rules for that virtual server will be empty
  def rules
    get_rule.sort{|a,b| a.priority  <=> b.priority }.map{|i| IControl::LocalLB::Rule.find(i.rule_name)}  
  end
  
  def http_class_profiles
    return httpclass_profile.sort {|a,b| a.priority.to_i <=> b.priority.to_i}
  end

end
