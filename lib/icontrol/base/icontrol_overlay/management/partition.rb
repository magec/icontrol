module IControl::Management
  class Partition < IControl::Base
    def self.find(partition_name)
      partition = [*get_partition_list].flatten.select { |i| i.partition_name == partition_name }.first
      return self.new(:partition_name => partition.partition_name, :description => partition.description) if partition
    end

    def delete
      return self.class.delete_partition(:partition_names => partition_name)
    end

    def self.set_active_partition(options)
      options[:raw_call] = true
      return method_missing(:set_active_partition,options)
    end

    def self.get_list
      get_partition_list
    end
  end
end
