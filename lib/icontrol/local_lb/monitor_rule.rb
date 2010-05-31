class IControl::LocalLB::MonitorRule

  include Attributable

  def self.from_xml(xml_hash)
    monitor_templates = [xml_hash.delete(:monitor_templates)[:item]].flatten
    return self.new(:quorum => xml_hash[:quorum],:monitor_templates => monitor_templates,:type => xml_hash[:type])
  end

  def initialize(attributes)
    attributes[:quorum] ||= "0"
    super
  end

  def rule_type
    @attributes[:type]
  end

  def rule_type=(monitor_type)
    @attributes[:type] = monitor_type
  end
end
