module IControl::LocalLB
  ##
  # The Rule interface enables you to manipulate a local load balancer's rules. For example,
  # use the Rule interface to get a list of all rules, create rules, delete rules, modify
  # rules, and query rules.
  class Rule < IControl::Base
    class RuleDefinition < IControl::Base::Struct; end
    class RuleStatisticEntry < IControl::Base::Struct; end
    class RuleStatistics < IControl::Base::Struct; end    ## A sequence of rule definitions.
    class RuleDefinitionSequence < IControl::Base::Sequence ; end## A sequence of Rule statistics.
    class RuleStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes the rule and its definition.
    class RuleDefinition < IControl::Base::Struct
      # The rule name.
      icontrol_attribute :rule_name, String
      # The rule text/definition.
      icontrol_attribute :rule_definition, String
    end

    ##
    # A struct that describes statistics for a particular rule.
    class RuleStatisticEntry < IControl::Base::Struct
      # The rule name.
      icontrol_attribute :rule_name, String
      # The rule event name.
      icontrol_attribute :event_name, String
      # The rule execution priority.
      icontrol_attribute :priority, Numeric
      # The statistics for the rule.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes pool statistics and timestamp.
    class RuleStatistics < IControl::Base::Struct
      # The statistics for a sequence of pools.
      icontrol_attribute :statistics, IControl::LocalLB::Rule::RuleStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Creates the specified rules.
    # :method: create
    # :call-seq:
    # create(rules)
    #
    # Parameters:
    # - rules RuleDefinition[] The rules to create.

    ##
    # Deletes all user-defined rules.
    # :method: delete_all_rules

    ##
    # Deletes the specified rules. An exception will be raised when attempting to delete
    # a default system rule.
    # :method: delete_rule
    # :call-seq:
    # delete_rule(rule_names)
    #
    # Parameters:
    # - rule_names String[] The names of the rules to delete.

    ##
    # Gets the statistics for all the rules.
    # :method: get_all_statistics

    ##
    # Gets a list of all rules.
    # :method: get_list

    ##
    # Gets the statistics for the specified rules.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(rule_names)
    #
    # Parameters:
    # - rule_names String[] The rules to get the statistics from.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Modifies the specified rules.
    # :method: modify_rule
    # :call-seq:
    # modify_rule(rules)
    #
    # Parameters:
    # - rules RuleDefinition[] The rules to modify.

    ##
    # Queries all rules.
    # :method: query_all_rules

    ##
    # Queries the specified rules.
    # :method: query_rule
    # :call-seq:
    # query_rule(rule_names)
    #
    # Parameters:
    # - rule_names String[] The names of the rules to query.

    ##
    # Resets the statistics for the specified rules.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(rule_names)
    #
    # Parameters:
    # - rule_names String[] The names of the rules.


  end
end
