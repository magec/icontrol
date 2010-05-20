require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe IControl::LocalLB::ProfileHttpClass do

  before do
    http_method_calling("IControl::LocalLB::ProfileHttpClass","get_list") do 
      @profile = IControl::LocalLB::ProfileHttpClass.find(:first)
    end
  end
  

  describe "find method" do

    spec_method_config("IControl::LocalLB::ProfileHttpClass","get_list")

    it "should have a find class method called find" do 
      IControl::LocalLB::ProfileHttpClass.methods.should include(:find)
    end

    it "should return an array of IControl::LocalLB::ProfileHttpClass instances when find(:all) is called" do
      profiles = IControl::LocalLB::ProfileHttpClass.find(:all)
      profiles.class.should be(Array)
      profiles[0].class.should be(IControl::LocalLB::ProfileHttpClass)
    end

    it "should return the first element when called with :first argument" do
      IControl::LocalLB::ProfileHttpClass.find(:first).class.should be(IControl::LocalLB::ProfileHttpClass)
    end

  end

  describe IControl::LocalLB::ProfileHttpClass,"path_match_pattern" do

    before { prepare_configs_for_method("IControl::LocalLB::ProfileHttpClass","get_path_match_pattern")  }  

    after { clean_configs }
    
    it "should allow retreive its associated path_match_patterns" do
      IControl::LocalLB::ProfileHttpClass.find(:all)[0].path_match_pattern.class.should be(Array)
    end

  end

  describe IControl::LocalLB::ProfileHttpClass,"path_match_pattern" do

    before { prepare_configs_for_method("IControl::LocalLB::ProfileHttpClass","get_host_match_pattern")  }  

    after { clean_configs }
    
    it "should allow retreive its associated path_match_patterns" do
      IControl::LocalLB::ProfileHttpClass.find(:all)[0].host_match_pattern.class.should be(Array)
    end

  end


  describe "pool method" do

    it "should return a Pool instance or nil if none found" do

      http_method_calling("IControl::LocalLB::ProfileHttpClass","get_pool_name") do 
        @profile.pool.class.should be(IControl::LocalLB::Pool)
      end
    end

  end


  describe "pool assignation" do
    it "should allow to assign a new pool overwriting the one before" do
      pending
      http_method_calling("IControl::LocalLB::Pool","get_list") do 
        @profile.pool = IControl::LocalLB::Pool.find(:first)
      end
    end
  end
end
