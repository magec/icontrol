require "yaml"
require "erb"

class SOAPFixture
  
  @@responses = {}

  def self.response(operation)
    return @@responses[operation] if @@responses[operation]
    file = File.read File.dirname(__FILE__) + "/xml/#{operation}_response.xml"
    @@responses[operation] = file
  end

end
