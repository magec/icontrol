$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'icontrol'
require 'vcr'

require 'webmock'

VCR.config do |c|

  c.cassette_library_dir = 'spec/fixtures/vcr_cassetes'
  c.stub_with :webmock 

end

Savon.log = false

RSpec.configure do |c|

  c.extend VCR::RSpec::Macros
  config_contents = File.read(File.join(File.dirname(__FILE__),"credentials.yml"))
  IControl.config = YAML.load(config_contents)

end
