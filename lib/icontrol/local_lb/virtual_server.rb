IControl::LocalLB::VirtualServer

class IControl::LocalLB::VirtualServer
  
    class VirtualServerProfileAttribute
      attr_accessor :profile_type,:profile_context,:profile_name
      def initialize(options)
        @profile_type = options[:profile_type]
        @profile_context = options[:profile_context]
        @profile_name = options[:profile_name]
      end
    end

  def self.id_name 
    "virtual_server" 
  end


  def default_pool
    return IControl::LocalLB::Pool.find(default_pool_name)
  end

  def profiles
    return get_profile
  end

  def http_class_profiles
    return httpclass_profile.sort {|a,b| a.priority.to_i <=> b.priority.to_i}
  end

private
  def default_body
    {"virtual_servers" =>  {:value => [@attributes[:id]] }}
  end
end
