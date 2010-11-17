# -*- coding: utf-8 -*-
require 'nokogiri'
require 'mechanize'
require 'logger'
require File.dirname(__FILE__) + '/ast_tree'

# Credentials loading

config = YAML.load(File.read(File.join(File.dirname(__FILE__),"credentials.yml")))

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
File.open(File.dirname(__FILE__) + "/results.dat","w+") do |file|
  file << Marshal.dump(data)
end
