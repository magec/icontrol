module IControl::Management
  ##
  # The UserManagement interface deals with adding/deleting and modifying users and user
  # permission.
  class UserManagement < IControl::Base

    set_id_name "user_names"

    class PasswordInfo < IControl::Base::Struct; end
    class UserID < IControl::Base::Struct; end
    class UserInfo < IControl::Base::Struct; end
    class UserInfo2 < IControl::Base::Struct; end
    class UserInfo3 < IControl::Base::Struct; end
    class UserPermission < IControl::Base::Struct; end
    class PasswordInfoSequence < IControl::Base::Sequence ; end
    class UserIDSequence < IControl::Base::Sequence ; end
    class UserInfo2Sequence < IControl::Base::Sequence ; end
    class UserInfo3Sequence < IControl::Base::Sequence ; end
    class UserInfoSequence < IControl::Base::Sequence ; end
    class UserPermissionSequence < IControl::Base::Sequence ; end
    class UserPermissionSequenceSequence < IControl::Base::SequenceSequence ; end
    class UserRoleSequence < IControl::Base::Sequence ; end
    # An enumerated type that contains the possible roles a user may have. Refer to the
    # product manual for a complete list of what each role means.
    class UserRole < IControl::Base::Enumeration; end    ##
    # Change the password of the user making the request.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @param [Hash] opts
    # @option opts [IControl::Management::UserManagement::PasswordInfo] :password The new password.
    def change_my_password(opts)
      check_params(opts,[:password])
      super
    end

    ##
    # Change the user's password.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @param [Hash] opts
    # @option opts [String] :passwords The new clear-text passwords.
    def change_password(opts)
      check_params(opts,[:passwords])
      super
    end

    ##
    # Change the user's password.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @param [Hash] opts
    # @option opts [IControl::Management::UserManagement::PasswordInfo] :passwords The new passwords.
    def change_password_2(opts)
      check_params(opts,[:passwords])
      super
    end

    ##
    # Note: this method is deprecated; please use create_user_3 and associated data. (home
    # directory, user id, and group id are now computed by the system, and there is now
    # a choice of whether the password is encrypted) Create this new user. Note: as of
    # v10.1.0, this method will silently ignore any of user id, group id, and home directory
    # passed in.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @param [Hash] opts
    # @option opts [IControl::Management::UserManagement::UserInfo] :users The user's information.
    def create_user(opts)
      check_params(opts,[:users])
      super
    end

    ##
    # Note: this method is deprecated; please use create_user_3 and associated data. (home
    # directory, user id, and group id are now computed by the system) Create this new
    # user. Note: as of v10.1.0, this method will silently ignore any of user id, group
    # id, and home directory passed in.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @param [Hash] opts
    # @option opts [IControl::Management::UserManagement::UserInfo2] :users The user's information.
    def create_user_2(opts)
      check_params(opts,[:users])
      super
    end

    ##
    # Create this new user.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @param [Hash] opts
    # @option opts [IControl::Management::UserManagement::UserInfo3] :users The user's information.
    def create_user_3(opts)
      check_params(opts,[:users])
      super
    end

    ##
    # Delete this user.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    def delete_user
      super
    end

    ##
    # Get the authentication method that the system will use to authenticate user.
    # @rspec_example
    # @return [AuthenticationMethod]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    def authentication_method
      super
    end

    ##
    # Get the default user partition for the device.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    def default_partition
      super
    end

    ##
    # Get the default user role for the device.
    # @rspec_example
    # @return [UserRole]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    def default_role
      super
    end

    ##
    # Gets the encrypted passwords of this user.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    def encrypted_password
      super
    end

    ##
    # Get the full names for the given user.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    def fullname
      super
    end

    ##
    # Get the Group IDs for the given usernames.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    def group_id
      super
    end

    ##
    # Get the default home directories for the given usernames.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    def home_directory
      super
    end

    ##
    # List all user.
    # @rspec_example
    # @return [UserID]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    def list
      super
    end

    ##
    # Get the login shells for the given usernames.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    def login_shell
      super
    end

    ##
    # Gets the credentials of the user making the request. This is useful in getting your
    # own permission information (regardless of which partitions you may otherwise read).
    # The results indicate what role you have on a what partitions.
    # @rspec_example
    # @return [UserPermission]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument]
    def my_permission
      super
    end

    ##
    # Get the user remote console access for the device.
    # @rspec_example
    # @return [boolean]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    def remote_console_access
      super
    end

    ##
    # This method is now deprecated. Please use get_user_permission in its stead, which
    # uses a larger concept of user roles. Gets the roles of this user.
    # @rspec_example
    # @return [UserRole]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    def role
      super
    end

    ##
    # Get the User IDs for the given usernames.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    def user_id
      super
    end

    ##
    # Gets the permissions of this user. The permission basically indicates what role a
    # user has on a given partition. A user could have one role on a partition, and a different
    # role on another partition, hence the return list is a sequence of sequence.
    # @rspec_example
    # @return [UserPermission[]]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    def user_permission
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
    # Checks to see if a user is locked out due to exceeding the maximum number of allowed
    # login failures. Return whether the user is locked out.
    # @rspec_example
    # @return [boolean]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    def is_locked_out
      super
    end

    ##
    # Resets the lockout status of a user that has exceeded the maximum number of allowed
    # login failures. Unlocks all user provided in user_names unless an error occurs where
    # it may unlock up to that user that caused the error.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    def reset_locked_out
      super
    end

    ##
    # Sets the authentication method that the system will use to authenticate user.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @param [Hash] opts
    # @option opts [IControl::Common::AuthenticationMethod] :auth_method The system authentication method to set.
    def set_authentication_method(opts)
      check_params(opts,[:auth_method])
      super
    end

    ##
    # Sets the default user partition for the device if the user does not have an explicit
    # partition.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @param [Hash] opts
    # @option opts [String] :partition The default partition for system users.
    def set_default_partition(opts)
      check_params(opts,[:partition])
      super
    end

    ##
    # Sets the default user role for the device if the user does not have an explicit role.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @param [Hash] opts
    # @option opts [IControl::Management::UserManagement::UserRole] :role The default role for system users.
    def set_default_role(opts)
      check_params(opts,[:role])
      super
    end

    ##
    # Sets the full names for this user.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @param [Hash] opts
    # @option opts [String] :fullnames The users' full names.
    def set_fullname(opts)
      check_params(opts,[:fullnames])
      super
    end

    ##
    # This method is deprecated, as the operation is not allowed (and will return an error).
    # Sets the Group IDs for this user.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @param [Hash] opts
    # @option opts [long] :gids The users' Group IDs .
    def set_group_id(opts)
      check_params(opts,[:gids])
      super
    end

    ##
    # This method is deprecated, as the operation is not allowed (and will return an error).
    # Sets the home directories for this user.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @param [Hash] opts
    # @option opts [String] :directories The home directories.
    def set_home_directory(opts)
      check_params(opts,[:directories])
      super
    end

    ##
    # Sets the login shells for this user.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @param [Hash] opts
    # @option opts [String] :shells The users' login shells.
    def set_login_shell(opts)
      check_params(opts,[:shells])
      super
    end

    ##
    # Sets the user remote console access for the device if the user does not have an explicit
    # remote console access.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @param [Hash] opts
    # @option opts [boolean] :enabled The remote console access for system users.
    def set_remote_console_access(opts)
      check_params(opts,[:enabled])
      super
    end

    ##
    # This method is now deprecated. Please use set_user_permission in its stead, which
    # uses a larger concept of user roles. Change the user's role.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @param [Hash] opts
    # @option opts [IControl::Management::UserManagement::UserRole] :roles The new roles.
    def set_role(opts)
      check_params(opts,[:roles])
      super
    end

    ##
    # This method is deprecated, as the operation is not allowed (and will return an error).
    # Sets the User IDs for this user.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @param [Hash] opts
    # @option opts [long] :uids The users' User IDs .
    def set_user_id(opts)
      check_params(opts,[:uids])
      super
    end

    ##
    # Sets the permissions of this user. The permission basically indicates what role a
    # user has on a given partition. A user could have one role on a partition, and a different
    # role on another partition, hence the permission list is a sequence of sequence.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @param [Hash] opts
    # @option opts [IControl::Management::UserManagement::UserPermission[]] :permissions The user permissions.
    def set_user_permission(opts)
      check_params(opts,[:permissions])
      super
    end

    ##
    # The user's password.
    # @attr [Object] is_encrypted The flag indicating whether the password is encrypted or not.
    # @attr [String] password The user's password. If "is_encrypted" is true, this password		 should be encrypted using crypt(3).
    class PasswordInfo < IControl::Base::Struct
      icontrol_attribute :is_encrypted, Object
      icontrol_attribute :password, String
    end

    ##
    # A struct that describes a user.
    # @attr [String] name The username.
    # @attr [String] full_name The full name of the user.
    class UserID < IControl::Base::Struct
      icontrol_attribute :name, String
      icontrol_attribute :full_name, String
    end

    ##
    # Note: this type is deprecated; please use UserInfo3 and associated methods. (home
    # directory, user id, and group id are now computed by the system) UserInfo is used
    # to store user information.
    # @attr [IControl::Management::UserManagement::UserID] user The user's account information, i.e. name, full name.
    # @attr [IControl::Management::UserManagement::UserRole] role The user's role.
    # @attr [String] password The user's clear-text password.
    # @attr [String] home_directory The user's default home directory.
    # @attr [String] login_shell The user's login shell.
    # @attr [Numeric] user_id The user's user ID.
    # @attr [Numeric] group_id The user's group ID.
    class UserInfo < IControl::Base::Struct
      icontrol_attribute :user, IControl::Management::UserManagement::UserID
      icontrol_attribute :role, IControl::Management::UserManagement::UserRole
      icontrol_attribute :password, String
      icontrol_attribute :home_directory, String
      icontrol_attribute :login_shell, String
      icontrol_attribute :user_id, Numeric
      icontrol_attribute :group_id, Numeric
    end

    ##
    # Note: this type is deprecated; please use UserInfo3 and associated methods. (home
    # directory, user id, and group id are now computed by the system) UserInfo2 is used
    # to store user information.
    # @attr [IControl::Management::UserManagement::UserID] user The user's account information, i.e. name, full name.
    # @attr [IControl::Management::UserManagement::UserRole] role The user's role.
    # @attr [IControl::Management::UserManagement::PasswordInfo] password The user's password information, either clear-text or encrypted with crypt(3).
    # @attr [String] home_directory The user's default home directory.
    # @attr [String] login_shell The user's login shell.
    # @attr [Numeric] user_id The user's user ID.
    # @attr [Numeric] group_id The user's group ID.
    class UserInfo2 < IControl::Base::Struct
      icontrol_attribute :user, IControl::Management::UserManagement::UserID
      icontrol_attribute :role, IControl::Management::UserManagement::UserRole
      icontrol_attribute :password, IControl::Management::UserManagement::PasswordInfo
      icontrol_attribute :home_directory, String
      icontrol_attribute :login_shell, String
      icontrol_attribute :user_id, Numeric
      icontrol_attribute :group_id, Numeric
    end

    ##
    # UserInfo3 is used to store user information.
    # @attr [IControl::Management::UserManagement::UserID] user The user's account information, i.e. name, full name.
    # @attr [IControl::Management::UserManagement::PasswordInfo] password The user's password information, either clear-text or encrypted with crypt(3).
    # @attr [IControl::Management::UserManagement::UserPermissionSequence] permissions The user's permissions, i.e., what role a user has on a given partition; a user could have one role on a partition, and a different role on another partition, hence the permission list is a sequence for each user. "Common" is one choice for the partition part of UserPermission if you don't know what to set it to. "[All]" means the role is active in all partitions.
    # @attr [String] login_shell The user's login shell.
    class UserInfo3 < IControl::Base::Struct
      icontrol_attribute :user, IControl::Management::UserManagement::UserID
      icontrol_attribute :password, IControl::Management::UserManagement::PasswordInfo
      icontrol_attribute :permissions, IControl::Management::UserManagement::UserPermissionSequence
      icontrol_attribute :login_shell, String
    end

    ##
    # A struct that describes a user permission. This indicates what role a user has on
    # a given partition.
    # @attr [IControl::Management::UserManagement::UserRole] role The user's role for the given partition.
    # @attr [String] partition The partition that the user has access to.
    class UserPermission < IControl::Base::Struct
      icontrol_attribute :role, IControl::Management::UserManagement::UserRole
      icontrol_attribute :partition, String
    end


    ## An alias for a sequence of PasswordInfo
    class PasswordInfoSequence < IControl::Base::Sequence ; end
    ## A sequence of UserIDs.
    class UserIDSequence < IControl::Base::Sequence ; end
    ## Note: this type is deprecated; please use UserInfo3 and associated methods. An alias for a sequence of UserInfo
    class UserInfo2Sequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of UserInfo3
    class UserInfo3Sequence < IControl::Base::Sequence ; end
    ## Note: this type is deprecated; please use UserInfo3 and associated methods. An alias for a sequence of UserInfo
    class UserInfoSequence < IControl::Base::Sequence ; end
    ## A sequence of UserPermissions.
    class UserPermissionSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of UserPermissions.
    class UserPermissionSequenceSequence < IControl::Base::SequenceSequence ; end
    ## An alias for a sequence of UserRole
    class UserRoleSequence < IControl::Base::Sequence ; end
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


  end
end
