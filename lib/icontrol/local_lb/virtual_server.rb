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

  class VirtualServerStatisticEntry
    attr_accessor :virtual_server,:statistics
    def initialize(result)
      @virtual_server = IControl::LocalLB::VirtualServer.find(result[:item][:virtual_server][:name])
      @statistics = {}
      result[:item][:statistics][:item].each do |entry|
        @statistics[IControl::Common::StatisticType.from_string(entry[:type])] = IControl::Common::ULong64.new(entry[:value])
      end
    end
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

  class HttpClassProfileEnumerator

    STATE_CHANGED=[ :<<, :push, :pop, :shift, :unshift, :insert, :join, :reverse!, :sort!, :collect!,:map!, :delete, :delete_at, :delete_if, :reject!,:slice!, :uniq!, :compact!,  :flatten!, :shuffle! ]


    def initialize(contents,parent)
      @contents = contents
      @parent = parent
    end
    
    def save!
      @parent.remove_all_httpclass_profiles
      @parent.add_httpclass_profile(@contents)
    end

    def method_missing(method_name,*args)
      if @contents.methods.include? method_name
        output = @contents.send(method_name,*args)
        save! if STATE_CHANGED.include? method_name
        return output
      else
        super
      end
    end
  end


  set_id_name :virtual_server

  # This method creates a new virtual_server
  # receives a Hash with this values
  # :name      => "The name of the virtual host"
  # :address   => "the ip address of the virtual server"
  # :port      => "the port the server is going to listen to"
  # :protocol  => "a protocol type"
  # :wildmask  => "The wildmask of the virtual server"
  # :type => "The type of the virtual_server"
  # :default_pool_name  => "The default pool name"
  # :profiles 
  def self.create(attributes)
    item = 0
    profiles = {}
    attributes[:profiles].each {|i| profiles["item#{item+=1}"] = {"profile_context" => i["profile_context"],"profile_name" => "tcp" || i["profile"].id} }
    response = super do |soap|      
      soap.body = {
        "definitions" => {:item => {
            :name => attributes[:name],
            :address => attributes[:address],
            "port" => attributes[:port],
            :protocol => attributes[:protocol] || "PROTOCOL_TCP"
          }
        },
        "wildmasks" => {:item => attributes[:wildmask] || "255.255.255.255"},
        "resources" => {:item => {          
              :type => attributes[:type] || IControl::LocalLB::VirtualServer::VirtualServerType::RESOURCE_TYPE_POOL,
              "default_pool_name" => attributes[:default_pool] && attributes[:default_pool].id || "" 

          }
        },
        "profiles"  => {:item => profiles}
      }
    end
    return find(attributes[:name])    
  end

  def destroy
    return delete_virtual_server
  end

  # Gets the wildmask for the specified virtual server.
  def wildmask
    super
  end
  # Sets the wildmask
  def wildmask=(wildmask)
    IControl::LocalLB::VirtualServer.set_wildmask do |soap|
      soap.body = {
        "virtual_servers" => {:item => id},
        "wildmasks" => {:item => wildmask }
      }
    end    
  end


  def type
    super
  end

  # Sets the type for the virtual server
  def type=(new_type)
    IControl::LocalLB::VirtualServer.set_type do |soap|
      soap.body = {
        "virtual_servers" => {:item => id},
        "types" => {:item => new_type.class_name}
      }
    end
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

  # Sets the destination IP and port
  # it receives an IPPortDefinition instance with the keys
  # :address and :port
  def destination=(destination)
    IControl::LocalLB::VirtualServer.set_destination do |soap|
      soap.body = {
        "virtual_servers" => {:item => id},
        "destinations" => {:item => {:address => destination.address, :port => destination.port }}
      }
    end
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

  def default_pool=(pool)
    IControl::LocalLB::VirtualServer.set_default_pool_name do |soap|
      soap.body = {
        "virtual_servers" => {:item => id},
        "default_pools" => {:item => pool.id }
      }
    end
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

  # Gets the statistics.
  def statistics
    get_statistics.statistics
  end
  
  # Gets the version information for this interface.
  def version
    super
  end

  def gtm_score
    super
  end

  def httpclass_profiles
    @httpclass_profile ||= HttpClassProfileEnumerator.new( httpclass_profile.sort {|a,b| a.priority.to_i <=> b.priority.to_i}.map{|i| i}.compact,self)
    @httpclass_profile
  end

  #  Adds/associates HTTP class profiles to the specified virtual server.
  def add_httpclass_profile(http_class_profiles)
    IControl::LocalLB::VirtualServer.add_httpclass_profile do |soap|
      item = "item"; count = 0
      profiles = {}
      http_class_profiles.each{ |i| profiles[item + (count +=1).to_s] =  {"profile_name" => i.class == String ? i : i.id, "priority" => count } }
      soap.body = {
        "virtual_servers" => {:item => id},
        "profiles" => {"value" =>  profiles  }
      }
    end    
  end
  
end
