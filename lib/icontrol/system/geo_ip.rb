module IControl::System
  ##
  # The GeoIP interface enables you to maintain the GeoIP location database. The location database maps IP addresses to geographical locations.
  class GeoIP < IControl::Base

    set_id_name "nil"

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Loads GeoIP data files into the running configuration. The directory /shared/GeoIP is used for user files (as opposed to the information shipped with the system). The user files override the system files according to the preferences shown below. Note: You can use the upload_file method (ConfigSync interface) to get data files to the system. The system has the following order of preference when loading files. Order of precedence for IPv4 mapping: /shared/GeoIP/GeoIPCity.dat /shared/GeoIP/GeoIPRegion.dat /shared/GeoIP/GeoIP.dat /usr/share/GeoIP/F5GeoIP.dat Order of precedence for IPv6 mapping: /shared/GeoIP/GeoIPv6.dat /usr/share/GeoIP/F5GeoIPv6.dat ISP: /shared/GeoIP/GeoIPISP.dat Organization: /shared/GeoIP/GeoIPOrg.dat
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def load
      super
    end


  end
end
