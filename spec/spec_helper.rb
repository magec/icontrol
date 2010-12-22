$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require "rubygems"
require "bundler/setup"
Bundler.setup(:test)

require 'icontrol'
require 'vcr'
require 'rspec'

require 'webmock'

VCR.config do |c|

  c.cassette_library_dir = 'spec/fixtures/vcr_cassetes'
  c.stub_with :webmock 

end

Savon.log = true

RSpec.configure do |c|
  


  c.extend VCR::RSpec::Macros
  begin
    file_path = File.join(File.dirname(__FILE__),"credentials.yml")
    config_contents = File.read(file_path)
  rescue
    puts "Error, could not read #{file_path}, please fill it with correct values (you have an example in #{file_path}.example)"
    exit 1
  end
  IControl.config = YAML.load(config_contents)

end
