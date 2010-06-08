module IControl
  module LocalLB
    
    class HardwareAccelerationMode
      include IControl::ConstDefiner
      declare_constants [:HW_ACCELERATION_MODE_NONE,:HW_ACCELERATION_ASSIST,:HW_ACCELERATION_MODE_FULL],HardwareAccelerationMode
    end

    class SnatType
      include IControl::ConstDefiner
      declare_constants [:SNAT_TYPE_NONE,:SNAT_TYPE_TRANSLATION_ADDRESS,:SNAT_TYPE_SNATPOOL,:SNAT_TYPE_AUTOMAP],SnatType
    end

    class ProfileType
      class PROFILE_TYPE_TCP; end
      class PROFILE_TYPE_UDP; end
      class PROFILE_TYPE_FTP; end
      class PROFILE_TYPE_FAST_L4; end
      class PROFILE_TYPE_HTTP; end
      class PROFILE_TYPE_SERVER_SSL; end
      class PROFILE_TYPE_CLIENT_SSL; end
      class PROFILE_TYPE_AUTH; end
      class PROFILE_TYPE_PERSISTENCE; end
      class PROFILE_TYPE_CONNECTION_POOL; end
      class PROFILE_TYPE_STREAM; end
      class PROFILE_TYPE_STREAM; end
      class PROFILE_TYPE_FAST_HTTP; end
      class PROFILE_TYPE_IIOP; end
      class PROFILE_TYPE_RTSP; end
      class PROFILE_TYPE_STATISTICS; end
      class PROFILE_TYPE_HTTPCLASS; end
      class ROFILE_TYPE_HTTPCLASS; end
      class PROFILE_TYPE_SCTP; end
      class PROFILE_TYPE_INSTANCE; end
      class PROFILE_TYPE_SIPP; end
    end
  end
end
