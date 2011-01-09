module IControl::GlobalLB
  ##
  # The Application interface enables you to work with applications running within Wide
  # IPs.
  class Application < IControl::Base

    set_id_name "applications"

    class ApplicationContextObject < IControl::Base::Struct; end
    class ApplicationContextObjectSequence < IControl::Base::Sequence ; end
    class ApplicationObjectTypeSequence < IControl::Base::Sequence ; end
    # A list of object types that can be used within an application context.
    class ApplicationObjectType < IControl::Base::Enumeration; end    ##
    # Creates this application.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def create
      super
    end

    ##
    # Deletes all application.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_applications
      super
    end

    ##
    # Deletes this application.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_application
      super
    end

    ##
    # Disables this objects within the application' context.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Application::ApplicationContextObject] :application_objects The list of application context objects.
    def disable_application_context_object(opts)
      check_params(opts,[:application_objects])
      super
    end

    ##
    # Enables this objects within the application' context.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Application::ApplicationContextObject] :application_objects The list of application context objects.
    def enable_application_context_object(opts)
      check_params(opts,[:application_objects])
      super
    end

    ##
    # Gets the statuses of this application context objects.
    # @rspec_example
    # @return [ObjectStatus]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::Application::ApplicationContextObject] :application_objects The list of application context objects.
    def application_context_status(opts)
      check_params(opts,[:application_objects])
      super
    end

    ##
    # Gets the availability dependency for this application.
    # @rspec_example
    # @return [AvailabilityDependency]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def availability_dependency
      super
    end

    ##
    # Gets a list of application.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the statuses of this application.
    # @rspec_example
    # @return [ObjectStatus]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def object_status
      super
    end

    ##
    # Gets the persistence states for this application.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def persistence_state
      super
    end

    ##
    # Gets the persistence TTL values of this application.
    # @rspec_example
    # @return [long]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def persistence_ttl
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
    # Sets the availability dependency for this application.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::GlobalLB::AvailabilityDependency] :values The availability dependency for the specified applications.
    def set_availability_dependency(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # Sets the persistence states for this application.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The states to set for the applications.
    def set_persistence_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the persistence TTL values of this application.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [long] :values The persistence TTLs of the specified applications.
    def set_persistence_ttl(opts)
      check_params(opts,[:values])
      super
    end

    ##
    # A struct that contains definition for the application context object. This is used
    # for enabling/disabling a specified object within the application's context.
    # @attr [String] application_name The name of the application within whose context			 the object will be enabled/disabled.
    # @attr [String] object_name The name of the object.
    # @attr [IControl::GlobalLB::Application::ApplicationObjectType] object_type The type of the object.
    class ApplicationContextObject < IControl::Base::Struct
      icontrol_attribute :application_name, String
      icontrol_attribute :object_name, String
      icontrol_attribute :object_type, IControl::GlobalLB::Application::ApplicationObjectType
    end


    ## A sequence of ApplicationContextObject's.
    class ApplicationContextObjectSequence < IControl::Base::Sequence ; end
    ## A sequence of application object types.
    class ApplicationObjectTypeSequence < IControl::Base::Sequence ; end
    # A list of object types that can be used within an application context.
    class ApplicationObjectType < IControl::Base::Enumeration
      # The object is a data center.
      APPLICATION_OBJECT_TYPE_DATACENTER = :APPLICATION_OBJECT_TYPE_DATACENTER
      # The object is a server.
      APPLICATION_OBJECT_TYPE_SERVER = :APPLICATION_OBJECT_TYPE_SERVER
      # The object is a link.
      APPLICATION_OBJECT_TYPE_LINK = :APPLICATION_OBJECT_TYPE_LINK
    end


  end
end
