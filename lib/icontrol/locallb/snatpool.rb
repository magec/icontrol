module IControl::LocalLB
  ##
  # The SNATPool interface enables you to work with the definitions contained in a local
  # load balancer's SNAT pool, which is a set of translation addresses. Either a virtual
  # server, an iRule or a top-level SNAT object can reference a SNAT pool.
  class SNATPool < IControl::Base
    class SNATPoolStatisticEntry < IControl::Base::Struct; end
    class SNATPoolStatistics < IControl::Base::Struct; end    ## A sequence of SNAT pool statistics.
    class SNATPoolStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that describes statistics for a specified SNAT pool.
    class SNATPoolStatisticEntry < IControl::Base::Struct
      # The SNAT pool name.
      icontrol_attribute :snat_pool, String
      # The SNAT pool statistics.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes SNAT pool statistics and timestamp.
    class SNATPoolStatistics < IControl::Base::Struct
      # The statistics for a sequence of SNAT pools.
      icontrol_attribute :statistics, IControl::LocalLB::SNATPool::SNATPoolStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Adds members to the specified SNAT pools.
    # :method: add_member
    # :call-seq:
    # add_member(snat_pools ,members)
    #
    # Parameters:
    # - snat_pools String[] The list of SNAT pools.
    # - members String[][] The members to add to the specified SNAT pools.

    ##
    # Creates the specified SNAT pools.
    # :method: create
    # :call-seq:
    # create(snat_pools ,translation_addresses)
    #
    # Parameters:
    # - snat_pools String[] The list of SNAT pools.
    # - translation_addresses String[][] The translation addresses associated with the SNAT pools. If the referenced			 SNAT translation addresses do not exist, they are created automatically using			 the global SNAT defaults.

    ##
    # Deletes all SNAT pools.
    # :method: delete_all_snat_pools

    ##
    # Deletes a specified list of SNAT pools.
    # :method: delete_snat_pool
    # :call-seq:
    # delete_snat_pool(snat_pools)
    #
    # Parameters:
    # - snat_pools String[] The list of SNAT pools.

    ##
    # Gets the statistics for all SNAT pools.
    # :method: get_all_statistics

    ##
    # Gets a list of all SNAT pools.
    # :method: get_list

    ##
    # Gets the list of members belonging to the specified SNAT pools.
    # :method: get_member
    # :call-seq:
    # get_member(snat_pools)
    #
    # Parameters:
    # - snat_pools String[] The list of SNAT pools.

    ##
    # Gets the statistics for a list of SNAT pools.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(snat_pools)
    #
    # Parameters:
    # - snat_pools String[] The list of SNAT pools.

    ##
    # Get the version information for this interface.
    # :method: get_version

    ##
    # Removes all members from the specified SNAT pools.
    # :method: remove_all_members
    # :call-seq:
    # remove_all_members(snat_pools)
    #
    # Parameters:
    # - snat_pools String[] The list of SNAT pools.

    ##
    # Removes members from the specified SNAT pools.
    # :method: remove_member
    # :call-seq:
    # remove_member(snat_pools ,members)
    #
    # Parameters:
    # - snat_pools String[] The list of SNAT pools.
    # - members String[][] The members to remove from the specified SNAT pools.

    ##
    # Resets the statistics for a list of SNAT pools.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(snat_pools)
    #
    # Parameters:
    # - snat_pools String[] The list of SNAT pools.


  end
end
