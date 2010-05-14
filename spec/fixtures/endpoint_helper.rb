class EndpointHelper
  # returns an endpoint to be passed to fakeweb
  def self.wsdl_endpoint(class_name)
    fqn = class_name.split("::")
    return IControl.config[:base_url] + "?WSDL=#{fqn[1]}.#{fqn[2]}"
  end
end
  
