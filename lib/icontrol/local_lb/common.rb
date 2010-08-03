module IControl
  module LocalLB
    
    class HardwareAccelerationMode
      include IControl::ConstDefiner
      declare_constants  [:HW_ACCELERATION_MODE_NONE, :HW_ACCELERATION_ASSIST, :HW_ACCELERATION_MODE_FULL ], HardwareAccelerationMode
    end

    class ClonePoolType
      include IControl::ConstDefiner
      declare_constants [ :CLONE_POOL_TYPE_UNDEFINED, :CLONE_POOL_TYPE_CLIENTSIDE, :CLONE_POOL_TYPE_SERVERSIDE ], ClonePoolType
    end

    class ProfileContextType
      include IControl::ConstDefiner
      declare_constants [ :PROFILE_CONTEXT_TYPE_ALL, :PROFILE_CONTEXT_TYPE_CLIENT, :PROFILE_CONTEXT_TYPE_SERVER], ProfileContextType
    end

    class SnatType
      include IControl::ConstDefiner
      declare_constants [ :SNAT_TYPE_NONE, :SNAT_TYPE_TRANSLATION_ADDRESS, :SNAT_TYPE_SNATPOOL, :SNAT_TYPE_AUTOMAP ], SnatType
    end

    class ProfileType
      include IControl::ConstDefiner

      declare_constants [ :PROFILE_TYPE_TCP, :PROFILE_TYPE_UDP, :PROFILE_TYPE_FTP, :PROFILE_TYPE_FAST_L4, 
                          :PROFILE_TYPE_HTTP, :PROFILE_TYPE_SERVER_SSL, :PROFILE_TYPE_CLIENT_SSL, 
                          :PROFILE_TYPE_AUTH, :PROFILE_TYPE_PERSISTENCE, :PROFILE_TYPE_CONNECTION_POOL, 
                          :PROFILE_TYPE_STREAM, :PROFILE_TYPE_FAST_HTTP, :PROFILE_TYPE_IIOP, 
                          :PROFILE_TYPE_RTSP, :PROFILE_TYPE_STATISTICS, :PROFILE_TYPE_HTTPCLASS, :PROFILE_TYPE_SCTP, 
                          :PROFILE_TYPE_INSTANCE, :PROFILE_TYPE_SIPP ], ProfileType
    end
  end
end
