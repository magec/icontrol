require File.expand_path(File.join(File.dirname(__FILE__),"..",'/spec_helper'))

describe IControl::Common::ULong64 do
  use_vcr_cassette "IControl::Common::ULong64", :record => :all, :match_requests_on => [:uri, :method, :body] # Change :record => :new_episodes when done
  describe "#to_f" do
    it "should exist" do
      IControl::Common::ULong64.new({}).methods.should include(:to_f)
    end

    it "should correctly perform the conversion between two unsigned ints and a bignum" do
      IControl::Common::ULong64.new(:high => 0, :low => 37565545).to_f.should == 37565545
      IControl::Common::ULong64.new(:high => 2, :low => -1701380642).to_f.should == 11183521246
    end
  end

end
