module IControl::System
  ##
  # The Inet interface exposes the internal API functionality that you can use to manipulate
  # the rc.conf and resolv.conf files. The ntp.conf file includes the functionality that
  # you can use to set and get the following settings: host name, IP address (get only),
  # router, NTP server and DNS server.
  class Inet < IControl::Base
    ##
    # Gets the IP addresses that the device is using as its DNS servers.
    # :method: get_dns_server_address

    ##
    # Gets the host name of the device.
    # :method: get_hostname

    ##
    # Gets the IP address/host name that that the device is using for its NTP service.
    # :method: get_ntp_server_address

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Translate the specified hostnames to IP addresses.
    # :method: hostname_to_ip
    # :call-seq:
    # hostname_to_ip(hostnames)
    #
    # Parameters:
    # - hostnames String[] The list of hostnames to translate into IP addresses

    ##
    # Translate the specified IP addresses into hostnames.
    # :method: ip_to_hostname
    # :call-seq:
    # ip_to_hostname(ip_addresses)
    #
    # Parameters:
    # - ip_addresses String[] The list of IP addresses to translate into hostnames.

    ##
    # Translate the specified service names to service numbers. If a service name can not
    # be translated into an equivalent service number, a service number of 0 will be returned
    # for that service name.
    # :method: service_name_to_service_number
    # :call-seq:
    # service_name_to_service_number(service_names)
    #
    # Parameters:
    # - service_names String[] The list of hostnames to translate into IP addresses

    ##
    # Translate the specified service numbers into service names. If an service number
    # can not be translated into an equivalent service name, the string format of the service
    # number will be returned.
    # :method: service_number_to_service_name
    # :call-seq:
    # service_number_to_service_name(services)
    #
    # Parameters:
    # - services long[] The list of service numbers to translate into service names.

    ##
    # Sets the host name of the device.
    # :method: set_hostname
    # :call-seq:
    # set_hostname(hostname)
    #
    # Parameters:
    # - hostname String The new hostname to set.

    ##
    # Configures the IP address/host name that the device uses for its NTP service.
    # :method: set_ntp_server_address
    # :call-seq:
    # set_ntp_server_address(ntp_addresses)
    #
    # Parameters:
    # - ntp_addresses String[] The IP addresses/host names of valid NTP servers.


  end
end
