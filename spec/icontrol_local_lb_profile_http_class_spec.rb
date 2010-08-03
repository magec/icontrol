require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe IControl::LocalLB::ProfileHttpClass do

  before do
    @profile = IControl::LocalLB::ProfileHttpClass.find("test_profile1")
  end
  
  describe "find method" do

    it "should have a find class method called find" do 
      IControl::LocalLB::ProfileHttpClass.methods.should include(:find)
    end

    it "should return an array of IControl::LocalLB::ProfileHttpClass instances when find(:all) is called" do
      profiles = IControl::LocalLB::ProfileHttpClass.find(:all)
      profiles.class.should be(Array)
      profiles[0].class.should be(IControl::LocalLB::ProfileHttpClass)
    end

    it "should return the first element when called with :first argument" do
      @profile.class.should be(IControl::LocalLB::ProfileHttpClass)
    end

  end

  describe "path_match_pattern" do

    it "should allow retreive its associated path_match_patterns" do
      @profile.path_match_pattern.class.should be(Array)
    end


    it "should allow retreive its associated path_match_patterns" do
      @profile.host_match_pattern.class.should be(Array)
    end
  end


  describe "base_profile? method" do

    it "should return a boolean value" do 
      @profile.base_profile?.should be_equal(false)
    end

  end

  describe "default_profile method" do 

    it "should exist" do
      @profile.default_profile.should_not be_nil
    end

    it "should result another profile" do 
      @profile.default_profile.class.should be(IControl::LocalLB::ProfileHttpClass)
    end

    it "should return a base profile" do
      @profile.default_profile.base_profile?.should be_equal(true)
    end

  end


  describe "host_match_pattern method" do 

    before do
      @profile2 = IControl::LocalLB::ProfileHttpClass.find("test_profile2")
    end
    
    it "should exist" do
      @profile.methods.should include(:host_match_pattern)
    end

    it "should return an Array" do
      @profile.host_match_pattern.class.should be(Array)      
    end

    it "should not contents any nil value in the Array" do
      @profile.host_match_pattern.should_not include(nil)
    end

    it "should return valid values" do
      patterns = @profile2.host_match_pattern
      patterns.length.should be_>(1)
      patterns.first[:pattern].should_not be nil      
    end
    
  end

  describe "default_profile= method" do 

    it "should exist" do
      @profile.methods.should include(:default_profile=)
    end

    it "should allow asignment of another profile " do
      @profile.default_profile = IControl::LocalLB::ProfileHttpClass.find("anythingelse")
    end

  end

  describe "pool method" do

    it "should return a Pool instance or nil if none found" do

      @profile.pool.class.should be(IControl::LocalLB::Pool)

    end

  end


  describe "pool assignment" do
    it "should allow to assign a new pool overwriting the one before" do
      first_pool = nil
      first_pool = IControl::LocalLB::Pool.find("test_pool1")
      before_pool = @profile.pool
      before_pool.class.should be(IControl::LocalLB::Pool)
      after_pool = nil
      after_pool = @profile.pool = first_pool
      after_pool.class.should be(IControl::LocalLB::Pool)
      before_pool.id.should_not ==(after_pool.id)
    end
    
    it "should raise an exception when then pool does not exist" do
      lambda{
        @profile.pool = IControl::LocalLB::Pool.new(:id => "I-Dont-Exist")
      }.should raise_exception
    end
  end
end
