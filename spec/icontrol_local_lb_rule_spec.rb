require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe IControl::LocalLB::Rule do 

  before do
    @rule = IControl::LocalLB::Rule.find(:first)
  end

  describe "find method" do

    it "should have a find class method called find" do
      IControl::LocalLB::Rule.methods.should include(:find)
    end

    it "should have retreive an object when find is call with id or nil it the object does not exists" do
      IControl::LocalLB::Rule.find("irule_test").class.should be(IControl::LocalLB::Rule)
      IControl::LocalLB::VirtualServer.find("unknown_rule").class.should_not be(IControl::LocalLB::Rule)
      IControl::LocalLB::VirtualServer.find("unknown_rule").should be(nil)
    end
  end

end
