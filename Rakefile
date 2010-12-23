require 'rubygems'
require 'rake'

LIBRARY_PATH=File.join(File.dirname(__FILE__),"lib")
GENERATOR_PATH=File.join(File.dirname(__FILE__),"generator")
DEST_DIR=LIBRARY_PATH

def generate(code = true)  

  $LOAD_PATH.unshift(GENERATOR_PATH).unshift(LIBRARY_PATH)

  require 'fileutils'
  require File.join(GENERATOR_PATH,"ast_tree")
  
  ClassDeclaration.spec_mode = !code
  
  root = Marshal.load(File.open(File.join(GENERATOR_PATH,"result.dat")).read)

  new_root = ModuleDeclaration.new

  Dir.chdir(DEST_DIR)

  new_root.properties[:name] = "IControl"
  new_root.children = root.children
  new_root.children.each { |i| i.parent = new_root }
  
  new_root.parent = nil
  puts "Generating Code.."
  new_root.compile
 

end

desc "Generates the source code after the dump of the doc was made"
task "icontrol:generate:code" do
  generate
end

desc "Generates skeleton for the spec files (it not present)"
task "icontrol:generate:spec" do
  generate(false)
end

desc "Downloads the contents of the documentation of the F5 project in (this is done only once)"
task "icontrol:get_documentation" do
  require 'nokogiri'
  require 'mechanize'
  require 'logger'
  require File.join(File.dirname(__FILE__),"generator","ast_tree")
  
  # Credentials loading
  
  credentials_file_path = File.join(File.dirname(__FILE__),"generator","credentials.yml")
  
  unless File.exist?(credentials_file_path)
    puts "Error, no credentials file found, please copy \"#{credentials_file_path}.example\" to \"#{credentials_file_path}\" and fill it with actual values. The values should be your account to the F5dev project"
    exit 1
  end
  
  config = YAML.load(File.read(credentials_file_path))
  
  # First of all the browser creation
  agent = Mechanize.new
  agent.user_agent_alias = 'Mac Safari'
  
  # Next the login (with a bit of a hack)
  page = agent.get("http://devcentral.f5.com/Community/Login/tabid/1082224/Default.aspx")
  login_form = page.form_with(:name => "Form")
  login_form.field_with(:name => "dnn$ctr1085423$Main$login$txtLoginId").value = config[:user]
  login_form.field_with(:name => "dnn$ctr1085423$Main$login$txtPassword").value = config[:password]
  login_form.field_with(:name => "__EVENTTARGET").value = "dnn$ctr1085423$Main$login$btnLogin";
  agent.submit(login_form)
  
  # Then we create a parser an let it work
  Parser.agent = agent
  data = Parser.parse("http://devcentral.f5.com/wiki/default.aspx/iControl.APIReference")
  
  # The results are marshaller for later proccess
  File.open(File.join(GENERATOR_PATH,"results.dat"),"w+") do |file|
    file << Marshal.dump(data)
  end
  
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "icontrol"
    gem.summary = %Q{A ruby client to the BigIP F5}
    gem.description = %Q{This gem allows you to Connect to a F5 appliance by means of its web services}
    gem.email = "jfernandezperez@gmail.com"
    gem.homepage = "http://github.com/magec/icontrol"
    gem.authors = ["Jose Fernandez (magec)"]
    gem.add_development_dependency "rspec", ">= 1.2.9"
#    gem.add_development_dependency "fakeweb", ">= 1.2.8"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
    gem.add_dependency "savon"
    gem.files = FileList['lib/**/*.rb']
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end
=begin
require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "icontrol #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
=end
