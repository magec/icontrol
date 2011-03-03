require File.expand_path(File.join(File.dirname(__FILE__),"..","..",'/spec_helper'))

describe IControl::Management::Partition do

  use_vcr_cassette "IControl::Management::Partition", :record => :all, :match_requests_on => [:uri, :method, :body] # Change :record => :new_episodes when done
 
  describe "active_partition" do 
    it "should be called as a class method" do 
      lambda  {IControl::Management::Partition.active_partition }.should_not raise_exception
      IControl::Management::Partition.active_partition.should == "Common"
    end
  end

  describe "create_partition" do 
    it "should be called as a class method" do 
      lambda { IControl::Management::Partition.create_partition(:partition => {:partition_name => "TestPartition",:description => "TestDescription"}) }.should_not raise_exception 
      IControl::Management::Partition.find("TestPartition").partition_name.should == "TestPartition"
    end

    after(:each) do
      IControl::Management::Partition.delete_partition(:partition_name => "TestPartition")
    end
  end

  describe "#delete" do 
    before(:each) do 
      IControl::Management::Partition.create_partition(:partition => {:partition_name => "TestPartition",:description => "TestDescription"})
    end

    it "should delete a given partition" do
      IControl::Management::Partition.find("TestPartition").delete
    end
  end

  describe ("#set_active_partition") do 
    before(:each) do 
      IControl::Management::Partition.create_partition(:partition => {:partition_name => "TestPartition",:description => "TestDescription"})
    end

    it "should set the active partition correctly" do 
      active_partition_before = IControl::Management::Partition.active_partition
      IControl::Management::Partition.set_active_partition(:active_partition => "TestPartition")
      active_partition_after = IControl::Management::Partition.active_partition
      active_partition_after.should_not == active_partition_before
      active_partition_after.should_not == ""
    end
    
    after(:each) do 
      IControl::Management::Partition.set_active_partition(:active_partition => "Common")
      IControl::Management::Partition.find("TestPartition").delete
    end
  end  
  
end
