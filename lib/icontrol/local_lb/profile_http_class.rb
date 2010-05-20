# For the 
IControl::LocalLB::ProfileHttpClass

class IControl::LocalLB::ProfileHttpClass
  
  def initialize(attributes)
    @id = attributes[:id]
  end

private
  def default_body
    {"profile_names" =>  {:value => [@id] }}
  end
end
