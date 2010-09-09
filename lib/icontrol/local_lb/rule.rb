IControl::LocalLB::Rule
# The Rule interface enables you to manipulate a local load balancer's rules. For example, use the Rule interface to get a list of all rules, create rules, delete rules, modify rules, and query rules. 
class IControl::LocalLB::Rule 
  set_id_name :rule_name

  ##
  #  Gets the statistics for all the rules (NOT TESTED)
  # :method: all_statistics

  ##
  #  Gets a list of all rules (NOT TESTED)
  # :method: list

  ##
  #  Gets the statistics for the specified rules (NOT TESTED)
  # :method: statistics

  ##
  #  Gets the version information for this interface (NOT TESTED)
  # :method: version
  
  # A struct that describes the rule and its definition. 
  class Definition

    ##
    # Creates a new instance. +attributes+ is a hash with the attributes as keys and their values as values
    # :singleton-method: new(attributes)

    # The rule name
    attr_accessor :rule_name
    # The rule text/definition. 
    attr_accessor :definition 

    include AttributeInitializer

  end
  
  # A struct that describes statistics for a particular rule. 
  class StatisticEntry

    ##
    # Creates a new instance. +attributes+ is a hash with the attributes as keys and their values as values
    # :singleton-method: new(attributes)

    # The rule name.
    attr_accessor :rule_name
    # The rule event name.
    attr_accessor :event_name
    # The rule execution priority.
    attr_accessor :priority
    # The statistics for the rule. 
    attr_accessor :statistics


    include AttributeInitializer

  end

  # A struct that describes pool statistics and timestamp. 
  class Statistic    

    ##
    # Creates a new instance. +attributes+ is a hash with the attributes as keys and their values as values
    # :singleton-method: new(attributes)

    # The statistics for a sequence of pools.
    attr_accessor :statistics
    # The time stamp at the time the statistics are gathered. 
    attr_accessor :time_stamp

    include AttributeInitializer

  end

  
=begin
  create  Creates the specified rules.
delete_all_rules Deletes all user-defined rules.
delete_rule Deletes the specified rules. An exception will be raised when attempting to delete a default system rule.
modify_rule Modifies the specified rules.
query_all_rules Queries all rules.
query_rule Queries the specified rules.
reset_statistics Resets the statistics for the specified rules. 
=end
end
