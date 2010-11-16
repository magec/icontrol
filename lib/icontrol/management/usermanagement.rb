module IControl::Management
  ##
  # The UserManagement interface deals with adding/deleting and modifying users and user
  # permission.
  class UserManagement < IControl::Base
    class UserRole < IControl::Base::Enumeration; end
    class PasswordInfo < IControl::Base::Struct; end
    class UserID < IControl::Base::Struct; end
    class UserInfo < IControl::Base::Struct; end
    class UserInfo2 < IControl::Base::Struct; end
    class UserInfo3 < IControl::Base::Struct; end
    class UserPermission < IControl::Base::Struct; end    ## An alias for a sequence of PasswordInfo
    class PasswordInfoSequence < IControl::Base::Sequence ; end## A sequence of UserIDs.
    class UserIDSequence < IControl::Base::Sequence ; end## Note: this type is deprecated; please use UserInfo3 and associated methods. An alias for a sequence of UserInfo
    class UserInfo2Sequence < IControl::Base::Sequence ; end## An alias for a sequence of UserInfo3
    class UserInfo3Sequence < IControl::Base::Sequence ; end## Note: this type is deprecated; please use UserInfo3 and associated methods. An alias for a sequence of UserInfo
    class UserInfoSequence < IControl::Base::Sequence ; end## A sequence of UserPermissions.
    class UserPermissionSequence < IControl::Base::Sequence ; end## An alias for a sequence of UserPermissions.
    class UserPermissionSequenceSequence < IControl::Base::SequenceSequence ; end## An alias for a sequence of UserRole
    class UserRoleSequence < IControl::Base::Sequence ; end##
    # An enumerated type that contains the possible roles a user may have. Refer to the
    # product manual for a complete list of what each role means.
    class UserRole < IControl::Base::Enumeration
      # A user role that can do anything on the box, including full access				 to all objects in all partitions.
      USER_ROLE_ADMINISTRATOR = :USER_ROLE_ADMINISTRATOR
      # A user role that has limited read/write access, such as enabling/disabling				 nodes, pools, and members...., but not adding/removing nodes from pools.
      USER_ROLE_TRAFFIC_MANAGER = :USER_ROLE_TRAFFIC_MANAGER
      # A user role that read-only access.
      USER_ROLE_GUEST = :USER_ROLE_GUEST
      # A user role who can read/write every configuration aspect in ASM,				 read/write to all applications, and deal with all configuration that is global per ASM.
      USER_ROLE_ASM_POLICY_EDITOR = :USER_ROLE_ASM_POLICY_EDITOR
      # An uninitialized or invalid role.
      USER_ROLE_INVALID = :USER_ROLE_INVALID
      # A user role who can administer all objects in a specific partition, including			 read access in the Common partition, but no objects outside of his/her partition.
      USER_ROLE_MANAGER = :USER_ROLE_MANAGER
      # A user role who can only modify objects in a specific partition (i.e. not create or delete)
      USER_ROLE_EDITOR = :USER_ROLE_EDITOR
      # A user role who can administer objects for an application (LTM, GTM, LC...).				 This includes ability to read/update permissions to pools, nodes, monitors,				 add/remove members from pools...
      USER_ROLE_APPLICATION_EDITOR = :USER_ROLE_APPLICATION_EDITOR
      # A user role who can administer all security keys and certificates in a partition.
      USER_ROLE_CERTIFICATE_MANAGER = :USER_ROLE_CERTIFICATE_MANAGER
      # A user role who can manage user accounts in a partition.
      USER_ROLE_USER_MANAGER = :USER_ROLE_USER_MANAGER
      # A user role who can manage everything except user accounts and device authentication settings
      USER_ROLE_RESOURCE_ADMINISTRATOR = :USER_ROLE_RESOURCE_ADMINISTRATOR
      # A user role who has read/write rights to perform changes on ASM policies within one or many			 web application or one or many administrative domain partitions.
      USER_ROLE_ASM_EDITOR = :USER_ROLE_ASM_EDITOR
    end

    ##
    # The user's password.
    class PasswordInfo < IControl::Base::Struct
      # The flag indicating whether the password is encrypted or not.
      icontrol_attribute :is_encrypted, Object
      # The user's password. If "is_encrypted" is true, this password		 should be encrypted
      # using crypt(3).
      icontrol_attribute :password, String
    end

    ##
    # A struct that describes a user.
    class UserID < IControl::Base::Struct
      # The username.
      icontrol_attribute :name, String
      # The full name of the user.
      icontrol_attribute :full_name, String
    end

    ##
    # Note: this type is deprecated; please use UserInfo3 and associated methods. (home
    # directory, user id, and group id are now computed by the system) UserInfo is used
    # to store user information.
    class UserInfo < IControl::Base::Struct
      # The user's account information, i.e. name, full name.
      icontrol_attribute :user, IControl::Management::UserManagement::UserID
      # The user's role.
      icontrol_attribute :role, IControl::Management::UserManagement::UserRole
      # The user's clear-text password.
      icontrol_attribute :password, String
      # The user's default home directory.
      icontrol_attribute :home_directory, String
      # The user's login shell.
      icontrol_attribute :login_shell, String
      # The user's user ID.
      icontrol_attribute :user_id, Numeric
      # The user's group ID.
      icontrol_attribute :group_id, Numeric
    end

    ##
    # Note: this type is deprecated; please use UserInfo3 and associated methods. (home
    # directory, user id, and group id are now computed by the system) UserInfo2 is used
    # to store user information.
    class UserInfo2 < IControl::Base::Struct
      # The user's account information, i.e. name, full name.
      icontrol_attribute :user, IControl::Management::UserManagement::UserID
      # The user's role.
      icontrol_attribute :role, IControl::Management::UserManagement::UserRole
      # The user's password information, either clear-text or encrypted with crypt(3).
      icontrol_attribute :password, IControl::Management::UserManagement::PasswordInfo
      # The user's default home directory.
      icontrol_attribute :home_directory, String
      # The user's login shell.
      icontrol_attribute :login_shell, String
      # The user's user ID.
      icontrol_attribute :user_id, Numeric
      # The user's group ID.
      icontrol_attribute :group_id, Numeric
    end

    ##
    # UserInfo3 is used to store user information.
    class UserInfo3 < IControl::Base::Struct
      # The user's account information, i.e. name, full name.
      icontrol_attribute :user, IControl::Management::UserManagement::UserID
      # The user's password information, either clear-text or encrypted with crypt(3).
      icontrol_attribute :password, IControl::Management::UserManagement::PasswordInfo
      # The user's permissions, i.e., what role a user has on a given partition; a user could
      # have one role on a partition, and a different role on another partition, hence the
      # permission list is a sequence for each user. "Common" is one choice for the partition
      # part of UserPermission if you don't know what to set it to. "[All]" means the role
      # is active in all partitions.
      icontrol_attribute :permissions, IControl::Management::UserManagement::UserPermissionSequence
      # The user's login shell.
      icontrol_attribute :login_shell, String
    end

    ##
    # A struct that describes a user permission. This indicates what role a user has on
    # a given partition.
    class UserPermission < IControl::Base::Struct
      # The user's role for the given partition.
      icontrol_attribute :role, IControl::Management::UserManagement::UserRole
      # The partition that the user has access to.
      icontrol_attribute :partition, String
    end

    ##
    # Change the password of the user making the request.
    # :method: change_my_password
    # :call-seq:
    # change_my_password(password)
    #
    # Parameters:
    # - password PasswordInfo The new password.

    ##
    # Change the user's password.
    # :method: change_password
    # :call-seq:
    # change_password(user_names ,passwords)
    #
    # Parameters:
    # - user_names String[] The user IDs of the users whose passwords are being changed.
    # - passwords String[] The new clear-text passwords.

    ##
    # Change the user's password.
    # :method: change_password_2
    # :call-seq:
    # change_password_2(user_names ,passwords)
    #
    # Parameters:
    # - user_names String[] The user IDs of the users whose passwords are being changed.
    # - passwords PasswordInfo[] The new passwords.

    ##
    # Note: this method is deprecated; please use create_user_3 and associated data. (home
    # directory, user id, and group id are now computed by the system, and there is now
    # a choice of whether the password is encrypted) Create the specified new users. Note:
    # as of v10.1.0, this method will silently ignore any of user id, group id, and home
    # directory passed in.
    # :method: create_user
    # :call-seq:
    # create_user(users)
    #
    # Parameters:
    # - users UserInfo[] The user's information.

    ##
    # Note: this method is deprecated; please use create_user_3 and associated data. (home
    # directory, user id, and group id are now computed by the system) Create the specified
    # new users. Note: as of v10.1.0, this method will silently ignore any of user id,
    # group id, and home directory passed in.
    # :method: create_user_2
    # :call-seq:
    # create_user_2(users)
    #
    # Parameters:
    # - users UserInfo2[] The user's information.

    ##
    # Create the specified new users.
    # :method: create_user_3
    # :call-seq:
    # create_user_3(users)
    #
    # Parameters:
    # - users UserInfo3[] The user's information.

    ##
    # Delete the specified users.
    # :method: delete_user
    # :call-seq:
    # delete_user(user_names)
    #
    # Parameters:
    # - user_names String[] The users to be deleted.

    ##
    # Get the authentication method that the system will use to authenticate users.
    # :method: get_authentication_method

    ##
    # Get the default user partition for the device.
    # :method: get_default_partition

    ##
    # Get the default user role for the device.
    # :method: get_default_role

    ##
    # Gets the encrypted passwords of the specified users.
    # :method: get_encrypted_password
    # :call-seq:
    # get_encrypted_password(user_names)
    #
    # Parameters:
    # - user_names String[] The user names.

    ##
    # Get the full names for the given users.
    # :method: get_fullname
    # :call-seq:
    # get_fullname(user_names)
    #
    # Parameters:
    # - user_names String[] The user names.

    ##
    # Get the Group IDs for the given usernames.
    # :method: get_group_id
    # :call-seq:
    # get_group_id(user_names)
    #
    # Parameters:
    # - user_names String[] The user names.

    ##
    # Get the default home directories for the given usernames.
    # :method: get_home_directory
    # :call-seq:
    # get_home_directory(user_names)
    #
    # Parameters:
    # - user_names String[] The user names.

    ##
    # List all users.
    # :method: get_list

    ##
    # Get the login shells for the given usernames.
    # :method: get_login_shell
    # :call-seq:
    # get_login_shell(user_names)
    #
    # Parameters:
    # - user_names String[] The user names.

    ##
    # Gets the credentials of the user making the request. This is useful in getting your
    # own permission information (regardless of which partitions you may otherwise read).
    # The results indicate what role you have on a what partitions.
    # :method: get_my_permission

    ##
    # Get the user remote console access for the device.
    # :method: get_remote_console_access

    ##
    # This method is now deprecated. Please use get_user_permission in its stead, which
    # uses a larger concept of user roles. Gets the roles of the specified users.
    # :method: get_role
    # :call-seq:
    # get_role(user_names)
    #
    # Parameters:
    # - user_names String[] The user names.

    ##
    # Get the User IDs for the given usernames.
    # :method: get_user_id
    # :call-seq:
    # get_user_id(user_names)
    #
    # Parameters:
    # - user_names String[] The user names.

    ##
    # Gets the permissions of the specified users. The permission basically indicates what
    # role a user has on a given partition. A user could have one role on a partition,
    # and a different role on another partition, hence the return list is a sequence of
    # sequence.
    # :method: get_user_permission
    # :call-seq:
    # get_user_permission(user_names)
    #
    # Parameters:
    # - user_names String[] The user names.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Checks to see if a user is locked out due to exceeding the maximum number of allowed
    # login failures. Return whether the user is locked out.
    # :method: is_locked_out
    # :call-seq:
    # is_locked_out(user_names)
    #
    # Parameters:
    # - user_names String[] The user names.

    ##
    # Resets the lockout status of a user that has exceeded the maximum number of allowed
    # login failures. Unlocks all users provided in user_names unless an error occurs where
    # it may unlock up to that user that caused the error.
    # :method: reset_locked_out
    # :call-seq:
    # reset_locked_out(user_names)
    #
    # Parameters:
    # - user_names String[] The user names.

    ##
    # Sets the authentication method that the system will use to authenticate users.
    # :method: set_authentication_method
    # :call-seq:
    # set_authentication_method(auth_method)
    #
    # Parameters:
    # - auth_method AuthenticationMethod The system authentication method to set.

    ##
    # Sets the default user partition for the device if the user does not have an explicit
    # partition.
    # :method: set_default_partition
    # :call-seq:
    # set_default_partition(partition)
    #
    # Parameters:
    # - partition String The default partition for system users.

    ##
    # Sets the default user role for the device if the user does not have an explicit role.
    # :method: set_default_role
    # :call-seq:
    # set_default_role(role)
    #
    # Parameters:
    # - role UserRole The default role for system users.

    ##
    # Sets the full names for the specified users.
    # :method: set_fullname
    # :call-seq:
    # set_fullname(user_names ,fullnames)
    #
    # Parameters:
    # - user_names String[] The user names.
    # - fullnames String[] The users' full names.

    ##
    # This method is deprecated, as the operation is not allowed (and will return an error).
    # Sets the Group IDs for the specified users.
    # :method: set_group_id
    # :call-seq:
    # set_group_id(user_names ,gids)
    #
    # Parameters:
    # - user_names String[] The user names.
    # - gids long[] The users' Group IDs .

    ##
    # This method is deprecated, as the operation is not allowed (and will return an error).
    # Sets the home directories for the specified users.
    # :method: set_home_directory
    # :call-seq:
    # set_home_directory(user_names ,directories)
    #
    # Parameters:
    # - user_names String[] The user names.
    # - directories String[] The home directories.

    ##
    # Sets the login shells for the specified users.
    # :method: set_login_shell
    # :call-seq:
    # set_login_shell(user_names ,shells)
    #
    # Parameters:
    # - user_names String[] The user names.
    # - shells String[] The users' login shells.

    ##
    # Sets the user remote console access for the device if the user does not have an explicit
    # remote console access.
    # :method: set_remote_console_access
    # :call-seq:
    # set_remote_console_access(enabled)
    #
    # Parameters:
    # - enabled boolean The remote console access for system users.

    ##
    # This method is now deprecated. Please use set_user_permission in its stead, which
    # uses a larger concept of user roles. Change the user's role.
    # :method: set_role
    # :call-seq:
    # set_role(user_names ,roles)
    #
    # Parameters:
    # - user_names String[] The user names.
    # - roles UserRole[] The new roles.

    ##
    # This method is deprecated, as the operation is not allowed (and will return an error).
    # Sets the User IDs for the specified users.
    # :method: set_user_id
    # :call-seq:
    # set_user_id(user_names ,uids)
    #
    # Parameters:
    # - user_names String[] The user names.
    # - uids long[] The users' User IDs .

    ##
    # Sets the permissions of the specified users. The permission basically indicates what
    # role a user has on a given partition. A user could have one role on a partition,
    # and a different role on another partition, hence the permission list is a sequence
    # of sequence.
    # :method: set_user_permission
    # :call-seq:
    # set_user_permission(user_names ,permissions)
    #
    # Parameters:
    # - user_names String[] The user names.
    # - permissions UserPermission[][] The user permissions.


  end
end
