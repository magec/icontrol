module IControl::Management
  ##
  # The LDAPConfiguration interface enables you to manage LDAP PAM configuration.
  class LDAPConfiguration < IControl::Base

    set_id_name "config_names"

    ##
    # Adds/associates servers to this LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :servers The servers to add to the LDAP configurations.
    def add_server(opts)
      check_params(opts,[:servers])
      super
    end

    ##
    # Creates this LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :search_base_dns The distinguished names of the search bases used by the configurations.
    # @option opts [String[]] :servers The list of servers to be assigned to each of the configurations.
    def create(opts)
      check_params(opts,[:search_base_dns,:servers])
      super
    end

    ##
    # Creates the default authentication Active Directory configuration.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :search_base_dn The distinguished name of the search base used by the configuration.
    # @option opts [String] :servers The list of servers to be assigned to the configuration.
    def create_default_authentication_ad_configuration(opts)
      check_params(opts,[:search_base_dn,:servers])
      super
    end

    ##
    # Creates the default authentication LDAP configuration.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :search_base_dn The distinguished name of the search base used by the configuration.
    # @option opts [String] :servers The list of servers to be assigned to the configuration.
    def create_default_authentication_ldap_configuration(opts)
      check_params(opts,[:search_base_dn,:servers])
      super
    end

    ##
    # Deletes all LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_configurations
      super
    end

    ##
    # Deletes this LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_configuration
      super
    end

    ##
    # Gets the distinguished names used to bind to the servers. Default is to bind anonymously.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def bind_distinguished_name
      super
    end

    ##
    # Gets the credentials used to bind to the servers. Default is to bind with no credentials.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def bind_password
      super
    end

    ##
    # Gets the bind time limits in seconds. This is the time to wait for the bind to complete.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def bind_time_limit
      super
    end

    ##
    # Gets the states indicating whether to check the &amp;apos;host' attribute for access control. Default is no; if set to yes, and user has no value for the host attribute, and pam_ldap is configured for account management (authorization) then the user will not be allowed to login.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def check_host_attribute_state
      super
    end

    ##
    # Gets the states indicating whether syslog debugging is enabled/disabled.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def debug_state
      super
    end

    ##
    # Gets the filter strings used by this LDAP configurations.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def filter
      super
    end

    ##
    # Gets the group distinguished names used to enforce membership.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def group_distinguished_name
      super
    end

    ##
    # Gets the group member attributes for this LDAP configurations.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def group_member_attribute
      super
    end

    ##
    # Gets the idle time limits in seconds. This client will close connections if the server has not been contacted for the number of seconds specified by this value.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def idle_time_limit
      super
    end

    ##
    # Gets the states indicating whether to ignore errors when authentication information is unavailable.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def ignore_unavailable_authentication_information_state
      super
    end

    ##
    # Gets the LDAP SSL options used by the LDAP configurations.
    # @return [LDAPSSLOption]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def ldap_ssl_option
      super
    end

    ##
    # Gets the LDAP versions to use by the LDAP configurations.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def ldap_version
      super
    end

    ##
    # Gets a list of all LDAP configurations.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the login attributes used by this LDAP configurations.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def login_attribute
      super
    end

    ##
    # Gets the ports used by the LDAP servers to listen for requests.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def port
      super
    end

    ##
    # Gets the distinguished names of the search bases used by the LDAP configurations.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def search_base_distinguished_name
      super
    end

    ##
    # Gets the search scopes used by the LDAP configurations.
    # @return [LDAPSearchScope]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def search_scope
      super
    end

    ##
    # Gets the search time limits in seconds. This is the time to wait for the search to complete.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def search_time_limit
      super
    end

    ##
    # Gets the lists of servers this LDAP configurations are associated with.
    # @return [String[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def server
      super
    end

    ##
    # Gets the CA certificates used in server certificate verification.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def ssl_ca_certificate_file
      super
    end

    ##
    # Gets the states indicating whether to require and verify server certificate.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def ssl_check_peer_state
      super
    end

    ##
    # Gets the SSL cipher suite used by the LDAP configurations.
    # @return [String[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def ssl_cipher
      super
    end

    ##
    # Gets the client certificates used by the LDAP configurations.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def ssl_client_certificate
      super
    end

    ##
    # Gets the client keys used by the LDAP configurations.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def ssl_client_key
      super
    end

    ##
    # Gets the user templates used by this LDAP configurations.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def user_template
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Gets the states indicating whether to enabled/disable warning messages.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def warning_state
      super
    end

    ##
    # Removes servers from this LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :servers The servers to remove from the LDAP configurations.
    def remove_server(opts)
      check_params(opts,[:servers])
      super
    end

    ##
    # Sets the distinguished names used to bind to the servers. Default is to bind anonymously.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :bind_dns The distinguished names used to bind to the servers.
    def set_bind_distinguished_name(opts)
      check_params(opts,[:bind_dns])
      super
    end

    ##
    # Sets the credentials used to bind to the servers. Default is to bind with no credentials.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :bind_passwords The credentials used to bind to the servers.
    def set_bind_password(opts)
      check_params(opts,[:bind_passwords])
      super
    end

    ##
    # Sets the bind time limits in seconds. This is the time to wait for the bind to complete.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :time_limits The bind time limits in seconds.
    def set_bind_time_limit(opts)
      check_params(opts,[:time_limits])
      super
    end

    ##
    # Sets the states indicating whether to check the &amp;apos;host' attribute for access control. Default is no; if set to yes, and user has no value for the host attribute, and pam_ldap is configured for account management (authorization) then the user will not be allowed to login.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states of the specified configurations.
    def set_check_host_attribute_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the states indicating whether syslog debugging is enabled/disabled.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The syslog debugging states of the specified configurations.
    def set_debug_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the filter strings used by this LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :filters The filter strings.
    def set_filter(opts)
      check_params(opts,[:filters])
      super
    end

    ##
    # Sets the group distinguished names used to enforce membership.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :group_dns The group distinguished names.
    def set_group_distinguished_name(opts)
      check_params(opts,[:group_dns])
      super
    end

    ##
    # Sets the group member attributes for this LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :member_attrs The group member attributes.
    def set_group_member_attribute(opts)
      check_params(opts,[:member_attrs])
      super
    end

    ##
    # Sets the idle time limits in seconds. This client will close connections if the server has not been contacted for the number of seconds specified by this value.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :time_limits The idle time limits in seconds.
    def set_idle_time_limit(opts)
      check_params(opts,[:time_limits])
      super
    end

    ##
    # Sets the states indicating whether to ignore errors when authentication information is unavailable.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states of the specified configurations.
    def set_ignore_unavailable_authentication_information_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the LDAP SSL options used by the LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::LDAPSSLOption] :options The LDAP SSL options used by the configurations.
    def set_ldap_ssl_option(opts)
      check_params(opts,[:options])
      super
    end

    ##
    # Sets the LDAP versions to use by the LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :versions The LDAP versions to use by the LDAP configurations.
    def set_ldap_version(opts)
      check_params(opts,[:versions])
      super
    end

    ##
    # Sets the login attributes used by this LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :login_attributes The login attributes.
    def set_login_attribute(opts)
      check_params(opts,[:login_attributes])
      super
    end

    ##
    # Sets the ports used by the LDAP servers to listen for requests.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :ports The ports used by the LDAP servers in the configurations.
    def set_port(opts)
      check_params(opts,[:ports])
      super
    end

    ##
    # Sets the distinguished names of the search bases used by the LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :search_base_dns The distinguished names of the search bases used by the LDAP configurations.
    def set_search_base_distinguished_name(opts)
      check_params(opts,[:search_base_dns])
      super
    end

    ##
    # Sets the search scopes used by the LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::LDAPSearchScope] :search_scopes The search scopes used by the LDAP configurations.
    def set_search_scope(opts)
      check_params(opts,[:search_scopes])
      super
    end

    ##
    # Sets the search time limits in seconds. This is the time to wait for the search to complete.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :time_limits The search time limits in seconds.
    def set_search_time_limit(opts)
      check_params(opts,[:time_limits])
      super
    end

    ##
    # Sets the CA certificates used in server certificate verification.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :ca_cert_files The CA certificates used in server certificate verification.
    def set_ssl_ca_certificate_file(opts)
      check_params(opts,[:ca_cert_files])
      super
    end

    ##
    # Sets the states indicating whether to require and verify server certificate.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states of the specified configurations.
    def set_ssl_check_peer_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the SSL cipher suite used by the LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :ciphers The SSL cipher suite used by the LDAP configurations.
    def set_ssl_cipher(opts)
      check_params(opts,[:ciphers])
      super
    end

    ##
    # Sets the client certificates used by the LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :certificates The client certificates used by the LDAP configurations.
    def set_ssl_client_certificate(opts)
      check_params(opts,[:certificates])
      super
    end

    ##
    # Sets the client keys used by the LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :keys The client keys used by the LDAP configurations.
    def set_ssl_client_key(opts)
      check_params(opts,[:keys])
      super
    end

    ##
    # Sets the user templates used by this LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :templates The user templates.
    def set_user_template(opts)
      check_params(opts,[:templates])
      super
    end

    ##
    # Sets the states indicating whether to enabled/disable warning messages.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states of the specified configurations.
    def set_warning_state(opts)
      check_params(opts,[:states])
      super
    end


  end
end
