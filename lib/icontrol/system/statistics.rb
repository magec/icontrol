module IControl::System
  ##
  # The Statistics interface enables you to get information on various system statistics.
  class Statistics < IControl::Base
    class GtmIQueryState < IControl::Base::Enumeration; end
    class GtmPathStatisticObjectType < IControl::Base::Enumeration; end
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
    class VirtualCompressionStatistics < IControl::Base::Struct; end    ## A sequence of iQuery statistics.
    class GtmIQueryStatisticEntrySequence < IControl::Base::Sequence ; end## A sequence of LDNS statistics.
    class GtmLdnsStatisticEntrySequence < IControl::Base::Sequence ; end## A sequence of path statistics.
    class GtmPathStatisticEntrySequence < IControl::Base::Sequence ; end## A sequence of path statistics.
    class GtmPathStatisticObjectIDSequence < IControl::Base::Sequence ; end## A sequence of host statistics.
    class HostStatisticEntrySequence < IControl::Base::Sequence ; end## A sequence of PVA statistics.
    class PVAStatisticEntrySequence < IControl::Base::Sequence ; end## A sequence of statistical data output.
    class PerformanceGraphDataCSVSequence < IControl::Base::Sequence ; end## A sequence of statistical graphs.
    class PerformanceGraphSequence < IControl::Base::Sequence ; end## A sequence of statistical queries.
    class PerformanceStatisticQuerySequence < IControl::Base::Sequence ; end## A sequence of statistical data output.
    class PerformanceTableDataSequence < IControl::Base::Sequence ; end## A sequence of statistical tables.
    class PerformanceTableSequence < IControl::Base::Sequence ; end## A sequence of TMOS processing agent statistics.
    class TMMStatisticEntrySequence < IControl::Base::Sequence ; end## This type has been deprecated, as it represents internal, implementation-specific details. A sequence of virtual compression statistics.
    class VirtualCompressionStatisticEntrySequence < IControl::Base::Sequence ; end##
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

    ##
    # An enumeration of path statistic's object types.
    class GtmPathStatisticObjectType < IControl::Base::Enumeration
      # The path statistics for a data center.
      GTM_PATH_STATISTIC_DATA_CENTER = :GTM_PATH_STATISTIC_DATA_CENTER
      # The path statistics for a link.
      GTM_PATH_STATISTIC_LINK = :GTM_PATH_STATISTIC_LINK
    end

    ##
    # A struct that describes global host statistics. This is one set of combined ("rolled
    # up") statistics for all hosts.
    class GlobalHostStatistics < IControl::Base::Struct
      # The global host statistics.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes global TMOS processing agent statistics. This is one set
    # of combined ("rolled up") statistics for all TMOS processing agents.
    class GlobalTMMStatistics < IControl::Base::Struct
      # The global TMOS processing agent statistics.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes statistics for a particular iQuery.
    class GtmIQueryStatisticEntry < IControl::Base::Struct
      # The iQuery target IP address.
      icontrol_attribute :ip_address, String
      # The connection state of this iQuery.
      icontrol_attribute :connection_state, IControl::System::Statistics::GtmIQueryState
      # The statistics for the iQuery.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes iQuery statistics and timestamp.
    class GtmIQueryStatistics < IControl::Base::Struct
      # The statistics for a sequence of iQueries.
      icontrol_attribute :statistics, IControl::System::Statistics::GtmIQueryStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes statistics for a particular LDNS.
    class GtmLdnsStatisticEntry < IControl::Base::Struct
      # The LDNS IP address.
      icontrol_attribute :ldns_ip, String
      # The timestamp of last time this LDNS was accessed.
      icontrol_attribute :last_accessed, Numeric
      # The continent name.
      icontrol_attribute :continent, String
      # The country name.
      icontrol_attribute :country, String
      # The state name.
      icontrol_attribute :state, String
      # The city name.
      icontrol_attribute :city, String
      # The statistics for the LDNS.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes LDNS statistics and timestamp.
    class GtmLdnsStatistics < IControl::Base::Struct
      # The statistics for a sequence of LDNSes .
      icontrol_attribute :statistics, IControl::System::Statistics::GtmLdnsStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes statistics for a particular path.
    class GtmPathStatisticEntry < IControl::Base::Struct
      # The LDNS IP address.
      icontrol_attribute :ldns_ip, String
      # The object name, either a link name or a data center
      icontrol_attribute :object_name, IControl::System::Statistics::GtmPathStatisticObjectID
      # The timestamp of last time this LDNS was probed.
      icontrol_attribute :last_probe_time, Numeric
      # The statistics for the path.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes statistics for a particular path.
    class GtmPathStatisticObjectID < IControl::Base::Struct
      # The object type.
      icontrol_attribute :type, IControl::System::Statistics::GtmPathStatisticObjectType
      # The object name.
      icontrol_attribute :name, String
    end

    ##
    # A struct that describes path statistics and timestamp.
    class GtmPathStatistics < IControl::Base::Struct
      # The statistics for a sequence of paths.
      icontrol_attribute :statistics, IControl::System::Statistics::GtmPathStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes statistics for a particular host.
    class HostStatisticEntry < IControl::Base::Struct
      # The host id.
      icontrol_attribute :host_id, String
      # The statistics for the host.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes host statistics and timestamp.
    class HostStatistics < IControl::Base::Struct
      # The statistics for a sequence of hosts.
      icontrol_attribute :statistics, IControl::System::Statistics::HostStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes statistics for a particular PVA.
    class PVAStatisticEntry < IControl::Base::Struct
      # The PVA id.
      icontrol_attribute :pva_id, String
      # The statistics for the PVA.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes PVA statistics and timestamp.
    class PVAStatistics < IControl::Base::Struct
      # The statistics for a sequence of PVAs .
      icontrol_attribute :statistics, IControl::System::Statistics::PVAStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes the contents of a performance graph as seen in the Performance
    # Graph in the GUI.
    class PerformanceGraph < IControl::Base::Struct
      # The key or name of the graph.
      icontrol_attribute :graph_name, String
      # The title of the graph as appeared in the GUI's Performance Graph.
      icontrol_attribute :graph_title, String
      # The text description of this graph.
      icontrol_attribute :graph_description, String
    end

    ##
    # A struct that describes details of a statistical graph or table in a file, currently
    # in CSV format. During queries, if the user specifies a start_time, end_time, and
    # interval that does not exactly match the corresponding value used within the database,
    # the database will attempt to use to closest time or interval as requested. The actual
    # values used will be returned to the user in this structure.
    class PerformanceGraphDataCSV < IControl::Base::Struct
      # The key or name of the statistical graph/table.
      icontrol_attribute :object_name, String
      # The actual starting time (seconds since Jan 1, 1970) used to		 start retrieving data
      # for the graph/table.
      icontrol_attribute :start_time, Numeric
      # The actual ending time (seconds since Jan 1, 1970) used to stop		 retrieving data
      # for the graph/table.
      icontrol_attribute :end_time, Numeric
      # The actual sampling interval in seconds used in creating the graph/table.
      icontrol_attribute :interval, Numeric
      # The statistics for the specified graph/table in CSV format.
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
    class PerformanceStatisticQuery < IControl::Base::Struct
      # The key or name of the statistical graph/table.
      icontrol_attribute :object_name, String
      # The suggested starting time to start retrieving data for the graph/table.
      icontrol_attribute :start_time, Numeric
      # The suggested ending time to stop retrieving data for the graph/table.
      icontrol_attribute :end_time, Numeric
      # The suggested sampling interval in seconds used in creating the graph/table.
      icontrol_attribute :interval, Numeric
      # The maximum number of rows to retrieve from the graph/table.
      icontrol_attribute :maximum_rows, Numeric
    end

    ##
    # A struct that describes the contents of a performance statistic table.
    class PerformanceTable < IControl::Base::Struct
      # The key or name of the table.
      icontrol_attribute :table_name, String
      # The text description of this table.
      icontrol_attribute :table_description, String
    end

    ##
    # A struct that describes details of a statistical table. During queries, if the user
    # specifies a start_time, end_time, and interval that does not exactly match the corresponding
    # value used within the database, the database will attempt to use to closest time
    # or interval as requested. The actual values used will be returned to the user in
    # this structure.
    class PerformanceTableData < IControl::Base::Struct
      # The table name of the statistical table.
      icontrol_attribute :table_name, String
      # The actual starting time (seconds since Jan 1, 1970) used to		 start retrieving data
      # for the graph/table.
      icontrol_attribute :start_time, Numeric
      # The actual ending time (seconds since Jan 1, 1970) used to stop		 retrieving data
      # for the graph/table.
      icontrol_attribute :end_time, Numeric
      # The actual sampling interval in seconds used in creating the table.
      icontrol_attribute :interval, Numeric
      # The statistics for the specified table.
      icontrol_attribute :statistic_data, DoubleSequence
    end

    ##
    # A struct that describes some types of system statistics and timestamp.
    class SystemStatistics < IControl::Base::Struct
      # The system statistics.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # A struct that describes statistics for a particular TMOS processing agent.
    class TMMStatisticEntry < IControl::Base::Struct
      # The TMOS processing agent id.
      icontrol_attribute :tmm_id, String
      # The statistics for the TMOS processing agent.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes TMOS processing agent statistics and timestamp.
    class TMMStatistics < IControl::Base::Struct
      # The statistics for a sequence of TMOS processing agents.
      icontrol_attribute :statistics, IControl::System::Statistics::TMMStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # This structure has been deprecated, as it represents internal, implementation-specific
    # details. A struct that describes statistics for a particular virtual compression
    # device.
    class VirtualCompressionStatisticEntry < IControl::Base::Struct
      # The virtual compression device name.
      icontrol_attribute :device_name, String
      # The statistics for the device.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # This structure has been deprecated, as it represents internal, implementation-specific
    # details. A struct that describes virtual compression statistics and timestamp.
    class VirtualCompressionStatistics < IControl::Base::Struct
      # The statistics for a sequence of virtual compression devices.
      icontrol_attribute :statistics, IControl::System::Statistics::VirtualCompressionStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Gets the statistics for all the iQueries.
    # :method: get_all_gtm_iquery_statistics

    ##
    # Gets all of the system's host statistics. Note that CPU usage statistics by host
    # are available but not retrieved by this method.
    # :method: get_all_host_statistics

    ##
    # Gets all of the system's PVA statistics.
    # :method: get_all_pva_statistics

    ##
    # Gets all of the system's TMOS processing agent statistics.
    # :method: get_all_tmm_statistics

    ##
    # This method has been deprecated, as it represents internal, implementation-specific
    # details. Gets the statistics for all the virtual compression devices.
    # :method: get_all_virtual_compression_statistics

    ##
    # Gets the system's global authentication statistics. These are the roll-ups of all
    # the individual authentication profiles' statistics.
    # :method: get_authentication_statistics

    ##
    # Gets the system's global client SSL statistics. These are the roll-ups of all the
    # individual client SSL profiles' statistics.
    # :method: get_client_ssl_statistics

    ##
    # Gets the system's global Diameter statistics. These are the roll-ups of all the individual
    # Diameter profiles' statistics.
    # :method: get_diameter_statistics

    ##
    # Gets the system's global DNS profile statistics. These are the roll-ups of all the
    # individual DNS profiles' statistics.
    # :method: get_dns_statistics

    ##
    # Gets the system's global Fast HTTP statistics. These are the roll-ups of all the
    # individual Fast HTTP profiles' statistics.
    # :method: get_fasthttp_statistics

    ##
    # Gets the system's global FastL4 statistics. These are the roll-ups of all the individual
    # FastL4 profiles' statistics.
    # :method: get_fastl4_statistics

    ##
    # Gets the system's global FTP statistics. These are the roll-ups of all the individual
    # FTP profiles' statistics.
    # :method: get_ftp_statistics

    ##
    # Gets the system's global host statistics. Note that global CPU usage statistics are
    # available but not retrieved by this method. This gets one set of combined ("rolled
    # up") statistics for all hosts. It is not to be confused with get_all_host_statistics,
    # which gets all individual host statistics, one for each host.
    # :method: get_global_host_statistics

    ##
    # Gets the system's global statistics.
    # :method: get_global_statistics

    ##
    # Gets the system's global TMOS processing agent statistics. This gets one set of combined
    # ("rolled up") statistics for all TMOS processing agents. It is not to be confused
    # with get_all_tmm_statistics, which gets all individual TMOS processing agent statistics,
    # one for each TMOS processing agent.
    # :method: get_global_tmm_statistics

    ##
    # Gets the GTM global statistics. These are the roll-ups of all the individual wide
    # IPs' and iQueries statistics.
    # :method: get_gtm_global_statistics

    ##
    # Gets the statistics for the specified iQueries.
    # :method: get_gtm_iquery_statistics
    # :call-seq:
    # get_gtm_iquery_statistics(addresses)
    #
    # Parameters:
    # - addresses String[] The iQueries to get the statistics from.

    ##
    # Gets the statistics for the specified LDNSes.
    # :method: get_gtm_ldns_statistics
    # :call-seq:
    # get_gtm_ldns_statistics(ldns_ips)
    #
    # Parameters:
    # - ldns_ips String[] The LDNS IPs to get the statistics from.

    ##
    # Gets the memory usage statistics used by GTM.
    # :method: get_gtm_memory_usage_statistics

    ##
    # Gets the statistics for the specified paths (LDNSes and links).
    # :method: get_gtm_path_statistics
    # :call-seq:
    # get_gtm_path_statistics(ldns_ips ,object_names)
    #
    # Parameters:
    # - ldns_ips String[] The LDNS IPs to get the statistics from.
    # - object_names GtmPathStatisticObjectID[] The link or DC names to get the statistics from.

    ##
    # Gets the system's host statistics (by host id). Note that CPU usage statistics by
    # host are available but not retrieved by this method.
    # :method: get_host_statistics
    # :call-seq:
    # get_host_statistics(host_ids)
    #
    # Parameters:
    # - host_ids String[] The host ids for which to get statistics.

    ##
    # Gets the system's global HTTP statistics. These are the roll-ups of all the individual
    # HTTP profiles' statistics.
    # :method: get_http_statistics

    ##
    # Gets the system's ICMP statistics.
    # :method: get_icmp_statistics

    ##
    # Gets the system's ICMPv6 statistics.
    # :method: get_icmpv6_statistics

    ##
    # Gets the system's global IIOP statistics. These are the roll-ups of all the individual
    # IIOP profiles' statistics.
    # :method: get_iiop_statistics

    ##
    # Gets the system's IP statistics.
    # :method: get_ip_statistics

    ##
    # Gets the system's IPv6 statistics.
    # :method: get_ipv6_statistics

    ##
    # Gets a list of all hosts.
    # :method: get_list_of_hosts

    ##
    # Gets a list of all PVAs.
    # :method: get_list_of_pvas

    ##
    # Gets a list of all TMOS processing agents.
    # :method: get_list_of_tmms

    ##
    # Gets the system's global OneConnect statistics. These are the roll-ups of all the
    # individual OneConnect profiles' statistics.
    # :method: get_oneconnect_statistics

    ##
    # Gets the statistical data in CSV format for the specified graphs/tables.
    # :method: get_performance_graph_csv_statistics
    # :call-seq:
    # get_performance_graph_csv_statistics(objects)
    #
    # Parameters:
    # - objects PerformanceStatisticQuery[] The list of graphs or tables to get the statistics for.

    ##
    # Gets the list of available statistical graphs as seen in the GUI's Performance Graph.
    # :method: get_performance_graph_list

    ##
    # Gets the list of available statistical tables.
    # :method: get_performance_table_list

    ##
    # Gets the statistical data tables.
    # :method: get_performance_table_statistics
    # :call-seq:
    # get_performance_table_statistics(tables)
    #
    # Parameters:
    # - tables PerformanceStatisticQuery[] The list of tables to get the statistics for.

    ##
    # Gets the system's PVA statistics (by PVA id).
    # :method: get_pva_statistics
    # :call-seq:
    # get_pva_statistics(pva_ids)
    #
    # Parameters:
    # - pva_ids String[] The PVA ids for which to get statistics.

    ##
    # Gets the system's global RADIUS statistics. These are the roll-ups of all the individual
    # RADIUS profiles' statistics.
    # :method: get_radius_statistics

    ##
    # Gets the system's global RTSP statistics. These are the roll-ups of all the individual
    # RTSP profiles' statistics.
    # :method: get_rtsp_statistics

    ##
    # Gets the system's global SCTP statistics. These are the roll-ups of all the individual
    # SCTP profiles' statistics.
    # :method: get_sctp_statistics

    ##
    # Gets the system's global server SSL statistics. These are the roll-ups of all the
    # individual server SSL profiles' statistics.
    # :method: get_server_ssl_statistics

    ##
    # Gets the system's global stream statistics. These are the roll-ups of all the individual
    # stream profiles' statistics.
    # :method: get_stream_statistics

    ##
    # Gets the system's global TCP statistics. These are the roll-ups of all the individual
    # TCP profiles' statistics.
    # :method: get_tcp_statistics

    ##
    # Gets the system's TMOS processing agent statistics (by TMOS processing agent id).
    # :method: get_tmm_statistics
    # :call-seq:
    # get_tmm_statistics(tmm_ids)
    #
    # Parameters:
    # - tmm_ids String[] The TMOS processing agent ids for which to get statistics.

    ##
    # Gets the system's global UDP statistics. These are the roll-ups of all the individual
    # UDP profiles' statistics.
    # :method: get_udp_statistics

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # This method has been deprecated, as it represents internal, implementation-specific
    # details. Gets the statistics for the specified virtual compression devices.
    # :method: get_virtual_compression_statistics
    # :call-seq:
    # get_virtual_compression_statistics(device_names)
    #
    # Parameters:
    # - device_names String[] The virtual compression devices to get the statistics from.

    ##
    # Gets the system's global XML statistics. These are the roll-ups of all the individual
    # XML profiles' statistics.
    # :method: get_xml_statistics

    ##
    # Resets all statistics in the system, including all global statistics as well as all
    # object-level statistics such as pool, virtual server statistics....
    # :method: reset_all_statistics

    ##
    # Resets the system's global authentication statistics.
    # :method: reset_authentication_statistics

    ##
    # Resets the system's global client SSL statistics.
    # :method: reset_client_ssl_statistics

    ##
    # Resets the system's global Diameter statistics.
    # :method: reset_diameter_statistics

    ##
    # Resets the system's global DNS statistics.
    # :method: reset_dns_statistics

    ##
    # Resets the system's global Fast HTTP statistics.
    # :method: reset_fasthttp_statistics

    ##
    # Resets the system's global FastL4 statistics.
    # :method: reset_fastl4_statistics

    ##
    # Resets the system's global FTP statistics.
    # :method: reset_ftp_statistics

    ##
    # Resets the system's global statistics.
    # :method: reset_global_statistics

    ##
    # Resets the GTM global statistics.
    # :method: reset_gtm_global_statistics

    ##
    # Resets the statistics for the specified iQueries.
    # :method: reset_gtm_iquery_statistics
    # :call-seq:
    # reset_gtm_iquery_statistics(addresses)
    #
    # Parameters:
    # - addresses String[] The iQueries indicated by their addresses. If "addresses" list		 if empty, then all iQuery statistics regardless of address		 will be reset..

    ##
    # Resets the statistics for the specified LDNSes.
    # :method: reset_gtm_ldns_statistics
    # :call-seq:
    # reset_gtm_ldns_statistics(ldns_ips)
    #
    # Parameters:
    # - ldns_ips String[] The LDNS IPs to reset the statistics. If "ldns_ips" is empty, then		 statistics for all LDNSes will be reset.

    ##
    # Resets the statistics for the specified paths.
    # :method: reset_gtm_path_statistics
    # :call-seq:
    # reset_gtm_path_statistics(ldns_ips ,object_names)
    #
    # Parameters:
    # - ldns_ips String[] The LDNS IPs to reset the statistics. If "ldns_ips" is empty, then		 statistics for all paths under "object_names" will be reset.
    # - object_names GtmPathStatisticObjectID[] The link or DC names to reset the statistics.		 If "object_names" is empty, then statistics for all paths under		 "ldns_ips" will be reset. Note that if "ldns_ips" and "object_names"		 are both empty, then all path statistics will be reset.

    ##
    # Resets the system's global HTTP statistics.
    # :method: reset_http_statistics

    ##
    # Resets the system's ICMP statistics.
    # :method: reset_icmp_statistics

    ##
    # Resets the system's ICMPv6 statistics.
    # :method: reset_icmpv6_statistics

    ##
    # Resets the system's global IIOP statistics.
    # :method: reset_iiop_statistics

    ##
    # Resets the system's IP statistics.
    # :method: reset_ip_statistics

    ##
    # Resets the system's IPv6 statistics.
    # :method: reset_ipv6_statistics

    ##
    # Resets the system's global OneConnect statistics.
    # :method: reset_oneconnect_statistics

    ##
    # Resets the system's global RADIUS statistics.
    # :method: reset_radius_statistics

    ##
    # Resets the system's global RTSP statistics.
    # :method: reset_rtsp_statistics

    ##
    # Resets the system's global SCTP statistics.
    # :method: reset_sctp_statistics

    ##
    # Resets the system's global server SSL statistics.
    # :method: reset_server_ssl_statistics

    ##
    # Resets the system's global stream statistics.
    # :method: reset_stream_statistics

    ##
    # Resets the system's global TCP statistics.
    # :method: reset_tcp_statistics

    ##
    # Resets the system's global UDP statistics.
    # :method: reset_udp_statistics

    ##
    # This method has been deprecated, as it represents internal, implementation-specific
    # details. Resets the statistics for the specified virtual compression devices.
    # :method: reset_virtual_compression_statistics
    # :call-seq:
    # reset_virtual_compression_statistics(device_names)
    #
    # Parameters:
    # - device_names String[] The names of the virtual compression devices. If devices_names list		 if empty, then all virtual compression statistics regardless of device		 will be reset.

    ##
    # Resets the system's global XML statistics.
    # :method: reset_xml_statistics


  end
end
