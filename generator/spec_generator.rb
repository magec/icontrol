#!/usr/bin/env ruby
##
# This script generates an skeleton of an rpec file for a given class
# It receives as parameters the class itself
# and the output file
##

require 'rubygems'
require 'optparse'
require 'ostruct'
require 'fileutils'
require File.join(File.dirname(__FILE__),"..","icontrol","lib","icontrol")
require 'erb'

options = OpenStruct.new
options.verbosity = 0

InputParser = OptionParser.new do |opts|

  opts.banner = "Usage: #{__FILE__}  [options] class_name output_file"
  
  opts.on("-v","--verbose", "Increase verbosity level") do |v|
    options.verbosity += 1
  end

  opts.on("-c","--config=CONFIG_FILE", "The config file to use (yaml with configs)") { |c| options.config = c }  
  opts.on("-u","--uri=URI", "Uri to connect to (overrides config file)") { |u| options.uri = u }
  opts.on("-U","--user=USER", "user name (overrides config file)") { |u| options.user = u }
  opts.on("-i","--id=ID", "instance_id an instance id") { |i| options.instance_id = i }
  opts.on("-n","--instance_name=INSTANCE_NAME","the name to show in the tets") { |i| options.instance_name = i}
  opts.on("-p","--password=PASSWORD", "password (overrides config file)") { |p| options.password = p }  

end

def error(string)
  puts string
  puts InputParser.banner
  puts InputParser.summarize
  exit 1
end

InputParser.parse!

output_file = nil

# PARAMS CONTROL BEGIN

error("Params error\n") if ARGV.length != 2
options.class_name = ARGV.shift
error("Class Undefined #{options.class_name}") unless defined? options.class_name
options.file_name = ARGV.shift
error("Can't open file #{options.file_name} for writing") unless output_file = File.open(options.file_name,"w+")

if options.config
  begin
    if File.stat(options.config) && file_contents = File.open(options.config).read
      IControl.config = YAML.load(file_contents)
    end
  rescue
    puts "There was an error when opening/parsing config file"
    puts $!
  end
end

class OpenStruct
  def get_binding
    @table.each do |k,v|
      self.instance_variable_set("@#{k}",v)
    end
    binding
  end
end


IControl.config[:user] = options.user if options.user
IControl.config[:password] = options.password if options.password 
IControl.config[:base_url] = options.uri if options.uri 
IControl.config[:test] = true
Savon.log = true


error("Error, no credentials set")  unless IControl.config[:user] != "" && IControl.config[:password] != "" && IControl.config[:base_url] != ""

# PARAMS CONTROL END

options.klass = eval(options.class_name)
puts options.klass.inspect
puts options.klass.client.wsdl.operations.keys.inspect
template = ERB.new(File.open(File.join(File.dirname(__FILE__),"templates","spec.erb")).read,nil,">")
output_file.puts(template.result(options.get_binding))

output_file.close
