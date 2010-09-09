module IControl # :nodoc:
  module LocalLB # :nodoc: 


    ## 
    #  A struct that describes a pattern, represented either as a glob or a regular expression. 
    class MatchPatternString
      attr_accessor :is_glob,:pattern
      def initialize(options)
        @is_glob = options[:is_glob] ? true : false
        @pattern = options[:pattern]
      end

      # True if it is a regexp
      def is_regexp?
        return !@is_glob
      end
    end

    ##
    #  A list of possible levels for hardware acceleration. 
    class HardwareAccelerationMode
      # No hardware acceleration involvement, software only.
      HW_ACCELERATION_MODE_NONE = :HW_ACCELERATION_MODE_NONE
      # Full hardware acceleration, i.e. PVA/hardware handles connection initiation and packet processing. 
      HW_ACCELERATION_MODE_ASSIS = :HW_ACCELERATION_MODE_ASSIS
      # Software handles connection initiation, PVA/hardware handles packet processing on the connections.
      HW_ACCELERATION_MODE_FUL = :HW_ACCELERATION_MODE_FUL
    end
    
    ##
    #  An enumeration of clone pool types. 
    class ClonePoolType
      # The clone pool is undefined.
      CLONE_POOL_TYPE_UNDEFINED = :CLONE_POOL_TYPE_UNDEFINED
      # The client-side clone pool.
      CLONE_POOL_TYPE_CLIENTSID = :CLONE_POOL_TYPE_CLIENTSID
      # The server-side clone pool. 
      CLONE_POOL_TYPE_SERVERSID = :CLONE_POOL_TYPE_SERVERSID
    end
    
    ##
    #  A list of profile context types. 
    class ProfileContextType
      # Profile applies to both client and server sides.
      PROFILE_CONTEXT_TYPE_ALL = :PROFILE_CONTEXT_TYPE_ALL
      # Profile applies to the client side only.
      PROFILE_CONTEXT_TYPE_CLIEN = :PROFILE_CONTEXT_TYPE_CLIEN
      # Profile applies to the server side only. 
      PROFILE_CONTEXT_TYPE_SERVE = :PROFILE_CONTEXT_TYPE_SERVE
    end
    
    ##
    #  A list of translation types.
    class SnatType     
      # No snat is being used.
      SNAT_TYPE_NONE = :SNAT_TYPE_NONE
      # The snat uses a single translation address.
      SNAT_TYPE_TRANSLATION_ADDRESS = :SNAT_TYPE_TRANSLATION_ADDRESS
      # The snat uses a SNAT pool of translation addresses.
      SNAT_TYPE_SNATPOOL = :SNAT_TYPE_SNATPOOL
      # The snat uses self IP addresses. 
      SNAT_TYPE_AUTOMAP = :SNAT_TYPE_AUTOMAP
    end

    ##
    #  A list of profile types. 
    class ProfileType
      # The TCP profile.
      PROFILE_TYPE_TCP = :PROFILE_TYPE_TCP
      # The UDP profile.
      PROFILE_TYPE_UDP = :PROFILE_TYPE_UDP
      # The FTP profile.
      PROFILE_TYPE_FTP = :PROFILE_TYPE_FTP
      # The L4 translation profile.
      PROFILE_TYPE_FAST_L4 = :PROFILE_TYPE_FAST_L4
      # The HTTP profile.
      PROFILE_TYPE_HTTP = :PROFILE_TYPE_HTTP
      # The server-side SSL profile.
      PROFILE_TYPE_SERVER_SSL = :PROFILE_TYPE_SERVER_SSL
      # The client-side SSL profile.
      PROFILE_TYPE_CLIENT_SSL = :PROFILE_TYPE_CLIENT_SSL
      # The authorization profile.
      PROFILE_TYPE_AUTH = :PROFILE_TYPE_AUTH
      # The persistence profile.
      PROFILE_TYPE_PERSISTENCE = :PROFILE_TYPE_PERSISTENCE
      # The connection pool profile.
      PROFILE_TYPE_CONNECTION_POOL = :PROFILE_TYPE_CONNECTION_POOL
      # The stream profile.
      PROFILE_TYPE_STREAM = :PROFILE_TYPE_STREAM
      # The XML profile.
      PROFILE_TYPE_XML = :PROFILE_TYPE_XML
      # The FastHTTP profile.
      PROFILE_TYPE_FAST_HTTP = :PROFILE_TYPE_FAST_HTTP
      # The IIOP profile.
      PROFILE_TYPE_IIOP = :PROFILE_TYPE_IIOP
      # The RTSP profile.
      PROFILE_TYPE_RTSP = :PROFILE_TYPE_RTSP
      # The STATISTICS profile.
      PROFILE_TYPE_STATISTICS = :PROFILE_TYPE_STATISTICS
      # The HTTP class profile.
      PROFILE_TYPE_HTTPCLASS = :PROFILE_TYPE_HTTPCLASS
      # The DNS profile.
      PROFILE_TYPE_DNS = :PROFILE_TYPE_DNS
      # The SCTP profile.
      PROFILE_TYPE_SCTP = :PROFILE_TYPE_SCTP
      # A loosely-typed profile.
      PROFILE_TYPE_INSTANCE = :PROFILE_TYPE_INSTANCE
      # The SIP profile. 
      PROFILE_TYPE_SIPP = :PROFILE_TYPE_SIPP
    end


    class PersistenceMode
      # No persistence mode.
      PERSISTENCE_MODE_NONE = :PERSISTENCE_MODE_NONE
      # Simple or Source Address affinity persistence mode.
      PERSISTENCE_MODE_SOURCE_ADDRESS_AFFINITY = :PERSISTENCE_MODE_SOURCE_ADDRESS_AFFINITY
      # Sticky or Destination Address affinity persistence mode.
      PERSISTENCE_MODE_DESTINATION_ADDRESS_AFFINITY = :PERSISTENCE_MODE_DESTINATION_ADDRESS_AFFINITY
      # Cookie persistence mode.
      PERSISTENCE_MODE_COOKIE = :PERSISTENCE_MODE_COOKIE
      # Microsoft Terminal Server persistence mode.
      PERSISTENCE_MODE_MSRDP = :PERSISTENCE_MODE_MSRDP
      # SSL Session ID persistence mode.
      PERSISTENCE_MODE_SSL_SID = :PERSISTENCE_MODE_SSL_SID
      # SIP (Call-ID) persistence mode.
      PERSISTENCE_MODE_SIP = :PERSISTENCE_MODE_SIP
      # Universal persistence mode.
      PERSISTENCE_MODE_UIE = :PERSISTENCE_MODE_UIE
      # Hash persistence mode. 
      PERSISTENCE_MODE_HASH = :PERSISTENCE_MODE_HASH
    end   
  end
end
