module IControl::System
  ##
  # The Statistics interface enables you to get information on various system statistics.
  class Statistics < IControl::Base

    set_id_name "ldns_ips"

    class GlobalHostStatistics < IControl::Base::Struct; end
    class GlobalTMMStatistics < IControl::Base::Struct; end
    class GtmIQueryStatisticEntry < IControl::Base::Struct; end
    class GtmIQueryStatistics < IControl::Base::Struct; end
    class GtmLdnsStatisticEntry < IControl::Base::Struct; end
    class GtmLdnsStatistics < IControl::Base::Struct; end
    class GtmPathStatisticEntry < IControl::Base::Struct; end
    class GtmPathStatisticObjectID < IControl::Base::Struct; end
    class GtmPathStatistics < IControl::Base::Struct; end
    class HostStatisticEntry < IControl::Base::Struct; end
    class HostStatistics < IControl::Base::Struct; end
    class PVAStatisticEntry < IControl::Base::Struct; end
    class PVAStatistics < IControl::Base::Struct; end
    class PerformanceGraph < IControl::Base::Struct; end
    class PerformanceGraphDataCSV < IControl::Base::Struct; end
    class PerformanceStatisticQuery < IControl::Base::Struct; end
    class PerformanceTable < IControl::Base::Struct; end
    class PerformanceTableData < IControl::Base::Struct; end
    class SystemStatistics < IControl::Base::Struct; end
    class TMMStatisticEntry < IControl::Base::Struct; end
    class TMMStatistics < IControl::Base::Struct; end
    class VirtualCompressionStatisticEntry < IControl::Base::Struct; end
    class VirtualCompressionStatistics < IControl::Base::Struct; end
    class GtmIQueryStatisticEntrySequence < IControl::Base::Sequence ; end
    class GtmLdnsStatisticEntrySequence < IControl::Base::Sequence ; end
    class GtmPathStatisticEntrySequence < IControl::Base::Sequence ; end
    class GtmPathStatisticObjectIDSequence < IControl::Base::Sequence ; end
    class HostStatisticEntrySequence < IControl::Base::Sequence ; end
    class PVAStatisticEntrySequence < IControl::Base::Sequence ; end
    class PerformanceGraphDataCSVSequence < IControl::Base::Sequence ; end
    class PerformanceGraphSequence < IControl::Base::Sequence ; end
    class PerformanceStatisticQuerySequence < IControl::Base::Sequence ; end
    class PerformanceTableDataSequence < IControl::Base::Sequence ; end
    class PerformanceTableSequence < IControl::Base::Sequence ; end
    class TMMStatisticEntrySequence < IControl::Base::Sequence ; end
    class VirtualCompressionStatisticEntrySequence < IControl::Base::Sequence ; end
    # An enumeration of compression methods.
    class GtmIQueryState < IControl::Base::Enumeration; end
    # An enumeration of path statistic's object types.
    class GtmPathStatisticObjectType < IControl::Base::Enumeration; end    ##
    # Gets the statistics for all the iQueries.
    # @rspec_example
    # @return [GtmIQueryStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_gtm_iquery_statistics
      super
    end

    ##
    # Gets all of the system's host statistics. Note that CPU usage statistics by host
    # are available but not retrieved by this method.
    # @rspec_example
    # @return [HostStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_host_statistics
      super
    end

    ##
    # Gets all of the system's PVA statistics.
    # @rspec_example
    # @return [PVAStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_pva_statistics
      super
    end

    ##
    # Gets all of the system's TMOS processing agent statistics.
    # @rspec_example
    # @return [TMMStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_tmm_statistics
      super
    end

    ##
    # This method has been deprecated, as it represents internal, implementation-specific
    # details. Gets the statistics for all the virtual compression devices.
    # @rspec_example
    # @return [VirtualCompressionStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    def all_virtual_compression_statistics
      super
    end

    ##
    # Gets the system's global authentication statistics. These are the roll-ups of all
    # the individual authentication profiles' statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def authentication_statistics
      super
    end

    ##
    # Gets the system's global client SSL statistics. These are the roll-ups of all the
    # individual client SSL profiles' statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def client_ssl_statistics
      super
    end

    ##
    # Gets the system's global Diameter statistics. These are the roll-ups of all the individual
    # Diameter profiles' statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def diameter_statistics
      super
    end

    ##
    # Gets the system's global DNS profile statistics. These are the roll-ups of all the
    # individual DNS profiles' statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def dns_statistics
      super
    end

    ##
    # Gets the system's global Fast HTTP statistics. These are the roll-ups of all the
    # individual Fast HTTP profiles' statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def fasthttp_statistics
      super
    end

    ##
    # Gets the system's global FastL4 statistics. These are the roll-ups of all the individual
    # FastL4 profiles' statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def fastl4_statistics
      super
    end

    ##
    # Gets the system's global FTP statistics. These are the roll-ups of all the individual
    # FTP profiles' statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ftp_statistics
      super
    end

    ##
    # Gets the system's global host statistics. Note that global CPU usage statistics are
    # available but not retrieved by this method. This gets one set of combined ("rolled
    # up") statistics for all hosts. It is not to be confused with get_all_host_statistics,
    # which gets all individual host statistics, one for each host.
    # @rspec_example
    # @return [GlobalHostStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def global_host_statistics
      super
    end

    ##
    # Gets the system's global statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def global_statistics
      super
    end

    ##
    # Gets the system's global TMOS processing agent statistics. This gets one set of combined
    # ("rolled up") statistics for all TMOS processing agents. It is not to be confused
    # with get_all_tmm_statistics, which gets all individual TMOS processing agent statistics,
    # one for each TMOS processing agent.
    # @rspec_example
    # @return [GlobalTMMStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def global_tmm_statistics
      super
    end

    ##
    # Gets the GTM global statistics. These are the roll-ups of all the individual wide
    # IPs' and iQueries statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def gtm_global_statistics
      super
    end

    ##
    # Gets the statistics for this iQueries.
    # @rspec_example
    # @return [GtmIQueryStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :addresses The iQueries to get the statistics from.
    def gtm_iquery_statistics(opts)
      check_params(opts,[:addresses])
      super
    end

    ##
    # Gets the statistics for this LDNSes.
    # @rspec_example
    # @return [GtmLdnsStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def gtm_ldns_statistics
      super
    end

    ##
    # Gets the memory usage statistics used by GTM.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def gtm_memory_usage_statistics
      super
    end

    ##
    # Gets the statistics for this paths (LDNSes and links).
    # @rspec_example
    # @return [GtmPathStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::System::Statistics::GtmPathStatisticObjectID] :object_names The link or DC names to get the statistics from.
    def gtm_path_statistics(opts)
      check_params(opts,[:object_names])
      super
    end

    ##
    # Gets the system's host statistics (by host id). Note that CPU usage statistics by
    # host are available but not retrieved by this method.
    # @rspec_example
    # @return [HostStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :host_ids The host ids for which to get statistics.
    def host_statistics(opts)
      check_params(opts,[:host_ids])
      super
    end

    ##
    # Gets the system's global HTTP statistics. These are the roll-ups of all the individual
    # HTTP profiles' statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def http_statistics
      super
    end

    ##
    # Gets the system's ICMP statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def icmp_statistics
      super
    end

    ##
    # Gets the system's ICMPv6 statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def icmpv6_statistics
      super
    end

    ##
    # Gets the system's global IIOP statistics. These are the roll-ups of all the individual
    # IIOP profiles' statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def iiop_statistics
      super
    end

    ##
    # Gets the system's IP statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ip_statistics
      super
    end

    ##
    # Gets the system's IPv6 statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ipv6_statistics
      super
    end

    ##
    # Gets a list of all hosts.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list_of_hosts
      super
    end

    ##
    # Gets a list of all PVAs.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list_of_pvas
      super
    end

    ##
    # Gets a list of all TMOS processing agents.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list_of_tmms
      super
    end

    ##
    # Gets the system's global OneConnect statistics. These are the roll-ups of all the
    # individual OneConnect profiles' statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def oneconnect_statistics
      super
    end

    ##
    # Gets the statistical data in CSV format for this graphs/tables.
    # @rspec_example
    # @return [PerformanceGraphDataCSV]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::System::Statistics::PerformanceStatisticQuery] :objects The list of graphs or tables to get the statistics for.
    def performance_graph_csv_statistics(opts)
      check_params(opts,[:objects])
      super
    end

    ##
    # Gets the list of available statistical graphs as seen in the GUI's Performance Graph.
    # @rspec_example
    # @return [PerformanceGraph]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def performance_graph_list
      super
    end

    ##
    # Gets the list of available statistical tables.
    # @rspec_example
    # @return [PerformanceTable]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def performance_table_list
      super
    end

    ##
    # Gets the statistical data tables.
    # @rspec_example
    # @return [PerformanceTableData]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::System::Statistics::PerformanceStatisticQuery] :tables The list of tables to get the statistics for.
    def performance_table_statistics(opts)
      check_params(opts,[:tables])
      super
    end

    ##
    # Gets the system's PVA statistics (by PVA id).
    # @rspec_example
    # @return [PVAStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :pva_ids The PVA ids for which to get statistics.
    def pva_statistics(opts)
      check_params(opts,[:pva_ids])
      super
    end

    ##
    # Gets the system's global RADIUS statistics. These are the roll-ups of all the individual
    # RADIUS profiles' statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def radius_statistics
      super
    end

    ##
    # Gets the system's global RTSP statistics. These are the roll-ups of all the individual
    # RTSP profiles' statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def rtsp_statistics
      super
    end

    ##
    # Gets the system's global SCTP statistics. These are the roll-ups of all the individual
    # SCTP profiles' statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def sctp_statistics
      super
    end

    ##
    # Gets the system's global server SSL statistics. These are the roll-ups of all the
    # individual server SSL profiles' statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def server_ssl_statistics
      super
    end

    ##
    # Gets the system's global stream statistics. These are the roll-ups of all the individual
    # stream profiles' statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def stream_statistics
      super
    end

    ##
    # Gets the system's global TCP statistics. These are the roll-ups of all the individual
    # TCP profiles' statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def tcp_statistics
      super
    end

    ##
    # Gets the system's TMOS processing agent statistics (by TMOS processing agent id).
    # @rspec_example
    # @return [TMMStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :tmm_ids The TMOS processing agent ids for which to get statistics.
    def tmm_statistics(opts)
      check_params(opts,[:tmm_ids])
      super
    end

    ##
    # Gets the system's global UDP statistics. These are the roll-ups of all the individual
    # UDP profiles' statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def udp_statistics
      super
    end

    ##
    # Gets the version information for this interface.
    # @rspec_example
    # @return [String]
    def version
      super
    end

    ##
    # This method has been deprecated, as it represents internal, implementation-specific
    # details. Gets the statistics for this virtual compression devices.
    # @rspec_example
    # @return [VirtualCompressionStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [String] :device_names The virtual compression devices to get the statistics from.
    def virtual_compression_statistics(opts)
      check_params(opts,[:device_names])
      super
    end

    ##
    # Gets the system's global XML statistics. These are the roll-ups of all the individual
    # XML profiles' statistics.
    # @rspec_example
    # @return [SystemStatistics]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def xml_statistics
      super
    end

    ##
    # Resets all statistics in the system, including all global statistics as well as all
    # object-level statistics such as pool, virtual server statistics....
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_all_statistics
      super
    end

    ##
    # Resets the system's global authentication statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_authentication_statistics
      super
    end

    ##
    # Resets the system's global client SSL statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_client_ssl_statistics
      super
    end

    ##
    # Resets the system's global Diameter statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_diameter_statistics
      super
    end

    ##
    # Resets the system's global DNS statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_dns_statistics
      super
    end

    ##
    # Resets the system's global Fast HTTP statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_fasthttp_statistics
      super
    end

    ##
    # Resets the system's global FastL4 statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_fastl4_statistics
      super
    end

    ##
    # Resets the system's global FTP statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_ftp_statistics
      super
    end

    ##
    # Resets the system's global statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_global_statistics
      super
    end

    ##
    # Resets the GTM global statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_gtm_global_statistics
      super
    end

    ##
    # Resets the statistics for this iQueries.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :addresses The iQueries indicated by their addresses. If "addresses" list		 if empty, then all iQuery statistics regardless of address		 will be reset..
    def reset_gtm_iquery_statistics(opts)
      check_params(opts,[:addresses])
      super
    end

    ##
    # Resets the statistics for this LDNSes.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_gtm_ldns_statistics
      super
    end

    ##
    # Resets the statistics for this paths.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::System::Statistics::GtmPathStatisticObjectID] :object_names The link or DC names to reset the statistics.		 If "object_names" is empty, then statistics for all paths under		 "ldns_ips" will be reset. Note that if "ldns_ips" and "object_names"		 are both empty, then all path statistics will be reset.
    def reset_gtm_path_statistics(opts)
      check_params(opts,[:object_names])
      super
    end

    ##
    # Resets the system's global HTTP statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_http_statistics
      super
    end

    ##
    # Resets the system's ICMP statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_icmp_statistics
      super
    end

    ##
    # Resets the system's ICMPv6 statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_icmpv6_statistics
      super
    end

    ##
    # Resets the system's global IIOP statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_iiop_statistics
      super
    end

    ##
    # Resets the system's IP statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_ip_statistics
      super
    end

    ##
    # Resets the system's IPv6 statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_ipv6_statistics
      super
    end

    ##
    # Resets the system's global OneConnect statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_oneconnect_statistics
      super
    end

    ##
    # Resets the system's global RADIUS statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_radius_statistics
      super
    end

    ##
    # Resets the system's global RTSP statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_rtsp_statistics
      super
    end

    ##
    # Resets the system's global SCTP statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_sctp_statistics
      super
    end

    ##
    # Resets the system's global server SSL statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_server_ssl_statistics
      super
    end

    ##
    # Resets the system's global stream statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_stream_statistics
      super
    end

    ##
    # Resets the system's global TCP statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_tcp_statistics
      super
    end

    ##
    # Resets the system's global UDP statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_udp_statistics
      super
    end

    ##
    # This method has been deprecated, as it represents internal, implementation-specific
    # details. Resets the statistics for this virtual compression devices.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::NotImplemented] raised if the method is not supported or implemented.
    # @param [Hash] opts
    # @option opts [String] :device_names The names of the virtual compression devices. If devices_names list		 if empty, then all virtual compression statistics regardless of device		 will be reset.
    def reset_virtual_compression_statistics(opts)
      check_params(opts,[:device_names])
      super
    end

    ##
    # Resets the system's global XML statistics.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_xml_statistics
      super
    end

    ##
    # A struct that describes global host statistics. This is one set of combined ("rolled
    # up") statistics for all hosts.
    # @attr [IControl::Common::StatisticSequence] statistics The global host statistics.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class GlobalHostStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes global TMOS processing agent statistics. This is one set
    # of combined ("rolled up") statistics for all TMOS processing agents.
    # @attr [IControl::Common::StatisticSequence] statistics The global TMOS processing agent statistics.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class GlobalTMMStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes statistics for a particular iQuery.
    # @attr [String] ip_address The iQuery target IP address.
    # @attr [IControl::System::Statistics::GtmIQueryState] connection_state The connection state of this iQuery.
    # @attr [IControl::Common::StatisticSequence] statistics The statistics for the iQuery.
    class GtmIQueryStatisticEntry < IControl::Base::Struct
      icontrol_attribute :ip_address, String
      icontrol_attribute :connection_state, IControl::System::Statistics::GtmIQueryState
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes iQuery statistics and timestamp.
    # @attr [IControl::System::Statistics::GtmIQueryStatisticEntrySequence] statistics The statistics for a sequence of iQueries.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class GtmIQueryStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::System::Statistics::GtmIQueryStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes statistics for a particular LDNS.
    # @attr [String] ldns_ip The LDNS IP address.
    # @attr [Numeric] last_accessed The timestamp of last time this LDNS was accessed.
    # @attr [String] continent The continent name.
    # @attr [String] country The country name.
    # @attr [String] state The state name.
    # @attr [String] city The city name.
    # @attr [IControl::Common::StatisticSequence] statistics The statistics for the LDNS.
    class GtmLdnsStatisticEntry < IControl::Base::Struct
      icontrol_attribute :ldns_ip, String
      icontrol_attribute :last_accessed, Numeric
      icontrol_attribute :continent, String
      icontrol_attribute :country, String
      icontrol_attribute :state, String
      icontrol_attribute :city, String
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes LDNS statistics and timestamp.
    # @attr [IControl::System::Statistics::GtmLdnsStatisticEntrySequence] statistics The statistics for a sequence of LDNSes .
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class GtmLdnsStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::System::Statistics::GtmLdnsStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes statistics for a particular path.
    # @attr [String] ldns_ip The LDNS IP address.
    # @attr [IControl::System::Statistics::GtmPathStatisticObjectID] object_name The object name, either a link name or a data center
    # @attr [Numeric] last_probe_time The timestamp of last time this LDNS was probed.
    # @attr [IControl::Common::StatisticSequence] statistics The statistics for the path.
    class GtmPathStatisticEntry < IControl::Base::Struct
      icontrol_attribute :ldns_ip, String
      icontrol_attribute :object_name, IControl::System::Statistics::GtmPathStatisticObjectID
      icontrol_attribute :last_probe_time, Numeric
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes statistics for a particular path.
    # @attr [IControl::System::Statistics::GtmPathStatisticObjectType] type The object type.
    # @attr [String] name The object name.
    class GtmPathStatisticObjectID < IControl::Base::Struct
      icontrol_attribute :type, IControl::System::Statistics::GtmPathStatisticObjectType
      icontrol_attribute :name, String
    end

    ##
    # A struct that describes path statistics and timestamp.
    # @attr [IControl::System::Statistics::GtmPathStatisticEntrySequence] statistics The statistics for a sequence of paths.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class GtmPathStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::System::Statistics::GtmPathStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes statistics for a particular host.
    # @attr [String] host_id The host id.
    # @attr [IControl::Common::StatisticSequence] statistics The statistics for the host.
    class HostStatisticEntry < IControl::Base::Struct
      icontrol_attribute :host_id, String
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes host statistics and timestamp.
    # @attr [IControl::System::Statistics::HostStatisticEntrySequence] statistics The statistics for a sequence of hosts.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class HostStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::System::Statistics::HostStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes statistics for a particular PVA.
    # @attr [String] pva_id The PVA id.
    # @attr [IControl::Common::StatisticSequence] statistics The statistics for the PVA.
    class PVAStatisticEntry < IControl::Base::Struct
      icontrol_attribute :pva_id, String
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes PVA statistics and timestamp.
    # @attr [IControl::System::Statistics::PVAStatisticEntrySequence] statistics The statistics for a sequence of PVAs .
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class PVAStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::System::Statistics::PVAStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes the contents of a performance graph as seen in the Performance
    # Graph in the GUI.
    # @attr [String] graph_name The key or name of the graph.
    # @attr [String] graph_title The title of the graph as appeared in the GUI's Performance Graph.
    # @attr [String] graph_description The text description of this graph.
    class PerformanceGraph < IControl::Base::Struct
      icontrol_attribute :graph_name, String
      icontrol_attribute :graph_title, String
      icontrol_attribute :graph_description, String
    end

    ##
    # A struct that describes details of a statistical graph or table in a file, currently
    # in CSV format. During queries, if the user specifies a start_time, end_time, and
    # interval that does not exactly match the corresponding value used within the database,
    # the database will attempt to use to closest time or interval as requested. The actual
    # values used will be returned to the user in this structure.
    # @attr [String] object_name The key or name of the statistical graph/table.
    # @attr [Numeric] start_time The actual starting time (seconds since Jan 1, 1970) used to		 start retrieving data for the graph/table.
    # @attr [Numeric] end_time The actual ending time (seconds since Jan 1, 1970) used to stop		 retrieving data for the graph/table.
    # @attr [Numeric] interval The actual sampling interval in seconds used in creating the graph/table.
    # @attr [StringSequence] statistic_data The statistics for the specified graph/table in CSV format.
    class PerformanceGraphDataCSV < IControl::Base::Struct
      icontrol_attribute :object_name, String
      icontrol_attribute :start_time, Numeric
      icontrol_attribute :end_time, Numeric
      icontrol_attribute :interval, Numeric
      icontrol_attribute :statistic_data, StringSequence
    end

    ##
    # A struct that describes a query for details of a statistical graph or table. If the
    # user specifies a start_time, end_time, and interval that does not exactly match the
    # corresponding value used within the database, the database will attempt to use to
    # closest time or interval as requested. The actual values used will be returned to
    # the user on output. For querying purposes, the start_time can be specified as: 0:
    # in which case by default, it means 24 hours ago. N: where N represents the number
    # of seconds since Jan 1, 1970. -N: where -N represents the number of seconds before
    # now,	 for example: -3600 means 3600 seconds ago, or now - 3600 seconds	 For querying
    # purposes, the end_time can be specified as: 0: in which case by default, it means
    # now. N: where N represents the number of seconds since Jan 1, 1970. -N: where -N
    # represents the number of seconds before now,	 for example: -3600 means 3600 seconds
    # ago, or now - 3600 seconds
    # @attr [String] object_name The key or name of the statistical graph/table.
    # @attr [Numeric] start_time The suggested starting time to start retrieving data for the graph/table.
    # @attr [Numeric] end_time The suggested ending time to stop retrieving data for the graph/table.
    # @attr [Numeric] interval The suggested sampling interval in seconds used in creating the graph/table.
    # @attr [Numeric] maximum_rows The maximum number of rows to retrieve from the graph/table.
    class PerformanceStatisticQuery < IControl::Base::Struct
      icontrol_attribute :object_name, String
      icontrol_attribute :start_time, Numeric
      icontrol_attribute :end_time, Numeric
      icontrol_attribute :interval, Numeric
      icontrol_attribute :maximum_rows, Numeric
    end

    ##
    # A struct that describes the contents of a performance statistic table.
    # @attr [String] table_name The key or name of the table.
    # @attr [String] table_description The text description of this table.
    class PerformanceTable < IControl::Base::Struct
      icontrol_attribute :table_name, String
      icontrol_attribute :table_description, String
    end

    ##
    # A struct that describes details of a statistical table. During queries, if the user
    # specifies a start_time, end_time, and interval that does not exactly match the corresponding
    # value used within the database, the database will attempt to use to closest time
    # or interval as requested. The actual values used will be returned to the user in
    # this structure.
    # @attr [String] table_name The table name of the statistical table.
    # @attr [Numeric] start_time The actual starting time (seconds since Jan 1, 1970) used to		 start retrieving data for the graph/table.
    # @attr [Numeric] end_time The actual ending time (seconds since Jan 1, 1970) used to stop		 retrieving data for the graph/table.
    # @attr [Numeric] interval The actual sampling interval in seconds used in creating the table.
    # @attr [DoubleSequence] statistic_data The statistics for the specified table.
    class PerformanceTableData < IControl::Base::Struct
      icontrol_attribute :table_name, String
      icontrol_attribute :start_time, Numeric
      icontrol_attribute :end_time, Numeric
      icontrol_attribute :interval, Numeric
      icontrol_attribute :statistic_data, DoubleSequence
    end

    ##
    # A struct that describes some types of system statistics and timestamp.
    # @attr [IControl::Common::StatisticSequence] statistics The system statistics.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class SystemStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes statistics for a particular TMOS processing agent.
    # @attr [String] tmm_id The TMOS processing agent id.
    # @attr [IControl::Common::StatisticSequence] statistics The statistics for the TMOS processing agent.
    class TMMStatisticEntry < IControl::Base::Struct
      icontrol_attribute :tmm_id, String
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes TMOS processing agent statistics and timestamp.
    # @attr [IControl::System::Statistics::TMMStatisticEntrySequence] statistics The statistics for a sequence of TMOS processing agents.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class TMMStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::System::Statistics::TMMStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # This structure has been deprecated, as it represents internal, implementation-specific
    # details. A struct that describes statistics for a particular virtual compression
    # device.
    # @attr [String] device_name The virtual compression device name.
    # @attr [IControl::Common::StatisticSequence] statistics The statistics for the device.
    class VirtualCompressionStatisticEntry < IControl::Base::Struct
      icontrol_attribute :device_name, String
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # This structure has been deprecated, as it represents internal, implementation-specific
    # details. A struct that describes virtual compression statistics and timestamp.
    # @attr [IControl::System::Statistics::VirtualCompressionStatisticEntrySequence] statistics The statistics for a sequence of virtual compression devices.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class VirtualCompressionStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::System::Statistics::VirtualCompressionStatisticEntrySequence
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of iQuery statistics.
    class GtmIQueryStatisticEntrySequence < IControl::Base::Sequence ; end
    ## A sequence of LDNS statistics.
    class GtmLdnsStatisticEntrySequence < IControl::Base::Sequence ; end
    ## A sequence of path statistics.
    class GtmPathStatisticEntrySequence < IControl::Base::Sequence ; end
    ## A sequence of path statistics.
    class GtmPathStatisticObjectIDSequence < IControl::Base::Sequence ; end
    ## A sequence of host statistics.
    class HostStatisticEntrySequence < IControl::Base::Sequence ; end
    ## A sequence of PVA statistics.
    class PVAStatisticEntrySequence < IControl::Base::Sequence ; end
    ## A sequence of statistical data output.
    class PerformanceGraphDataCSVSequence < IControl::Base::Sequence ; end
    ## A sequence of statistical graphs.
    class PerformanceGraphSequence < IControl::Base::Sequence ; end
    ## A sequence of statistical queries.
    class PerformanceStatisticQuerySequence < IControl::Base::Sequence ; end
    ## A sequence of statistical data output.
    class PerformanceTableDataSequence < IControl::Base::Sequence ; end
    ## A sequence of statistical tables.
    class PerformanceTableSequence < IControl::Base::Sequence ; end
    ## A sequence of TMOS processing agent statistics.
    class TMMStatisticEntrySequence < IControl::Base::Sequence ; end
    ## This type has been deprecated, as it represents internal, implementation-specific details. A sequence of virtual compression statistics.
    class VirtualCompressionStatisticEntrySequence < IControl::Base::Sequence ; end
    # An enumeration of compression methods.
    class GtmIQueryState < IControl::Base::Enumeration
      # The iQuery connection is not yet established.
      IQUERY_STATE_UNCONNECTED = :IQUERY_STATE_UNCONNECTED
      # The iQuery connection is in the processing of establishing the connection.
      IQUERY_STATE_CONNECTING = :IQUERY_STATE_CONNECTING
      # The iQuery connection is fully established.
      IQUERY_STATE_CONNECTED = :IQUERY_STATE_CONNECTED
      # The iQuery connection is backlogged.
      IQUERY_STATE_BACKLOGGED = :IQUERY_STATE_BACKLOGGED
    end


    # An enumeration of path statistic's object types.
    class GtmPathStatisticObjectType < IControl::Base::Enumeration
      # The path statistics for a data center.
      GTM_PATH_STATISTIC_DATA_CENTER = :GTM_PATH_STATISTIC_DATA_CENTER
      # The path statistics for a link.
      GTM_PATH_STATISTIC_LINK = :GTM_PATH_STATISTIC_LINK
    end


  end
end
