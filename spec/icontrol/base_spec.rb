require File.expand_path(File.join(File.dirname(__FILE__),"..",'/spec_helper'))

describe IControl::Base do
  use_vcr_cassette "IControl::Base", :record => :all, :match_requests_on => [:uri, :method, :body] # Change :record => :new_episodes when done
  describe "Concurrent invocation" do
    it "should allow to be called concurrently" do
      virtual_servers = []
      pools = []
      threads = []
      lambda {
        30.times do      
          threads << Thread.new do
            virtual_servers << IControl::LocalLB::VirtualServer.find(:all).first
            pools           << IControl::LocalLB::Pool.find(:all).first
          end
        end
        threads.each(&:join)
      }.should_not raise_exception
      
      virtual_servers.each do |virtual_server|
        virtual_server.id.should == virtual_servers.first.id
      end
      pools.each do |pool|
        pool.id.should == pools.first.id
      end
      
    end
  end

end
