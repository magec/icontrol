module IControl
  module LocalLB
    
    ##
    #  A list of possible levels for hardware acceleration. 
    class HardwareAccelerationMode
      class HW_ACCELERATION_MODE_NONE ; VALUE = 0; end
      class HW_ACCELERATION_MODE_ASSIST; VALUE = 1; end
      class HW_ACCELERATION_MODE_FULL; VALUE = 2 ; end
    end

    ##
    #  An enumeration of clone pool types. 
    class ClonePoolType
      class CLONE_POOL_TYPE_UNDEFINED ; VALUE = 0; end
      class CLONE_POOL_TYPE_CLIENTSIDE; VALUE = 1; end
      class CLONE_POOL_TYPE_SERVERSIDE; VALUE = 2 ; end
    end

    ##
    #  A list of profile context types. 
    class ProfileContextType
      class PROFILE_CONTEXT_TYPE_ALL ; VALUE = 0; end
      class PROFILE_CONTEXT_TYPE_CLIENT; VALUE = 1; end
      class PROFILE_CONTEXT_TYPE_SERVER; VALUE = 2 ; end
    end
    
    ##
    #  A list of translation types.
    class SnatType     
      class SNAT_TYPE_NONE ; VALUE = 0; end
      class SNAT_TYPE_TRANSLATION_ADDRESS ; VALUE = 1; end
      class SNAT_TYPE_SNATPOOL ; VALUE = 2; end
      class SNAT_TYPE_AUTOMAP ; VALUE = 3 ; end
    end

    ##
    #  A list of profile types. 
    class ProfileType
      class PROFILE_TYPE_TCP ; VALUE = 0; end
      class PROFILE_TYPE_UDP; VALUE = 1; end
      class PROFILE_TYPE_FTP; VALUE = 2; end
      class PROFILE_TYPE_FAST_L4; VALUE = 3; end
      class PROFILE_TYPE_HTTP; VALUE = 4; end
      class PROFILE_TYPE_SERVER_SSL; VALUE = 5; end
      class PROFILE_TYPE_CLIENT_SSL; VALUE = 6; end
      class PROFILE_TYPE_AUTH; VALUE = 7; end
      class PROFILE_TYPE_PERSISTENCE; VALUE = 8; end
      class PROFILE_TYPE_CONNECTION_POOL; VALUE = 9; end
      class PROFILE_TYPE_STREAM; VALUE = 10; end
      class PROFILE_TYPE_XML; VALUE = 11; end
      class PROFILE_TYPE_FAST_HTTP; VALUE = 12; end
      class PROFILE_TYPE_IIOP; VALUE = 13; end
      class PROFILE_TYPE_RTSP; VALUE = 14; end
      class PROFILE_TYPE_STATISTICS; VALUE = 15; end
      class PROFILE_TYPE_HTTPCLASS; VALUE = 16; end
      class PROFILE_TYPE_DNS; VALUE = 17; end
      class PROFILE_TYPE_SCTP; VALUE = 18; end
      class PROFILE_TYPE_INSTANCE; VALUE = 19; end
      class PROFILE_TYPE_SIPP; VALUE = 20 ; end
    end


    class PersistenceMode
      class PERSISTENCE_MODE_NONE ; VALUE = 0; end
      class PERSISTENCE_MODE_SOURCE_ADDRESS_AFFINITY; VALUE = 1; end
      class PERSISTENCE_MODE_DESTINATION_ADDRESS_AFFINITY; VALUE = 2; end
      class PERSISTENCE_MODE_COOKIE; VALUE = 3; end
      class PERSISTENCE_MODE_MSRDP; VALUE = 4; end
      class PERSISTENCE_MODE_SSL_SID; VALUE = 5; end
      class PERSISTENCE_MODE_SIP; VALUE = 6; end
      class PERSISTENCE_MODE_UIE; VALUE = 7; end
      class PERSISTENCE_MODE_HASH; VALUE = 8 ; end
    end   
  end
end
