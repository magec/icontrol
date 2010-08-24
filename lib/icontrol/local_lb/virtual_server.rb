#
# TODO:
#    - protocol_type= does not seem to work ( there is something that prevent the protocol to be assigned in the server side )
#    - module_score   Does not return any module score
#    - persostence_record Does not work, it expects more arguments than documented
#

IControl::LocalLB::VirtualServer
class IControl::LocalLB::VirtualServer

  ##
  #  A list of virtual server types. 
  module Type    
    #   The virtual server is based on a pool.
    class RESOURCE_TYPE_POOL ; VALUE = 0; end
    #  The virtual server only supports IP forwarding. There is no load balancing on this type of virtual server.
    class RESOURCE_TYPE_IP_FORWARDING ; VALUE = 1; end
    #  The virtual server only supports L2 forwarding. There is no load balancing on this type of virtual server.
    class RESOURCE_TYPE_L2_FORWARDING ; VALUE = 2; end
    #  All connections going to this virtual server will be rejected, and resets will be sent.
    class RESOURCE_TYPE_REJECT ; VALUE = 3; end
    #  The virtual server is based on the Fast L4 profile.
    class RESOURCE_TYPE_FAST_L4 ; VALUE = 4; end
    #  The virtual server is based on the Fast HTTP profile. 
    class RESOURCE_TYPE_FAST_HTTP ; VALUE = 5; end
  end
  
  ##
  #  A list of CMP enable modes. 
  class CMPEnableMode
    #   The virtual server is enabled on all processing cores.
    class RESOURCE_TYPE_CMP_ENABLE_ALL ; VALUE = 0; end
    #  The virtual server is enabled on a single processing core.
    class RESOURCE_TYPE_CMP_ENABLE_SINGLE ; VALUE = 1; end
    #  The virtual server is enabled on a group of processing cores.
    class RESOURCE_TYPE_CMP_ENABLE_GROUP ; VALUE = 2; end

    class RESOURCE_TYPE_CMP_ENABLE_UNKNOWN ; VALUE = 3; end
  end

  class StatisticEntry
    attr_accessor :virtual_server,:statistics

    def self.from_xml(result)
      result[:item] = [result[:item]].flatten
      aux_result = result[:item].map do |i| 
        aux = self.new
        aux.virtual_server = IControl::LocalLB::VirtualServer.find(i[:virtual_server][:name])
        aux.statistics = {}
        i[:statistics][:item].each do |entry|
          aux.statistics[IControl::Common::StatisticType.const_get(entry[:type])] = IControl::Common::ULong64.new(entry[:value])
        end
        aux
      end
      return aux_result.length == 1 ? aux_result.first : aux_result
    end
  end

  class ModuleScore
    attr_accessor :tmos_module ,:score
    def initialize(attribules)
      @score = attributes[:score]
      @tmos_module = IControl::Common::TMOSModule.const_get(attributes[:tmos_module])
    end    
  end
=begin  
  class Rule
    attr_accessor :rule_name,:priority
    def initialize(attributes)
      @rule_name = attributes[:rule_name]
      @priority  = ( attributes[:priority] && attributes[:priority].to_i ) || -1
    end
  end
=end

  class ClonePool
    attr_accessor :pool,:clone_type
    def initialize(attributes)
      @pool = IControl::LocalLB::Pool.find(attributes[:pool_name])
      @clone_type = IControl::LocalLB::ClonePoolType.const_get(attributes[:type])
    end
  end

  class ProfileAttribute
    attr_accessor :profile_type,:profile_context,:profile_name
    def initialize(options)
      @profile_type = options[:profile_type]
      @profile_context = options[:profile_context]
      @profile_name = options[:profile_name]
    end
  end

  class Persistence
    attr_accessor :profile_name,:default_profile
    def initialize(options)
      @profile_name = options[:profile_name]
      @default_profile = ( options[:default_profile] == "true" )
    end
  end

  class GenericEnumerator

    STATE_CHANGED=[ :<<, :push, :pop, :shift, :unshift, :insert, :join, :reverse!, :sort!, :collect!,:map!, :delete, :delete_at, :delete_if, :reject!,:slice!, :uniq!, :compact!,  :flatten!, :shuffle! ]

    attr_accessor :parent,:contents

    def initialize(contents,parent)
      @contents = contents
      @parent = parent
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


  class HttpClassProfileEnumerator < GenericEnumerator
    def save!
      @parent.remove_all_httpclass_profiles
      @parent.add_httpclass_profile(@contents)
    end
  end

  class RuleEnumerator < GenericEnumerator
    def save!
      @parent.remove_all_rules
      @parent.add_rule(@contents)
    end
  end

  class AuthProfileEnumerator < GenericEnumerator
    def save!      
      @parent.remove_all_authentication_profiles
      @parent.add_authentication_profile(@contents)
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
  #
  def self.create(attributes)
    item = 0
    profiles = {}
    raise IControl::NoSuchPoolException.new(attributes[:default_pool]) unless attributes[:default_pool]
    
    attributes[:profiles].each do |i| 
      if i.class == Hash
        profiles["item#{item+=1}"] = {"profile_context" => i["profile_context"].name.split("::").last,"profile_name" => ( i["profile"] ? i["profile"] :  "tcp" ) }
      else
        profiles["item#{item+=1}"] = {"profile_context" => i.profile_context,"profile_name" => i.profile_name || "tcp" }
      end
    end
    response = super do |soap|      
      soap.body = {
        "definitions" => {:item => {
            :name => attributes[:name],
            :address => attributes[:address],
            "port" => attributes[:port],
            :protocol => (attributes[:protocol] || IControl::Common::ProtocolType::PROTOCOL_TCP).name.split("::").last
          }
        },
        "wildmasks" => {:item => attributes[:wildmask] || "255.255.255.255"},
        "resources" => {:item => {          
            :type => (attributes[:type] || IControl::LocalLB::VirtualServer::Type::RESOURCE_TYPE_POOL).name.split("::").last,
            "default_pool_name" => attributes[:default_pool] ? attributes[:default_pool].id : "" 
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
        "types" => {:item => new_type.name.split("::").last}
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
  # it returns an instance of class IControl::Common::IPPortDefinition
  # that has mainly two methods, address and port
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

  # Sets the enabled state of the specified virtual servers.  
  def enabled_state=(state)
    IControl::LocalLB::VirtualServer.set_enabled_state do |soap|
      soap.body = {
        "virtual_servers" => {:item => id},
        "states" => {:item => state.name.split("::").last}
      }
    end if state
  end

  #  Gets the rate classes that will be used to rate limit the traffic. 
  def rate_class
    rate_class = get_rate_class
    IControl::LocalLB::RateClass.find(rate_class) if rate_class
  end
  
  # Sets the rate class that will be used to rate limit the traffic.
  def rate_class=(rate)
    IControl::LocalLB::VirtualServer.set_rate_class do |soap|
      soap.body = {"virtual_servers" => {:item => id},"rate_classes" => {:item => rate}}
    end    
  end

  # Gets the mirror connection states for the specified virtual servers.
  def connection_mirror_state
    super
  end

  def connection_mirror_state=(state)
    IControl::LocalLB::VirtualServer.set_connection_mirror_state do |soap|
      soap.body = {"virtual_servers" => {:item => id},:states => {:item => state.name.split("::").last }}
    end
  end
  
  #  Gets the connection limits for the specified virtual servers.
  def connection_limit
    super
  end

  # Sets the connection limits of the specified virtual server.
  def connection_limit=(limit)
    IControl::LocalLB::VirtualServer.set_connection_limit do |soap|
      limit = limit.is_a?(IControl::Common::ULong64) ? limit : IControl::Common::ULong64.new(:low => limit)
      soap.body = {
        "virtual_servers" => {:item => id},
        :limits => {:item => limit.to_hash}}
    end
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

  def snat_type=(new_type)
    method = new_type == IControl::LocalLB::SnatType::SNAT_TYPE_AUTOMAP ? "set_snat_automap" : "set_snat_none"
    IControl::LocalLB::VirtualServer.send(method) do |soap|
      soap.body = {"virtual_servers" => {:item => id}}
    end
  end

  # Gets the SNAT pools to be used in iSNAT configurations for the specified virtual servers.
  def snat_pool
    snat = super
    IControl::LocalLB::SNATPool.find(snat) if snat
  end

  # Gets the persistence profiles to use for fallback persistence for the specified virtual servers. 
  # A string is returned
  def fallback_persistence_profile
    super
  end
  

  def enable_fallback_persistence_profile!
    fallback_persistence_profile = IControl::Common::EnabledState::STATE_ENABLED
  end

  def disable_fallback_persistence_profile!
    fallback_persistence_profile = IControl::Common::EnabledState::STATE_DISABLED
  end

private

  # Sets de fallback persistence profile profile has to be a string
  def fallback_persistence_profile=(profile)
    IControl::LocalLB::VirtualServer.set_fallback_persistence_profile do |soap|
      soap.body = {
        "virtual_servers" => {:item => id},
        "profile_names" => {:item => profile}
      }
    end if profile
  end

public 


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
    end if pool
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
    @rules ||= RuleEnumerator.new( get_rule.sort {|a,b| a.priority.to_i <=> b.priority.to_i}.map{|i| i}.compact,self)
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


  def remove_all_persistence_profiles! 
    IControl::LocalLB::VirtualServer.remove_all_persistence_profiles do |soap|
      soap.body = {
        "virtual_servers" => {:item => id }
      }
    end    
  end

  def persistence_profile=(persistence_profile)
    self.remove_all_persistence_profiles!
    add_persistence_profile(persistence_profile)
  end

  def add_persistence_profile(persistence_profile)
    IControl::LocalLB::VirtualServer.add_persistence_profile do |soap|
      soap.body = {
        "virtual_servers" => {:item => id},
        "profiles" => {:item => {:item => {"profile_name" => persistence_profile.profile_name,"default_profile" => persistence_profile.default_profile}}}
      } 
    end if persistence_profile && persistence_profile!= ""
  end

  def rules=(my_rules)
    @rules = my_rules
    @rules.parent = self
    @rules.save!
  end
  
  def httpclass_profiles
    @httpclass_profile ||= HttpClassProfileEnumerator.new( httpclass_profile.sort {|a,b| a.priority.to_i <=> b.priority.to_i}.map{|i| i}.compact,self)
  end

  def httpclass_profiles=(profiles)
    @httpclass_profile = profiles
    @httpclass_profile.parent = self
    @httpclass_profile.save!
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


  def add_rule(rules)
    IControl::LocalLB::VirtualServer.add_rule do |soap|
      item = "item"; count = 0
      my_rules = {}
      rules.each{ |i| my_rules[item + (count +=1).to_s] =  {"rule_name" => i.class == String ? i : i.rule_name, "priority" => count } }
      soap.body = {
        "virtual_servers" => {:item => id},
        "rules" => {"value" =>  my_rules  }
      }
    end    
  end

  def add_authentication_profile(profiles)
    IControl::LocalLB::VirtualServer.add_authentication_profile do |soap|
      item = "item"; count = 0
      my_profiles = {}
      profiles.each{ |i| my_profiles[item + (count +=1).to_s] =  {"profile_name" => i.class == String ? i : i.id, "priority" => count } }
      soap.body = {
        "virtual_servers" => {:item => id},
        "profiles" => {"value" =>  my_profiles  }
      }
    end    
  end

#  add_authentication_profile
#  remove_authentication_profile
#  remove_all_authentication_profiles

  def object_status
    super
  end

  def authentication_profiles
    @authentication_profile ||= AuthProfileEnumerator.new(authentication_profile.sort {|a,b| a.priority.to_i <=> b.priority.to_i}.map{|i| i}.compact,self)
  end

  def authentication_profiles=(profiles)
    @authentication_profile = profiles
    @authentication_profile.parent = self
    @authentication_profile.save!
  end

  def self.all_statistics
    self.get_all_statistics
  end
  
  def persistence_record(mode)
    raise "Not Implemented"
  end
  
  def version
    super
  end
  
  def module_score
    super
  end

  # Sets the protocol it reeives a ProtocolType constant
  def protocol=(protocol)
    IControl::LocalLB::VirtualServer.set_protocol do |soap|
      soap.body = {
        "virtual_servers" => {:item => id},
        "protocols" => {:item => protocol.name.split("::").last }
      }
    end
  end
    
  def enable_address_translation!
    translate_address_state = IControl::Common::EnabledState::STATE_ENABLED
  end

  def disable_address_translation!
    translate_address_state = IControl::Common::EnabledState::STATE_DISABLED
  end

  # Sets the translate address state receives a EnabledState constant
  def translate_address_state=(translate_address_state)
    IControl::LocalLB::VirtualServer.set_translate_address_state do |soap|
      soap.body = {
        "virtual_servers" => {:item => id},
        "states" => {:item => translate_address_state}
      }
    end
  end

  def enable_cmp!
    cmp_enabled_state = IControl::Common::EnabledState::STATE_ENABLED
  end

  def disable_cmp!
    cmp_enabled_state = IControl::Common::EnabledState::STATE_DISABLED
  end
  
  # Sets the translate cmp address state receives a EnabledState constant
  def cmp_enabled_state=(cmp_enabled_state)
    IControl::LocalLB::VirtualServer.set_cmp_enabled_state do |soap|
      soap.body = {
        "virtual_servers" => {:item => id},
        "states" => {:item => cmp_enabled_state}
      }
    end
  end

  # sets the snat_pool receives a Pool instance
  def snat_pool=(snat_pool)
    IControl::LocalLB::VirtualServer.set_snat_pool do |soap|
      soap.body = {
        "virtual_servers" => {:item => id},
        "snatpools" => {:item => snat_pool.id}
      }
    end
  end

  def destroy 
    IControl::LocalLB::VirtualServer.delete_virtual_server do |soap|
      soap.body = {
        "virtual_servers" => {:item => id}
      }
    end
  end
  
  def self.destroy_all
    puts "NOT IMPLEMENTED (for security reasons)"
  end
  
  def vlan=(vlan)
    count=0;
    vlans = {}
    vlan.vlans.each { |i| vlans["item#{count+=1}"]=i}
    IControl::LocalLB::VirtualServer.set_vlan do |soap|
      soap.body = {
        "virtual_servers" => {:item => id},
        "vlans" => { :item => 
          { :state => vlan.state.name.split("::").last,
            :vlans => vlans
          }
        }
      }
    end
  end
  
=begin
  add_profile
  remove_profile
  remove_all_profiles
  remove_persistence_profile


  add_clone_pool
  remove_clone_pool
  remove_all_clone_pools

+ reset_statistics
  delete_persistence_record
  remove_httpclass_profile
  set_gtm_score
=end
end
