module IControl::GlobalLB
  ##
  # The Application interface enables you to work with applications running within Wide
  # IPs.
  class Application < IControl::Base
    class ApplicationObjectType < IControl::Base::Enumeration; end
    class ApplicationContextObject < IControl::Base::Struct; end    ## A sequence of ApplicationContextObject's.
    class ApplicationContextObjectSequence < IControl::Base::Sequence ; end## A sequence of application object types.
    class ApplicationObjectTypeSequence < IControl::Base::Sequence ; end##
    # A list of object types that can be used within an application context.
    class ApplicationObjectType < IControl::Base::Enumeration
      # The object is a data center.
      APPLICATION_OBJECT_TYPE_DATACENTER = :APPLICATION_OBJECT_TYPE_DATACENTER
      # The object is a server.
      APPLICATION_OBJECT_TYPE_SERVER = :APPLICATION_OBJECT_TYPE_SERVER
      # The object is a link.
      APPLICATION_OBJECT_TYPE_LINK = :APPLICATION_OBJECT_TYPE_LINK
    end

    ##
    # A struct that contains definition for the application context object. This is used
    # for enabling/disabling a specified object within the application's context.
    class ApplicationContextObject < IControl::Base::Struct
      # The name of the application within whose context			 the object will be enabled/disabled.
      icontrol_attribute :application_name, String
      # The name of the object.
      icontrol_attribute :object_name, String
      # The type of the object.
      icontrol_attribute :object_type, IControl::GlobalLB::Application::ApplicationObjectType
    end

    ##
    # Creates the specified applications.
    # :method: create
    # :call-seq:
    # create(applications)
    #
    # Parameters:
    # - applications String[] The list of applications.

    ##
    # Deletes all applications.
    # :method: delete_all_applications

    ##
    # Deletes the specified applications.
    # :method: delete_application
    # :call-seq:
    # delete_application(applications)
    #
    # Parameters:
    # - applications String[] The list of applications.

    ##
    # Disables the specified objects within the applications' context.
    # :method: disable_application_context_object
    # :call-seq:
    # disable_application_context_object(application_objects)
    #
    # Parameters:
    # - application_objects ApplicationContextObject[] The list of application context objects.

    ##
    # Enables the specified objects within the applications' context.
    # :method: enable_application_context_object
    # :call-seq:
    # enable_application_context_object(application_objects)
    #
    # Parameters:
    # - application_objects ApplicationContextObject[] The list of application context objects.

    ##
    # Gets the statuses of the specified application context objects.
    # :method: get_application_context_status
    # :call-seq:
    # get_application_context_status(application_objects)
    #
    # Parameters:
    # - application_objects ApplicationContextObject[] The list of application context objects.

    ##
    # Gets the availability dependency for the specified applications.
    # :method: get_availability_dependency
    # :call-seq:
    # get_availability_dependency(applications)
    #
    # Parameters:
    # - applications String[] The list of applications.

    ##
    # Gets a list of applications.
    # :method: get_list

    ##
    # Gets the statuses of the specified applications.
    # :method: get_object_status
    # :call-seq:
    # get_object_status(applications)
    #
    # Parameters:
    # - applications String[] The list of applications.

    ##
    # Gets the persistence states for the specified applications.
    # :method: get_persistence_state
    # :call-seq:
    # get_persistence_state(applications)
    #
    # Parameters:
    # - applications String[] The list of applications.

    ##
    # Gets the persistence TTL values of the specified applications.
    # :method: get_persistence_ttl
    # :call-seq:
    # get_persistence_ttl(applications)
    #
    # Parameters:
    # - applications String[] The list of applications.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Sets the availability dependency for the specified applications.
    # :method: set_availability_dependency
    # :call-seq:
    # set_availability_dependency(applications ,values)
    #
    # Parameters:
    # - applications String[] The list of applications.
    # - values AvailabilityDependency[] The availability dependency for the specified applications.

    ##
    # Sets the persistence states for the specified applications.
    # :method: set_persistence_state
    # :call-seq:
    # set_persistence_state(applications ,states)
    #
    # Parameters:
    # - applications String[] The list of applications.
    # - states EnabledState[] The states to set for the applications.

    ##
    # Sets the persistence TTL values of the specified applications.
    # :method: set_persistence_ttl
    # :call-seq:
    # set_persistence_ttl(applications ,values)
    #
    # Parameters:
    # - applications String[] The list of applications.
    # - values long[] The persistence TTLs of the specified applications.


  end
end
