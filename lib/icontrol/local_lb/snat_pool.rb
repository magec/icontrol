module IControl::LocalLB
  ##
  # The SNATPool interface enables you to work with the definitions contained in a local
  # load balancer's SNAT pool, which is a set of translation addresses. Either a virtual
  # server, an iRule or a top-level SNAT object can reference a SNAT pool.
  class SNATPool < IControl::Base

    set_id_name "snat_pools"

    class SNATPoolStatisticEntry < IControl::Base::Struct; end
    class SNATPoolStatistics < IControl::Base::Struct; end
    class SNATPoolStatisticEntrySequence < IControl::Base::Sequence ; end    ##
    # Adds members to this SNAT pools.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :members The members to add to the specified SNAT pools.
    def add_member(opts)
      check_params(opts,[:members])
      super
    end

    ##
    # Creates this SNAT pools.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :translation_addresses The translation addresses associated with the SNAT pools. If the referenced			 SNAT translation addresses do not exist, they are created automatically using			 the global SNAT defaults.
    def create(opts)
      check_params(opts,[:translation_addresses])
      super
    end

    ##
    # Deletes all SNAT pools.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_snat_pools
      super
    end

    ##
    # Deletes a specified list of SNAT pools.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_snat_pool
      super
    end

    ##
    # Gets the statistics for all SNAT pools.
    # @rspec_example
    # @return [SNATPoolStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets a list of all SNAT pools.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the list of members belonging to this SNAT pools.
    # @rspec_example
    # @return [String[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def member
      super
    end

    ##
    # Gets the statistics for a list of SNAT pools.
    # @rspec_example
    # @return [SNATPoolStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Get the version information for this interface.
    # @rspec_example
    # @return [String]
    def version
      super
    end

    ##
    # Removes all members from this SNAT pools.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_members
      super
    end

    ##
    # Removes members from this SNAT pools.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :members The members to remove from the specified SNAT pools.
    def remove_member(opts)
      check_params(opts,[:members])
      super
    end

    ##
    # Resets the statistics for a list of SNAT pools.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # A struct that describes statistics for a specified SNAT pool.
    # @attr [String] snat_pool The SNAT pool name.
    # @attr [IControl::Common::StatisticSequence] statistics The SNAT pool statistics.
    class SNATPoolStatisticEntry < IControl::Base::Struct
      icontrol_attribute :snat_pool, String
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes SNAT pool statistics and timestamp.
    # @attr [IControl::LocalLB::SNATPool::SNATPoolStatisticEntrySequence] statistics The statistics for a sequence of SNAT pools.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class SNATPoolStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::SNATPool::SNATPoolStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of SNAT pool statistics.
    class SNATPoolStatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
