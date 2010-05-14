require "yaml"
require "erb"

class WSDLFixture
  
  @@wsdl = {}

  def self.wsdl(wsdl)
    return @@wsdl[wsdl] if @@wsdl[wsdl]
    file = File.read File.dirname(__FILE__) + "/xml/#{wsdl}.xml"
    @@wsdl[wsdl] = file
  end

end
