module IControl::LocalLB
  ##
  # The SNATPoolMember interface enables you to work with the SNATPool members and their
  # settings, and statistics.
  class SNATPoolMember < IControl::Base
    class SNATPoolMemberStatisticEntry < IControl::Base::Struct; end
    class SNATPoolMemberStatistics < IControl::Base::Struct; end    ## A sequence of SNATPool member statistics.
    class SNATPoolMemberStatisticEntrySequence < IControl::Base::Sequence ; end## An alias for a sequence of SNATPool member statistics.
    class SNATPoolMemberStatisticsSequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a particular SNATPool member.
    class SNATPoolMemberStatisticEntry < IControl::Base::Struct
      # The SNATPool member definition.
      icontrol_attribute :member, String
      # The statistics for the SNATPool member.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes SNATPool member statistics and timestamp.
    class SNATPoolMemberStatistics < IControl::Base::Struct
      # The statistics for a sequence of SNATPool members.
      icontrol_attribute :statistics, IControl::LocalLB::SNATPoolMember::SNATPoolMemberStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Gets the statistics for all SNATPool members in the specified SNAT pools.
    # :method: get_all_statistics
    # :call-seq:
    # get_all_statistics(snat_pools)
    #
    # Parameters:
    # - snat_pools String[] The list of SNAT pools.

    ##
    # Gets the statistics for a list of SNATPool members in the specified SNAT pools.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(snat_pools ,members)
    #
    # Parameters:
    # - snat_pools String[] The list of SNAT pools.
    # - members String[][] The SNATPool member addresses.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Resets the statistics for a list of SNATPool members in the specified SNAT pools.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(snat_pools ,members)
    #
    # Parameters:
    # - snat_pools String[] The list of SNAT pools.
    # - members String[][] The SNATPool member addresses.


  end
end
