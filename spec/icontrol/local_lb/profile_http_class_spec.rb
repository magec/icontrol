require File.expand_path(File.join(File.dirname(__FILE__),"..","..",'/spec_helper'))

describe IControl::LocalLB::ProfileHttpClass do

  use_vcr_cassette "IControl::LocalLB::ProfileHttpClass", :record => :all, :match_requests_on => [:uri, :method, :body] # Change :record => :new_episodes when done

  before(:each) do
    IControl::LocalLB::ProfileHttpClass.create(:profile_name => "test_profile_http_class")
    @profile_http_class = IControl::LocalLB::ProfileHttpClass.find("test_profile_http_class")
  end

  after(:each) do
    @profile_http_class.delete_profile
  end

  describe "#add_cookie_match_pattern" do
    it "Adds to the lists of patterns used to match the cookies." do
      @profile_http_class.cookie_match_pattern.values.should be_nil
      @profile_http_class.add_cookie_match_pattern(:patterns => [{:pattern => "/test/",:is_glob => false}])
      @profile_http_class.add_cookie_match_pattern(:patterns => [{:pattern => "/test/2",:is_glob => true }])
      @profile_http_class.cookie_match_pattern.values.length.should == 2
    end

    it "works this way" do
      @profile_http_class.add_cookie_match_pattern(:patterns => [{:pattern => "/test/",:is_glob => false},{:pattern => "/test/2",:is_glob => true }])
    end
  end

  describe "#add_header_match_pattern" do
    it "Adds to the lists of patterns used to match the headers." do
      @profile_http_class.header_match_pattern.values.should be_nil
      @profile_http_class.add_header_match_pattern(:patterns => [{:pattern => "/test/",:is_glob => false}])
      @profile_http_class.add_header_match_pattern(:patterns => [{:pattern => "/test/2",:is_glob => true }])
      @profile_http_class.header_match_pattern.values.length.should == 2
    end

    it "works this way" do
      @profile_http_class.add_header_match_pattern(:patterns => [{:pattern => "/test/",:is_glob => false}])
    end
  end

  describe "#add_host_match_pattern" do
    it "Adds to the lists of patterns used to match the hosts." do
      @profile_http_class.host_match_pattern.values.should be_nil
      @profile_http_class.add_host_match_pattern(:patterns => [{:pattern => "/test/",:is_glob => false}])
      @profile_http_class.add_host_match_pattern(:patterns => [{:pattern => "/test/2",:is_glob => true }])
      @profile_http_class.host_match_pattern.values.length.should == 2
    end

    it "works this way" do
      @profile_http_class.add_host_match_pattern(:patterns => [{:pattern => "/test/",:is_glob => false}])
    end
  end

  describe "#add_path_match_pattern" do
    it "Adds to the lists of patterns used to match the URI paths." do
      @profile_http_class.path_match_pattern.values.should be_nil
      @profile_http_class.add_path_match_pattern(:patterns => [{:pattern => "/test/",:is_glob => false}])
      @profile_http_class.add_path_match_pattern(:patterns => [{:pattern => "/test/2",:is_glob => true }])
      @profile_http_class.path_match_pattern.values.length.should == 2
    end

    it "works this way" do
      @profile_http_class.add_path_match_pattern(:patterns => [{:pattern => "/test/",:is_glob => false}])
    end
  end

  describe "#create" do
    it "Creates the specified HTTP class profiles." do
      IControl::LocalLB::ProfileHttpClass.find("foo_profile").should be_nil
      IControl::LocalLB::ProfileHttpClass.create(:profile_name => "foo_profile")
      @created_profile = IControl::LocalLB::ProfileHttpClass.find("foo_profile")
      @created_profile.should_not be_nil
      @created_profile.delete_profile
    end

    it "works this way" do
      IControl::LocalLB::ProfileHttpClass.create(:profile_name => "foo_profile")
      @created_profile = IControl::LocalLB::ProfileHttpClass.find("foo_profile")
      @created_profile.delete_profile
    end
  end

  describe "#delete_all_profiles" do
    it "Deletes all HTTP class profiles." do
      pending "I not deleting all of the profiles just for the sake of it !"
    end

    it "works this way" do
      pending "I not deleting all of the profiles just for the sake of it !"
    end
  end

  describe "#delete_profile" do
    it "Deletes the specified HTTP class profiles." do
      IControl::LocalLB::ProfileHttpClass.create(:profile_name => "foo_profile")
      @created_profile = IControl::LocalLB::ProfileHttpClass.find("foo_profile")
      @created_profile.should_not be_nil
      @created_profile.delete_profile
      @created_profile = IControl::LocalLB::ProfileHttpClass.find("foo_profile")
      @created_profile.should be_nil
    end

    it "works this way" do
      # See ProfileHttpClass#create
    end
  end

  describe "#all_statistics" do
    it "should return without raising any exception" do
      lambda { @profile_http_class.all_statistics }.should_not raise_exception
    end

    it "Gets the statistics for all the profiles." do
      @profile_http_class.all_statistics.should_not be_nil
    end

    it "works this way" do
      @profile_http_class.all_statistics
    end

    it "returns an instance of ProfileHttpClassStatistics" do
      @profile_http_class.all_statistics.class.should == IControl::LocalLB::ProfileHttpClass::ProfileHttpClassStatistics
    end
  end

  describe "#application_security_module_enabled_state" do
    it "should return without raising any exception" do
      lambda { @profile_http_class.application_security_module_enabled_state }.should_not raise_exception
    end

    it "Gets the states that specify whether specified classes are Application Security Module classes." do
      @profile_http_class.application_security_module_enabled_state.should_not be_nil
    end

    it "works this way" do
      @profile_http_class.application_security_module_enabled_state
      # => #<IControl::LocalLB::ProfileEnabledState:0x000000040d18e0 @attributes={:value=>:STATE_DISABLED, :default_flag=>true, :id=>nil}>
    end

    it "returns an instance of IControl::LocalLB::ProfileEnabledState" do
      @profile_http_class.application_security_module_enabled_state.class.should == IControl::LocalLB::ProfileEnabledState
    end
  end

  describe "#cookie_match_pattern" do
    it "should return without raising any exception" do
      lambda { @profile_http_class.cookie_match_pattern }.should_not raise_exception
    end

    it "Gets the lists of patterns used to match the cookies." do
      @profile_http_class.cookie_match_pattern.should_not be_nil
    end

    it "works this way" do
      @profile_http_class.cookie_match_pattern
      # => #<IControl::LocalLB::ProfileMatchPatternStringArray
    end

    it "returns an instance of IControl::LocalLB::ProfileMatchPatternStringArray" do
      @profile_http_class.cookie_match_pattern.class.should == IControl::LocalLB::ProfileMatchPatternStringArray
    end
  end

  describe "#default_profile" do
    it "should return without raising any exception" do
      lambda { @profile_http_class.default_profile }.should_not raise_exception
    end

    it "Gets the names of the default profiles from which the specified profiles will derive default values for its attributes." do
      @profile_http_class.default_profile.should_not be_nil
    end

    it "works this way" do
      @profile_http_class.default_profile
      # => httpclass
    end

    it "returns an instance of String" do
      @profile_http_class.default_profile.class.should == String
    end
  end

  describe "#header_match_pattern" do
    it "should return without raising any exception" do
      lambda { @profile_http_class.header_match_pattern }.should_not raise_exception
    end

    it "Gets the lists of patterns used to match the headers." do
      @profile_http_class.header_match_pattern.should_not be_nil
    end

    it "works this way" do
      @profile_http_class.header_match_pattern
      # => #<IControl::LocalLB::ProfileMatchPatternStringArray
    end

    it "returns an instance of IControl::LocalLB::ProfileMatchPatternStringArray" do
      @profile_http_class.cookie_match_pattern.class.should == IControl::LocalLB::ProfileMatchPatternStringArray
    end

  end

  describe "#host_match_pattern" do
    it "should return without raising any exception" do
      lambda { @profile_http_class.host_match_pattern }.should_not raise_exception
    end

    it "Gets the lists of patterns used to match the hosts." do
      @profile_http_class.host_match_pattern.should_not be_nil
    end

    it "works this way" do
      @profile_http_class.host_match_pattern
      # => #<IControl::LocalLB::ProfileMatchPatternStringArray                                                                                                       
    end

    it "returns an instance of IControl::LocalLB::ProfileMatchPatternStringArray" do
      @profile_http_class.cookie_match_pattern.class.should == IControl::LocalLB::ProfileMatchPatternStringArray
    end

  end

  describe "#path_match_pattern" do
    it "should return without raising any exception" do
      lambda { @profile_http_class.path_match_pattern }.should_not raise_exception
    end

    it "Gets the lists of patterns used to match the URI paths." do
      @profile_http_class.path_match_pattern.should_not be_nil
    end

    it "works this way" do
      @profile_http_class.path_match_pattern
      # => #<IControl::LocalLB::ProfileMatchPatternStringArray                                                                                                       
    end

    it "returns an instance of IControl::LocalLB::ProfileMatchPatternStringArray" do
      @profile_http_class.cookie_match_pattern.class.should == IControl::LocalLB::ProfileMatchPatternStringArray
    end
  end

  describe "#pool_name" do
    it "should return without raising any exception" do
      lambda { @profile_http_class.pool_name }.should_not raise_exception
    end

    it "Gets the pool names to use when the specified classes match." do
      @profile_http_class.pool_name.should_not be_nil
    end

    it "works this way" do
      @profile_http_class.pool_name.inspect
    end

    it "returns an instance of IControl::LocalLB::ProfileString" do
      @profile_http_class.pool_name.class.should == IControl::LocalLB::ProfileString
    end
  end

  describe "#redirect_location" do
    it "should return without raising any exception" do
      lambda { @profile_http_class.redirect_location }.should_not raise_exception
    end

    it "Gets the string (which may include a TCL expression) to indicates where to redirect the original HTTP request once a match occurs. For example, to redirect requests to https://myserver.com to http://myotherserver.com." do
      pending
    end

    it "works this way" do
      pending
    end

    it "returns an instance of ProfileString" do
      pending
    end
  end

  describe "#rewrite_url" do
    it "should return without raising any exception" do
      lambda { @profile_http_class.rewrite_url }.should_not raise_exception
    end

    it "Gets the strings (which may include a TCL expression) with which to rewrite the URLs." do
      pending
    end

    it "works this way" do
      pending
    end

    it "returns an instance of ProfileString" do
      pending
    end
  end

  describe "#statistics" do
    it "should return without raising any exception" do
      lambda { @profile_http_class.statistics }.should_not raise_exception
    end

    it "Gets the statistics for the specified profiles." do
      pending
    end

    it "works this way" do
      pending
    end

    it "returns an instance of ProfileHttpClassStatistics" do
      pending
    end
  end

  describe "#version" do
    it "should return without raising any exception" do
      lambda { @profile_http_class.version }.should_not raise_exception
    end

    it "Gets the version information for this interface." do
      pending
    end

    it "works this way" do
      pending
    end

    it "returns an instance of String" do
      pending
    end
  end

  describe "#web_accelerator_module_enabled_state" do
    it "should return without raising any exception" do
      lambda { @profile_http_class.web_accelerator_module_enabled_state }.should_not raise_exception
    end

    it "Gets the states that specify whether specified classes are Web Accelerator classes." do
      pending
    end

    it "works this way" do
      pending
    end

    it "returns an instance of ProfileEnabledState" do
      pending
    end
  end

  describe "#is_base_profile" do
    it "Determines whether the specified profiles are base/pre-configured profiles, or user-defined profiles." do
      pending
    end

    it "works this way" do
      pending
    end

    it "returns an instance of boolean" do
      pending
    end
  end

  describe "#remove_cookie_match_pattern" do
    it "Removes from the lists of patterns used to match the cookies." do
      pending
    end

    it "works this way" do
      pending
    end
  end

  describe "#remove_header_match_pattern" do
    it "Removes from the lists of patterns used to match the headers." do
      pending
    end

    it "works this way" do
      pending
    end
  end

  describe "#remove_host_match_pattern" do
    it "Removes from the lists of patterns used to match the hosts." do
      pending
    end

    it "works this way" do
      pending
    end
  end

  describe "#remove_path_match_pattern" do
    it "Removes from the lists of patterns used to match the URI paths." do
      pending
    end

    it "works this way" do
      pending
    end
  end

  describe "#reset_statistics" do
    it "Resets the statistics for the specified profiles." do
      pending
    end

    it "works this way" do
      pending
    end
  end

  describe "#set_application_security_module_enabled_state" do
    it "Sets the states that specify whether specified classes are Application Security Module classes." do
      pending
    end

    it "works this way" do
      pending
    end
  end

  describe "#set_default_cookie_match_pattern" do
    it "Resets the lists to parent defaults." do
      pending
    end

    it "works this way" do
      pending
    end
  end

  describe "#set_default_header_match_pattern" do
    it "Resets the lists to parent defaults." do
      pending
    end

    it "works this way" do
      pending
    end
  end

  describe "#set_default_host_match_pattern" do
    it "Resets the lists to parent defaults." do
      pending
    end

    it "works this way" do
      pending
    end
  end

  describe "#set_default_path_match_pattern" do
    it "Resets the lists to parent defaults." do
      pending
    end

    it "works this way" do
      pending
    end
  end

  describe "#set_default_profile" do
    it "Sets the names of the default profiles from which the specified profiles will derive default values for its attributes." do
      pending
    end

    it "works this way" do
      pending
    end
  end

  describe "#set_pool_name" do
    it "Sets the pool names to use when the specified classes match." do
      pending
    end

    it "works this way" do
      pending
    end
  end

  describe "#set_redirect_location" do
    it "Sets the string (which may include a TCL expression) to indicates where to redirect the original HTTP request once a match occurs. For example, to redirect requests to https://myserver.com to http://myotherserver.com." do
      @profile_http_class.redirect_location.value.should_not == "http://test.test.com"
      @profile_http_class.set_redirect_location(:redirect_location => {:default_flag => false, :value => "http://test.test.com"})
      @profile_http_class.redirect_location.value.should == "http://test.test.com"
    end

    it "works this way" do
      @profile_http_class.set_redirect_location(:redirect_location => {:default_flag => false, :value => "http://test.test.com"})
    end
  end

  describe "#set_rewrite_url" do
    it "Sets the strings (which may include a TCL expression) with which to rewrite the URLs." do
      @profile_http_class.rewrite_url.value.should_not == "http://test.test.com"
      @profile_http_class.set_rewrite_url(:url => {:default_flag => false, :value => "http://test.test.com"})
      @profile_http_class.rewrite_url.value.should == "http://test.test.com"
    end

    it "works this way" do
      @profile_http_class.set_rewrite_url(:url => {:default_flag => false, :value => "http://test.test.com"})
    end
  end

  describe "#set_web_accelerator_module_enabled_state" do
    it "Sets the states that specify whether specified classes are Web Accelerator classes." do
      pending
    end

    it "works this way" do
      pending
    end
  end
end
