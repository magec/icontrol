module IControl::LocalLB
  ##
  # The SNATPoolMember interface enables you to work with the SNATPool members and their
  # settings, and statistics.
  class SNATPoolMember < IControl::Base

    set_id_name "snat_pools"

    class SNATPoolMemberStatisticEntry < IControl::Base::Struct; end
    class SNATPoolMemberStatistics < IControl::Base::Struct; end
    class SNATPoolMemberStatisticEntrySequence < IControl::Base::Sequence ; end
    class SNATPoolMemberStatisticsSequence < IControl::Base::Sequence ; end    ##
    # Gets the statistics for all SNATPool members in this SNAT pools.
    # @rspec_example
    # @return [SNATPoolMemberStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the statistics for a list of SNATPool members in this SNAT pools.
    # @rspec_example
    # @return [SNATPoolMemberStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :members The SNATPool member addresses.
    def statistics(opts)
      opts = check_params(opts,[:members])
      super(opts)
    end

    ##
    # Gets the version information for this interface.
    # @rspec_example
    # @return [String]
    def version
      super
    end

    ##
    # Resets the statistics for a list of SNATPool members in this SNAT pools.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :members The SNATPool member addresses.
    def reset_statistics(opts)
      opts = check_params(opts,[:members])
      super(opts)
    end

    ##
    # A struct that describes statistics for a particular SNATPool member.
    # @attr [String] member The SNATPool member definition.
    # @attr [IControl::Common::StatisticSequence] statistics The statistics for the SNATPool member.
    class SNATPoolMemberStatisticEntry < IControl::Base::Struct
      icontrol_attribute :member, String
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes SNATPool member statistics and timestamp.
    # @attr [IControl::LocalLB::SNATPoolMember::SNATPoolMemberStatisticEntrySequence] statistics The statistics for a sequence of SNATPool members.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class SNATPoolMemberStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::SNATPoolMember::SNATPoolMemberStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of SNATPool member statistics.
    class SNATPoolMemberStatisticEntrySequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of SNATPool member statistics.
    class SNATPoolMemberStatisticsSequence < IControl::Base::Sequence ; end
  end
end
