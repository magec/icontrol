module IControl::WebAccelerator

  class Applications < IControl::Base; end
  class Policies < IControl::Base; end
  class ProxyMessage < IControl::Base; end
end
require "web_accelerator/applications"
require "web_accelerator/policies"
require "web_accelerator/proxy_message"
