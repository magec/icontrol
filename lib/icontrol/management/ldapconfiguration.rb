module IControl::Management
  ##
  # The LDAPConfiguration interface enables you to manage LDAP PAM configuration.
  class LDAPConfiguration < IControl::Base
    ##
    # Adds/associates servers to the specified LDAP configurations.
    # :method: add_server
    # :call-seq:
    # add_server(config_names ,servers)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - servers String[][] The servers to add to the LDAP configurations.

    ##
    # Creates the specified LDAP configurations.
    # :method: create
    # :call-seq:
    # create(config_names ,search_base_dns ,servers)
    #
    # Parameters:
    # - config_names String[] The LDAP configurations to create.
    # - search_base_dns String[] The distinguished names of the search bases used by the configurations.
    # - servers String[][] The list of servers to be assigned to each of the configurations.

    ##
    # Creates the default authentication Active Directory configuration.
    # :method: create_default_authentication_ad_configuration
    # :call-seq:
    # create_default_authentication_ad_configuration(search_base_dn ,servers)
    #
    # Parameters:
    # - search_base_dn String The distinguished name of the search base used by the configuration.
    # - servers String[] The list of servers to be assigned to the configuration.

    ##
    # Creates the default authentication LDAP configuration.
    # :method: create_default_authentication_ldap_configuration
    # :call-seq:
    # create_default_authentication_ldap_configuration(search_base_dn ,servers)
    #
    # Parameters:
    # - search_base_dn String The distinguished name of the search base used by the configuration.
    # - servers String[] The list of servers to be assigned to the configuration.

    ##
    # Deletes all LDAP configurations.
    # :method: delete_all_configurations

    ##
    # Deletes the specified LDAP configurations.
    # :method: delete_configuration
    # :call-seq:
    # delete_configuration(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations to delete.

    ##
    # Gets the distinguished names used to bind to the servers. Default is to bind anonymously.
    # :method: get_bind_distinguished_name
    # :call-seq:
    # get_bind_distinguished_name(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the credentials used to bind to the servers. Default is to bind with no credentials.
    # :method: get_bind_password
    # :call-seq:
    # get_bind_password(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the bind time limits in seconds. This is the time to wait for the bind to complete.
    # :method: get_bind_time_limit
    # :call-seq:
    # get_bind_time_limit(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the states indicating whether to check the &amp;apos;host' attribute for access
    # control. Default is no; if set to yes, and user has no value for the host attribute,
    # and pam_ldap is configured for account management (authorization) then the user will
    # not be allowed to login.
    # :method: get_check_host_attribute_state
    # :call-seq:
    # get_check_host_attribute_state(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the states indicating whether syslog debugging is enabled/disabled.
    # :method: get_debug_state
    # :call-seq:
    # get_debug_state(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the filter strings used by the specified LDAP configurations.
    # :method: get_filter
    # :call-seq:
    # get_filter(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the group distinguished names used to enforce membership.
    # :method: get_group_distinguished_name
    # :call-seq:
    # get_group_distinguished_name(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the group member attributes for the specified LDAP configurations.
    # :method: get_group_member_attribute
    # :call-seq:
    # get_group_member_attribute(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the idle time limits in seconds. This client will close connections if the server
    # has not been contacted for the number of seconds specified by this value.
    # :method: get_idle_time_limit
    # :call-seq:
    # get_idle_time_limit(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the states indicating whether to ignore errors when authentication information
    # is unavailable.
    # :method: get_ignore_unavailable_authentication_information_state
    # :call-seq:
    # get_ignore_unavailable_authentication_information_state(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the LDAP SSL options used by the LDAP configurations.
    # :method: get_ldap_ssl_option
    # :call-seq:
    # get_ldap_ssl_option(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the LDAP versions to use by the LDAP configurations.
    # :method: get_ldap_version
    # :call-seq:
    # get_ldap_version(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets a list of all LDAP configurations.
    # :method: get_list

    ##
    # Gets the login attributes used by the specified LDAP configurations.
    # :method: get_login_attribute
    # :call-seq:
    # get_login_attribute(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the ports used by the LDAP servers to listen for requests.
    # :method: get_port
    # :call-seq:
    # get_port(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the distinguished names of the search bases used by the LDAP configurations.
    # :method: get_search_base_distinguished_name
    # :call-seq:
    # get_search_base_distinguished_name(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the search scopes used by the LDAP configurations.
    # :method: get_search_scope
    # :call-seq:
    # get_search_scope(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the search time limits in seconds. This is the time to wait for the search to
    # complete.
    # :method: get_search_time_limit
    # :call-seq:
    # get_search_time_limit(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the lists of servers the specified LDAP configurations are associated with.
    # :method: get_server
    # :call-seq:
    # get_server(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the CA certificates used in server certificate verification.
    # :method: get_ssl_ca_certificate_file
    # :call-seq:
    # get_ssl_ca_certificate_file(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the states indicating whether to require and verify server certificate.
    # :method: get_ssl_check_peer_state
    # :call-seq:
    # get_ssl_check_peer_state(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the SSL cipher suite used by the LDAP configurations.
    # :method: get_ssl_cipher
    # :call-seq:
    # get_ssl_cipher(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the client certificates used by the LDAP configurations.
    # :method: get_ssl_client_certificate
    # :call-seq:
    # get_ssl_client_certificate(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the client keys used by the LDAP configurations.
    # :method: get_ssl_client_key
    # :call-seq:
    # get_ssl_client_key(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the user templates used by the specified LDAP configurations.
    # :method: get_user_template
    # :call-seq:
    # get_user_template(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Gets the states indicating whether to enabled/disable warning messages.
    # :method: get_warning_state
    # :call-seq:
    # get_warning_state(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.

    ##
    # Removes servers from the specified LDAP configurations.
    # :method: remove_server
    # :call-seq:
    # remove_server(config_names ,servers)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - servers String[][] The servers to remove from the LDAP configurations.

    ##
    # Sets the distinguished names used to bind to the servers. Default is to bind anonymously.
    # :method: set_bind_distinguished_name
    # :call-seq:
    # set_bind_distinguished_name(config_names ,bind_dns)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - bind_dns String[] The distinguished names used to bind to the servers.

    ##
    # Sets the credentials used to bind to the servers. Default is to bind with no credentials.
    # :method: set_bind_password
    # :call-seq:
    # set_bind_password(config_names ,bind_passwords)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - bind_passwords String[] The credentials used to bind to the servers.

    ##
    # Sets the bind time limits in seconds. This is the time to wait for the bind to complete.
    # :method: set_bind_time_limit
    # :call-seq:
    # set_bind_time_limit(config_names ,time_limits)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - time_limits long[] The bind time limits in seconds.

    ##
    # Sets the states indicating whether to check the &amp;apos;host' attribute for access
    # control. Default is no; if set to yes, and user has no value for the host attribute,
    # and pam_ldap is configured for account management (authorization) then the user will
    # not be allowed to login.
    # :method: set_check_host_attribute_state
    # :call-seq:
    # set_check_host_attribute_state(config_names ,states)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - states EnabledState[] The states of the specified configurations.

    ##
    # Sets the states indicating whether syslog debugging is enabled/disabled.
    # :method: set_debug_state
    # :call-seq:
    # set_debug_state(config_names ,states)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - states EnabledState[] The syslog debugging states of the specified configurations.

    ##
    # Sets the filter strings used by the specified LDAP configurations.
    # :method: set_filter
    # :call-seq:
    # set_filter(config_names ,filters)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - filters String[] The filter strings.

    ##
    # Sets the group distinguished names used to enforce membership.
    # :method: set_group_distinguished_name
    # :call-seq:
    # set_group_distinguished_name(config_names ,group_dns)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - group_dns String[] The group distinguished names.

    ##
    # Sets the group member attributes for the specified LDAP configurations.
    # :method: set_group_member_attribute
    # :call-seq:
    # set_group_member_attribute(config_names ,member_attrs)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - member_attrs String[] The group member attributes.

    ##
    # Sets the idle time limits in seconds. This client will close connections if the server
    # has not been contacted for the number of seconds specified by this value.
    # :method: set_idle_time_limit
    # :call-seq:
    # set_idle_time_limit(config_names ,time_limits)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - time_limits long[] The idle time limits in seconds.

    ##
    # Sets the states indicating whether to ignore errors when authentication information
    # is unavailable.
    # :method: set_ignore_unavailable_authentication_information_state
    # :call-seq:
    # set_ignore_unavailable_authentication_information_state(config_names ,states)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - states EnabledState[] The states of the specified configurations.

    ##
    # Sets the LDAP SSL options used by the LDAP configurations.
    # :method: set_ldap_ssl_option
    # :call-seq:
    # set_ldap_ssl_option(config_names ,options)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - options LDAPSSLOption[] The LDAP SSL options used by the configurations.

    ##
    # Sets the LDAP versions to use by the LDAP configurations.
    # :method: set_ldap_version
    # :call-seq:
    # set_ldap_version(config_names ,versions)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - versions long[] The LDAP versions to use by the LDAP configurations.

    ##
    # Sets the login attributes used by the specified LDAP configurations.
    # :method: set_login_attribute
    # :call-seq:
    # set_login_attribute(config_names ,login_attributes)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - login_attributes String[] The login attributes.

    ##
    # Sets the ports used by the LDAP servers to listen for requests.
    # :method: set_port
    # :call-seq:
    # set_port(config_names ,ports)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - ports long[] The ports used by the LDAP servers in the configurations.

    ##
    # Sets the distinguished names of the search bases used by the LDAP configurations.
    # :method: set_search_base_distinguished_name
    # :call-seq:
    # set_search_base_distinguished_name(config_names ,search_base_dns)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - search_base_dns String[] The distinguished names of the search bases used by the LDAP configurations.

    ##
    # Sets the search scopes used by the LDAP configurations.
    # :method: set_search_scope
    # :call-seq:
    # set_search_scope(config_names ,search_scopes)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - search_scopes LDAPSearchScope[] The search scopes used by the LDAP configurations.

    ##
    # Sets the search time limits in seconds. This is the time to wait for the search to
    # complete.
    # :method: set_search_time_limit
    # :call-seq:
    # set_search_time_limit(config_names ,time_limits)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - time_limits long[] The search time limits in seconds.

    ##
    # Sets the CA certificates used in server certificate verification.
    # :method: set_ssl_ca_certificate_file
    # :call-seq:
    # set_ssl_ca_certificate_file(config_names ,ca_cert_files)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - ca_cert_files String[] The CA certificates used in server certificate verification.

    ##
    # Sets the states indicating whether to require and verify server certificate.
    # :method: set_ssl_check_peer_state
    # :call-seq:
    # set_ssl_check_peer_state(config_names ,states)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - states EnabledState[] The states of the specified configurations.

    ##
    # Sets the SSL cipher suite used by the LDAP configurations.
    # :method: set_ssl_cipher
    # :call-seq:
    # set_ssl_cipher(config_names ,ciphers)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - ciphers String[][] The SSL cipher suite used by the LDAP configurations.

    ##
    # Sets the client certificates used by the LDAP configurations.
    # :method: set_ssl_client_certificate
    # :call-seq:
    # set_ssl_client_certificate(config_names ,certificates)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - certificates String[] The client certificates used by the LDAP configurations.

    ##
    # Sets the client keys used by the LDAP configurations.
    # :method: set_ssl_client_key
    # :call-seq:
    # set_ssl_client_key(config_names ,keys)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - keys String[] The client keys used by the LDAP configurations.

    ##
    # Sets the user templates used by the specified LDAP configurations.
    # :method: set_user_template
    # :call-seq:
    # set_user_template(config_names ,templates)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - templates String[] The user templates.

    ##
    # Sets the states indicating whether to enabled/disable warning messages.
    # :method: set_warning_state
    # :call-seq:
    # set_warning_state(config_names ,states)
    #
    # Parameters:
    # - config_names String[] The names of the LDAP configurations.
    # - states EnabledState[] The states of the specified configurations.


  end
end
