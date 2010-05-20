class EndpointHelper
  # returns an endpoint to be passed to fakeweb
  def self.wsdl_endpoint(class_name)
    fqn = class_name.split("::")
    return self.soap_endpoint + "?WSDL=#{fqn[1]}.#{fqn[2]}"
  end

  def self.soap_endpoint
    icontrol_base = IControl.config[:base_url].split("://")
    return icontrol_base[0] + "://" + IControl.config[:user] + ":" + IControl.config[:password] + "@" + icontrol_base[1..-1].join 
  end

end
  
