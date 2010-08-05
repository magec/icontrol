require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe IControl::LocalLB::ProfileHttpClass do

  before do
    @profile = IControl::LocalLB::ProfileHttpClass.find("test_profile1")
    @profile2 = IControl::LocalLB::ProfileHttpClass.find("test_profile2")
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

  ["host","cookie","header","path"].each do |type|
    
    describe "#{type}_match_pattern method" do 
      
      it "should exist" do
        @profile2.methods.should include("#{type}_match_pattern".to_sym)
      end
      
      it "should return an Array" do
        @profile2.send("#{type}_match_pattern").class.should be(Array)      
      end
      
      it "should not contents any nil value in the Array" do
        @profile2.send("#{type}_match_pattern").should_not include(nil)
      end
      
      it "should return valid values" do
        patterns = @profile2.send("#{type}_match_pattern")
        patterns.length.should be_>(1)
        patterns.first[:pattern].should_not be nil      
      end
    end
    
    describe "set_default_#{type}_match_pattern method" do 

      it "should exist" do
        @profile2.methods.should include("set_default_#{type}_match_pattern".to_sym)
      end
      
      it "should return an empty array" do 
        value = @profile2.send("set_default_#{type}_match_pattern")
        value.class.should be(Array)
      end

      it "should empty the contents of the array after called" do
        pending
      end
    end

    ["add","remove"].each do |op|
            
      describe "#{op}_#{type}_host_match_pattern method" do 
      
        it "should exist" do
          @profile2.methods.should include("#{op}_#{type}_match_pattern".to_sym)
        end
      
        it "sould return the recently created pattern if it correctly adds it" do
          pattern = "test_#{type}"
          result = @profile2.send("#{op}_#{type}_match_pattern",pattern,true)
          result["pattern"].should ==(pattern)
          result["is_glob"].should be(true)
        end
        
        it "sould allow the addition of string patterns as well" do
          pattern = "test_#{type}-regexp"
          result = @profile2.send("#{op}_#{type}_match_pattern",pattern)
          result["pattern"].should ==(pattern)
          result["is_glob"].should be(false)
        end    
        
        it "should #{op} a new #{type} pattern" do
          pending
        end
      end
      
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
  
  describe "rewrite_url method" do
    it "should exist" do
      @profile.methods.should include("rewrite_url".to_sym)
    end

    it "should return a hash containing the rewritting rule and the " do
      rewrite_url = @profile2.rewrite_url
      rewrite_url.class.should be(Hash)
      rewrite_url[:rule].class.should be(String)
    end
  end

  describe "unset_rewrite_url" do 
    it "should exist" do
      @profile.methods.should include("unset_rewrite_url".to_sym)
    end

    it "should leave the field empty" do
      @profile.unset_rewrite_url[:rule].should ==""
    end
    
  end

  describe "set_rewrite_url method" do

    it "should exist" do
      @profile.methods.should include("set_rewrite_url".to_sym)
    end

    it "should allow the assignment of a new rewrite url" do
      rewrite_url = @profile2.set_rewrite_url "/new_url_test"
      rewrite_url[:rule].class.should be(String)
    end

  end

  describe "redirect_location method" do
    it "should exist" do
      @profile.methods.should include("redirect_location".to_sym)
    end

    it "should return a hash containing the redirect_location " do
      rewrite_url = @profile2.redirect_location
      rewrite_url.class.should be(Hash)
      rewrite_url[:rule].class.should be(String)
    end
  end


  describe "set_redirect_location method" do

    it "should exist" do
      @profile.methods.should include("set_redirect_location".to_sym)
    end

    it "should allow the assignment of a new redirect_location" do
      rewrite_url = @profile2.set_redirect_location "new_host"
      rewrite_url[:rule].class.should be(String)
    end

  end

  describe "create method" do 
    it "should exist" do
      IControl::LocalLB::ProfileHttpClass.methods.should include(:create!)
    end

    it "should return the created Profile" do
      IControl::LocalLB::ProfileHttpClass.create!("new_created_profile")
    end
  end

end
