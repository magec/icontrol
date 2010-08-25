module IControl::Common # :nodoc:
  class StatisticType
    #  	 Number of times a virtual server has been unabled to direct connection to a node.
    STATISTIC_NO_NODE_ERRORS = 0
    #  	The minimum duration of connection.
    STATISTIC_MINIMUM_CONNECTION_DURATION = 1
    #  	The mean duration of connection.
    STATISTIC_MEAN_CONNECTION_DURATION = 2
    #  	The maximum duration of connection.
    STATISTIC_MAXIMUM_CONNECTION_DURATION = 3
    #  	Total number of requests.
    STATISTIC_TOTAL_REQUESTS = 4
    #  	Total number of connections assisted by PVA.
    STATISTIC_TOTAL_PVA_ASSISTED_CONNECTIONS = 5
    #  	Current number of connections assisted by PVA.
    STATISTIC_CURRENT_PVA_ASSISTED_CONNECTIONS = 6
    #  	Total number of timeout errors.
    STATISTIC_TIMEOUTS = 7
    #  	Total number of collisions.
    STATISTIC_COLLISIONS = 8
    #  	Total number of dropped packets on ingress.
    STATISTIC_DROPPED_PACKETS_IN = 9
    #  	Total number of dropped packets on egress.
    STATISTIC_DROPPED_PACKETS_OUT = 10
    #  	Total number of dropped packets.
    STATISTIC_DROPPED_PACKETS_TOTAL = 11
    #  	Total number of errors on ingress.
    STATISTIC_ERRORS_IN = 12
    #  	Total number of errors on egress.
    STATISTIC_ERRORS_OUT = 13
    #  	Total CPU cycles spent in traffic management. The actual CPU cycles spent handling traffic is Total - (Idle + Sleep). These numbers are cumulative since startup. The difference over an interval should be used to get the current load.
    STATISTIC_TM_TOTAL_CYCLES = 14
    #  	CPU cycles spent polling with no traffic. The actual CPU cycles spent handling traffic is Total - (Idle + Sleep). These numbers are cumulative since startup. The difference over an interval should be used to get the current load.
    STATISTIC_TM_IDLE_CYCLES = 15
    #  	CPU cycles yielded to other processes (uniprocessor only). The actual CPU cycles spent handling traffic is Total - (Idle + Sleep). These numbers are cumulative since startup. The difference over an interval should be used to get the current load.
    STATISTIC_TM_SLEEP_CYCLES = 16
    #  	Connection requests rejected because the virtual server was in maintenance mode.
    STATISTIC_MAINTENANCE_MODE_DENIALS = 17
    #  	Connection requests rejected because they exceeded the connection limit for a virtual address.
    STATISTIC_VIRTUAL_ADDRESS_MAXIMUM_CONNECTION_DENIALS = 18
    #  	Connection requests rejected because they exceeded the connection limit for a virtual server.
    STATISTIC_VIRTUAL_SERVER_MAXIMUM_CONNECTION_DENIALS = 19
    #  	Packets that are not connection requests and are destined for a virtual server that has no connection for the client address.
    STATISTIC_VIRTUAL_SERVER_NON_SYN_DENIALS = 20
    #  	Incoming packets that could not be processed by a virtual server, NAT, or SNAT.
    STATISTIC_NO_HANDLER_DENIALS = 21
    #  	Number of dropped packets due to exceeding licensing limitations.
    STATISTIC_LICENSE_DENIALS = 22
    #  	Connection could not be created because memory was not available.
    STATISTIC_CONNECTION_FAILED_MEMORY_ERRORS = 23
    #  	Number of active CPUs on the system.
    STATISTIC_ACTIVE_CPU_COUNT = 24
    # The processor mode the system is running in (0 ; VALUE = Uniprocessor, 1 = multiprocessor).; end
    STATISTIC_MULTI_PROCESSOR_MODE = 25
    #  	Total memory available to TMM.
    STATISTIC_MEMORY_TOTAL_BYTES = 26
    #  	Total memory in use by TMM.
    STATISTIC_MEMORY_USED_BYTES = 27
    #  	Number of transmitted packets.
    STATISTIC_IP_TRANSMITTED_PACKETS = 28
    #  	Number of received packets.
    STATISTIC_IP_RECEIVED_PACKETS = 29
    #  	Number of dropped packets.
    STATISTIC_IP_DROPPED_PACKETS = 30
    #  	Number of transmitted fragments.
    STATISTIC_IP_TRANSMITTED_FRAGMENTS = 31
    #  	Number of dropped transmitted fragments.
    STATISTIC_IP_DROPPED_TRANSMITTED_FRAGMENTS = 32
    #  	Number of received fragments.
    STATISTIC_IP_RECEIVED_FRAGMENTS = 33
    #  	Number of dropped received fragments.
    STATISTIC_IP_DROPPED_RECEIVED_FRAGMENTS = 34
    #  	Number of reassembled packets.
    STATISTIC_IP_REASSEMBLED_PACKETS = 35
    #  	Number of invalid checksum errors.
    STATISTIC_IP_INVALID_CHECKSUM_ERRORS = 36
    #  	Number of invalid packet length errors.
    STATISTIC_IP_INVALID_LENGTH_ERRORS = 37
    #  	Number of memory errors.
    STATISTIC_IP_MEMORY_ERRORS = 38
    #  	Number of retransmit errors.
    STATISTIC_IP_RETRANSMITTED_ERRORS = 39
    #  	Number of invalid protocol errors.
    STATISTIC_IP_INVALID_PROTOCOL_ERRORS = 40
    #  	Number of options errors.
    STATISTIC_IP_OPTIONS_ERRORS = 41
    #  	Number of reassembly errors.
    STATISTIC_IP_REASSEMBLED_TOO_LONG_ERRORS = 42
    #  	Number of transmitted packets in IPv6
    STATISTIC_IPV6_TRANSMITTED_PACKETS = 43
    #  	Number of received packets in IPv6.
    STATISTIC_IPV6_RECEIVED_PACKETS = 44
    #  	Number of dropped packets in IPv6.
    STATISTIC_IPV6_DROPPED_PACKETS = 45
    #  	Number of transmitted fragments in IPv6.
    STATISTIC_IPV6_TRANSMITTED_FRAGMENTS = 46
    #  	Number of dropped transmitted fragments in IPv6.
    STATISTIC_IPV6_DROPPED_TRANSMITTED_FRAGMENTS = 47
    #  	Number of received fragments in IPv6.
    STATISTIC_IPV6_RECEIVED_FRAGMENTS = 48
    #  	Number of dropped received fragments in IPv6.
    STATISTIC_IPV6_DROPPED_RECEIVED_FRAGMENTS = 49
    #  	Number of reassembled packets in IPv6.
    STATISTIC_IPV6_REASSEMBLED_PACKETS = 50
    #  	Number of invalid checksum errors in IPv6.
    STATISTIC_IPV6_INVALID_CHECKSUM_ERRORS = 51
    #  	Number of invalid packet length errors in IPv6.
    STATISTIC_IPV6_INVALID_LENGTH_ERRORS = 52
    #  	Number of memory errors in IPv6.
    STATISTIC_IPV6_MEMORY_ERRORS = 53
    #  	Number of retransmit errors in IPv6.
    STATISTIC_IPV6_RETRANSMITTED_ERRORS = 54
    #  	Number of invalid protocol errors in IPv6.
    STATISTIC_IPV6_INVALID_PROTOCOL_ERRORS = 55
    #  	Number of options errors in IPv6.
    STATISTIC_IPV6_OPTIONS_ERRORS = 56
    #  	Number of reassembly errors in IPv6.
    STATISTIC_IPV6_REASSEMBLED_TOO_LONG_ERRORS = 57
    #  	Number of transmitted packets.
    STATISTIC_ICMP_TRANSMITTED_PACKETS = 58
    #  	Number of re-transmitted packets.
    STATISTIC_ICMP_RETRANSMITTED_PACKETS = 59
    #  	Number of received packets.
    STATISTIC_ICMP_RECEIVED_PACKETS = 60
    #  	Number of forwarded packets.
    STATISTIC_ICMP_FORWARDED_PACKETS = 61
    #  	Number of dropped packets.
    STATISTIC_ICMP_DROPPED_PACKETS = 62
    #  	Number of invalid checksum errors.
    STATISTIC_ICMP_INVALID_CHECKSUM_ERRORS = 63
    #  	Number of invalid packet length errors.
    STATISTIC_ICMP_INVALID_LENGTH_ERRORS = 64
    #  	Number of memory errors.
    STATISTIC_ICMP_MEMORY_ERRORS = 65
    #  	Number of retransmit errors.
    STATISTIC_ICMP_RETRANSMITTED_ERRORS = 66
    #  	Number of invalid protocol errors.
    STATISTIC_ICMP_INVALID_PROTOCOL_ERRORS = 67
    #  	Number of options errors.
    STATISTIC_ICMP_OPTIONS_ERRORS = 68
    #  	Number of other types of errors.
    STATISTIC_ICMP_OTHER_ERRORS = 69
    #  	Number of transmitted packets in ICMPv6.
    STATISTIC_ICMPV6_TRANSMITTED_PACKETS = 70
    #  	Number of re-transmitted packets in ICMPv6.
    STATISTIC_ICMPV6_RETRANSMITTED_PACKETS = 71
    #  	Number of received packets in ICMPv6.
    STATISTIC_ICMPV6_RECEIVED_PACKETS = 72
    #  	Number of forwarded packets in ICMPv6.
    STATISTIC_ICMPV6_FORWARDED_PACKETS = 73
    #  	Number of dropped packets in ICMPv6.
    STATISTIC_ICMPV6_DROPPED_PACKETS = 74
    #  	Number of invalid checksum errors in ICMPv6.
    STATISTIC_ICMPV6_INVALID_CHECKSUM_ERRORS = 75
    #  	Number of invalid packet length errors in ICMPv6.
    STATISTIC_ICMPV6_INVALID_LENGTH_ERRORS = 76
    #  	Number of memory errors in ICMPv6.
    STATISTIC_ICMPV6_MEMORY_ERRORS = 77
    #  	Number of retransmit errors in ICMPv6.
    STATISTIC_ICMPV6_RETRANSMITTED_ERRORS = 78
    #  	Number of invalid protocol errors in ICMPv6.
    STATISTIC_ICMPV6_INVALID_PROTOCOL_ERRORS = 79
    #  	Number of options errors in ICMPv6.
    STATISTIC_ICMPV6_OPTIONS_ERRORS = 80
    #  	Number of other types of errors in ICMPv6.
    STATISTIC_ICMPV6_OTHER_ERRORS = 81
    #  	Current open connections.
    STATISTIC_UDP_OPEN_CONNECTIONS = 82
    #  	Current connections that have been accepted.
    STATISTIC_UDP_ACCEPTED_CONNECTIONS = 83
    #  	Number of accept failures.
    STATISTIC_UDP_ACCEPT_FAILURES = 84
    #  	Current connections that have been established, but not accepted.
    STATISTIC_UDP_ESTABLISHED_CONNECTIONS = 85
    #  	Number of connection failures.
    STATISTIC_UDP_CONNECTION_FAILURES = 86
    #  	Expired connections due to idle timeout.
    STATISTIC_UDP_EXPIRED_CONNECTIONS = 87
    #  	Number of transmitted datagrams.
    STATISTIC_UDP_TRANSMITTED_DATAGRAMS = 88
    #  	Number of received datagrams.
    STATISTIC_UDP_RECEIVED_DATAGRAMS = 89
    #  	Number of malformed datagrams received.
    STATISTIC_UDP_RECEIVED_MALFORMED_DATAGRAMS = 90
    #  	Number of ICMP unreachables received.
    STATISTIC_UDP_RECEIVED_UNREACHABLE_ICMP_DATAGRAMS = 91
    #  	Number of bad checksum datagrams received.
    STATISTIC_UDP_RECEIVED_BAD_CHECKSUM_DATAGRAMS = 92
    #  	Number of no-checksum datagrams received.
    STATISTIC_UDP_RECEIVED_NO_CHECKSUM_DATAGRAMS = 93
    #  	Current open connections.
    STATISTIC_TCP_OPEN_CONNECTIONS = 94
    #  	Current connections in CLOSE-WAIT/LAST-ACK state.
    STATISTIC_TCP_CLOSE_WAIT_CONNECTIONS = 95
    #  	Current connections in FIN-WAIT/CLOSING state.
    STATISTIC_TCP_FIN_WAIT_CONNECTIONS = 96
    #  	Current connections in TIME-WAIT state.
    STATISTIC_TCP_TIME_WAIT_CONNECTIONS = 97
    #  	Current connections that have been accepted.
    STATISTIC_TCP_ACCEPTED_CONNECTIONS = 98
    #  	Number of accept failures.
    STATISTIC_TCP_ACCEPT_FAILURES = 99
    #  	Current connections that have been established, but not accepted.
    STATISTIC_TCP_ESTABLISHED_CONNECTIONS = 100
    #  	Number of connection failures.
    STATISTIC_TCP_CONNECTION_FAILURES = 101
    #  	Expired connections due to idle timeout.
    STATISTIC_TCP_EXPIRED_CONNECTIONS = 102
    #  	Abandoned connections due to retries/keep-alives.
    STATISTIC_TCP_ABANDONED_CONNECTIONS = 103
    #  	Number of RSTs received.
    STATISTIC_TCP_RECEIVED_RESETS = 104
    #  	Number of bad checksum packets received.
    STATISTIC_TCP_RECEIVED_BAD_CHECKSUMS = 105
    #  	Number of malformed segments received.
    STATISTIC_TCP_RECEIVED_BAD_SEGMENTS = 106
    #  	Number of out-of-order segments received.
    STATISTIC_TCP_RECEIVED_OUT_OF_ORDER_SEGMENTS = 107
    #  	Number of SYN cookies received.
    STATISTIC_TCP_RECEIVED_SYN_COOKIES = 108
    #  	Number of bad SYN cookies received.
    STATISTIC_TCP_RECEIVED_BAD_SYN_COOKIES = 109
    #  	Number of SYN cache overflows.
    STATISTIC_TCP_SYN_CACHE_OVERFLOWS = 110
    #  	Number of retransmitted segments.
    STATISTIC_TCP_RETRANSMITTED_SEGMENTS = 111
    #  	Total number of bytes in.
    STATISTIC_BYTES_IN = 112
    #  	Total number of bytes out.
    STATISTIC_BYTES_OUT = 113
    #  	Total number of packets in.
    STATISTIC_PACKETS_IN = 114
    #  	Total number of packets out.
    STATISTIC_PACKETS_OUT = 115
    #  	Total number of multicast packets in.
    STATISTIC_MULTICASTS_IN = 116
    #  	Total number of multicast packets out.
    STATISTIC_MULTICASTS_OUT = 117
    #  	Total number of bytes in through the ephemeral port.
    STATISTIC_EPHEMERAL_BYTES_IN = 118
    #  	Total number of bytes out through the ephemeral port.
    STATISTIC_EPHEMERAL_BYTES_OUT = 119
    #  	Total number of packets in through the ephemeral port.
    STATISTIC_EPHEMERAL_PACKETS_IN = 120
    #  	Total number of packets out through the ephemeral port.
    STATISTIC_EPHEMERAL_PACKETS_OUT = 121
    #  	Current number of connections through the ephemeral port.
    STATISTIC_EPHEMERAL_CURRENT_CONNECTIONS = 122
    #  	Maximum number of connections through the ephemeral port.
    STATISTIC_EPHEMERAL_MAXIMUM_CONNECTIONS = 123
    #  	Total number of connections through the ephemeral port.
    STATISTIC_EPHEMERAL_TOTAL_CONNECTIONS = 124
    #  	Total number of bytes in from the client-side of the object.
    STATISTIC_CLIENT_SIDE_BYTES_IN = 125
    #  	Total number of bytes out from the client-side of the object.
    STATISTIC_CLIENT_SIDE_BYTES_OUT = 126
    #  	Total number of packets in from the client-side of the object.
    STATISTIC_CLIENT_SIDE_PACKETS_IN = 127
    #  	Total number of packets out from the client-side of the object.
    STATISTIC_CLIENT_SIDE_PACKETS_OUT = 128
    #  	Current number of connections from the client-side of the object.
    STATISTIC_CLIENT_SIDE_CURRENT_CONNECTIONS = 129
    #  	Maximum number of connections from the client-side of the object.
    STATISTIC_CLIENT_SIDE_MAXIMUM_CONNECTIONS = 130
    #  	Total number of connections from the client-side of the object.
    STATISTIC_CLIENT_SIDE_TOTAL_CONNECTIONS = 131
    #  	Total number of bytes in that are handled by PVA from the client-side of the object.
    STATISTIC_PVA_CLIENT_SIDE_BYTES_IN = 132
    #  	Total number of bytes out that are handled by PVA from the client-side of the object.
    STATISTIC_PVA_CLIENT_SIDE_BYTES_OUT = 133
    #  	Total number of packets in that are handled by PVA from the client-side of the object.
    STATISTIC_PVA_CLIENT_SIDE_PACKETS_IN = 134
    #  	Total number of packets out that are handled by PVA from the client-side of the object.
    STATISTIC_PVA_CLIENT_SIDE_PACKETS_OUT = 135
    #  	Current number of connections that are handled by PVA from the client-side of the object.
    STATISTIC_PVA_CLIENT_SIDE_CURRENT_CONNECTIONS = 136
    #  	Maximum number of connections that are handled by PVA from the client-side of the object.
    STATISTIC_PVA_CLIENT_SIDE_MAXIMUM_CONNECTIONS = 137
    #  	Total number of connections that are handled by PVA from the client-side of the object.
    STATISTIC_PVA_CLIENT_SIDE_TOTAL_CONNECTIONS = 138
    #  	Total number of bytes in from the server-side of the object.
    STATISTIC_SERVER_SIDE_BYTES_IN = 139
    #  	Total number of bytes out from the server-side of the object.
    STATISTIC_SERVER_SIDE_BYTES_OUT = 140
    #  	Total number of packets in from the server-side of the object.
    STATISTIC_SERVER_SIDE_PACKETS_IN = 141
    #  	Total number of packets out from the server-side of the object.
    STATISTIC_SERVER_SIDE_PACKETS_OUT = 142
    #  	Current number of connections from the server-side of the object.
    STATISTIC_SERVER_SIDE_CURRENT_CONNECTIONS = 143
    #  	Maximum number of connections from the server-side of the object.
    STATISTIC_SERVER_SIDE_MAXIMUM_CONNECTIONS = 144
    #  	Total number of connections from the server-side of the object.
    STATISTIC_SERVER_SIDE_TOTAL_CONNECTIONS = 145
    #  	Total number of bytes in that are handled by PVA from the server-side of the object.
    STATISTIC_PVA_SERVER_SIDE_BYTES_IN = 146
    #  	Total number of bytes out that are handled by PVA from the server-side of the object.
    STATISTIC_PVA_SERVER_SIDE_BYTES_OUT = 147
    #  	Total number of packets in that are handled by PVA from the server-side of the object.
    STATISTIC_PVA_SERVER_SIDE_PACKETS_IN = 148
    #  	Total number of packets out that are handled by PVA from the server-side of the object.
    STATISTIC_PVA_SERVER_SIDE_PACKETS_OUT = 149
    #  	Current number of connections that are handled by PVA from the server-side of the object.
    STATISTIC_PVA_SERVER_SIDE_CURRENT_CONNECTIONS = 150
    #  	Maximum number of connections that are handled by PVA from the server-side of the object.
    STATISTIC_PVA_SERVER_SIDE_MAXIMUM_CONNECTIONS = 151
    #  	Total number of connections that are handled by PVA from the server-side of the object.
    STATISTIC_PVA_SERVER_SIDE_TOTAL_CONNECTIONS = 152
    #  	The number of times packet filter is invoked.
    STATISTIC_PACKET_FILTER_HITS = 153
    #  	The number of replace operations completed.
    STATISTIC_STREAM_REPLACEMENTS = 154
    #  	The current number of idle connections in the pool.
    STATISTIC_ONECONNECT_CURRENT_IDLE_CONNECTIONS = 155
    #  	The maximum number of idle connections in the pool.
    STATISTIC_ONECONNECT_MAXIMUM_IDLE_CONNECTIONS = 156
    #  	The total number of times connections were reused from the pool.
    STATISTIC_ONECONNECT_TOTAL_REUSES = 157
    #  	The number of times a new connection was initiated.
    STATISTIC_ONECONNECT_NEW_CONNECTIONS = 158
    #  	Number of bytes at base rate
    STATISTIC_RATE_CLASS_BYTES_AT_BASE_RATE = 159
    #  	Number of bytes during bursting
    STATISTIC_RATE_CLASS_BYTES_DURING_BURST = 160
    #  	Number of bytes dropped
    STATISTIC_RATE_CLASS_BYTES_DROPPED = 161
    #  	Number of bytes queued
    STATISTIC_RATE_CLASS_BYTES_QUEUED = 162
    #  	Number of bytes per second over last 4 secs
    STATISTIC_RATE_CLASS_BYTES_PER_SEC = 163
    #  	Number of rule failures.
    STATISTIC_RULE_FAILURES = 164
    #  	Number of rule aborts due to TCL errors.
    STATISTIC_RULE_ABORTS = 165
    #  	Number of rule event executions.
    STATISTIC_RULE_TOTAL_EXECUTIONS = 166
    #  	The average number of cycles spent during an execution of this rule event.
    STATISTIC_RULE_AVERAGE_CYCLES = 167
    #  	The maximum number of cycles spent during an execution of this rule event.
    STATISTIC_RULE_MAXIMUM_CYCLES = 168
    #  	The minimum number of cycles spent during an execution of this rule event.
    STATISTIC_RULE_MINIMUM_CYCLES = 169
    #  	Number of Set-Cookie header insertions
    STATISTIC_HTTP_COOKIE_PERSIST_INSERTS = 170
    #  	Number of server-side responses in range of 200 to 206 (successful responses)
    STATISTIC_HTTP_2XX_RESPONSES = 171
    #  	Number of server-side responses in range of 300 to 307 (redirection resposes)
    STATISTIC_HTTP_3XX_RESPONSES = 172
    #  	Number of server-side responses in range of 400 to 417 (client errors)
    STATISTIC_HTTP_4XX_RESPONSES = 173
    #  	Number of server-side responses in range of 500 to 505 (server errors)
    STATISTIC_HTTP_5XX_RESPONSES = 174
    #  	Total number of HTTP requests
    STATISTIC_HTTP_TOTAL_REQUESTS = 175
    #  	Total number of GET requests
    STATISTIC_HTTP_GET_REQUESTS = 176
    #  	Total number of POST requests
    STATISTIC_HTTP_POST_REQUESTS = 177
    #  	Total number of version 9 requests
    STATISTIC_HTTP_V9_REQUESTS = 178
    #  	Total number of version 10 requests
    STATISTIC_HTTP_V10_REQUESTS = 179
    #  	Total number of version 11 requests
    STATISTIC_HTTP_V11_REQUESTS = 180
    #  	Total number of version 9 responses
    STATISTIC_HTTP_V9_RESPONSES = 181
    #  	Total number of version 10 responses
    STATISTIC_HTTP_V10_RESPONSES = 182
    #  	Total number of version 11 responses
    STATISTIC_HTTP_V11_RESPONSES = 183
    #  	Maximum number of requests made in a connection
    STATISTIC_HTTP_MAXIMUM_KEEPALIVE_REQUESTS = 184
    #  	Number of responses under 1k
    STATISTIC_HTTP_BUCKET_1K_RESPONSES = 185
    #  	Number of responses from 1 - 4k
    STATISTIC_HTTP_BUCKET_4K_RESPONSES = 186
    #  	Number of responses from 4 - 16k
    STATISTIC_HTTP_BUCKET_16K_RESPONSES = 187
    #  	Number of responses from 16 - 32k
    STATISTIC_HTTP_BUCKET_32K_RESPONSES = 188
    #  	Number of responses from 32 - 64k
    STATISTIC_HTTP_BUCKET_64K_RESPONSES = 189
    #  	Total number of response bytes before compression has taken place
    STATISTIC_HTTP_PRE_COMPRESSION_BYTES = 190
    #  	To number of response bytes after compression has taken place
    STATISTIC_HTTP_POST_COMPRESSION_BYTES = 191
    #  	Number of bytes subjected to NULL compression (for license enforcement).
    STATISTIC_HTTP_NULL_COMPRESSION_BYTES = 192
    #  	Number of response bytes before compression has taken place for MIME type HTML.
    STATISTIC_HTTP_HTML_PRE_COMPRESSION_BYTES = 193
    #  	Number of response bytes after compression has taken place for MIME type HTML.
    STATISTIC_HTTP_HTML_POST_COMPRESSION_BYTES = 194
    #  	Number of response bytes before compression has taken place for MIME type CSS.
    STATISTIC_HTTP_CSS_PRE_COMPRESSION_BYTES = 195
    #  	Number of response bytes after compression has taken place for MIME type CSS.
    STATISTIC_HTTP_CSS_POST_COMPRESSION_BYTES = 196
    #  	Number of response bytes before compression has taken place for MIME type Javascript.
    STATISTIC_HTTP_JS_PRE_COMPRESSION_BYTES = 197
    #  	Number of response bytes after compression has taken place for MIME type Javascript.
    STATISTIC_HTTP_JS_POST_COMPRESSION_BYTES = 198
    #  	Number of response bytes before compression has taken place for MIME type XML.
    STATISTIC_HTTP_XML_PRE_COMPRESSION_BYTES = 199
    #  	Number of response bytes after compression has taken place for MIME type XML.
    STATISTIC_HTTP_XML_POST_COMPRESSION_BYTES = 200
    #  	Number of response bytes before compression has taken place for MIME type SGML.
    STATISTIC_HTTP_SGML_PRE_COMPRESSION_BYTES = 201
    #  	Number of response bytes after compression has taken place for MIME type SGML.
    STATISTIC_HTTP_SGML_POST_COMPRESSION_BYTES = 202
    #  	Number of response bytes before compression has taken place for MIME type Plain text.
    STATISTIC_HTTP_PLAIN_PRE_COMPRESSION_BYTES = 203
    #  	Number of response bytes after compression has taken place for MIME type Plain text.
    STATISTIC_HTTP_PLAIN_POST_COMPRESSION_BYTES = 204
    #  	Number of response bytes before compression has taken place for MIME type Octet.
    STATISTIC_HTTP_OCTET_PRE_COMPRESSION_BYTES = 205
    #  	Number of response bytes after compression has taken place for MIME type Octet.
    STATISTIC_HTTP_OCTET_POST_COMPRESSION_BYTES = 206
    #  	Number of response bytes before compression has taken place for MIME type Image.
    STATISTIC_HTTP_IMAGE_PRE_COMPRESSION_BYTES = 207
    #  	Number of response bytes after compression has taken place for MIME type Image.
    STATISTIC_HTTP_IMAGE_POST_COMPRESSION_BYTES = 208
    #  	Number of response bytes before compression has taken place for MIME type Video.
    STATISTIC_HTTP_VIDEO_PRE_COMPRESSION_BYTES = 209
    #  	Number of response bytes after compression has taken place for MIME type Video.
    STATISTIC_HTTP_VIDEO_POST_COMPRESSION_BYTES = 210
    #  	Number of response bytes before compression has taken place for MIME type Audio.
    STATISTIC_HTTP_AUDIO_PRE_COMPRESSION_BYTES = 211
    #  	Number of response bytes after compression has taken place for MIME type Audio.
    STATISTIC_HTTP_AUDIO_POST_COMPRESSION_BYTES = 212
    #  	Number of response bytes before compression has taken place for all other MIME types.
    STATISTIC_HTTP_OTHER_PRE_COMPRESSION_BYTES = 213
    #  	Number of response bytes after compression has taken place for all other MIME types.
    STATISTIC_HTTP_OTHER_POST_COMPRESSION_BYTES = 214
    #  	Current entries in the SSL cache.
    STATISTIC_SSL_CACHE_CURRENT_ENTRIES = 215
    #  	Maximum entries in the SSL cache.
    STATISTIC_SSL_CACHE_MAXIMUM_ENTRIES = 216
    #  	Number of SSL cache overflows.
    STATISTIC_SSL_CACHE_OVERFLOWS = 217
    #  	Anonymous Diffie-Hellman.
    STATISTIC_SSL_CIPHER_ADH_KEY_EXCHANGE = 218
    #  	Deprecated in 9.2.0 - Diffie-Hellman w/ DSS certificate.
    STATISTIC_SSL_CIPHER_DH_DSS_KEY_EXCHANGE = 219
    #  	Diffie-Hellman w/ RSA certificate.
    STATISTIC_SSL_CIPHER_DH_RSA_KEY_EXCHANGE = 220
    #  	Deprecated in 9.2.0 - DSS certificate.
    STATISTIC_SSL_CIPHER_DSS_KEY_EXCHANGE = 221
    #  	Deprecated in 9.2.0 - Ephemeral Diffie-Hellman w/ DSS cert.
    STATISTIC_SSL_CIPHER_EDH_DSS_KEY_EXCHANGE = 222
    #  	Ephemeral Diffie-Hellman w/ RSA cert.
    STATISTIC_SSL_CIPHER_EDH_RSA_KEY_EXCHANGE = 223
    #  	RSA certificate.
    STATISTIC_SSL_CIPHER_RSA_KEY_EXCHANGE = 224
    #  	No encryption.
    STATISTIC_SSL_CIPHER_NULL_BULK = 225
    #  	Advances Encryption Standard (CBC).
    STATISTIC_SSL_CIPHER_AES_BULK = 226
    #  	Digital Encryption Standard (CBC).
    STATISTIC_SSL_CIPHER_DES_BULK = 227
    #  	IDEA (old SSLv2 cipher).
    STATISTIC_SSL_CIPHER_IDEA_BULK = 228
    #  	Rivest Cipher 2.
    STATISTIC_SSL_CIPHER_RC2_BULK = 229
    #  	Rivest Cipher 4.
    STATISTIC_SSL_CIPHER_RC4_BULK = 230
    #  	No message authentication.
    STATISTIC_SSL_CIPHER_NULL_DIGEST = 231
    #  	Message Digest 5.
    STATISTIC_SSL_CIPHER_MD5_DIGEST = 232
    #  	Secure Hash Algorithm.
    STATISTIC_SSL_CIPHER_SHA_DIGEST = 233
    #  	Total connections for SSLv2 protocol.
    STATISTIC_SSL_PROTOCOL_SSLV2 = 234
    #  	Total connections for SSLv3 protocol.
    STATISTIC_SSL_PROTOCOL_SSLV3 = 235
    #  	Total connections for TLSv1 protocol.
    STATISTIC_SSL_PROTOCOL_TLSV1 = 236
    #  	Currently open connections.
    STATISTIC_SSL_COMMON_CURRENT_CONNECTIONS = 237
    #  	Maximum simultaneous connections.
    STATISTIC_SSL_COMMON_MAXIMUM_CONNECTIONS = 238
    #  	Currently open native connections.
    STATISTIC_SSL_COMMON_CURRENT_NATIVE_CONNECTIONS = 239
    #  	Maximum simultaneous native connections.
    STATISTIC_SSL_COMMON_MAXIMUM_NATIVE_CONNECTIONS = 240
    #  	Total native connections.
    STATISTIC_SSL_COMMON_TOTAL_NATIVE_CONNECTIONS = 241
    #  	Currently open compatible-mode connections.
    STATISTIC_SSL_COMMON_CURRENT_COMPATIBLE_MODE_CONNECTIONS = 242
    #  	Maximum simultaneous compatible-mode connections.
    STATISTIC_SSL_COMMON_MAXIMUM_COMPATIBLE_MODE_CONNECTIONS = 243
    #  	Total compatible-mode connections.
    STATISTIC_SSL_COMMON_TOTAL_COMPATIBLE_MODE_CONNECTIONS = 244
    #  	Total encrypted bytes received.
    STATISTIC_SSL_COMMON_ENCRYPTED_BYTES_IN = 245
    #  	Total encrypted bytes sent.
    STATISTIC_SSL_COMMON_ENCRYPTED_BYTES_OUT = 246
    #  	Total decrypted bytes received.
    STATISTIC_SSL_COMMON_DECRYPTED_BYTES_IN = 247
    #  	Total decrypted bytes sent.
    STATISTIC_SSL_COMMON_DECRYPTED_BYTES_OUT = 248
    #  	Total records received.
    STATISTIC_SSL_COMMON_RECORDS_IN = 249
    #  	Total records transmitted.
    STATISTIC_SSL_COMMON_RECORDS_OUT = 250
    #  	Total offloaded connections.
    STATISTIC_SSL_COMMON_FULLY_HW_ACCELERATED_CONNECTIONS = 251
    #  	Total assisted connections.
    STATISTIC_SSL_COMMON_PARTIALLY_HW_ACCELERATED_CONNECTIONS = 252
    #  	Total software connections.
    STATISTIC_SSL_COMMON_NON_HW_ACCELERATED_CONNECTIONS = 253
    #  	Total unclean shutdowns.
    STATISTIC_SSL_COMMON_PREMATURE_DISCONNECTS = 254
    #  	Total mid-connection handshakes.
    STATISTIC_SSL_COMMON_MIDSTREAM_RENEGOTIATIONS = 255
    #  	Current entries in this cache.
    STATISTIC_SSL_COMMON_SESSION_CACHE_CURRENT_ENTRIES = 256
    #  	Total cache hits.
    STATISTIC_SSL_COMMON_SESSION_CACHE_HITS = 257
    #  	Total cache lookups.
    STATISTIC_SSL_COMMON_SESSION_CACHE_LOOKUPS = 258
    #  	Total cache overflows.
    STATISTIC_SSL_COMMON_SESSION_CACHE_OVERFLOWS = 259
    #  	Total session invalidations.
    STATISTIC_SSL_COMMON_SESSION_CACHE_INVALIDATIONS = 260
    #  	Total valid certificates.
    STATISTIC_SSL_COMMON_VALID_PEER_CERTIFICATES = 261
    #  	Total invalid certificates.
    STATISTIC_SSL_COMMON_INVALID_PEER_CERTIFICATES = 262
    #  	Total connections without certificates.
    STATISTIC_SSL_COMMON_NO_PEER_CERTIFICATES = 263
    #  	Total handshake failures.
    STATISTIC_SSL_COMMON_HANDSHAKE_FAILURES = 264
    #  	Total bad records.
    STATISTIC_SSL_COMMON_BAD_RECORDS = 265
    #  	Total fatal alerts.
    STATISTIC_SSL_COMMON_FATAL_ALERTS = 266
    #  	Cumulative number of auth sessions.
    STATISTIC_AUTH_TOTAL_SESSIONS = 267
    #  	Current number of auth sessions
    STATISTIC_AUTH_CURRENT_SESSIONS = 268
    #  	Maximum number of concurrent auth sessions
    STATISTIC_AUTH_MAXIMUM_SESSIONS = 269
    #  	Number of auth 'success' results
    STATISTIC_AUTH_SUCCESS_RESULTS = 270
    #  	Number of auth 'failure' results
    STATISTIC_AUTH_FAILURE_RESULTS = 271
    #  	Number of auth 'wantcredential' results
    STATISTIC_AUTH_WANT_CREDENTIAL_RESULTS = 272
    #  	Number of auth 'error' results
    STATISTIC_AUTH_ERROR_RESULTS = 273
    #  	Number of XML errors
    STATISTIC_XML_TOTAL_ERRORS = 274
    #  	Total number of client SYN cookies generated.
    STATISTIC_FAST_HTTP_CLIENT_SYN_COOKIES = 275
    #  	Total number of client TCP accepts.
    STATISTIC_FAST_HTTP_CLIENT_ACCEPTS = 276
    #  	Total number of server TCP connects.
    STATISTIC_FAST_HTTP_SERVER_CONNECTS = 277
    #  	Number of available serverside flows in the reuse pool.
    STATISTIC_FAST_HTTP_CONNECTION_POOL_CURRENT_SIZE = 278
    #  	Maximum number of available serverside flows in the reuse pool.
    STATISTIC_FAST_HTTP_CONNECTION_POOL_MAXIMUM_SIZE = 279
    #  	Number of times a serverside flow was reused from the pool.
    STATISTIC_FAST_HTTP_CONNECTION_POOL_REUSES = 280
    #  	Number of times the reuse pool was exhausted.
    STATISTIC_FAST_HTTP_CONNECTION_POOL_EXHAUSTED = 281
    #  	Total number of HTTP requests.
    STATISTIC_FAST_HTTP_TOTAL_REQUESTS = 282
    #  	Total number of unbuffered requests.
    STATISTIC_FAST_HTTP_UNBUFFERED_REQUESTS = 283
    #  	Total number of GET requests.
    STATISTIC_FAST_HTTP_GET_REQUESTS = 284
    #  	Total number of POST requests.
    STATISTIC_FAST_HTTP_POST_REQUESTS = 285
    #  	Total number of version 9 requests.
    STATISTIC_FAST_HTTP_V9_REQUESTS = 286
    #  	Total number of version 10 requests.
    STATISTIC_FAST_HTTP_V10_REQUESTS = 287
    #  	Total number of version 11 requests.
    STATISTIC_FAST_HTTP_V11_REQUESTS = 288
    #  	Number of server-side responses in range of 200 to 206 (successful responses)
    STATISTIC_FAST_HTTP_2XX_RESPONSES = 289
    #  	Number of server-side responses in range of 300 to 307 (redirection resposes)
    STATISTIC_FAST_HTTP_3XX_RESPONSES = 290
    #  	Number of server-side responses in range of 400 to 417 (client errors)
    STATISTIC_FAST_HTTP_4XX_RESPONSES = 291
    #  	Number of server-side responses in range of 500 to 505 (server errors)
    STATISTIC_FAST_HTTP_5XX_RESPONSES = 292
    #  	Number of request parse errors.
    STATISTIC_FAST_HTTP_REQUEST_PARSE_ERRORS = 293
    #  	Number of response parse errors.
    STATISTIC_FAST_HTTP_RESPONSE_PARSE_ERRORS = 294
    #  	Number of bad clientside TCP segments dropped.
    STATISTIC_FAST_HTTP_CLIENTSIDE_BAD_SEGMENTS = 295
    #  	Number of bad serverside TCP segments dropped.
    STATISTIC_FAST_HTTP_SERVERSIDE_BAD_SEGMENTS = 296
    #  	Number of pipelined HTTP requests detected.
    STATISTIC_FAST_HTTP_PIPELINED_REQUESTS = 297
    #  	Total bad client greetings.
    STATISTIC_SSL_COMMON_NOT_SSL_HANDSHAKE_FAILURES = 298
    #  	RAM Cache hit count.
    STATISTIC_HTTP_RAM_CACHE_HITS = 299
    #  	RAM Cache miss count, excluding uncacheable data.
    STATISTIC_HTTP_RAM_CACHE_MISSES = 300
    #  	Total RAM Cache miss count.
    STATISTIC_HTTP_RAM_CACHE_TOTAL_MISSES = 301
    #  	RAM Cache hit bytes.
    STATISTIC_HTTP_RAM_CACHE_HIT_BYTES = 302
    #  	RAM Cache miss bytes, excluding uncacheable data.
    STATISTIC_HTTP_RAM_CACHE_MISS_BYTES = 303
    #  	Total RAM Cache miss bytes.
    STATISTIC_HTTP_RAM_CACHE_TOTAL_MISS_BYTES = 304
    #  	RAM Cache size.
    STATISTIC_HTTP_RAM_CACHE_SIZE = 305
    #  	RAM Cache count.
    STATISTIC_HTTP_RAM_CACHE_COUNT = 306
    #  	RAM Cache evictions.
    STATISTIC_HTTP_RAM_CACHE_EVICTIONS = 307
    #  	Total bytes waiting for virtual compression (deprecated 9.4.0).
    STATISTIC_VCOMPRESSION_QUEUED_BYTES = 308
    #  	Total bytes pre-compression (deprecated 9.4.0).
    STATISTIC_VCOMPRESSION_PRE_COMPRESSION_BYTES = 309
    #  	Total bytes post-compression (deprecated 9.4.0).
    STATISTIC_VCOMPRESSION_POST_COMPRESSION_BYTES = 310
    #  	Total number of streams (deprecated 9.4.0).
    STATISTIC_VCOMPRESSION_TOTAL_STREAMS = 311
    #  	Current number of streams (deprecated 9.4.0).
    STATISTIC_VCOMPRESSION_CURRENT_STREAMS = 312
    #  	Total IIOP requests.
    STATISTIC_IIOP_TOTAL_REQUESTS = 313
    #  	Total IIOP responses.
    STATISTIC_IIOP_TOTAL_RESPONSES = 314
    #  	Total IIOP connection cancels.
    STATISTIC_IIOP_TOTAL_CANCELS = 315
    #  	Total IIOP errors.
    STATISTIC_IIOP_TOTAL_ERRORS = 316
    #  	Total IIOP fragments.
    STATISTIC_IIOP_TOTAL_FRAGMENTS = 317
    #  	Total RTSP requests.
    STATISTIC_RTSP_TOTAL_REQUESTS = 318
    #  	Total RTSP responses.
    STATISTIC_RTSP_TOTAL_RESPONSES = 319
    #  	Total RTSP errors.
    STATISTIC_RTSP_TOTAL_ERRORS = 320
    #  	Total RTSP interleaved data packets.
    STATISTIC_RTSP_TOTAL_INTERLEAVED_DATA = 321
    #  	CPU usage (in percentage) for the GTM object.
    STATISTIC_GTM_METRICS_CPU_USAGE = 322
    #  	Memory available (in bytes) for the GTM object.
    STATISTIC_GTM_METRICS_MEMORY_AVAILABLE = 323
    #  	Inbound bits/sec for the GTM object.
    STATISTIC_GTM_METRICS_BITS_PER_SECOND_IN = 324
    #  	Outbound bits/sec for the GTM object.
    STATISTIC_GTM_METRICS_BITS_PER_SECOND_OUT = 325
    #  	Inbound packets/sec for the GTM object.
    STATISTIC_GTM_METRICS_PACKETS_PER_SECOND_IN = 326
    #  	Outbound packets/sec for the GTM object.
    STATISTIC_GTM_METRICS_PACKETS_PER_SECOND_OUT = 327
    #  	Total connections for the GTM object.
    STATISTIC_GTM_METRICS_TOTAL_CONNECTIONS = 328
    #  	Connection rate for the GTM object.
    STATISTIC_GTM_METRICS_TOTAL_CONNECTION_RATE = 329
    #  	Total bit rate through link.
    STATISTIC_GTM_LINK_TOTAL_BIT_RATE = 330
    #  	Total gateway bit rate.
    STATISTIC_GTM_LINK_TOTAL_GATEWAY_BIT_RATE = 331
    #  	Inbound gateway bit rate.
    STATISTIC_GTM_LINK_INBOUND_GATEWAY_BIT_RATE = 332
    #  	Outbound gateway bit rate.
    STATISTIC_GTM_LINK_OUTBOUND_GATEWAY_BIT_RATE = 333
    #  	Sum of link VS bit rates.
    STATISTIC_GTM_LINK_TOTAL_VS_BIT_RATE = 334
    #  	Sum of inbound link VS bit rates.
    STATISTIC_GTM_LINK_INBOUND_VS_BIT_RATE = 335
    #  	Sum of outbound link VS bit rates.
    STATISTIC_GTM_LINK_OUTBOUND_VS_BIT_RATE = 336
    #  	Total inbound rate calculation for link.
    STATISTIC_GTM_LINK_TOTAL_INBOUND_BIT_RATE = 337
    #  	Total outbound rate calculation for link.
    STATISTIC_GTM_LINK_TOTAL_OUTBOUND_BIT_RATE = 338
    #  	This is used to set dynamic ratios on the outbound gateway pool members. This controls the outbound connections.
    STATISTIC_GTM_LINK_LCS_OUT = 339
    #  	This is used to control inbound connections which are load-balanced through external virtual servers which are controlled by gtmd.
    STATISTIC_GTM_LINK_LCS_IN = 340
    #  	Number of times the preferred LB method was used.
    STATISTIC_GTM_POOL_PREFERRED_LB_METHODS = 341
    #  	Number of times the alternate LB method was used.
    STATISTIC_GTM_POOL_ALTERNATE_LB_METHODS = 342
    #  	Number of times the fallback LB method was used.
    STATISTIC_GTM_POOL_FALLBACK_LB_METHODS = 343
    #  	Number of dropped connections.
    STATISTIC_GTM_POOL_DROPPED_CONNECTIONS = 344
    #  	Number of times this pool defaulted back to an explicit IP address.
    STATISTIC_GTM_POOL_EXPLICIT_IP = 345
    #  	Number of times the LB method chosen was LB_METHOD_RETURN_TO_DNS, i.e. we don't choose a pool, let DNS resolve the name.
    STATISTIC_GTM_POOL_RETURN_TO_DNS = 346
    #  	Number of times the preferred LB method was used.
    STATISTIC_GTM_POOL_MEMBER_PREFERRED_LB_METHODS = 347
    #  	Number of times the alternate LB method was used.
    STATISTIC_GTM_POOL_MEMBER_ALTERNATE_LB_METHODS = 348
    #  	Number of times the fallback LB method was used.
    STATISTIC_GTM_POOL_MEMBER_FALLBACK_LB_METHODS = 349
    #  	The sum of all the "picked" VSes used by this server.
    STATISTIC_GTM_SERVER_VS_PICKS = 350
    #  	Number of times this virtual server was selected by the LB logic.
    STATISTIC_GTM_VIRTUAL_SERVER_PICKS = 351
    #  	Number of requests for resolution of this wide IP.
    STATISTIC_GTM_WIDEIP_REQUESTS = 352
    #  	Number of times this wide IP was resolved successfully.
    STATISTIC_GTM_WIDEIP_RESOLUTIONS = 353
    #  	Number of times this wide IP was resolved as a persistent connection.
    STATISTIC_GTM_WIDEIP_PERSISTED = 354
    #  	Number of times the preferred LB method was used on this wide IP.
    STATISTIC_GTM_WIDEIP_PREFERRED_LB_METHODS = 355
    #  	Number of times the alternate LB method was used on this wide IP.
    STATISTIC_GTM_WIDEIP_ALTERNATE_LB_METHODS = 356
    #  	Number of times the fallback LB method was used on this wide IP.
    STATISTIC_GTM_WIDEIP_FALLBACK_LB_METHODS = 357
    #  	Number of times requests for this wide IP were dropped.
    STATISTIC_GTM_WIDEIP_DROPPED_CONNECTIONS = 358
    #  	Number of times this wide IP defaulted back to an explicit IP.
    STATISTIC_GTM_WIDEIP_EXPLICIT_IP = 359
    #  	Number of times the LB method chosen was LB_METHOD_RETURN_TO_DNS, i.e. we don't choose a wide IP, let DNS resolve the name.
    STATISTIC_GTM_WIDEIP_RETURN_TO_DNS = 360
    #  	Total memory available to GTM.
    STATISTIC_GTM_MEMORY_TOTAL_BYTES = 361
    #  	Total memory in use by GTM.
    STATISTIC_GTM_MEMORY_USED_BYTES = 362
    #  	Number of times an iQuery connection was closed and reopened.
    STATISTIC_GTM_IQUERY_RECONNECTS = 363
    #  	Number of bytes received on this iQuery connections.
    STATISTIC_GTM_IQUERY_RECEIVED_BYTES = 364
    #  	Number of bytes sent on this iQuery connections.
    STATISTIC_GTM_IQUERY_SENT_BYTES = 365
    #  	Number of times a send was backlogged.
    STATISTIC_GTM_BACKLOGGED_SENDS = 366
    #  	Number of bytes dropped due to backlogged or unconnected.
    STATISTIC_GTM_DROPPED_BYTES = 367
    #  	The current (most recent) RTT for this path.
    STATISTIC_GTM_PATH_CURRENT_RTT = 368
    #  	The average RTT for this path
    STATISTIC_GTM_PATH_AVERAGE_RTT = 369
    #  	Number of hops most recently used for this path.
    STATISTIC_GTM_PATH_CURRENT_HOPS = 370
    #  	Average number of hops used for this path.
    STATISTIC_GTM_PATH_AVERAGE_HOPS = 371
    #  	Current "hit ratio" for this path.
    STATISTIC_GTM_PATH_CURRENT_COMPENSATION_RATE = 372
    #  	Average "hit ratio" for this path.
    STATISTIC_GTM_PATH_AVERAGE_COMPENSATION_RATE = 373
    #  	Number of times a request has been received from this LDNS.
    STATISTIC_GTM_LDNS_REQUESTS = 374
    #  	Number of Set-Cookie header insertions
    STATISTIC_HTTPCLASS_COOKIE_PERSIST_INSERTS = 375
    #  	Number of server-side responses in range of 200 to 206 (successful responses)
    STATISTIC_HTTPCLASS_2XX_RESPONSES = 376
    #  	Number of server-side responses in range of 300 to 307 (redirection resposes)
    STATISTIC_HTTPCLASS_3XX_RESPONSES = 377
    #  	Number of server-side responses in range of 400 to 417 (client errors)
    STATISTIC_HTTPCLASS_4XX_RESPONSES = 378
    #  	Number of server-side responses in range of 500 to 505 (server errors)
    STATISTIC_HTTPCLASS_5XX_RESPONSES = 379
    # number of HTTPCLASS requests
    STATISTIC_HTTPCLASS_TOTAL_REQUESTS = 380
    #  	Total number of GET requests
    STATISTIC_HTTPCLASS_GET_REQUESTS = 381
    #  	Total number of POST requests
    STATISTIC_HTTPCLASS_POST_REQUESTS = 382
    #  	Total number of version 9 requests
    STATISTIC_HTTPCLASS_V9_REQUESTS = 383
    #  	Total number of version 10 requests
    STATISTIC_HTTPCLASS_V10_REQUESTS = 384
    #  	Total number of version 11 requests
    STATISTIC_HTTPCLASS_V11_REQUESTS = 385
    #  	Total number of version 9 responses
    STATISTIC_HTTPCLASS_V9_RESPONSES = 386
    #  	Total number of version 10 responses
    STATISTIC_HTTPCLASS_V10_RESPONSES = 387
    #  	Total number of version 11 responses
    STATISTIC_HTTPCLASS_V11_RESPONSES = 388
    #  	Maximum number of requests made in a connection
    STATISTIC_HTTPCLASS_MAXIMUM_KEEPALIVE_REQUESTS = 389
    #  	Number of responses under 1k
    STATISTIC_HTTPCLASS_BUCKET_1K_RESPONSES = 390
    #  	Number of responses from 1 - 4k
    STATISTIC_HTTPCLASS_BUCKET_4K_RESPONSES = 391
    #  	Number of responses from 4 - 16k
    STATISTIC_HTTPCLASS_BUCKET_16K_RESPONSES = 392
    #  	Number of responses from 16 - 32k
    STATISTIC_HTTPCLASS_BUCKET_32K_RESPONSES = 393
    #  	Number of responses from 32 - 64k
    STATISTIC_HTTPCLASS_BUCKET_64K_RESPONSES = 394
    #  	Total number of response bytes before compression has taken place
    STATISTIC_HTTPCLASS_PRE_COMPRESSION_BYTES = 395
    #  	To number of response bytes after compression has taken place
    STATISTIC_HTTPCLASS_POST_COMPRESSION_BYTES = 396
    #  	Number of bytes subjected to NULL compression (for license enforcement).
    STATISTIC_HTTPCLASS_NULL_COMPRESSION_BYTES = 397
    #  	Number of response bytes before compression has taken place for MIME type HTML.
    STATISTIC_HTTPCLASS_HTML_PRE_COMPRESSION_BYTES = 398
    #  	Number of response bytes after compression has taken place for MIME type HTML.
    STATISTIC_HTTPCLASS_HTML_POST_COMPRESSION_BYTES = 399
    #  	Number of response bytes before compression has taken place for MIME type CSS.
    STATISTIC_HTTPCLASS_CSS_PRE_COMPRESSION_BYTES = 400
    #  	Number of response bytes after compression has taken place for MIME type CSS.
    STATISTIC_HTTPCLASS_CSS_POST_COMPRESSION_BYTES = 401
    #  	Number of response bytes before compression has taken place for MIME type Javascript.
    STATISTIC_HTTPCLASS_JS_PRE_COMPRESSION_BYTES = 402
    #  	Number of response bytes after compression has taken place for MIME type Javascript.
    STATISTIC_HTTPCLASS_JS_POST_COMPRESSION_BYTES = 403
    #  	Number of response bytes before compression has taken place for MIME type XML.
    STATISTIC_HTTPCLASS_XML_PRE_COMPRESSION_BYTES = 404
    #  	Number of response bytes after compression has taken place for MIME type XML.
    STATISTIC_HTTPCLASS_XML_POST_COMPRESSION_BYTES = 405
    #  	Number of response bytes before compression has taken place for MIME type SGML.
    STATISTIC_HTTPCLASS_SGML_PRE_COMPRESSION_BYTES = 406
    #  	Number of response bytes after compression has taken place for MIME type SGML.
    STATISTIC_HTTPCLASS_SGML_POST_COMPRESSION_BYTES = 407
    #  	Number of response bytes before compression has taken place for MIME type Plain text.
    STATISTIC_HTTPCLASS_PLAIN_PRE_COMPRESSION_BYTES = 408
    #  	Number of response bytes after compression has taken place for MIME type Plain text.
    STATISTIC_HTTPCLASS_PLAIN_POST_COMPRESSION_BYTES = 409
    #  	Number of response bytes before compression has taken place for MIME type Octet.
    STATISTIC_HTTPCLASS_OCTET_PRE_COMPRESSION_BYTES = 410
    #  	Number of response bytes after compression has taken place for MIME type Octet.
    STATISTIC_HTTPCLASS_OCTET_POST_COMPRESSION_BYTES = 411
    #  	Number of response bytes before compression has taken place for MIME type Image.
    STATISTIC_HTTPCLASS_IMAGE_PRE_COMPRESSION_BYTES = 412
    #  	Number of response bytes after compression has taken place for MIME type Image.
    STATISTIC_HTTPCLASS_IMAGE_POST_COMPRESSION_BYTES = 413
    #  	Number of response bytes before compression has taken place for MIME type Video.
    STATISTIC_HTTPCLASS_VIDEO_PRE_COMPRESSION_BYTES = 414
    #  	Number of response bytes after compression has taken place for MIME type Video.
    STATISTIC_HTTPCLASS_VIDEO_POST_COMPRESSION_BYTES = 415
    #  	Number of response bytes before compression has taken place for MIME type Audio.
    STATISTIC_HTTPCLASS_AUDIO_PRE_COMPRESSION_BYTES = 416
    #  	Number of response bytes after compression has taken place for MIME type Audio.
    STATISTIC_HTTPCLASS_AUDIO_POST_COMPRESSION_BYTES = 417
    #  	Number of response bytes before compression has taken place for all other MIME types.
    STATISTIC_HTTPCLASS_OTHER_PRE_COMPRESSION_BYTES = 418
    #  	Number of response bytes after compression has taken place for all other MIME types.
    STATISTIC_HTTPCLASS_OTHER_POST_COMPRESSION_BYTES = 419
    #  	RAM Cache hit count.
    STATISTIC_HTTPCLASS_RAM_CACHE_HITS = 420
    #  	RAM Cache miss count, excluding uncacheable data.
    STATISTIC_HTTPCLASS_RAM_CACHE_MISSES = 421
    #  	Total RAM Cache miss count.
    STATISTIC_HTTPCLASS_RAM_CACHE_TOTAL_MISSES = 422
    #  	RAM Cache hit bytes.
    STATISTIC_HTTPCLASS_RAM_CACHE_HIT_BYTES = 423
    #  	RAM Cache miss bytes, excluding uncacheable data.
    STATISTIC_HTTPCLASS_RAM_CACHE_MISS_BYTES = 424
    #  	Total RAM Cache miss bytes.
    STATISTIC_HTTPCLASS_RAM_CACHE_TOTAL_MISS_BYTES = 425
    #  	Number of connections accepted.
    STATISTIC_SCTP_ACCEPTS = 426
    #  	Number of connections not accepted.
    STATISTIC_SCTP_FAILED_ACCEPT = 427
    #  	Number of connections completely established.
    STATISTIC_SCTP_CONNECTIONS = 428
    #  	Number of connection failures.
    STATISTIC_SCTP_FAILED_CONNECTION = 429
    #  	Number of expired connections due to idle timeout.
    STATISTIC_SCTP_EXPIRED_CONNECTIONS = 430
    #  	Number of abandoned connections due to retries/keep-alives.
    STATISTIC_SCTP_ABANDONED_CONNECTIONS = 431
    #  	Number of resets received.
    STATISTIC_SCTP_RESETS = 432
    #  	Number of times a bad checksum is encountered.
    STATISTIC_SCTP_BAD_CHECKSUMS = 433
    #  	Number of SCTP cookies received.
    STATISTIC_SCTP_COOKIES = 434
    #  	Number of bad SCTP cookies received.
    STATISTIC_SCTP_BAD_COOKIES = 435
    #  	Total paths through link.
    STATISTIC_GTM_LINK_PATHS = 436
    #  	Total number of LDNSes.
    STATISTIC_GTM_TOTAL_LDNSES = 437
    #  	Total number of paths.
    STATISTIC_GTM_TOTAL_PATHS = 438
    #  	Total number of SYN cookies generated by PVA ASIC.
    STATISTIC_HARDWARE_SYN_COOKIES_GENERATED = 439
    #  	Total number of SYN cookies detected by PVA ASIC.
    STATISTIC_HARDWARE_SYN_COOKIES_DETECTED = 440
    #  	Current open connections.
    STATISTIC_FASTL4_OPEN_CONNECTIONS = 441
    #  	Current connections that have been accepted.
    STATISTIC_FASTL4_ACCEPTED_CONNECTIONS = 442
    #  	Number of accept failures.
    STATISTIC_FASTL4_ACCEPT_FAILURES = 443
    #  	Expired connections due to idle timeout.
    STATISTIC_FASTL4_EXPIRED_CONNECTIONS = 444
    #  	Number of malformed packets received.
    STATISTIC_FASTL4_RECEIVED_BAD_PACKET = 445
    #  	Number of ICMP unreachable or TCP RSTs received.
    STATISTIC_FASTL4_ACCEPTED_ICMP_UNREACH_OR_TCP_RST = 446
    #  	Number of TCP RSTs received out of window.
    STATISTIC_FASTL4_ACCEPTED_TCP_RST_OUT_OF_WIN = 447
    #  	Number of times a bad checksum is encountered.
    STATISTIC_FASTL4_RECEIVED_BAD_CHECKSUMS = 448
    #  	Number of transmit errors.
    STATISTIC_FASTL4_RECEIVED_BAD_TXERR = 449
    #  	Number of syncookies issued.
    STATISTIC_FASTL4_RECEIVED_SYN_COOKIES_ISSUED = 450
    #  	Number of syncookies accepted.
    STATISTIC_FASTL4_RECEIVED_SYN_COOKIES_ACCEPTED = 451
    #  	Number of syncookies rejected.
    STATISTIC_FASTL4_RECEIVED_SYN_COOKIES_REJECTED = 452
    #  	
    STATISTIC_FASTL4_RECEIVED_SYN_COOKIES_SYN_TO_SERVER_RETRANS = 453
    #  	Process ID of TMOS processing agent.
    STATISTIC_TM_PID = 454
    #  	TMOS processing agent CPU number.
    STATISTIC_TM_CPU = 455
    #  	TMOS processing agent instance.
    STATISTIC_TM_TMID = 456
    #  	Number of TMOS processing agents.
    STATISTIC_TM_NPUS = 457
    #  	Number of connections that were redirected to a different TMOS processing agent in the cluster.
    STATISTIC_TM_CMP_CONN_REDIRECTED = 458
    #  	Number of CPUs on the system.
    STATISTIC_CPU_COUNT = 459
    #  	The numeric ID of the processor, i.e. 1, 2, 3, 4 ....
    STATISTIC_CPU_INFO_CPU_ID = 460
    #  	The time spent by the processor in user context.
    STATISTIC_CPU_INFO_USER = 461
    #  	The time spent by the processor running niced processes.
    STATISTIC_CPU_INFO_NICED = 462
    #  	The time spent by the processor servicing system calls.
    STATISTIC_CPU_INFO_SYSTEM = 463
    #  	The time spent by the processor doing nothing.
    STATISTIC_CPU_INFO_IDLE = 464
    #  	The time spent by the processor servicing hardware interrupts.
    STATISTIC_CPU_INFO_IRQ = 465
    #  	The time spent by the processor servicing soft interrupts.
    STATISTIC_CPU_INFO_SOFTIRQ = 466
    #  	The time spent by the processor waiting for external I/O to complete.
    STATISTIC_CPU_INFO_IOWAIT = 467
    #  	The ratio of time spent in user,niced,system to total time spent by the processor for a recent 10 second period.
    STATISTIC_CPU_INFO_USAGE_RATIO = 468
    #  	Number of request messages.
    STATISTIC_SIP_REQUESTS = 469
    #  	Number of response messages.
    STATISTIC_SIP_RESPONSES = 470
    #  	Number of messages which failed to parse correctly (connection is aborted).
    STATISTIC_SIP_BAD_MESSAGES = 471
    #  	Number of datagrams dropped (connection aborted). 
    STATISTIC_SIP_DROPS = 472
  end
end
