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


  describe "pool assignment" do
    it "should allow to assign a new pool overwriting the one before" do
      first_pool = nil
      http_method_calling("IControl::LocalLB::Pool","get_list") do 
        first_pool = IControl::LocalLB::Pool.find(:all)[1]
      end
      http_method_calling("IControl::LocalLB::ProfileHttpClass","get_pool_name") do 
        before_pool = @profile.pool
        before_pool.class.should be(IControl::LocalLB::Pool)
        after_pool = nil
        http_method_calling("IControl::LocalLB::ProfileHttpClass","set_pool_name") do
          after_pool = @profile.pool = first_pool
          after_pool.class.should be(IControl::LocalLB::Pool)
        end
        before_pool.id.should_not ==(after_pool.id)
      end      
    end
    
    it "should raise an exception when then pool does not exist" do
      http_method_calling("IControl::LocalLB::ProfileHttpClass","set_non_existent_pool_name") do
        lambda{
          @profile.pool = IControl::LocalLB::Pool.new(:id => "I-Dont-Exist")
        }.should raise_exception
      end
    end

  end
end
