module IControl::Common
  class StatisticType
    #  	 Number of times a virtual server has been unabled to direct connection to a node.
    class STATISTIC_NO_NODE_ERRORS ; VALUE = 0; end
    #  	The minimum duration of connection.
    class STATISTIC_MINIMUM_CONNECTION_DURATION ; VALUE = 1; end
    #  	The mean duration of connection.
    class STATISTIC_MEAN_CONNECTION_DURATION ; VALUE = 2; end
    #  	The maximum duration of connection.
    class STATISTIC_MAXIMUM_CONNECTION_DURATION ; VALUE = 3; end
    #  	Total number of requests.
    class STATISTIC_TOTAL_REQUESTS ; VALUE = 4; end
    #  	Total number of connections assisted by PVA.
    class STATISTIC_TOTAL_PVA_ASSISTED_CONNECTIONS ; VALUE = 5; end
    #  	Current number of connections assisted by PVA.
    class STATISTIC_CURRENT_PVA_ASSISTED_CONNECTIONS ; VALUE = 6; end
    #  	Total number of timeout errors.
    class STATISTIC_TIMEOUTS ; VALUE = 7; end
    #  	Total number of collisions.
    class STATISTIC_COLLISIONS ; VALUE = 8; end
    #  	Total number of dropped packets on ingress.
    class STATISTIC_DROPPED_PACKETS_IN ; VALUE = 9; end
    #  	Total number of dropped packets on egress.
    class STATISTIC_DROPPED_PACKETS_OUT ; VALUE = 10; end
    #  	Total number of dropped packets.
    class STATISTIC_DROPPED_PACKETS_TOTAL ; VALUE = 11; end
    #  	Total number of errors on ingress.
    class STATISTIC_ERRORS_IN ; VALUE = 12; end
    #  	Total number of errors on egress.
    class STATISTIC_ERRORS_OUT ; VALUE = 13; end
    #  	Total CPU cycles spent in traffic management. The actual CPU cycles spent handling traffic is Total - (Idle + Sleep). These numbers are cumulative since startup. The difference over an interval should be used to get the current load.
    class STATISTIC_TM_TOTAL_CYCLES ; VALUE = 14; end
    #  	CPU cycles spent polling with no traffic. The actual CPU cycles spent handling traffic is Total - (Idle + Sleep). These numbers are cumulative since startup. The difference over an interval should be used to get the current load.
    class STATISTIC_TM_IDLE_CYCLES ; VALUE = 15; end
    #  	CPU cycles yielded to other processes (uniprocessor only). The actual CPU cycles spent handling traffic is Total - (Idle + Sleep). These numbers are cumulative since startup. The difference over an interval should be used to get the current load.
    class STATISTIC_TM_SLEEP_CYCLES ; VALUE = 16; end
    #  	Connection requests rejected because the virtual server was in maintenance mode.
    class STATISTIC_MAINTENANCE_MODE_DENIALS ; VALUE = 17; end
    #  	Connection requests rejected because they exceeded the connection limit for a virtual address.
    class STATISTIC_VIRTUAL_ADDRESS_MAXIMUM_CONNECTION_DENIALS ; VALUE = 18; end
    #  	Connection requests rejected because they exceeded the connection limit for a virtual server.
    class STATISTIC_VIRTUAL_SERVER_MAXIMUM_CONNECTION_DENIALS ; VALUE = 19; end
    #  	Packets that are not connection requests and are destined for a virtual server that has no connection for the client address.
    class STATISTIC_VIRTUAL_SERVER_NON_SYN_DENIALS ; VALUE = 20; end
    #  	Incoming packets that could not be processed by a virtual server, NAT, or SNAT.
    class STATISTIC_NO_HANDLER_DENIALS ; VALUE = 21; end
    #  	Number of dropped packets due to exceeding licensing limitations.
    class STATISTIC_LICENSE_DENIALS ; VALUE = 22; end
    #  	Connection could not be created because memory was not available.
    class STATISTIC_CONNECTION_FAILED_MEMORY_ERRORS ; VALUE = 23; end
    #  	Number of active CPUs on the system.
    class STATISTIC_ACTIVE_CPU_COUNT ; VALUE = 24; end
    # The processor mode the system is running in (0 ; VALUE = Uniprocessor, 1 = multiprocessor).; end
    class STATISTIC_MULTI_PROCESSOR_MODE ; VALUE = 25; end
    #  	Total memory available to TMM.
    class STATISTIC_MEMORY_TOTAL_BYTES ; VALUE = 26; end
    #  	Total memory in use by TMM.
    class STATISTIC_MEMORY_USED_BYTES ; VALUE = 27; end
    #  	Number of transmitted packets.
    class STATISTIC_IP_TRANSMITTED_PACKETS ; VALUE = 28; end
    #  	Number of received packets.
    class STATISTIC_IP_RECEIVED_PACKETS ; VALUE = 29; end
    #  	Number of dropped packets.
    class STATISTIC_IP_DROPPED_PACKETS ; VALUE = 30; end
    #  	Number of transmitted fragments.
    class STATISTIC_IP_TRANSMITTED_FRAGMENTS ; VALUE = 31; end
    #  	Number of dropped transmitted fragments.
    class STATISTIC_IP_DROPPED_TRANSMITTED_FRAGMENTS ; VALUE = 32; end
    #  	Number of received fragments.
    class STATISTIC_IP_RECEIVED_FRAGMENTS ; VALUE = 33; end
    #  	Number of dropped received fragments.
    class STATISTIC_IP_DROPPED_RECEIVED_FRAGMENTS ; VALUE = 34; end
    #  	Number of reassembled packets.
    class STATISTIC_IP_REASSEMBLED_PACKETS ; VALUE = 35; end
    #  	Number of invalid checksum errors.
    class STATISTIC_IP_INVALID_CHECKSUM_ERRORS ; VALUE = 36; end
    #  	Number of invalid packet length errors.
    class STATISTIC_IP_INVALID_LENGTH_ERRORS ; VALUE = 37; end
    #  	Number of memory errors.
    class STATISTIC_IP_MEMORY_ERRORS ; VALUE = 38; end
    #  	Number of retransmit errors.
    class STATISTIC_IP_RETRANSMITTED_ERRORS ; VALUE = 39; end
    #  	Number of invalid protocol errors.
    class STATISTIC_IP_INVALID_PROTOCOL_ERRORS ; VALUE = 40; end
    #  	Number of options errors.
    class STATISTIC_IP_OPTIONS_ERRORS ; VALUE = 41; end
    #  	Number of reassembly errors.
    class STATISTIC_IP_REASSEMBLED_TOO_LONG_ERRORS ; VALUE = 42; end
    #  	Number of transmitted packets in IPv6
    class STATISTIC_IPV6_TRANSMITTED_PACKETS ; VALUE = 43; end
    #  	Number of received packets in IPv6.
    class STATISTIC_IPV6_RECEIVED_PACKETS ; VALUE = 44; end
    #  	Number of dropped packets in IPv6.
    class STATISTIC_IPV6_DROPPED_PACKETS ; VALUE = 45; end
    #  	Number of transmitted fragments in IPv6.
    class STATISTIC_IPV6_TRANSMITTED_FRAGMENTS ; VALUE = 46; end
    #  	Number of dropped transmitted fragments in IPv6.
    class STATISTIC_IPV6_DROPPED_TRANSMITTED_FRAGMENTS ; VALUE = 47; end
    #  	Number of received fragments in IPv6.
    class STATISTIC_IPV6_RECEIVED_FRAGMENTS ; VALUE = 48; end
    #  	Number of dropped received fragments in IPv6.
    class STATISTIC_IPV6_DROPPED_RECEIVED_FRAGMENTS ; VALUE = 49; end
    #  	Number of reassembled packets in IPv6.
    class STATISTIC_IPV6_REASSEMBLED_PACKETS ; VALUE = 50; end
    #  	Number of invalid checksum errors in IPv6.
    class STATISTIC_IPV6_INVALID_CHECKSUM_ERRORS ; VALUE = 51; end
    #  	Number of invalid packet length errors in IPv6.
    class STATISTIC_IPV6_INVALID_LENGTH_ERRORS ; VALUE = 52; end
    #  	Number of memory errors in IPv6.
    class STATISTIC_IPV6_MEMORY_ERRORS ; VALUE = 53; end
    #  	Number of retransmit errors in IPv6.
    class STATISTIC_IPV6_RETRANSMITTED_ERRORS ; VALUE = 54; end
    #  	Number of invalid protocol errors in IPv6.
    class STATISTIC_IPV6_INVALID_PROTOCOL_ERRORS ; VALUE = 55; end
    #  	Number of options errors in IPv6.
    class STATISTIC_IPV6_OPTIONS_ERRORS ; VALUE = 56; end
    #  	Number of reassembly errors in IPv6.
    class STATISTIC_IPV6_REASSEMBLED_TOO_LONG_ERRORS ; VALUE = 57; end
    #  	Number of transmitted packets.
    class STATISTIC_ICMP_TRANSMITTED_PACKETS ; VALUE = 58; end
    #  	Number of re-transmitted packets.
    class STATISTIC_ICMP_RETRANSMITTED_PACKETS ; VALUE = 59; end
    #  	Number of received packets.
    class STATISTIC_ICMP_RECEIVED_PACKETS ; VALUE = 60; end
    #  	Number of forwarded packets.
    class STATISTIC_ICMP_FORWARDED_PACKETS ; VALUE = 61; end
    #  	Number of dropped packets.
    class STATISTIC_ICMP_DROPPED_PACKETS ; VALUE = 62; end
    #  	Number of invalid checksum errors.
    class STATISTIC_ICMP_INVALID_CHECKSUM_ERRORS ; VALUE = 63; end
    #  	Number of invalid packet length errors.
    class STATISTIC_ICMP_INVALID_LENGTH_ERRORS ; VALUE = 64; end
    #  	Number of memory errors.
    class STATISTIC_ICMP_MEMORY_ERRORS ; VALUE = 65; end
    #  	Number of retransmit errors.
    class STATISTIC_ICMP_RETRANSMITTED_ERRORS ; VALUE = 66; end
    #  	Number of invalid protocol errors.
    class STATISTIC_ICMP_INVALID_PROTOCOL_ERRORS ; VALUE = 67; end
    #  	Number of options errors.
    class STATISTIC_ICMP_OPTIONS_ERRORS ; VALUE = 68; end
    #  	Number of other types of errors.
    class STATISTIC_ICMP_OTHER_ERRORS ; VALUE = 69; end
    #  	Number of transmitted packets in ICMPv6.
    class STATISTIC_ICMPV6_TRANSMITTED_PACKETS ; VALUE = 70; end
    #  	Number of re-transmitted packets in ICMPv6.
    class STATISTIC_ICMPV6_RETRANSMITTED_PACKETS ; VALUE = 71; end
    #  	Number of received packets in ICMPv6.
    class STATISTIC_ICMPV6_RECEIVED_PACKETS ; VALUE = 72; end
    #  	Number of forwarded packets in ICMPv6.
    class STATISTIC_ICMPV6_FORWARDED_PACKETS ; VALUE = 73; end
    #  	Number of dropped packets in ICMPv6.
    class STATISTIC_ICMPV6_DROPPED_PACKETS ; VALUE = 74; end
    #  	Number of invalid checksum errors in ICMPv6.
    class STATISTIC_ICMPV6_INVALID_CHECKSUM_ERRORS ; VALUE = 75; end
    #  	Number of invalid packet length errors in ICMPv6.
    class STATISTIC_ICMPV6_INVALID_LENGTH_ERRORS ; VALUE = 76; end
    #  	Number of memory errors in ICMPv6.
    class STATISTIC_ICMPV6_MEMORY_ERRORS ; VALUE = 77; end
    #  	Number of retransmit errors in ICMPv6.
    class STATISTIC_ICMPV6_RETRANSMITTED_ERRORS ; VALUE = 78; end
    #  	Number of invalid protocol errors in ICMPv6.
    class STATISTIC_ICMPV6_INVALID_PROTOCOL_ERRORS ; VALUE = 79; end
    #  	Number of options errors in ICMPv6.
    class STATISTIC_ICMPV6_OPTIONS_ERRORS ; VALUE = 80; end
    #  	Number of other types of errors in ICMPv6.
    class STATISTIC_ICMPV6_OTHER_ERRORS ; VALUE = 81; end
    #  	Current open connections.
    class STATISTIC_UDP_OPEN_CONNECTIONS ; VALUE = 82; end
    #  	Current connections that have been accepted.
    class STATISTIC_UDP_ACCEPTED_CONNECTIONS ; VALUE = 83; end
    #  	Number of accept failures.
    class STATISTIC_UDP_ACCEPT_FAILURES ; VALUE = 84; end
    #  	Current connections that have been established, but not accepted.
    class STATISTIC_UDP_ESTABLISHED_CONNECTIONS ; VALUE = 85; end
    #  	Number of connection failures.
    class STATISTIC_UDP_CONNECTION_FAILURES ; VALUE = 86; end
    #  	Expired connections due to idle timeout.
    class STATISTIC_UDP_EXPIRED_CONNECTIONS ; VALUE = 87; end
    #  	Number of transmitted datagrams.
    class STATISTIC_UDP_TRANSMITTED_DATAGRAMS ; VALUE = 88; end
    #  	Number of received datagrams.
    class STATISTIC_UDP_RECEIVED_DATAGRAMS ; VALUE = 89; end
    #  	Number of malformed datagrams received.
    class STATISTIC_UDP_RECEIVED_MALFORMED_DATAGRAMS ; VALUE = 90; end
    #  	Number of ICMP unreachables received.
    class STATISTIC_UDP_RECEIVED_UNREACHABLE_ICMP_DATAGRAMS ; VALUE = 91; end
    #  	Number of bad checksum datagrams received.
    class STATISTIC_UDP_RECEIVED_BAD_CHECKSUM_DATAGRAMS ; VALUE = 92; end
    #  	Number of no-checksum datagrams received.
    class STATISTIC_UDP_RECEIVED_NO_CHECKSUM_DATAGRAMS ; VALUE = 93; end
    #  	Current open connections.
    class STATISTIC_TCP_OPEN_CONNECTIONS ; VALUE = 94; end
    #  	Current connections in CLOSE-WAIT/LAST-ACK state.
    class STATISTIC_TCP_CLOSE_WAIT_CONNECTIONS ; VALUE = 95; end
    #  	Current connections in FIN-WAIT/CLOSING state.
    class STATISTIC_TCP_FIN_WAIT_CONNECTIONS ; VALUE = 96; end
    #  	Current connections in TIME-WAIT state.
    class STATISTIC_TCP_TIME_WAIT_CONNECTIONS ; VALUE = 97; end
    #  	Current connections that have been accepted.
    class STATISTIC_TCP_ACCEPTED_CONNECTIONS ; VALUE = 98; end
    #  	Number of accept failures.
    class STATISTIC_TCP_ACCEPT_FAILURES ; VALUE = 99; end
    #  	Current connections that have been established, but not accepted.
    class STATISTIC_TCP_ESTABLISHED_CONNECTIONS ; VALUE = 100; end
    #  	Number of connection failures.
    class STATISTIC_TCP_CONNECTION_FAILURES ; VALUE = 101; end
    #  	Expired connections due to idle timeout.
    class STATISTIC_TCP_EXPIRED_CONNECTIONS ; VALUE = 102; end
    #  	Abandoned connections due to retries/keep-alives.
    class STATISTIC_TCP_ABANDONED_CONNECTIONS ; VALUE = 103; end
    #  	Number of RSTs received.
    class STATISTIC_TCP_RECEIVED_RESETS ; VALUE = 104; end
    #  	Number of bad checksum packets received.
    class STATISTIC_TCP_RECEIVED_BAD_CHECKSUMS ; VALUE = 105; end
    #  	Number of malformed segments received.
    class STATISTIC_TCP_RECEIVED_BAD_SEGMENTS ; VALUE = 106; end
    #  	Number of out-of-order segments received.
    class STATISTIC_TCP_RECEIVED_OUT_OF_ORDER_SEGMENTS ; VALUE = 107; end
    #  	Number of SYN cookies received.
    class STATISTIC_TCP_RECEIVED_SYN_COOKIES ; VALUE = 108; end
    #  	Number of bad SYN cookies received.
    class STATISTIC_TCP_RECEIVED_BAD_SYN_COOKIES ; VALUE = 109; end
    #  	Number of SYN cache overflows.
    class STATISTIC_TCP_SYN_CACHE_OVERFLOWS ; VALUE = 110; end
    #  	Number of retransmitted segments.
    class STATISTIC_TCP_RETRANSMITTED_SEGMENTS ; VALUE = 111; end
    #  	Total number of bytes in.
    class STATISTIC_BYTES_IN ; VALUE = 112; end
    #  	Total number of bytes out.
    class STATISTIC_BYTES_OUT ; VALUE = 113; end
    #  	Total number of packets in.
    class STATISTIC_PACKETS_IN ; VALUE = 114; end
    #  	Total number of packets out.
    class STATISTIC_PACKETS_OUT ; VALUE = 115; end
    #  	Total number of multicast packets in.
    class STATISTIC_MULTICASTS_IN ; VALUE = 116; end
    #  	Total number of multicast packets out.
    class STATISTIC_MULTICASTS_OUT ; VALUE = 117; end
    #  	Total number of bytes in through the ephemeral port.
    class STATISTIC_EPHEMERAL_BYTES_IN ; VALUE = 118; end
    #  	Total number of bytes out through the ephemeral port.
    class STATISTIC_EPHEMERAL_BYTES_OUT ; VALUE = 119; end
    #  	Total number of packets in through the ephemeral port.
    class STATISTIC_EPHEMERAL_PACKETS_IN ; VALUE = 120; end
    #  	Total number of packets out through the ephemeral port.
    class STATISTIC_EPHEMERAL_PACKETS_OUT ; VALUE = 121; end
    #  	Current number of connections through the ephemeral port.
    class STATISTIC_EPHEMERAL_CURRENT_CONNECTIONS ; VALUE = 122; end
    #  	Maximum number of connections through the ephemeral port.
    class STATISTIC_EPHEMERAL_MAXIMUM_CONNECTIONS ; VALUE = 123; end
    #  	Total number of connections through the ephemeral port.
    class STATISTIC_EPHEMERAL_TOTAL_CONNECTIONS ; VALUE = 124; end
    #  	Total number of bytes in from the client-side of the object.
    class STATISTIC_CLIENT_SIDE_BYTES_IN ; VALUE = 125; end
    #  	Total number of bytes out from the client-side of the object.
    class STATISTIC_CLIENT_SIDE_BYTES_OUT ; VALUE = 126; end
    #  	Total number of packets in from the client-side of the object.
    class STATISTIC_CLIENT_SIDE_PACKETS_IN ; VALUE = 127; end
    #  	Total number of packets out from the client-side of the object.
    class STATISTIC_CLIENT_SIDE_PACKETS_OUT ; VALUE = 128; end
    #  	Current number of connections from the client-side of the object.
    class STATISTIC_CLIENT_SIDE_CURRENT_CONNECTIONS ; VALUE = 129; end
    #  	Maximum number of connections from the client-side of the object.
    class STATISTIC_CLIENT_SIDE_MAXIMUM_CONNECTIONS ; VALUE = 130; end
    #  	Total number of connections from the client-side of the object.
    class STATISTIC_CLIENT_SIDE_TOTAL_CONNECTIONS ; VALUE = 131; end
    #  	Total number of bytes in that are handled by PVA from the client-side of the object.
    class STATISTIC_PVA_CLIENT_SIDE_BYTES_IN ; VALUE = 132; end
    #  	Total number of bytes out that are handled by PVA from the client-side of the object.
    class STATISTIC_PVA_CLIENT_SIDE_BYTES_OUT ; VALUE = 133; end
    #  	Total number of packets in that are handled by PVA from the client-side of the object.
    class STATISTIC_PVA_CLIENT_SIDE_PACKETS_IN ; VALUE = 134; end
    #  	Total number of packets out that are handled by PVA from the client-side of the object.
    class STATISTIC_PVA_CLIENT_SIDE_PACKETS_OUT ; VALUE = 135; end
    #  	Current number of connections that are handled by PVA from the client-side of the object.
    class STATISTIC_PVA_CLIENT_SIDE_CURRENT_CONNECTIONS ; VALUE = 136; end
    #  	Maximum number of connections that are handled by PVA from the client-side of the object.
    class STATISTIC_PVA_CLIENT_SIDE_MAXIMUM_CONNECTIONS ; VALUE = 137; end
    #  	Total number of connections that are handled by PVA from the client-side of the object.
    class STATISTIC_PVA_CLIENT_SIDE_TOTAL_CONNECTIONS ; VALUE = 138; end
    #  	Total number of bytes in from the server-side of the object.
    class STATISTIC_SERVER_SIDE_BYTES_IN ; VALUE = 139; end
    #  	Total number of bytes out from the server-side of the object.
    class STATISTIC_SERVER_SIDE_BYTES_OUT ; VALUE = 140; end
    #  	Total number of packets in from the server-side of the object.
    class STATISTIC_SERVER_SIDE_PACKETS_IN ; VALUE = 141; end
    #  	Total number of packets out from the server-side of the object.
    class STATISTIC_SERVER_SIDE_PACKETS_OUT ; VALUE = 142; end
    #  	Current number of connections from the server-side of the object.
    class STATISTIC_SERVER_SIDE_CURRENT_CONNECTIONS ; VALUE = 143; end
    #  	Maximum number of connections from the server-side of the object.
    class STATISTIC_SERVER_SIDE_MAXIMUM_CONNECTIONS ; VALUE = 144; end
    #  	Total number of connections from the server-side of the object.
    class STATISTIC_SERVER_SIDE_TOTAL_CONNECTIONS ; VALUE = 145; end
    #  	Total number of bytes in that are handled by PVA from the server-side of the object.
    class STATISTIC_PVA_SERVER_SIDE_BYTES_IN ; VALUE = 146; end
    #  	Total number of bytes out that are handled by PVA from the server-side of the object.
    class STATISTIC_PVA_SERVER_SIDE_BYTES_OUT ; VALUE = 147; end
    #  	Total number of packets in that are handled by PVA from the server-side of the object.
    class STATISTIC_PVA_SERVER_SIDE_PACKETS_IN ; VALUE = 148; end
    #  	Total number of packets out that are handled by PVA from the server-side of the object.
    class STATISTIC_PVA_SERVER_SIDE_PACKETS_OUT ; VALUE = 149; end
    #  	Current number of connections that are handled by PVA from the server-side of the object.
    class STATISTIC_PVA_SERVER_SIDE_CURRENT_CONNECTIONS ; VALUE = 150; end
    #  	Maximum number of connections that are handled by PVA from the server-side of the object.
    class STATISTIC_PVA_SERVER_SIDE_MAXIMUM_CONNECTIONS ; VALUE = 151; end
    #  	Total number of connections that are handled by PVA from the server-side of the object.
    class STATISTIC_PVA_SERVER_SIDE_TOTAL_CONNECTIONS ; VALUE = 152; end
    #  	The number of times packet filter is invoked.
    class STATISTIC_PACKET_FILTER_HITS ; VALUE = 153; end
    #  	The number of replace operations completed.
    class STATISTIC_STREAM_REPLACEMENTS ; VALUE = 154; end
    #  	The current number of idle connections in the pool.
    class STATISTIC_ONECONNECT_CURRENT_IDLE_CONNECTIONS ; VALUE = 155; end
    #  	The maximum number of idle connections in the pool.
    class STATISTIC_ONECONNECT_MAXIMUM_IDLE_CONNECTIONS ; VALUE = 156; end
    #  	The total number of times connections were reused from the pool.
    class STATISTIC_ONECONNECT_TOTAL_REUSES ; VALUE = 157; end
    #  	The number of times a new connection was initiated.
    class STATISTIC_ONECONNECT_NEW_CONNECTIONS ; VALUE = 158; end
    #  	Number of bytes at base rate
    class STATISTIC_RATE_CLASS_BYTES_AT_BASE_RATE ; VALUE = 159; end
    #  	Number of bytes during bursting
    class STATISTIC_RATE_CLASS_BYTES_DURING_BURST ; VALUE = 160; end
    #  	Number of bytes dropped
    class STATISTIC_RATE_CLASS_BYTES_DROPPED ; VALUE = 161; end
    #  	Number of bytes queued
    class STATISTIC_RATE_CLASS_BYTES_QUEUED ; VALUE = 162; end
    #  	Number of bytes per second over last 4 secs
    class STATISTIC_RATE_CLASS_BYTES_PER_SEC ; VALUE = 163; end
    #  	Number of rule failures.
    class STATISTIC_RULE_FAILURES ; VALUE = 164; end
    #  	Number of rule aborts due to TCL errors.
    class STATISTIC_RULE_ABORTS ; VALUE = 165; end
    #  	Number of rule event executions.
    class STATISTIC_RULE_TOTAL_EXECUTIONS ; VALUE = 166; end
    #  	The average number of cycles spent during an execution of this rule event.
    class STATISTIC_RULE_AVERAGE_CYCLES ; VALUE = 167; end
    #  	The maximum number of cycles spent during an execution of this rule event.
    class STATISTIC_RULE_MAXIMUM_CYCLES ; VALUE = 168; end
    #  	The minimum number of cycles spent during an execution of this rule event.
    class STATISTIC_RULE_MINIMUM_CYCLES ; VALUE = 169; end
    #  	Number of Set-Cookie header insertions
    class STATISTIC_HTTP_COOKIE_PERSIST_INSERTS ; VALUE = 170; end
    #  	Number of server-side responses in range of 200 to 206 (successful responses)
    class STATISTIC_HTTP_2XX_RESPONSES ; VALUE = 171; end
    #  	Number of server-side responses in range of 300 to 307 (redirection resposes)
    class STATISTIC_HTTP_3XX_RESPONSES ; VALUE = 172; end
    #  	Number of server-side responses in range of 400 to 417 (client errors)
    class STATISTIC_HTTP_4XX_RESPONSES ; VALUE = 173; end
    #  	Number of server-side responses in range of 500 to 505 (server errors)
    class STATISTIC_HTTP_5XX_RESPONSES ; VALUE = 174; end
    #  	Total number of HTTP requests
    class STATISTIC_HTTP_TOTAL_REQUESTS ; VALUE = 175; end
    #  	Total number of GET requests
    class STATISTIC_HTTP_GET_REQUESTS ; VALUE = 176; end
    #  	Total number of POST requests
    class STATISTIC_HTTP_POST_REQUESTS ; VALUE = 177; end
    #  	Total number of version 9 requests
    class STATISTIC_HTTP_V9_REQUESTS ; VALUE = 178; end
    #  	Total number of version 10 requests
    class STATISTIC_HTTP_V10_REQUESTS ; VALUE = 179; end
    #  	Total number of version 11 requests
    class STATISTIC_HTTP_V11_REQUESTS ; VALUE = 180; end
    #  	Total number of version 9 responses
    class STATISTIC_HTTP_V9_RESPONSES ; VALUE = 181; end
    #  	Total number of version 10 responses
    class STATISTIC_HTTP_V10_RESPONSES ; VALUE = 182; end
    #  	Total number of version 11 responses
    class STATISTIC_HTTP_V11_RESPONSES ; VALUE = 183; end
    #  	Maximum number of requests made in a connection
    class STATISTIC_HTTP_MAXIMUM_KEEPALIVE_REQUESTS ; VALUE = 184; end
    #  	Number of responses under 1k
    class STATISTIC_HTTP_BUCKET_1K_RESPONSES ; VALUE = 185; end
    #  	Number of responses from 1 - 4k
    class STATISTIC_HTTP_BUCKET_4K_RESPONSES ; VALUE = 186; end
    #  	Number of responses from 4 - 16k
    class STATISTIC_HTTP_BUCKET_16K_RESPONSES ; VALUE = 187; end
    #  	Number of responses from 16 - 32k
    class STATISTIC_HTTP_BUCKET_32K_RESPONSES ; VALUE = 188; end
    #  	Number of responses from 32 - 64k
    class STATISTIC_HTTP_BUCKET_64K_RESPONSES ; VALUE = 189; end
    #  	Total number of response bytes before compression has taken place
    class STATISTIC_HTTP_PRE_COMPRESSION_BYTES ; VALUE = 190; end
    #  	To number of response bytes after compression has taken place
    class STATISTIC_HTTP_POST_COMPRESSION_BYTES ; VALUE = 191; end
    #  	Number of bytes subjected to NULL compression (for license enforcement).
    class STATISTIC_HTTP_NULL_COMPRESSION_BYTES ; VALUE = 192; end
    #  	Number of response bytes before compression has taken place for MIME type HTML.
    class STATISTIC_HTTP_HTML_PRE_COMPRESSION_BYTES ; VALUE = 193; end
    #  	Number of response bytes after compression has taken place for MIME type HTML.
    class STATISTIC_HTTP_HTML_POST_COMPRESSION_BYTES ; VALUE = 194; end
    #  	Number of response bytes before compression has taken place for MIME type CSS.
    class STATISTIC_HTTP_CSS_PRE_COMPRESSION_BYTES ; VALUE = 195; end
    #  	Number of response bytes after compression has taken place for MIME type CSS.
    class STATISTIC_HTTP_CSS_POST_COMPRESSION_BYTES ; VALUE = 196; end
    #  	Number of response bytes before compression has taken place for MIME type Javascript.
    class STATISTIC_HTTP_JS_PRE_COMPRESSION_BYTES ; VALUE = 197; end
    #  	Number of response bytes after compression has taken place for MIME type Javascript.
    class STATISTIC_HTTP_JS_POST_COMPRESSION_BYTES ; VALUE = 198; end
    #  	Number of response bytes before compression has taken place for MIME type XML.
    class STATISTIC_HTTP_XML_PRE_COMPRESSION_BYTES ; VALUE = 199; end
    #  	Number of response bytes after compression has taken place for MIME type XML.
    class STATISTIC_HTTP_XML_POST_COMPRESSION_BYTES ; VALUE = 200; end
    #  	Number of response bytes before compression has taken place for MIME type SGML.
    class STATISTIC_HTTP_SGML_PRE_COMPRESSION_BYTES ; VALUE = 201; end
    #  	Number of response bytes after compression has taken place for MIME type SGML.
    class STATISTIC_HTTP_SGML_POST_COMPRESSION_BYTES ; VALUE = 202; end
    #  	Number of response bytes before compression has taken place for MIME type Plain text.
    class STATISTIC_HTTP_PLAIN_PRE_COMPRESSION_BYTES ; VALUE = 203; end
    #  	Number of response bytes after compression has taken place for MIME type Plain text.
    class STATISTIC_HTTP_PLAIN_POST_COMPRESSION_BYTES ; VALUE = 204; end
    #  	Number of response bytes before compression has taken place for MIME type Octet.
    class STATISTIC_HTTP_OCTET_PRE_COMPRESSION_BYTES ; VALUE = 205; end
    #  	Number of response bytes after compression has taken place for MIME type Octet.
    class STATISTIC_HTTP_OCTET_POST_COMPRESSION_BYTES ; VALUE = 206; end
    #  	Number of response bytes before compression has taken place for MIME type Image.
    class STATISTIC_HTTP_IMAGE_PRE_COMPRESSION_BYTES ; VALUE = 207; end
    #  	Number of response bytes after compression has taken place for MIME type Image.
    class STATISTIC_HTTP_IMAGE_POST_COMPRESSION_BYTES ; VALUE = 208; end
    #  	Number of response bytes before compression has taken place for MIME type Video.
    class STATISTIC_HTTP_VIDEO_PRE_COMPRESSION_BYTES ; VALUE = 209; end
    #  	Number of response bytes after compression has taken place for MIME type Video.
    class STATISTIC_HTTP_VIDEO_POST_COMPRESSION_BYTES ; VALUE = 210; end
    #  	Number of response bytes before compression has taken place for MIME type Audio.
    class STATISTIC_HTTP_AUDIO_PRE_COMPRESSION_BYTES ; VALUE = 211; end
    #  	Number of response bytes after compression has taken place for MIME type Audio.
    class STATISTIC_HTTP_AUDIO_POST_COMPRESSION_BYTES ; VALUE = 212; end
    #  	Number of response bytes before compression has taken place for all other MIME types.
    class STATISTIC_HTTP_OTHER_PRE_COMPRESSION_BYTES ; VALUE = 213; end
    #  	Number of response bytes after compression has taken place for all other MIME types.
    class STATISTIC_HTTP_OTHER_POST_COMPRESSION_BYTES ; VALUE = 214; end
    #  	Current entries in the SSL cache.
    class STATISTIC_SSL_CACHE_CURRENT_ENTRIES ; VALUE = 215; end
    #  	Maximum entries in the SSL cache.
    class STATISTIC_SSL_CACHE_MAXIMUM_ENTRIES ; VALUE = 216; end
    #  	Number of SSL cache overflows.
    class STATISTIC_SSL_CACHE_OVERFLOWS ; VALUE = 217; end
    #  	Anonymous Diffie-Hellman.
    class STATISTIC_SSL_CIPHER_ADH_KEY_EXCHANGE ; VALUE = 218; end
    #  	Deprecated in 9.2.0 - Diffie-Hellman w/ DSS certificate.
    class STATISTIC_SSL_CIPHER_DH_DSS_KEY_EXCHANGE ; VALUE = 219; end
    #  	Diffie-Hellman w/ RSA certificate.
    class STATISTIC_SSL_CIPHER_DH_RSA_KEY_EXCHANGE ; VALUE = 220; end
    #  	Deprecated in 9.2.0 - DSS certificate.
    class STATISTIC_SSL_CIPHER_DSS_KEY_EXCHANGE ; VALUE = 221; end
    #  	Deprecated in 9.2.0 - Ephemeral Diffie-Hellman w/ DSS cert.
    class STATISTIC_SSL_CIPHER_EDH_DSS_KEY_EXCHANGE ; VALUE = 222; end
    #  	Ephemeral Diffie-Hellman w/ RSA cert.
    class STATISTIC_SSL_CIPHER_EDH_RSA_KEY_EXCHANGE ; VALUE = 223; end
    #  	RSA certificate.
    class STATISTIC_SSL_CIPHER_RSA_KEY_EXCHANGE ; VALUE = 224; end
    #  	No encryption.
    class STATISTIC_SSL_CIPHER_NULL_BULK ; VALUE = 225; end
    #  	Advances Encryption Standard (CBC).
    class STATISTIC_SSL_CIPHER_AES_BULK ; VALUE = 226; end
    #  	Digital Encryption Standard (CBC).
    class STATISTIC_SSL_CIPHER_DES_BULK ; VALUE = 227; end
    #  	IDEA (old SSLv2 cipher).
    class STATISTIC_SSL_CIPHER_IDEA_BULK ; VALUE = 228; end
    #  	Rivest Cipher 2.
    class STATISTIC_SSL_CIPHER_RC2_BULK ; VALUE = 229; end
    #  	Rivest Cipher 4.
    class STATISTIC_SSL_CIPHER_RC4_BULK ; VALUE = 230; end
    #  	No message authentication.
    class STATISTIC_SSL_CIPHER_NULL_DIGEST ; VALUE = 231; end
    #  	Message Digest 5.
    class STATISTIC_SSL_CIPHER_MD5_DIGEST ; VALUE = 232; end
    #  	Secure Hash Algorithm.
    class STATISTIC_SSL_CIPHER_SHA_DIGEST ; VALUE = 233; end
    #  	Total connections for SSLv2 protocol.
    class STATISTIC_SSL_PROTOCOL_SSLV2 ; VALUE = 234; end
    #  	Total connections for SSLv3 protocol.
    class STATISTIC_SSL_PROTOCOL_SSLV3 ; VALUE = 235; end
    #  	Total connections for TLSv1 protocol.
    class STATISTIC_SSL_PROTOCOL_TLSV1 ; VALUE = 236; end
    #  	Currently open connections.
    class STATISTIC_SSL_COMMON_CURRENT_CONNECTIONS ; VALUE = 237; end
    #  	Maximum simultaneous connections.
    class STATISTIC_SSL_COMMON_MAXIMUM_CONNECTIONS ; VALUE = 238; end
    #  	Currently open native connections.
    class STATISTIC_SSL_COMMON_CURRENT_NATIVE_CONNECTIONS ; VALUE = 239; end
    #  	Maximum simultaneous native connections.
    class STATISTIC_SSL_COMMON_MAXIMUM_NATIVE_CONNECTIONS ; VALUE = 240; end
    #  	Total native connections.
    class STATISTIC_SSL_COMMON_TOTAL_NATIVE_CONNECTIONS ; VALUE = 241; end
    #  	Currently open compatible-mode connections.
    class STATISTIC_SSL_COMMON_CURRENT_COMPATIBLE_MODE_CONNECTIONS ; VALUE = 242; end
    #  	Maximum simultaneous compatible-mode connections.
    class STATISTIC_SSL_COMMON_MAXIMUM_COMPATIBLE_MODE_CONNECTIONS ; VALUE = 243; end
    #  	Total compatible-mode connections.
    class STATISTIC_SSL_COMMON_TOTAL_COMPATIBLE_MODE_CONNECTIONS ; VALUE = 244; end
    #  	Total encrypted bytes received.
    class STATISTIC_SSL_COMMON_ENCRYPTED_BYTES_IN ; VALUE = 245; end
    #  	Total encrypted bytes sent.
    class STATISTIC_SSL_COMMON_ENCRYPTED_BYTES_OUT ; VALUE = 246; end
    #  	Total decrypted bytes received.
    class STATISTIC_SSL_COMMON_DECRYPTED_BYTES_IN ; VALUE = 247; end
    #  	Total decrypted bytes sent.
    class STATISTIC_SSL_COMMON_DECRYPTED_BYTES_OUT ; VALUE = 248; end
    #  	Total records received.
    class STATISTIC_SSL_COMMON_RECORDS_IN ; VALUE = 249; end
    #  	Total records transmitted.
    class STATISTIC_SSL_COMMON_RECORDS_OUT ; VALUE = 250; end
    #  	Total offloaded connections.
    class STATISTIC_SSL_COMMON_FULLY_HW_ACCELERATED_CONNECTIONS ; VALUE = 251; end
    #  	Total assisted connections.
    class STATISTIC_SSL_COMMON_PARTIALLY_HW_ACCELERATED_CONNECTIONS ; VALUE = 252; end
    #  	Total software connections.
    class STATISTIC_SSL_COMMON_NON_HW_ACCELERATED_CONNECTIONS ; VALUE = 253; end
    #  	Total unclean shutdowns.
    class STATISTIC_SSL_COMMON_PREMATURE_DISCONNECTS ; VALUE = 254; end
    #  	Total mid-connection handshakes.
    class STATISTIC_SSL_COMMON_MIDSTREAM_RENEGOTIATIONS ; VALUE = 255; end
    #  	Current entries in this cache.
    class STATISTIC_SSL_COMMON_SESSION_CACHE_CURRENT_ENTRIES ; VALUE = 256; end
    #  	Total cache hits.
    class STATISTIC_SSL_COMMON_SESSION_CACHE_HITS ; VALUE = 257; end
    #  	Total cache lookups.
    class STATISTIC_SSL_COMMON_SESSION_CACHE_LOOKUPS ; VALUE = 258; end
    #  	Total cache overflows.
    class STATISTIC_SSL_COMMON_SESSION_CACHE_OVERFLOWS ; VALUE = 259; end
    #  	Total session invalidations.
    class STATISTIC_SSL_COMMON_SESSION_CACHE_INVALIDATIONS ; VALUE = 260; end
    #  	Total valid certificates.
    class STATISTIC_SSL_COMMON_VALID_PEER_CERTIFICATES ; VALUE = 261; end
    #  	Total invalid certificates.
    class STATISTIC_SSL_COMMON_INVALID_PEER_CERTIFICATES ; VALUE = 262; end
    #  	Total connections without certificates.
    class STATISTIC_SSL_COMMON_NO_PEER_CERTIFICATES ; VALUE = 263; end
    #  	Total handshake failures.
    class STATISTIC_SSL_COMMON_HANDSHAKE_FAILURES ; VALUE = 264; end
    #  	Total bad records.
    class STATISTIC_SSL_COMMON_BAD_RECORDS ; VALUE = 265; end
    #  	Total fatal alerts.
    class STATISTIC_SSL_COMMON_FATAL_ALERTS ; VALUE = 266; end
    #  	Cumulative number of auth sessions.
    class STATISTIC_AUTH_TOTAL_SESSIONS ; VALUE = 267; end
    #  	Current number of auth sessions
    class STATISTIC_AUTH_CURRENT_SESSIONS ; VALUE = 268; end
    #  	Maximum number of concurrent auth sessions
    class STATISTIC_AUTH_MAXIMUM_SESSIONS ; VALUE = 269; end
    #  	Number of auth 'success' results
    class STATISTIC_AUTH_SUCCESS_RESULTS ; VALUE = 270; end
    #  	Number of auth 'failure' results
    class STATISTIC_AUTH_FAILURE_RESULTS ; VALUE = 271; end
    #  	Number of auth 'wantcredential' results
    class STATISTIC_AUTH_WANT_CREDENTIAL_RESULTS ; VALUE = 272; end
    #  	Number of auth 'error' results
    class STATISTIC_AUTH_ERROR_RESULTS ; VALUE = 273; end
    #  	Number of XML errors
    class STATISTIC_XML_TOTAL_ERRORS ; VALUE = 274; end
    #  	Total number of client SYN cookies generated.
    class STATISTIC_FAST_HTTP_CLIENT_SYN_COOKIES ; VALUE = 275; end
    #  	Total number of client TCP accepts.
    class STATISTIC_FAST_HTTP_CLIENT_ACCEPTS ; VALUE = 276; end
    #  	Total number of server TCP connects.
    class STATISTIC_FAST_HTTP_SERVER_CONNECTS ; VALUE = 277; end
    #  	Number of available serverside flows in the reuse pool.
    class STATISTIC_FAST_HTTP_CONNECTION_POOL_CURRENT_SIZE ; VALUE = 278; end
    #  	Maximum number of available serverside flows in the reuse pool.
    class STATISTIC_FAST_HTTP_CONNECTION_POOL_MAXIMUM_SIZE ; VALUE = 279; end
    #  	Number of times a serverside flow was reused from the pool.
    class STATISTIC_FAST_HTTP_CONNECTION_POOL_REUSES ; VALUE = 280; end
    #  	Number of times the reuse pool was exhausted.
    class STATISTIC_FAST_HTTP_CONNECTION_POOL_EXHAUSTED ; VALUE = 281; end
    #  	Total number of HTTP requests.
    class STATISTIC_FAST_HTTP_TOTAL_REQUESTS ; VALUE = 282; end
    #  	Total number of unbuffered requests.
    class STATISTIC_FAST_HTTP_UNBUFFERED_REQUESTS ; VALUE = 283; end
    #  	Total number of GET requests.
    class STATISTIC_FAST_HTTP_GET_REQUESTS ; VALUE = 284; end
    #  	Total number of POST requests.
    class STATISTIC_FAST_HTTP_POST_REQUESTS ; VALUE = 285; end
    #  	Total number of version 9 requests.
    class STATISTIC_FAST_HTTP_V9_REQUESTS ; VALUE = 286; end
    #  	Total number of version 10 requests.
    class STATISTIC_FAST_HTTP_V10_REQUESTS ; VALUE = 287; end
    #  	Total number of version 11 requests.
    class STATISTIC_FAST_HTTP_V11_REQUESTS ; VALUE = 288; end
    #  	Number of server-side responses in range of 200 to 206 (successful responses)
    class STATISTIC_FAST_HTTP_2XX_RESPONSES ; VALUE = 289; end
    #  	Number of server-side responses in range of 300 to 307 (redirection resposes)
    class STATISTIC_FAST_HTTP_3XX_RESPONSES ; VALUE = 290; end
    #  	Number of server-side responses in range of 400 to 417 (client errors)
    class STATISTIC_FAST_HTTP_4XX_RESPONSES ; VALUE = 291; end
    #  	Number of server-side responses in range of 500 to 505 (server errors)
    class STATISTIC_FAST_HTTP_5XX_RESPONSES ; VALUE = 292; end
    #  	Number of request parse errors.
    class STATISTIC_FAST_HTTP_REQUEST_PARSE_ERRORS ; VALUE = 293; end
    #  	Number of response parse errors.
    class STATISTIC_FAST_HTTP_RESPONSE_PARSE_ERRORS ; VALUE = 294; end
    #  	Number of bad clientside TCP segments dropped.
    class STATISTIC_FAST_HTTP_CLIENTSIDE_BAD_SEGMENTS ; VALUE = 295; end
    #  	Number of bad serverside TCP segments dropped.
    class STATISTIC_FAST_HTTP_SERVERSIDE_BAD_SEGMENTS ; VALUE = 296; end
    #  	Number of pipelined HTTP requests detected.
    class STATISTIC_FAST_HTTP_PIPELINED_REQUESTS ; VALUE = 297; end
    #  	Total bad client greetings.
    class STATISTIC_SSL_COMMON_NOT_SSL_HANDSHAKE_FAILURES ; VALUE = 298; end
    #  	RAM Cache hit count.
    class STATISTIC_HTTP_RAM_CACHE_HITS ; VALUE = 299; end
    #  	RAM Cache miss count, excluding uncacheable data.
    class STATISTIC_HTTP_RAM_CACHE_MISSES ; VALUE = 300; end
    #  	Total RAM Cache miss count.
    class STATISTIC_HTTP_RAM_CACHE_TOTAL_MISSES ; VALUE = 301; end
    #  	RAM Cache hit bytes.
    class STATISTIC_HTTP_RAM_CACHE_HIT_BYTES ; VALUE = 302; end
    #  	RAM Cache miss bytes, excluding uncacheable data.
    class STATISTIC_HTTP_RAM_CACHE_MISS_BYTES ; VALUE = 303; end
    #  	Total RAM Cache miss bytes.
    class STATISTIC_HTTP_RAM_CACHE_TOTAL_MISS_BYTES ; VALUE = 304; end
    #  	RAM Cache size.
    class STATISTIC_HTTP_RAM_CACHE_SIZE ; VALUE = 305; end
    #  	RAM Cache count.
    class STATISTIC_HTTP_RAM_CACHE_COUNT ; VALUE = 306; end
    #  	RAM Cache evictions.
    class STATISTIC_HTTP_RAM_CACHE_EVICTIONS ; VALUE = 307; end
    #  	Total bytes waiting for virtual compression (deprecated 9.4.0).
    class STATISTIC_VCOMPRESSION_QUEUED_BYTES ; VALUE = 308; end
    #  	Total bytes pre-compression (deprecated 9.4.0).
    class STATISTIC_VCOMPRESSION_PRE_COMPRESSION_BYTES ; VALUE = 309; end
    #  	Total bytes post-compression (deprecated 9.4.0).
    class STATISTIC_VCOMPRESSION_POST_COMPRESSION_BYTES ; VALUE = 310; end
    #  	Total number of streams (deprecated 9.4.0).
    class STATISTIC_VCOMPRESSION_TOTAL_STREAMS ; VALUE = 311; end
    #  	Current number of streams (deprecated 9.4.0).
    class STATISTIC_VCOMPRESSION_CURRENT_STREAMS ; VALUE = 312; end
    #  	Total IIOP requests.
    class STATISTIC_IIOP_TOTAL_REQUESTS ; VALUE = 313; end
    #  	Total IIOP responses.
    class STATISTIC_IIOP_TOTAL_RESPONSES ; VALUE = 314; end
    #  	Total IIOP connection cancels.
    class STATISTIC_IIOP_TOTAL_CANCELS ; VALUE = 315; end
    #  	Total IIOP errors.
    class STATISTIC_IIOP_TOTAL_ERRORS ; VALUE = 316; end
    #  	Total IIOP fragments.
    class STATISTIC_IIOP_TOTAL_FRAGMENTS ; VALUE = 317; end
    #  	Total RTSP requests.
    class STATISTIC_RTSP_TOTAL_REQUESTS ; VALUE = 318; end
    #  	Total RTSP responses.
    class STATISTIC_RTSP_TOTAL_RESPONSES ; VALUE = 319; end
    #  	Total RTSP errors.
    class STATISTIC_RTSP_TOTAL_ERRORS ; VALUE = 320; end
    #  	Total RTSP interleaved data packets.
    class STATISTIC_RTSP_TOTAL_INTERLEAVED_DATA ; VALUE = 321; end
    #  	CPU usage (in percentage) for the GTM object.
    class STATISTIC_GTM_METRICS_CPU_USAGE ; VALUE = 322; end
    #  	Memory available (in bytes) for the GTM object.
    class STATISTIC_GTM_METRICS_MEMORY_AVAILABLE ; VALUE = 323; end
    #  	Inbound bits/sec for the GTM object.
    class STATISTIC_GTM_METRICS_BITS_PER_SECOND_IN ; VALUE = 324; end
    #  	Outbound bits/sec for the GTM object.
    class STATISTIC_GTM_METRICS_BITS_PER_SECOND_OUT ; VALUE = 325; end
    #  	Inbound packets/sec for the GTM object.
    class STATISTIC_GTM_METRICS_PACKETS_PER_SECOND_IN ; VALUE = 326; end
    #  	Outbound packets/sec for the GTM object.
    class STATISTIC_GTM_METRICS_PACKETS_PER_SECOND_OUT ; VALUE = 327; end
    #  	Total connections for the GTM object.
    class STATISTIC_GTM_METRICS_TOTAL_CONNECTIONS ; VALUE = 328; end
    #  	Connection rate for the GTM object.
    class STATISTIC_GTM_METRICS_TOTAL_CONNECTION_RATE ; VALUE = 329; end
    #  	Total bit rate through link.
    class STATISTIC_GTM_LINK_TOTAL_BIT_RATE ; VALUE = 330; end
    #  	Total gateway bit rate.
    class STATISTIC_GTM_LINK_TOTAL_GATEWAY_BIT_RATE ; VALUE = 331; end
    #  	Inbound gateway bit rate.
    class STATISTIC_GTM_LINK_INBOUND_GATEWAY_BIT_RATE ; VALUE = 332; end
    #  	Outbound gateway bit rate.
    class STATISTIC_GTM_LINK_OUTBOUND_GATEWAY_BIT_RATE ; VALUE = 333; end
    #  	Sum of link VS bit rates.
    class STATISTIC_GTM_LINK_TOTAL_VS_BIT_RATE ; VALUE = 334; end
    #  	Sum of inbound link VS bit rates.
    class STATISTIC_GTM_LINK_INBOUND_VS_BIT_RATE ; VALUE = 335; end
    #  	Sum of outbound link VS bit rates.
    class STATISTIC_GTM_LINK_OUTBOUND_VS_BIT_RATE ; VALUE = 336; end
    #  	Total inbound rate calculation for link.
    class STATISTIC_GTM_LINK_TOTAL_INBOUND_BIT_RATE ; VALUE = 337; end
    #  	Total outbound rate calculation for link.
    class STATISTIC_GTM_LINK_TOTAL_OUTBOUND_BIT_RATE ; VALUE = 338; end
    #  	This is used to set dynamic ratios on the outbound gateway pool members. This controls the outbound connections.
    class STATISTIC_GTM_LINK_LCS_OUT ; VALUE = 339; end
    #  	This is used to control inbound connections which are load-balanced through external virtual servers which are controlled by gtmd.
    class STATISTIC_GTM_LINK_LCS_IN ; VALUE = 340; end
    #  	Number of times the preferred LB method was used.
    class STATISTIC_GTM_POOL_PREFERRED_LB_METHODS ; VALUE = 341; end
    #  	Number of times the alternate LB method was used.
    class STATISTIC_GTM_POOL_ALTERNATE_LB_METHODS ; VALUE = 342; end
    #  	Number of times the fallback LB method was used.
    class STATISTIC_GTM_POOL_FALLBACK_LB_METHODS ; VALUE = 343; end
    #  	Number of dropped connections.
    class STATISTIC_GTM_POOL_DROPPED_CONNECTIONS ; VALUE = 344; end
    #  	Number of times this pool defaulted back to an explicit IP address.
    class STATISTIC_GTM_POOL_EXPLICIT_IP ; VALUE = 345; end
    #  	Number of times the LB method chosen was LB_METHOD_RETURN_TO_DNS, i.e. we don't choose a pool, let DNS resolve the name.
    class STATISTIC_GTM_POOL_RETURN_TO_DNS ; VALUE = 346; end
    #  	Number of times the preferred LB method was used.
    class STATISTIC_GTM_POOL_MEMBER_PREFERRED_LB_METHODS ; VALUE = 347; end
    #  	Number of times the alternate LB method was used.
    class STATISTIC_GTM_POOL_MEMBER_ALTERNATE_LB_METHODS ; VALUE = 348; end
    #  	Number of times the fallback LB method was used.
    class STATISTIC_GTM_POOL_MEMBER_FALLBACK_LB_METHODS ; VALUE = 349; end
    #  	The sum of all the "picked" VSes used by this server.
    class STATISTIC_GTM_SERVER_VS_PICKS ; VALUE = 350; end
    #  	Number of times this virtual server was selected by the LB logic.
    class STATISTIC_GTM_VIRTUAL_SERVER_PICKS ; VALUE = 351; end
    #  	Number of requests for resolution of this wide IP.
    class STATISTIC_GTM_WIDEIP_REQUESTS ; VALUE = 352; end
    #  	Number of times this wide IP was resolved successfully.
    class STATISTIC_GTM_WIDEIP_RESOLUTIONS ; VALUE = 353; end
    #  	Number of times this wide IP was resolved as a persistent connection.
    class STATISTIC_GTM_WIDEIP_PERSISTED ; VALUE = 354; end
    #  	Number of times the preferred LB method was used on this wide IP.
    class STATISTIC_GTM_WIDEIP_PREFERRED_LB_METHODS ; VALUE = 355; end
    #  	Number of times the alternate LB method was used on this wide IP.
    class STATISTIC_GTM_WIDEIP_ALTERNATE_LB_METHODS ; VALUE = 356; end
    #  	Number of times the fallback LB method was used on this wide IP.
    class STATISTIC_GTM_WIDEIP_FALLBACK_LB_METHODS ; VALUE = 357; end
    #  	Number of times requests for this wide IP were dropped.
    class STATISTIC_GTM_WIDEIP_DROPPED_CONNECTIONS ; VALUE = 358; end
    #  	Number of times this wide IP defaulted back to an explicit IP.
    class STATISTIC_GTM_WIDEIP_EXPLICIT_IP ; VALUE = 359; end
    #  	Number of times the LB method chosen was LB_METHOD_RETURN_TO_DNS, i.e. we don't choose a wide IP, let DNS resolve the name.
    class STATISTIC_GTM_WIDEIP_RETURN_TO_DNS ; VALUE = 360; end
    #  	Total memory available to GTM.
    class STATISTIC_GTM_MEMORY_TOTAL_BYTES ; VALUE = 361; end
    #  	Total memory in use by GTM.
    class STATISTIC_GTM_MEMORY_USED_BYTES ; VALUE = 362; end
    #  	Number of times an iQuery connection was closed and reopened.
    class STATISTIC_GTM_IQUERY_RECONNECTS ; VALUE = 363; end
    #  	Number of bytes received on this iQuery connections.
    class STATISTIC_GTM_IQUERY_RECEIVED_BYTES ; VALUE = 364; end
    #  	Number of bytes sent on this iQuery connections.
    class STATISTIC_GTM_IQUERY_SENT_BYTES ; VALUE = 365; end
    #  	Number of times a send was backlogged.
    class STATISTIC_GTM_BACKLOGGED_SENDS ; VALUE = 366; end
    #  	Number of bytes dropped due to backlogged or unconnected.
    class STATISTIC_GTM_DROPPED_BYTES ; VALUE = 367; end
    #  	The current (most recent) RTT for this path.
    class STATISTIC_GTM_PATH_CURRENT_RTT ; VALUE = 368; end
    #  	The average RTT for this path
    class STATISTIC_GTM_PATH_AVERAGE_RTT ; VALUE = 369; end
    #  	Number of hops most recently used for this path.
    class STATISTIC_GTM_PATH_CURRENT_HOPS ; VALUE = 370; end
    #  	Average number of hops used for this path.
    class STATISTIC_GTM_PATH_AVERAGE_HOPS ; VALUE = 371; end
    #  	Current "hit ratio" for this path.
    class STATISTIC_GTM_PATH_CURRENT_COMPENSATION_RATE ; VALUE = 372; end
    #  	Average "hit ratio" for this path.
    class STATISTIC_GTM_PATH_AVERAGE_COMPENSATION_RATE ; VALUE = 373; end
    #  	Number of times a request has been received from this LDNS.
    class STATISTIC_GTM_LDNS_REQUESTS ; VALUE = 374; end
    #  	Number of Set-Cookie header insertions
    class STATISTIC_HTTPCLASS_COOKIE_PERSIST_INSERTS ; VALUE = 375; end
    #  	Number of server-side responses in range of 200 to 206 (successful responses)
    class STATISTIC_HTTPCLASS_2XX_RESPONSES ; VALUE = 376; end
    #  	Number of server-side responses in range of 300 to 307 (redirection resposes)
    class STATISTIC_HTTPCLASS_3XX_RESPONSES ; VALUE = 377; end
    #  	Number of server-side responses in range of 400 to 417 (client errors)
    class STATISTIC_HTTPCLASS_4XX_RESPONSES ; VALUE = 378; end
    #  	Number of server-side responses in range of 500 to 505 (server errors)
    class STATISTIC_HTTPCLASS_5XX_RESPONSES ; VALUE = 379; end
    #  	Total number of HTTPCLASS requests
    class STATISTIC_HTTPCLASS_TOTAL_REQUESTS ; VALUE = 380; end
    #  	Total number of GET requests
    class STATISTIC_HTTPCLASS_GET_REQUESTS ; VALUE = 381; end
    #  	Total number of POST requests
    class STATISTIC_HTTPCLASS_POST_REQUESTS ; VALUE = 382; end
    #  	Total number of version 9 requests
    class STATISTIC_HTTPCLASS_V9_REQUESTS ; VALUE = 383; end
    #  	Total number of version 10 requests
    class STATISTIC_HTTPCLASS_V10_REQUESTS ; VALUE = 384; end
    #  	Total number of version 11 requests
    class STATISTIC_HTTPCLASS_V11_REQUESTS ; VALUE = 385; end
    #  	Total number of version 9 responses
    class STATISTIC_HTTPCLASS_V9_RESPONSES ; VALUE = 386; end
    #  	Total number of version 10 responses
    class STATISTIC_HTTPCLASS_V10_RESPONSES ; VALUE = 387; end
    #  	Total number of version 11 responses
    class STATISTIC_HTTPCLASS_V11_RESPONSES ; VALUE = 388; end
    #  	Maximum number of requests made in a connection
    class STATISTIC_HTTPCLASS_MAXIMUM_KEEPALIVE_REQUESTS ; VALUE = 389; end
    #  	Number of responses under 1k
    class STATISTIC_HTTPCLASS_BUCKET_1K_RESPONSES ; VALUE = 390; end
    #  	Number of responses from 1 - 4k
    class STATISTIC_HTTPCLASS_BUCKET_4K_RESPONSES ; VALUE = 391; end
    #  	Number of responses from 4 - 16k
    class STATISTIC_HTTPCLASS_BUCKET_16K_RESPONSES ; VALUE = 392; end
    #  	Number of responses from 16 - 32k
    class STATISTIC_HTTPCLASS_BUCKET_32K_RESPONSES ; VALUE = 393; end
    #  	Number of responses from 32 - 64k
    class STATISTIC_HTTPCLASS_BUCKET_64K_RESPONSES ; VALUE = 394; end
    #  	Total number of response bytes before compression has taken place
    class STATISTIC_HTTPCLASS_PRE_COMPRESSION_BYTES ; VALUE = 395; end
    #  	To number of response bytes after compression has taken place
    class STATISTIC_HTTPCLASS_POST_COMPRESSION_BYTES ; VALUE = 396; end
    #  	Number of bytes subjected to NULL compression (for license enforcement).
    class STATISTIC_HTTPCLASS_NULL_COMPRESSION_BYTES ; VALUE = 397; end
    #  	Number of response bytes before compression has taken place for MIME type HTML.
    class STATISTIC_HTTPCLASS_HTML_PRE_COMPRESSION_BYTES ; VALUE = 398; end
    #  	Number of response bytes after compression has taken place for MIME type HTML.
    class STATISTIC_HTTPCLASS_HTML_POST_COMPRESSION_BYTES ; VALUE = 399; end
    #  	Number of response bytes before compression has taken place for MIME type CSS.
    class STATISTIC_HTTPCLASS_CSS_PRE_COMPRESSION_BYTES ; VALUE = 400; end
    #  	Number of response bytes after compression has taken place for MIME type CSS.
    class STATISTIC_HTTPCLASS_CSS_POST_COMPRESSION_BYTES ; VALUE = 401; end
    #  	Number of response bytes before compression has taken place for MIME type Javascript.
    class STATISTIC_HTTPCLASS_JS_PRE_COMPRESSION_BYTES ; VALUE = 402; end
    #  	Number of response bytes after compression has taken place for MIME type Javascript.
    class STATISTIC_HTTPCLASS_JS_POST_COMPRESSION_BYTES ; VALUE = 403; end
    #  	Number of response bytes before compression has taken place for MIME type XML.
    class STATISTIC_HTTPCLASS_XML_PRE_COMPRESSION_BYTES ; VALUE = 404; end
    #  	Number of response bytes after compression has taken place for MIME type XML.
    class STATISTIC_HTTPCLASS_XML_POST_COMPRESSION_BYTES ; VALUE = 405; end
    #  	Number of response bytes before compression has taken place for MIME type SGML.
    class STATISTIC_HTTPCLASS_SGML_PRE_COMPRESSION_BYTES ; VALUE = 406; end
    #  	Number of response bytes after compression has taken place for MIME type SGML.
    class STATISTIC_HTTPCLASS_SGML_POST_COMPRESSION_BYTES ; VALUE = 407; end
    #  	Number of response bytes before compression has taken place for MIME type Plain text.
    class STATISTIC_HTTPCLASS_PLAIN_PRE_COMPRESSION_BYTES ; VALUE = 408; end
    #  	Number of response bytes after compression has taken place for MIME type Plain text.
    class STATISTIC_HTTPCLASS_PLAIN_POST_COMPRESSION_BYTES ; VALUE = 409; end
    #  	Number of response bytes before compression has taken place for MIME type Octet.
    class STATISTIC_HTTPCLASS_OCTET_PRE_COMPRESSION_BYTES ; VALUE = 410; end
    #  	Number of response bytes after compression has taken place for MIME type Octet.
    class STATISTIC_HTTPCLASS_OCTET_POST_COMPRESSION_BYTES ; VALUE = 411; end
    #  	Number of response bytes before compression has taken place for MIME type Image.
    class STATISTIC_HTTPCLASS_IMAGE_PRE_COMPRESSION_BYTES ; VALUE = 412; end
    #  	Number of response bytes after compression has taken place for MIME type Image.
    class STATISTIC_HTTPCLASS_IMAGE_POST_COMPRESSION_BYTES ; VALUE = 413; end
    #  	Number of response bytes before compression has taken place for MIME type Video.
    class STATISTIC_HTTPCLASS_VIDEO_PRE_COMPRESSION_BYTES ; VALUE = 414; end
    #  	Number of response bytes after compression has taken place for MIME type Video.
    class STATISTIC_HTTPCLASS_VIDEO_POST_COMPRESSION_BYTES ; VALUE = 415; end
    #  	Number of response bytes before compression has taken place for MIME type Audio.
    class STATISTIC_HTTPCLASS_AUDIO_PRE_COMPRESSION_BYTES ; VALUE = 416; end
    #  	Number of response bytes after compression has taken place for MIME type Audio.
    class STATISTIC_HTTPCLASS_AUDIO_POST_COMPRESSION_BYTES ; VALUE = 417; end
    #  	Number of response bytes before compression has taken place for all other MIME types.
    class STATISTIC_HTTPCLASS_OTHER_PRE_COMPRESSION_BYTES ; VALUE = 418; end
    #  	Number of response bytes after compression has taken place for all other MIME types.
    class STATISTIC_HTTPCLASS_OTHER_POST_COMPRESSION_BYTES ; VALUE = 419; end
    #  	RAM Cache hit count.
    class STATISTIC_HTTPCLASS_RAM_CACHE_HITS ; VALUE = 420; end
    #  	RAM Cache miss count, excluding uncacheable data.
    class STATISTIC_HTTPCLASS_RAM_CACHE_MISSES ; VALUE = 421; end
    #  	Total RAM Cache miss count.
    class STATISTIC_HTTPCLASS_RAM_CACHE_TOTAL_MISSES ; VALUE = 422; end
    #  	RAM Cache hit bytes.
    class STATISTIC_HTTPCLASS_RAM_CACHE_HIT_BYTES ; VALUE = 423; end
    #  	RAM Cache miss bytes, excluding uncacheable data.
    class STATISTIC_HTTPCLASS_RAM_CACHE_MISS_BYTES ; VALUE = 424; end
    #  	Total RAM Cache miss bytes.
    class STATISTIC_HTTPCLASS_RAM_CACHE_TOTAL_MISS_BYTES ; VALUE = 425; end
    #  	Number of connections accepted.
    class STATISTIC_SCTP_ACCEPTS ; VALUE = 426; end
    #  	Number of connections not accepted.
    class STATISTIC_SCTP_FAILED_ACCEPT ; VALUE = 427; end
    #  	Number of connections completely established.
    class STATISTIC_SCTP_CONNECTIONS ; VALUE = 428; end
    #  	Number of connection failures.
    class STATISTIC_SCTP_FAILED_CONNECTION ; VALUE = 429; end
    #  	Number of expired connections due to idle timeout.
    class STATISTIC_SCTP_EXPIRED_CONNECTIONS ; VALUE = 430; end
    #  	Number of abandoned connections due to retries/keep-alives.
    class STATISTIC_SCTP_ABANDONED_CONNECTIONS ; VALUE = 431; end
    #  	Number of resets received.
    class STATISTIC_SCTP_RESETS ; VALUE = 432; end
    #  	Number of times a bad checksum is encountered.
    class STATISTIC_SCTP_BAD_CHECKSUMS ; VALUE = 433; end
    #  	Number of SCTP cookies received.
    class STATISTIC_SCTP_COOKIES ; VALUE = 434; end
    #  	Number of bad SCTP cookies received.
    class STATISTIC_SCTP_BAD_COOKIES ; VALUE = 435; end
    #  	Total paths through link.
    class STATISTIC_GTM_LINK_PATHS ; VALUE = 436; end
    #  	Total number of LDNSes.
    class STATISTIC_GTM_TOTAL_LDNSES ; VALUE = 437; end
    #  	Total number of paths.
    class STATISTIC_GTM_TOTAL_PATHS ; VALUE = 438; end
    #  	Total number of SYN cookies generated by PVA ASIC.
    class STATISTIC_HARDWARE_SYN_COOKIES_GENERATED ; VALUE = 439; end
    #  	Total number of SYN cookies detected by PVA ASIC.
    class STATISTIC_HARDWARE_SYN_COOKIES_DETECTED ; VALUE = 440; end
    #  	Current open connections.
    class STATISTIC_FASTL4_OPEN_CONNECTIONS ; VALUE = 441; end
    #  	Current connections that have been accepted.
    class STATISTIC_FASTL4_ACCEPTED_CONNECTIONS ; VALUE = 442; end
    #  	Number of accept failures.
    class STATISTIC_FASTL4_ACCEPT_FAILURES ; VALUE = 443; end
    #  	Expired connections due to idle timeout.
    class STATISTIC_FASTL4_EXPIRED_CONNECTIONS ; VALUE = 444; end
    #  	Number of malformed packets received.
    class STATISTIC_FASTL4_RECEIVED_BAD_PACKET ; VALUE = 445; end
    #  	Number of ICMP unreachable or TCP RSTs received.
    class STATISTIC_FASTL4_ACCEPTED_ICMP_UNREACH_OR_TCP_RST ; VALUE = 446; end
    #  	Number of TCP RSTs received out of window.
    class STATISTIC_FASTL4_ACCEPTED_TCP_RST_OUT_OF_WIN ; VALUE = 447; end
    #  	Number of times a bad checksum is encountered.
    class STATISTIC_FASTL4_RECEIVED_BAD_CHECKSUMS ; VALUE = 448; end
    #  	Number of transmit errors.
    class STATISTIC_FASTL4_RECEIVED_BAD_TXERR ; VALUE = 449; end
    #  	Number of syncookies issued.
    class STATISTIC_FASTL4_RECEIVED_SYN_COOKIES_ISSUED ; VALUE = 450; end
    #  	Number of syncookies accepted.
    class STATISTIC_FASTL4_RECEIVED_SYN_COOKIES_ACCEPTED ; VALUE = 451; end
    #  	Number of syncookies rejected.
    class STATISTIC_FASTL4_RECEIVED_SYN_COOKIES_REJECTED ; VALUE = 452; end
    #  	
    class STATISTIC_FASTL4_RECEIVED_SYN_COOKIES_SYN_TO_SERVER_RETRANS ; VALUE = 453; end
    #  	Process ID of TMOS processing agent.
    class STATISTIC_TM_PID ; VALUE = 454; end
    #  	TMOS processing agent CPU number.
    class STATISTIC_TM_CPU ; VALUE = 455; end
    #  	TMOS processing agent instance.
    class STATISTIC_TM_TMID ; VALUE = 456; end
    #  	Number of TMOS processing agents.
    class STATISTIC_TM_NPUS ; VALUE = 457; end
    #  	Number of connections that were redirected to a different TMOS processing agent in the cluster.
    class STATISTIC_TM_CMP_CONN_REDIRECTED ; VALUE = 458; end
    #  	Number of CPUs on the system.
    class STATISTIC_CPU_COUNT ; VALUE = 459; end
    #  	The numeric ID of the processor, i.e. 1, 2, 3, 4 ....
    class STATISTIC_CPU_INFO_CPU_ID ; VALUE = 460; end
    #  	The time spent by the processor in user context.
    class STATISTIC_CPU_INFO_USER ; VALUE = 461; end
    #  	The time spent by the processor running niced processes.
    class STATISTIC_CPU_INFO_NICED ; VALUE = 462; end
    #  	The time spent by the processor servicing system calls.
    class STATISTIC_CPU_INFO_SYSTEM ; VALUE = 463; end
    #  	The time spent by the processor doing nothing.
    class STATISTIC_CPU_INFO_IDLE ; VALUE = 464; end
    #  	The time spent by the processor servicing hardware interrupts.
    class STATISTIC_CPU_INFO_IRQ ; VALUE = 465; end
    #  	The time spent by the processor servicing soft interrupts.
    class STATISTIC_CPU_INFO_SOFTIRQ ; VALUE = 466; end
    #  	The time spent by the processor waiting for external I/O to complete.
    class STATISTIC_CPU_INFO_IOWAIT ; VALUE = 467; end
    #  	The ratio of time spent in user,niced,system to total time spent by the processor for a recent 10 second period.
    class STATISTIC_CPU_INFO_USAGE_RATIO ; VALUE = 468; end
    #  	Number of request messages.
    class STATISTIC_SIP_REQUESTS ; VALUE = 469; end
    #  	Number of response messages.
    class STATISTIC_SIP_RESPONSES ; VALUE = 470; end
    #  	Number of messages which failed to parse correctly (connection is aborted).
    class STATISTIC_SIP_BAD_MESSAGES ; VALUE = 471; end
    #  	Number of datagrams dropped (connection aborted). 
    class STATISTIC_SIP_DROPS ; VALUE = 472; end
  end
end
