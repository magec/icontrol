module IControl::WebAccelerator

  class Applications < IControl::Base; end
  class Policies < IControl::Base; end
  class ProxyMessage < IControl::Base; end
end
require "webaccelerator/applications"
require "webaccelerator/policies"
require "webaccelerator/proxymessage"
