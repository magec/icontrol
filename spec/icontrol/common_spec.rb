require File.expand_path(File.join(File.dirname(__FILE__),"..",'/spec_helper'))

describe IControl::Common::ULong64 do
  
  describe "#to_f" do
    it "should exist" do
      IControl::Common::ULong64.new({}).methods.should include(:to_f)
    end
  end

end
