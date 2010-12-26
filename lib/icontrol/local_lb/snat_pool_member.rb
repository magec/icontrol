module IControl::LocalLB
  ##
  # The SNATPoolMember interface enables you to work with the SNATPool members and their settings, and statistics.
  class SNATPoolMember < IControl::Base

    set_id_name "snat_pools"

    class SNATPoolMemberStatisticEntry < IControl::Base::Struct; end
    class SNATPoolMemberStatistics < IControl::Base::Struct; end    ##
    # Gets the statistics for all SNATPool members in this SNAT pools.
    # @return [SNATPoolMemberStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the statistics for a list of SNATPool members in this SNAT pools.
    # @return [SNATPoolMemberStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :members The SNATPool member addresses.
    def statistics(opts)
      check_params(opts,[:members])
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Resets the statistics for a list of SNATPool members in this SNAT pools.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :members The SNATPool member addresses.
    def reset_statistics(opts)
      check_params(opts,[:members])
      super
    end

    ##
    # A struct that describes statistics for a particular SNATPool member.
    # @attr [String] member The SNATPool member definition.
    # @attr [IControl::Common::Statistic] statistics The statistics for the SNATPool member.
    class SNATPoolMemberStatisticEntry < IControl::Base::Struct
      icontrol_attribute :member, String
      icontrol_attribute :statistics, IControl::Common::Statistic
    end

    ##
    # A struct that describes SNATPool member statistics and timestamp.
    # @attr [IControl::LocalLB::SNATPoolMember::SNATPoolMemberStatisticEntry] statistics The statistics for a sequence of SNATPool members.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class SNATPoolMemberStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::SNATPoolMember::SNATPoolMemberStatisticEntry
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of SNATPool member statistics.
    class SNATPoolMemberStatisticEntrySequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of SNATPool member statistics.
    class SNATPoolMemberStatisticsSequence < IControl::Base::Sequence ; end
  end
end
