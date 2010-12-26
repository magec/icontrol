module IControl::Management
  ##
  # The CCLDAPConfiguration interface enables you to manage SSL Client Certificate LDAP PAM configuration.
  class CCLDAPConfiguration < IControl::Base

    set_id_name "config_names"

    class LDAPSearchOption < IControl::Base::Struct; end    ##
    # Adds/associates servers to this Client Certificate LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :servers The servers to add to the Client Certificate LDAP configurations.
    def add_server(opts)
      check_params(opts,[:servers])
      super
    end

    ##
    # Adds/associates lists of valid groups in which the clients must belong in order to be authorized (matches against the group key in the group subtree). A client only needs to be a member of a single specified group in order to be authorized.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :groups The valid groups to add to the Client Certificate LDAP configurations.
    def add_valid_group(opts)
      check_params(opts,[:groups])
      super
    end

    ##
    # Adds/associates lists of valid roles that the client must possess in order to be authorized. A client only needs to match of a single specified role in order to be authorized.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :roles The valid roles to add to the Client Certificate LDAP configurations.
    def add_valid_role(opts)
      check_params(opts,[:roles])
      super
    end

    ##
    # Creates this Client Certificate LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::CCLDAPConfiguration::LDAPSearchOption] :search_options The search options used by the configurations.
    # @option opts [String[]] :servers The list of servers to be assigned to each of the configurations.
    def create(opts)
      check_params(opts,[:search_options,:servers])
      super
    end

    ##
    # Deletes all Client Certificate LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_configurations
      super
    end

    ##
    # Deletes this Client Certificate LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_configuration
      super
    end

    ##
    # Gets the admin DNs for this Client Certificate LDAP configurations.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def admin_distinguished_name
      super
    end

    ##
    # Gets the admin passwords for this Client Certificate LDAP configurations.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def admin_password
      super
    end

    ##
    # Gets the maximum LDAP response cache sizes in bytes. If zero is specified, the cache is not activated.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def cache_size
      super
    end

    ##
    # Gets the LDAP response cache timeout in seconds. If zero is specified, the cache is not activated.
    # @return [long]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def cache_timeout
      super
    end

    ##
    # Gets the search bases for the subtrees used by group searches.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def group_base
      super
    end

    ##
    # Gets the names of the attributes in the LDAP database that identify the group names in the group subtrees.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def group_key
      super
    end

    ##
    # Gets the names of the attributes in the LDAP database that identify members (DNs) of a group. A typical key would be &amp;quot;member".
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def group_member_key
      super
    end

    ##
    # Gets a list of all Client Certificate LDAP configurations.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the names of the attributes in the LDAP database that identify a user's authorization roles.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def role_key
      super
    end

    ##
    # Gets the search options used by the Client Certificate LDAP configurations.
    # @return [LDAPSearchOption]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def search_option
      super
    end

    ##
    # Gets the lists of servers this Client Certificate LDAP configurations are associated with.
    # @return [String[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def server
      super
    end

    ##
    # Gets the states indicating whether to use the client certificate's serial number instead of its subject (one or the other is always used in conjunction with the certificate issuer) when trying to match an entry in the certificate map subtree.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def use_certificate_serial_state
      super
    end

    ##
    # Gets the states indicating whether SSL/TLS should be used when connecting to the LDAP server.
    # @return [EnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def use_security_state
      super
    end

    ##
    # Gets the user classes (only in certficate search method) for this Client Certificate LDAP configurations.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def user_class
      super
    end

    ##
    # Gets the lists of valid groups in which the clients must belong in order to be authorized (matches against the group key in the group subtree). A client only needs to be a member of a single specified group in order to be authorized.
    # @return [String[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def valid_group
      super
    end

    ##
    # Gets the lists of valid roles that the client must possess in order to be authorized. A client only needs to match of a single specified role in order to be authorized.
    # @return [String[]]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def valid_role
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Removes all lists of valid groups in which the clients must belong in order to be authorized (matches against the group key in the group subtree). A client only needs to be a member of a single specified group in order to be authorized.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_valid_groups
      super
    end

    ##
    # Removes all lists of valid roles that the client must possess in order to be authorized. A client only needs to match of a single specified role in order to be authorized.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_valid_roles
      super
    end

    ##
    # Removes servers from this Client Certificate LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :servers The servers to remove from the Client Certificate LDAP configurations.
    def remove_server(opts)
      check_params(opts,[:servers])
      super
    end

    ##
    # Removes lists of valid groups in which the clients must belong in order to be authorized (matches against the group key in the group subtree). A client only needs to be a member of a single specified group in order to be authorized.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :groups The valid groups to remove from the Client Certificate LDAP configurations.
    def remove_valid_group(opts)
      check_params(opts,[:groups])
      super
    end

    ##
    # Removes lists of valid roles that the client must possess in order to be authorized. A client only needs to match of a single specified role in order to be authorized.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :roles The valid roles to remove from the Client Certificate LDAP configurations.
    def remove_valid_role(opts)
      check_params(opts,[:roles])
      super
    end

    ##
    # Sets the admin DNs for this Client Certificate LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :admin_dns The admin Distinguished names.
    def set_admin_distinguished_name(opts)
      check_params(opts,[:admin_dns])
      super
    end

    ##
    # Sets the admin passwords for this Client Certificate LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :admin_passwords The admin passwords.
    def set_admin_password(opts)
      check_params(opts,[:admin_passwords])
      super
    end

    ##
    # Sets the maximum LDAP response cache sizes in bytes. If zero is specified, the cache is not activated.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :sizes The cache sizes used by the LDAP servers in the configurations.
    def set_cache_size(opts)
      check_params(opts,[:sizes])
      super
    end

    ##
    # Sets the LDAP response cache timeout in seconds. If zero is specified, the cache is not activated.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :timeouts The cache timeouts used by the configurations.
    def set_cache_timeout(opts)
      check_params(opts,[:timeouts])
      super
    end

    ##
    # Sets the search bases for the subtrees used by group searches.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :bases The search bases for the subtrees used by the Client Certificate LDAP configurations.
    def set_group_base(opts)
      check_params(opts,[:bases])
      super
    end

    ##
    # Sets the names of the attributes in the LDAP database that identify the group names in the group subtrees.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :keys The names of the attributes in the LDAP database that identify the group names.
    def set_group_key(opts)
      check_params(opts,[:keys])
      super
    end

    ##
    # Sets the names of the attributes in the LDAP database that identify members (DNs) of a group. A typical key would be &amp;quot;member".
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :keys The names of the attributes in the LDAP database that identify members ( DNs ) of a group.
    def set_group_member_key(opts)
      check_params(opts,[:keys])
      super
    end

    ##
    # Sets the names of the attributes in the LDAP database that identify a user's authorization roles.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :keys The names of the attributes in the LDAP database that identify a user's authorization roles.
    def set_role_key(opts)
      check_params(opts,[:keys])
      super
    end

    ##
    # Sets the search options used by the Client Certificate LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Management::CCLDAPConfiguration::LDAPSearchOption] :options The search options used by the configurations.
    def set_search_option(opts)
      check_params(opts,[:options])
      super
    end

    ##
    # Sets the states indicating whether to use the client certificate's serial number instead of its subject (one or the other is always used in conjunction with the certificate issuer) when trying to match an entry in the certificate map subtree.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states of the specified configurations.
    def set_use_certificate_serial_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the states indicating whether SSL/TLS should be used when connecting to the LDAP server.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states of the specified configurations.
    def set_use_security_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the user classes (only in certficate search method) for this Client Certificate LDAP configurations.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :user_classes The user classes.
    def set_user_class(opts)
      check_params(opts,[:user_classes])
      super
    end

    ##
    # A struct that describes a monitor template.
    # @attr [IControl::Management::LDAPSearchMethod] search_method The search method.
    # @attr [String] search_base The search base for the subtree used by the search method.		 For user or cert search methods, this search base will be used		 by the user_base parameter in the PAM configuration. For certmap		 search method, this will be the certmap_base in the PAM configuration.
    # @attr [String] search_key For user or cert search methods, this will denote a user ID in the LDAP		 database. For certmap search method, this will denote the name of the		 certificate map found in the LDAP database.
    class LDAPSearchOption < IControl::Base::Struct
      icontrol_attribute :search_method, IControl::Management::LDAPSearchMethod
      icontrol_attribute :search_base, String
      icontrol_attribute :search_key, String
    end


    ## A sequence of LDAP search options.
    class LDAPSearchOptionSequence < IControl::Base::Sequence ; end
  end
end
