$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'icontrol'
require "rake"
require 'spec'
require 'spec/autorun'
require 'fakeweb'

FileList["spec/fixtures/**/*.rb"].each { |fixture| require fixture }
require 'http_stubs'

Spec::Runner.configure do |config|

end

