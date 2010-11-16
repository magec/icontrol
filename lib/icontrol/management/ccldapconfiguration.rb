module IControl::Management
  ##
  # The CCLDAPConfiguration interface enables you to manage SSL Client Certificate LDAP
  # PAM configuration.
  class CCLDAPConfiguration < IControl::Base
    class LDAPSearchOption < IControl::Base::Struct; end    ## A sequence of LDAP search options.
    class LDAPSearchOptionSequence < IControl::Base::Sequence ; end##
    # A struct that describes a monitor template.
    class LDAPSearchOption < IControl::Base::Struct
      # The search method.
      icontrol_attribute :search_method, IControl::Management::LDAPSearchMethod
      # The search base for the subtree used by the search method.		 For user or cert search
      # methods, this search base will be used		 by the user_base parameter in the PAM configuration.
      # For certmap		 search method, this will be the certmap_base in the PAM configuration.
      icontrol_attribute :search_base, String
      # For user or cert search methods, this will denote a user ID in the LDAP		 database.
      # For certmap search method, this will denote the name of the		 certificate map found
      # in the LDAP database.
      icontrol_attribute :search_key, String
    end

    ##
    # Adds/associates servers to the specified Client Certificate LDAP configurations.
    # :method: add_server
    # :call-seq:
    # add_server(config_names ,servers)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.
    # - servers String[][] The servers to add to the Client Certificate LDAP configurations.

    ##
    # Adds/associates lists of valid groups in which the clients must belong in order to
    # be authorized (matches against the group key in the group subtree). A client only
    # needs to be a member of a single specified group in order to be authorized.
    # :method: add_valid_group
    # :call-seq:
    # add_valid_group(config_names ,groups)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.
    # - groups String[][] The valid groups to add to the Client Certificate LDAP configurations.

    ##
    # Adds/associates lists of valid roles that the client must possess in order to be
    # authorized. A client only needs to match of a single specified role in order to be
    # authorized.
    # :method: add_valid_role
    # :call-seq:
    # add_valid_role(config_names ,roles)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.
    # - roles String[][] The valid roles to add to the Client Certificate LDAP configurations.

    ##
    # Creates the specified Client Certificate LDAP configurations.
    # :method: create
    # :call-seq:
    # create(config_names ,search_options ,servers)
    #
    # Parameters:
    # - config_names String[] The Client Certificate LDAP configurations to create.
    # - search_options LDAPSearchOption[] The search options used by the configurations.
    # - servers String[][] The list of servers to be assigned to each of the configurations.

    ##
    # Deletes all Client Certificate LDAP configurations.
    # :method: delete_all_configurations

    ##
    # Deletes the specified Client Certificate LDAP configurations.
    # :method: delete_configuration
    # :call-seq:
    # delete_configuration(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations to delete.

    ##
    # Gets the admin DNs for the specified Client Certificate LDAP configurations.
    # :method: get_admin_distinguished_name
    # :call-seq:
    # get_admin_distinguished_name(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.

    ##
    # Gets the admin passwords for the specified Client Certificate LDAP configurations.
    # :method: get_admin_password
    # :call-seq:
    # get_admin_password(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.

    ##
    # Gets the maximum LDAP response cache sizes in bytes. If zero is specified, the cache
    # is not activated.
    # :method: get_cache_size
    # :call-seq:
    # get_cache_size(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.

    ##
    # Gets the LDAP response cache timeout in seconds. If zero is specified, the cache
    # is not activated.
    # :method: get_cache_timeout
    # :call-seq:
    # get_cache_timeout(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.

    ##
    # Gets the search bases for the subtrees used by group searches.
    # :method: get_group_base
    # :call-seq:
    # get_group_base(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.

    ##
    # Gets the names of the attributes in the LDAP database that identify the group names
    # in the group subtrees.
    # :method: get_group_key
    # :call-seq:
    # get_group_key(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.

    ##
    # Gets the names of the attributes in the LDAP database that identify members (DNs)
    # of a group. A typical key would be &amp;quot;member".
    # :method: get_group_member_key
    # :call-seq:
    # get_group_member_key(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.

    ##
    # Gets a list of all Client Certificate LDAP configurations.
    # :method: get_list

    ##
    # Gets the names of the attributes in the LDAP database that identify a user's authorization
    # roles.
    # :method: get_role_key
    # :call-seq:
    # get_role_key(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.

    ##
    # Gets the search options used by the Client Certificate LDAP configurations.
    # :method: get_search_option
    # :call-seq:
    # get_search_option(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.

    ##
    # Gets the lists of servers the specified Client Certificate LDAP configurations are
    # associated with.
    # :method: get_server
    # :call-seq:
    # get_server(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.

    ##
    # Gets the states indicating whether to use the client certificate's serial number
    # instead of its subject (one or the other is always used in conjunction with the certificate
    # issuer) when trying to match an entry in the certificate map subtree.
    # :method: get_use_certificate_serial_state
    # :call-seq:
    # get_use_certificate_serial_state(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.

    ##
    # Gets the states indicating whether SSL/TLS should be used when connecting to the
    # LDAP server.
    # :method: get_use_security_state
    # :call-seq:
    # get_use_security_state(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.

    ##
    # Gets the user classes (only in certficate search method) for the specified Client
    # Certificate LDAP configurations.
    # :method: get_user_class
    # :call-seq:
    # get_user_class(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.

    ##
    # Gets the lists of valid groups in which the clients must belong in order to be authorized
    # (matches against the group key in the group subtree). A client only needs to be a
    # member of a single specified group in order to be authorized.
    # :method: get_valid_group
    # :call-seq:
    # get_valid_group(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.

    ##
    # Gets the lists of valid roles that the client must possess in order to be authorized.
    # A client only needs to match of a single specified role in order to be authorized.
    # :method: get_valid_role
    # :call-seq:
    # get_valid_role(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Removes all lists of valid groups in which the clients must belong in order to be
    # authorized (matches against the group key in the group subtree). A client only needs
    # to be a member of a single specified group in order to be authorized.
    # :method: remove_all_valid_groups
    # :call-seq:
    # remove_all_valid_groups(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.

    ##
    # Removes all lists of valid roles that the client must possess in order to be authorized.
    # A client only needs to match of a single specified role in order to be authorized.
    # :method: remove_all_valid_roles
    # :call-seq:
    # remove_all_valid_roles(config_names)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.

    ##
    # Removes servers from the specified Client Certificate LDAP configurations.
    # :method: remove_server
    # :call-seq:
    # remove_server(config_names ,servers)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.
    # - servers String[][] The servers to remove from the Client Certificate LDAP configurations.

    ##
    # Removes lists of valid groups in which the clients must belong in order to be authorized
    # (matches against the group key in the group subtree). A client only needs to be a
    # member of a single specified group in order to be authorized.
    # :method: remove_valid_group
    # :call-seq:
    # remove_valid_group(config_names ,groups)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.
    # - groups String[][] The valid groups to remove from the Client Certificate LDAP configurations.

    ##
    # Removes lists of valid roles that the client must possess in order to be authorized.
    # A client only needs to match of a single specified role in order to be authorized.
    # :method: remove_valid_role
    # :call-seq:
    # remove_valid_role(config_names ,roles)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.
    # - roles String[][] The valid roles to remove from the Client Certificate LDAP configurations.

    ##
    # Sets the admin DNs for the specified Client Certificate LDAP configurations.
    # :method: set_admin_distinguished_name
    # :call-seq:
    # set_admin_distinguished_name(config_names ,admin_dns)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.
    # - admin_dns String[] The admin Distinguished names.

    ##
    # Sets the admin passwords for the specified Client Certificate LDAP configurations.
    # :method: set_admin_password
    # :call-seq:
    # set_admin_password(config_names ,admin_passwords)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.
    # - admin_passwords String[] The admin passwords.

    ##
    # Sets the maximum LDAP response cache sizes in bytes. If zero is specified, the cache
    # is not activated.
    # :method: set_cache_size
    # :call-seq:
    # set_cache_size(config_names ,sizes)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.
    # - sizes long[] The cache sizes used by the LDAP servers in the configurations.

    ##
    # Sets the LDAP response cache timeout in seconds. If zero is specified, the cache
    # is not activated.
    # :method: set_cache_timeout
    # :call-seq:
    # set_cache_timeout(config_names ,timeouts)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.
    # - timeouts long[] The cache timeouts used by the configurations.

    ##
    # Sets the search bases for the subtrees used by group searches.
    # :method: set_group_base
    # :call-seq:
    # set_group_base(config_names ,bases)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.
    # - bases String[] The search bases for the subtrees used by the Client Certificate LDAP configurations.

    ##
    # Sets the names of the attributes in the LDAP database that identify the group names
    # in the group subtrees.
    # :method: set_group_key
    # :call-seq:
    # set_group_key(config_names ,keys)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.
    # - keys String[] The names of the attributes in the LDAP database that identify the group names.

    ##
    # Sets the names of the attributes in the LDAP database that identify members (DNs)
    # of a group. A typical key would be &amp;quot;member".
    # :method: set_group_member_key
    # :call-seq:
    # set_group_member_key(config_names ,keys)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.
    # - keys String[] The names of the attributes in the LDAP database that identify members ( DNs ) of a group.

    ##
    # Sets the names of the attributes in the LDAP database that identify a user's authorization
    # roles.
    # :method: set_role_key
    # :call-seq:
    # set_role_key(config_names ,keys)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.
    # - keys String[] The names of the attributes in the LDAP database that identify a user's authorization roles.

    ##
    # Sets the search options used by the Client Certificate LDAP configurations.
    # :method: set_search_option
    # :call-seq:
    # set_search_option(config_names ,options)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.
    # - options LDAPSearchOption[] The search options used by the configurations.

    ##
    # Sets the states indicating whether to use the client certificate's serial number
    # instead of its subject (one or the other is always used in conjunction with the certificate
    # issuer) when trying to match an entry in the certificate map subtree.
    # :method: set_use_certificate_serial_state
    # :call-seq:
    # set_use_certificate_serial_state(config_names ,states)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.
    # - states EnabledState[] The states of the specified configurations.

    ##
    # Sets the states indicating whether SSL/TLS should be used when connecting to the
    # LDAP server.
    # :method: set_use_security_state
    # :call-seq:
    # set_use_security_state(config_names ,states)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.
    # - states EnabledState[] The states of the specified configurations.

    ##
    # Sets the user classes (only in certficate search method) for the specified Client
    # Certificate LDAP configurations.
    # :method: set_user_class
    # :call-seq:
    # set_user_class(config_names ,user_classes)
    #
    # Parameters:
    # - config_names String[] The names of the Client Certificate LDAP configurations.
    # - user_classes String[] The user classes.


  end
end
