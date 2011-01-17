require File.expand_path(File.join(File.dirname(__FILE__),"..","..",'/spec_helper'))

describe IControl::Base::Struct do
  
  describe "#initialize" do
    it "should allow to pass no parameters" do
      IControl::Common::ULong64.new.class.should  == IControl::Common::ULong64
    end
  end

end
