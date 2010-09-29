# For the 
IControl::LocalLB::Pool

class IControl::LocalLB::Pool

  set_id_name :pool_name

  class StatisticEntry < IControl::StatisticEntry
    set_item_initializer(:pool_name) do |i|
      IControl::LocalLB::Pool.find(i[:pool_name])
    end
  end

  def status_for(pool_member)
    status = IControl::LocalLB::PoolMember.get_object_status do |soap|
      soap.body = { "pool_names" => {:value => [@attributes[:id]] } }
    end
    pool_info = status.find { |i| i.ip_port_definition == pool_member.ip_port_definition }
    return pool_info.status if pool_info
  end

  def members
    self.member.map do |i| 
      IControl::LocalLB::PoolMember.new(i,self.pool_name)
    end
  end


  # Adds a member to this pool
  def add_member(member = {})
    argument = member.is_a?(Hash) ? IControl::Common::IPPortDefinition.new( :address => member[:address], :port => member[:port] ) : member
    raise "Wrong Argument" if !argument.is_a? IControl::Common::IPPortDefinition
    
    IControl::LocalLB::Pool.add_member do |soap|
      soap.body = { "pool_names" => {:value => pool_name },:members => { :item => { :value => argument.to_hash } } }
    end
    
  end

  def lb_method
    aux = super
    return aux.first if aux.respond_to? 'first'
    aux
  end

  # This method clones a pool with another name (id)
  def clone(new_id)
    prv_monitor_rule = monitor_rule
    new_pool = IControl::LocalLB::Pool.create(:id => new_id, :lb_method => lb_method, :members => member)
    new_pool.monitor_rule = prv_monitor_rule
    return new_pool
  end

  def destroy
    return delete_pool
  end
  
  # Returns a collection of the monitors associated with this pool
  def monitor_rule
    return monitor_association
  end

  def monitor_rule=(new_monitor_rule)
    item = 0
    templates = new_monitor_rule.monitor_templates.map { |i| {:"item#{item+=1}" => i}}
    rule_type = ( templates.length > 1 ) ? "MONITOR_RULE_TYPE_AND_LIST" : "MONITOR_RULE_TYPE_SINGLE"
    return self.class.set_monitor_association("monitor_associations" => {
                                           "item" => {"pool_name" => @attributes[:id] ,
                                             "monitor_rule" => {:type => rule_type,:quorum => new_monitor_rule.quorum, "monitor_templates" => templates }
                                           }
                                         }
                                         )
  end

  def self.create(attributes)    
    item = 0
    members = {}
    attributes[:members].each{ |i| members[:"item#{item+=1}"] = {:address => i.address, :port => i.port } }
    response = super("pool_names" => {:value=> attributes[:id] },"lb_methods" => {:item => attributes[:lb_method]},"members"    => {:item => members})    
    return new(attributes)
  end
end
