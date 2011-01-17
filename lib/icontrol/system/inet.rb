module IControl::System
  ##
  # The Inet interface exposes the internal API functionality that you can use to manipulate
  # the rc.conf and resolv.conf files. The ntp.conf file includes the functionality that
  # you can use to set and get the following settings: host name, IP address (get only),
  # router, NTP server and DNS server.
  class Inet < IControl::Base

    set_id_name "hostnames"

    ##
    # Gets the IP addresses that the device is using as its DNS servers.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def dns_server_address
      super
    end

    ##
    # Gets the host name of the device.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def hostname
      super
    end

    ##
    # Gets the IP address/host name that that the device is using for its NTP service.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def ntp_server_address
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
    # Translate this hostname to IP addresses.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def hostname_to_ip
      super
    end

    ##
    # Translate this IP addresses into hostname.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :ip_addresses The list of IP addresses to translate into hostnames.
    def ip_to_hostname(opts)
      opts = check_params(opts,[:ip_addresses])
      super(opts)
    end

    ##
    # Translate this service names to service numbers. If a service name can not be translated
    # into an equivalent service number, a service number of 0 will be returned for that
    # service name.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :service_names The list of hostnames to translate into IP addresses
    def service_name_to_service_number(opts)
      opts = check_params(opts,[:service_names])
      super(opts)
    end

    ##
    # Translate this service numbers into service names. If an service number can not be
    # translated into an equivalent service name, the string format of the service number
    # will be returned.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :services The list of service numbers to translate into service names.
    def service_number_to_service_name(opts)
      opts = check_params(opts,[:services])
      super(opts)
    end

    ##
    # Sets the host name of the device.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :hostname The new hostname to set.
    def set_hostname(opts)
      opts = check_params(opts,[:hostname])
      super(opts)
    end

    ##
    # Configures the IP address/host name that the device uses for its NTP service.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :ntp_addresses The IP addresses/host names of valid NTP servers.
    def set_ntp_server_address(opts)
      opts = check_params(opts,[:ntp_addresses])
      super(opts)
    end


  end
end
