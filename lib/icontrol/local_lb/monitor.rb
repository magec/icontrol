module IControl::LocalLB
  ##
  # The Monitor interface enables you to manipulate a local load balancer's monitor templates
  # and instances. For example, use the Monitor interface to enable or disable a monitor
  # instance, or to create a monitor template, or to get and set different attributes
  # of a monitor template.
  class Monitor < IControl::Base

    set_id_name "template_names"

    class CommonAttributes < IControl::Base::Struct; end
    class IntegerValue < IControl::Base::Struct; end
    class MonitorTemplate < IControl::Base::Struct; end
    class StringValue < IControl::Base::Struct; end
    class UserDefinedStringValue < IControl::Base::Struct; end
    class CommonAttributesSequence < IControl::Base::Sequence ; end
    class IntPropertyTypeSequence < IControl::Base::Sequence ; end
    class IntegerValueSequence < IControl::Base::Sequence ; end
    class MonitorTemplateSequence < IControl::Base::Sequence ; end
    class StrPropertyTypeSequence < IControl::Base::Sequence ; end
    class StringValueSequence < IControl::Base::Sequence ; end
    class TemplateTypeSequence < IControl::Base::Sequence ; end
    class UserDefinedStringValueSequence < IControl::Base::Sequence ; end
    # A list of monitor template's integer property types.
    class IntPropertyType < IControl::Base::Enumeration; end
    # A list of monitor template's string property types.
    class StrPropertyType < IControl::Base::Enumeration; end
    # A list of template types.
    class TemplateType < IControl::Base::Enumeration; end    ##
    # Creates monitor template with some basic attributes. If the &amp;quot;parent_template"
    # attribute in &amp;quot;template_attributes" is empty, then the new template is based
    # on the template type field given in &amp;quot;template". If the &amp;quot;parent_template"
    # attribute in &amp;quot;template_attributes" is specified, then the new template is
    # derived from the &amp;quot;parent_template", and template type field in &amp;quot;template"
    # is ignored. If &amp;quot;parent_template" is empty, and the template type field in
    # &amp;quot;template" is not specified, then the new template is a root template.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::Monitor::MonitorTemplate] :templates The names and types of the new monitor templates to create.
    # @option opts [IControl::LocalLB::Monitor::CommonAttributes] :template_attributes The basic template attributes used to create the new template.
    def create_template(opts)
      opts = check_params(opts,[:templates,:template_attributes])
      super(opts)
    end

    ##
    # Deletes all user-defined (non-root) monitor template.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_templates
      super
    end

    ##
    # Deletes this monitor template.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_template
      super
    end

    ##
    # Gets the enabled/disabled states of the monitor instances.
    # @rspec_example
    # @return [MonitorInstanceState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::MonitorInstance] :instances The monitor instances to get enable/disable states.
    def instance_state(opts)
      opts = check_params(opts,[:instances])
      super(opts)
    end

    ##
    # Gets the monitor template' manual resume states. When enabled and a monitor has marked
    # an object down, that object will not be marked up by the monitor, i.e. the object
    # will be manually marked up.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def manual_resume_state
      super
    end

    ##
    # Gets the parent monitor template from which this monitor template are derived. A
    # user-defined monitor template will get its defaults from its parent monitor template.
    # @rspec_example
    # @return [String]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def parent_template
      super
    end

    ##
    # Gets the destination address types of the monitor template. This allows the user
    # to determine what node IP:port can be associated with this monitor when creating
    # a monitor instance.
    # @rspec_example
    # @return [AddressType]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def template_address_type
      super
    end

    ##
    # Gets the destination IP:port values of this monitor template.
    # @rspec_example
    # @return [MonitorIPPort]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def template_destination
      super
    end

    ##
    # Gets the integer property values of this monitor template.
    # @rspec_example
    # @return [IntegerValue]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::Monitor::IntPropertyType] :property_types The property types from which to get values for the monitor templates.
    def template_integer_property(opts)
      opts = check_params(opts,[:property_types])
      super(opts)
    end

    ##
    # Gets the list of monitor template.
    # @rspec_example
    # @return [MonitorTemplate]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def template_list
      super
    end

    ##
    # Gets the reverse mode states of this monitor template.
    # @rspec_example
    # @return [boolean]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def template_reverse_mode
      super
    end

    ##
    # Gets the enabled/disabled states of this monitor template.
    # @rspec_example
    # @return [EnabledState]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def template_state
      super
    end

    ##
    # Gets a string property values of this monitor template.
    # @rspec_example
    # @return [StringValue]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::Monitor::StrPropertyType] :property_types The property types from which to get values for the monitor templates.
    def template_string_property(opts)
      opts = check_params(opts,[:property_types])
      super(opts)
    end

    ##
    # Gets the transparent mode states of this monitor template.
    # @rspec_example
    # @return [boolean]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def template_transparent_mode
      super
    end

    ##
    # Gets the template types of this monitor template.
    # @rspec_example
    # @return [TemplateType]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def template_type
      super
    end

    ##
    # Gets the string property values of this monitor template.
    # @rspec_example
    # @return [UserDefinedStringValue]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :property_names The user-defined string property names from which to get values for the monitor templates.
    def template_user_defined_string_property(opts)
      opts = check_params(opts,[:property_names])
      super(opts)
    end

    ##
    # Gets the version information for this interface.
    # @rspec_example
    # @return [String]
    def version
      super
    end

    ##
    # Determines if this monitor template can be used directly, or a user-defined monitor
    # based on each monitor must be created first before it can be used.
    # @rspec_example
    # @return [boolean]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def is_template_directly_usable
      super
    end

    ##
    # Determines if this monitor template are read-only. The user can only modify properties
    # for read/write monitor template.
    # @rspec_example
    # @return [boolean]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def is_template_read_only
      super
    end

    ##
    # Determines if this monitor template are of the base monitor template.
    # @rspec_example
    # @return [boolean]
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    def is_template_root
      super
    end

    ##
    # Sets the enabled/disabled states of the monitor instances.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::MonitorInstanceState] :instance_states The monitor instances and their enabled/disabled states.
    def set_instance_state(opts)
      opts = check_params(opts,[:instance_states])
      super(opts)
    end

    ##
    # Sets the monitor template' manual resume states. When enabled and a monitor has marked
    # an object down, that object will not be marked up by the monitor, i.e. the object
    # will be manually marked up.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The manual resume states of the monitor templates.
    def set_manual_resume_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets the destination IP:port values for this template. NOTE: This should only be
    # done when the monitor template in &amp;quot;template_names" have NOT been associated
    # to any node addresses or pool members.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::MonitorIPPort] :destinations The destinations to set for the specified monitor templates.
    def set_template_destination(opts)
      opts = check_params(opts,[:destinations])
      super(opts)
    end

    ##
    # Sets an integer property values of this monitor template.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::Monitor::IntegerValue] :values The property types and values to set for the monitor templates.
    def set_template_integer_property(opts)
      opts = check_params(opts,[:values])
      super(opts)
    end

    ##
    # Sets the reverse mode states of this monitor template. When in reverse mode, a successful
    # test marks the node down instead of up.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [boolean] :reverse_modes The reverse mode states of the monitor templates.
    def set_template_reverse_mode(opts)
      opts = check_params(opts,[:reverse_modes])
      super(opts)
    end

    ##
    # Sets the monitor template' enabled/disabled states. This will enable/disable all
    # instances that use this template. This serves as a quick and convenient method to
    # enable/disable all instances, but if you want only to enable/disable a specific instance,
    # use set_instance_enabled.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::Common::EnabledState] :states The enabled/disabled states of the monitor templates.
    def set_template_state(opts)
      opts = check_params(opts,[:states])
      super(opts)
    end

    ##
    # Sets a string property values of this monitor template.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::Monitor::StringValue] :values The property types and values to set for the monitor templates.
    def set_template_string_property(opts)
      opts = check_params(opts,[:values])
      super(opts)
    end

    ##
    # Sets the transparent mode states of this monitor template. Transparent mode is used
    # when a user has to go through a firewall to do monitoring.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [boolean] :transparent_modes The transparent mode states of the monitor templates.
    def set_template_transparent_mode(opts)
      opts = check_params(opts,[:transparent_modes])
      super(opts)
    end

    ##
    # Sets the user-defined string property values of this monitor template.
    # @rspec_example
    # @raise [IControl::IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::Monitor::UserDefinedStringValue] :values The string property names and values to set for the monitor templates.
    def set_template_user_defined_string_property(opts)
      opts = check_params(opts,[:values])
      super(opts)
    end

    ##
    # A struct that describes some common attributes of a monitor template.
    # @attr [String] parent_template The parent template of this monitor template.
    # @attr [Numeric] interval The interval specifying how frequently the monitor instance of this template will run.
    # @attr [Numeric] timeout The number of seconds in which the node or service must respond to the monitor request.		 If the target responds within the set time period, it is considered up. If the target		 does not respond within the set time period, it is considered down.		 You can change this number to any number you want, however, it should be 3 times the interval		 number of seconds plus 1 second.
    # @attr [IControl::LocalLB::MonitorIPPort] dest_ipport The destination IP:port of this monitor template.
    # @attr [Object] is_read_only The flag indicating whether this template is read-only.
    # @attr [Object] is_directly_usable The flag indicating whether this template is directly usable, or the user has			 to derive from this template before being able to use the derived template.
    class CommonAttributes < IControl::Base::Struct
      icontrol_attribute :parent_template, String
      icontrol_attribute :interval, Numeric
      icontrol_attribute :timeout, Numeric
      icontrol_attribute :dest_ipport, IControl::LocalLB::MonitorIPPort
      icontrol_attribute :is_read_only, Object
      icontrol_attribute :is_directly_usable, Object
    end

    ##
    # A struct that describe a integer type and value.
    # @attr [IControl::LocalLB::Monitor::IntPropertyType] type The integer property type.
    # @attr [Numeric] value The integer property value.
    class IntegerValue < IControl::Base::Struct
      icontrol_attribute :type, IControl::LocalLB::Monitor::IntPropertyType
      icontrol_attribute :value, Numeric
    end

    ##
    # A struct that describes a monitor template.
    # @attr [String] template_name The template name.
    # @attr [IControl::LocalLB::Monitor::TemplateType] template_type The template type.
    class MonitorTemplate < IControl::Base::Struct
      icontrol_attribute :template_name, String
      icontrol_attribute :template_type, IControl::LocalLB::Monitor::TemplateType
    end

    ##
    # A struct that describe a string type and value.
    # @attr [IControl::LocalLB::Monitor::StrPropertyType] type The string property type.
    # @attr [String] value The string property value.
    class StringValue < IControl::Base::Struct
      icontrol_attribute :type, IControl::LocalLB::Monitor::StrPropertyType
      icontrol_attribute :value, String
    end

    ##
    # A struct that describe an user-defined string name and value.
    # @attr [String] name The user-defined string property name.
    # @attr [String] value The user-defined string property value.
    class UserDefinedStringValue < IControl::Base::Struct
      icontrol_attribute :name, String
      icontrol_attribute :value, String
    end


    ## A sequence of CommonAttributes's.
    class CommonAttributesSequence < IControl::Base::Sequence ; end
    ## A sequence of integer property types.
    class IntPropertyTypeSequence < IControl::Base::Sequence ; end
    ## A sequence of integer values.
    class IntegerValueSequence < IControl::Base::Sequence ; end
    ## A sequence of monitor templates.
    class MonitorTemplateSequence < IControl::Base::Sequence ; end
    ## A sequence of string property types.
    class StrPropertyTypeSequence < IControl::Base::Sequence ; end
    ## A sequence of string values.
    class StringValueSequence < IControl::Base::Sequence ; end
    ## A sequence of monitor templates.
    class TemplateTypeSequence < IControl::Base::Sequence ; end
    ## A sequence of user-defined string names and values.
    class UserDefinedStringValueSequence < IControl::Base::Sequence ; end
    # A list of monitor template's integer property types.
    class IntPropertyType < IControl::Base::Enumeration
      # The integer property type is unknown.
      ITYPE_UNSET = :ITYPE_UNSET
      # The integer property type used to change the value of interval.
      ITYPE_INTERVAL = :ITYPE_INTERVAL
      # The integer property type used to change the value of timeout.
      ITYPE_TIMEOUT = :ITYPE_TIMEOUT
      # The integer property type used to change the value of the probing interval.
      ITYPE_PROBE_INTERVAL = :ITYPE_PROBE_INTERVAL
      # The integer property type used to change the value of the probing timeout.
      ITYPE_PROBE_TIMEOUT = :ITYPE_PROBE_TIMEOUT
      # The integer property type used to change the number of probes.
      ITYPE_PROBE_NUM_PROBES = :ITYPE_PROBE_NUM_PROBES
      # The integer property type used to change the number of successful probes.
      ITYPE_PROBE_NUM_SUCCESSES = :ITYPE_PROBE_NUM_SUCCESSES
    end


    # A list of monitor template's string property types.
    class StrPropertyType < IControl::Base::Enumeration
      # The string property type is unknown.
      STYPE_UNSET = :STYPE_UNSET
      # The string property type used to change a string value of a template (TCP, HTTP, HTTPS).
      STYPE_SEND = :STYPE_SEND
      # The string property type used to change a string value of a template (HTTP, HTTPS, FTP).
      STYPE_GET = :STYPE_GET
      # The string property type used to change a string value of a template (TCP, HTTP, HTTPS).
      STYPE_RECEIVE = :STYPE_RECEIVE
      # The string property type used to change a string value of a template (HTTP, HTTPS, NNTP, FTP, POP3 , SQL, IMAP, RADIUS, RADIUS_ACCOUNTING, LDAP, WMI, SIP).
      STYPE_USERNAME = :STYPE_USERNAME
      # The string property type used to change a string value of a template (HTTP, HTTPS, NNTP, FTP, POP3 , SQL, IMAP, RADIUS, LDAP, WMI, SIP).
      STYPE_PASSWORD = :STYPE_PASSWORD
      # The string property type used to change a string value of a template (EXTERNAL).
      STYPE_RUN = :STYPE_RUN
      # The string property type used to change a string value of a template (NNTP).
      STYPE_NEWSGROUP = :STYPE_NEWSGROUP
      # The string property type used to change a string value of a template (SQL).
      STYPE_DATABASE = :STYPE_DATABASE
      # The string property type used to change a string value of a template (SMTP).
      STYPE_DOMAIN = :STYPE_DOMAIN
      # The string property type used to change a string value of a template (EXTERNAL).
      STYPE_ARGUMENTS = :STYPE_ARGUMENTS
      # The string property type used to change a string value of a template (IMAP).
      STYPE_FOLDER = :STYPE_FOLDER
      # The string property type used to change a string value of a template (LDAP).
      STYPE_BASE = :STYPE_BASE
      # The string property type used to change a string value of a template (LDAP, SIP).
      STYPE_FILTER = :STYPE_FILTER
      # The string property type used to change a string value of a template (RADIUS, RADIUS_ACCOUNTING).
      STYPE_SECRET = :STYPE_SECRET
      # The string property type used to change a string value of a template (WMI, REAL_SERVER).
      STYPE_METHOD = :STYPE_METHOD
      # The string property type used to change a string value of a template (WMI).
      STYPE_URL = :STYPE_URL
      # The string property type used to change a string value of a template (WMI, REAL_SERVER).
      STYPE_COMMAND = :STYPE_COMMAND
      # The string property type used to change a string value of a template (WMI, REAL_SERVER).
      STYPE_METRICS = :STYPE_METRICS
      # The string property type used to change a string value of a template (WMI).
      STYPE_POST = :STYPE_POST
      # The string property type used to change a string value of a template (WMI, REAL_SERVER).
      STYPE_USERAGENT = :STYPE_USERAGENT
      # The string property type used to change a string value of a template (SNMP_DCA).
      STYPE_AGENT_TYPE = :STYPE_AGENT_TYPE
      # The string property type used to change a string value of a template (SNMP_DCA).
      STYPE_CPU_COEFFICIENT = :STYPE_CPU_COEFFICIENT
      # The string property type used to change a string value of a template (SNMP_DCA).
      STYPE_CPU_THRESHOLD = :STYPE_CPU_THRESHOLD
      # The string property type used to change a string value of a template (SNMP_DCA).
      STYPE_MEMORY_COEFFICIENT = :STYPE_MEMORY_COEFFICIENT
      # The string property type used to change a string value of a template (SNMP_DCA).
      STYPE_MEMORY_THRESHOLD = :STYPE_MEMORY_THRESHOLD
      # The string property type used to change a string value of a template (SNMP_DCA).
      STYPE_DISK_COEFFICIENT = :STYPE_DISK_COEFFICIENT
      # The string property type used to change a string value of a template (SNMP_DCA).
      STYPE_DISK_THRESHOLD = :STYPE_DISK_THRESHOLD
      # The string property type used to change a string value of a template (SNMP_DCA, SNMP_DCA_BASE, MODULE_SCORE).
      STYPE_SNMP_VERSION = :STYPE_SNMP_VERSION
      # The string property type used to change a string value of a template (SNMP_DCA, SNMP_DCA_BASE, MODULE_SCORE).
      STYPE_COMMUNITY = :STYPE_COMMUNITY
      # The string property type used to change a string value of a template (UDP).
      STYPE_SEND_PACKETS = :STYPE_SEND_PACKETS
      # The string property type used to change a string value of a template (UDP).
      STYPE_TIMEOUT_PACKETS = :STYPE_TIMEOUT_PACKETS
      # The string property type used to disable new sessions upon a match (also known as "receive disable").
      STYPE_RECEIVE_DRAIN = :STYPE_RECEIVE_DRAIN
      # The string property type used in database template.
      STYPE_RECEIVE_ROW = :STYPE_RECEIVE_ROW
      # The string property type used in database template.
      STYPE_RECEIVE_COLUMN = :STYPE_RECEIVE_COLUMN
      # The string property type used to enable EAV logging.
      STYPE_DEBUG = :STYPE_DEBUG
      # The string property type used in LDAP template.
      STYPE_SECURITY = :STYPE_SECURITY
      # The string property type used to indicate UDP's passive mode or port.
      STYPE_MODE = :STYPE_MODE
      # The string property type used to represent the HTTPS and SIPS cipher list.
      STYPE_CIPHER_LIST = :STYPE_CIPHER_LIST
      # The string property type used to represent the namespace used in the SOAP template.
      STYPE_NAMESPACE = :STYPE_NAMESPACE
      # The string property type used to represent the method's parameter name used in the SOAP template.
      STYPE_PARAMETER_NAME = :STYPE_PARAMETER_NAME
      # The string property type used to represent the method's parameter value used in the SOAP template.
      STYPE_PARAMETER_VALUE = :STYPE_PARAMETER_VALUE
      # The string property type used to represent the method's parameter type used in the SOAP template.
      STYPE_PARAMETER_TYPE = :STYPE_PARAMETER_TYPE
      # The string property type used to represent the return type used in the SOAP template.
      STYPE_RETURN_TYPE = :STYPE_RETURN_TYPE
      # The string property type used to represent the return value used in the SOAP template.
      STYPE_RETURN_VALUE = :STYPE_RETURN_VALUE
      # The string property type used to represent the soap fault used in the SOAP template.
      STYPE_SOAP_FAULT = :STYPE_SOAP_FAULT
      # The string property type used to represent the HTTPS compatibility mode.
      STYPE_SSL_OPTIONS = :STYPE_SSL_OPTIONS
      # The string property type used to represent the HTTPS and SIPS certificate filename.
      STYPE_CLIENT_CERTIFICATE = :STYPE_CLIENT_CERTIFICATE
      # The string property type used to represent the protocol.
      STYPE_PROTOCOL = :STYPE_PROTOCOL
      # The string property type used by the LDAP monitor.
      STYPE_MANDATORY_ATTRS = :STYPE_MANDATORY_ATTRS
      # The string property type used by the Scripted monitor.
      STYPE_FILENAME = :STYPE_FILENAME
      # The string property type used by the WAP monitor for RADIUS accounting.
      STYPE_ACCOUNTING_NODE = :STYPE_ACCOUNTING_NODE
      # The string property type used by the WAP monitor for RADIUS accounting.
      STYPE_ACCOUNTING_PORT = :STYPE_ACCOUNTING_PORT
      # The string property type used by the WAP monitor for RADIUS accounting.
      STYPE_SERVER_ID = :STYPE_SERVER_ID
      # The string property type used by the WAP monitor for RADIUS accounting.
      STYPE_CALL_ID = :STYPE_CALL_ID
      # The string property type used by the WAP monitor for RADIUS accounting.
      STYPE_SESSION_ID = :STYPE_SESSION_ID
      # The string property type used by the WAP monitor for RADIUS accounting.
      STYPE_FRAMED_ADDRESS = :STYPE_FRAMED_ADDRESS
      # The string property type used by the RPC monitor.
      STYPE_PROGRAM = :STYPE_PROGRAM
      # The string property type used by the RPC monitor.
      STYPE_VERSION = :STYPE_VERSION
      # The string property type used by the WAP monitor for RADIUS accounting.
      STYPE_SERVER = :STYPE_SERVER
      # The string property type used by the SMB monitor.
      STYPE_SERVICE = :STYPE_SERVICE
      # The string property used by the SASP monitor.
      STYPE_GW_MONITOR_ADDRESS = :STYPE_GW_MONITOR_ADDRESS
      # The string property used by the SASP monitor.
      STYPE_GW_MONITOR_SERVICE = :STYPE_GW_MONITOR_SERVICE
      # The string property used by the SASP monitor.
      STYPE_GW_MONITOR_INTERVAL = :STYPE_GW_MONITOR_INTERVAL
      # The string property used by the SASP monitor.
      STYPE_GW_MONITOR_PROTOCOL = :STYPE_GW_MONITOR_PROTOCOL
      # The string property type used by the DB templates to determine how to			 treat the database connection (0 means keep open forever, >0 means keep			 open for that many monitor instances (1 = close every time)).
      STYPE_DB_COUNT = :STYPE_DB_COUNT
      # The string property type used to change a string value of a template (SIP).
      STYPE_REQUEST = :STYPE_REQUEST
      # The string property type used to change a string value of a template (SIP).
      STYPE_HEADERS = :STYPE_HEADERS
      # The string property type used to change a string value of a template (SIP).
      STYPE_FILTER_NEG = :STYPE_FILTER_NEG
      # The string property type used by the MODULE_SCORE monitor.
      STYPE_SERVER_IP = :STYPE_SERVER_IP
      # The string property type used by the MODULE_SCORE monitor.
      STYPE_SNMP_PORT = :STYPE_SNMP_PORT
      # The string property type used by the MODULE_SCORE and VIRTUAL_LOCATION monitors.
      STYPE_POOL_NAME = :STYPE_POOL_NAME
      # String property for the NAP IP address used for monitoring RADIUS and RADIUS_ACCOUNTING monitors
      STYPE_NAS_IP = :STYPE_NAS_IP
      # String property for the client key filename for monitoring HTTPS and SIP monitors
      STYPE_CLIENT_KEY = :STYPE_CLIENT_KEY
      # String property for the maximum load average for monitoring Firepass servers
      STYPE_MAX_LOAD_AVERAGE = :STYPE_MAX_LOAD_AVERAGE
      # String property for the concurrency limit for monitoring Firepass servers
      STYPE_CONCURRENCY_LIMIT = :STYPE_CONCURRENCY_LIMIT
      # String property for inband monitors giving the number of failures within the failure interval required to mark a server as down (default )
      STYPE_FAILURES = :STYPE_FAILURES
      # String property for inband monitors giving the interval in which a number of failure must be seen to mark a server as down (default )
      STYPE_FAILURE_INTERVAL = :STYPE_FAILURE_INTERVAL
      # String property for inband monitors giving the time for an application to fail to respond before a failure is counted (default 0)
      STYPE_RESPONSE_TIME = :STYPE_RESPONSE_TIME
      # String property for inband monitors giving the time to wait after a server is marked down before retrying (default: 0)
      STYPE_RETRY_TIME = :STYPE_RETRY_TIME
      # Diameter monitor string property for the ID of the Accounting portion of a Diameter application, advertising its support. If specified, the Auth-Application-Id must be specified also, and the Vendor-Specific-Acct-Application-Id must not be specified. (default: 0)
      STYPE_DIAMETER_ACCT_APPLICATION_ID = :STYPE_DIAMETER_ACCT_APPLICATION_ID
      # Diameter monitor string property for the ID of the Authentication and Authorization portion of a Diameter application, advertising its support. If specified, the Acct-Application-Id must be specified also, and the Vendor-Specific-Auth-Application-Id must not be specified. (default: 0)
      STYPE_DIAMETER_AUTH_APPLICATION_ID = :STYPE_DIAMETER_AUTH_APPLICATION_ID
      # Diameter monitor string property for the IP address of the Diameter message originator. (default: none)
      STYPE_DIAMETER_ORIGIN_HOST = :STYPE_DIAMETER_ORIGIN_HOST
      # Diameter monitor string property for the Realm of the Diameter message originator. (default: f5.com)
      STYPE_DIAMETER_ORIGIN_REALM = :STYPE_DIAMETER_ORIGIN_REALM
      # Diameter monitor string property for the sender's IP address, used for Diameter peer discovery. (default: none)
      STYPE_DIAMETER_HOST_IP_ADDRESS = :STYPE_DIAMETER_HOST_IP_ADDRESS
      # Diameter monitor string property for the IANA SMI Network Management Private Enterprise Codes value assigned to the vendor of the Diameter application. (default: 0)
      STYPE_DIAMETER_VENDOR_ID = :STYPE_DIAMETER_VENDOR_ID
      # Diameter monitor string property for the vendor assigned name for the Diameter application. The Product-Name SHOULD remain constant across firmware revisions for the same product. (default: F5 BIGIP Diameter Health Monitoring)
      STYPE_DIAMETER_PRODUCT_NAME = :STYPE_DIAMETER_PRODUCT_NAME
      # Diameter monitor string property for the ID for a vendor-specific Diameter application, advertising its support. (default: 0)
      STYPE_DIAMETER_VENDOR_SPECIFIC_VENDOR_ID = :STYPE_DIAMETER_VENDOR_SPECIFIC_VENDOR_ID
      # Diameter monitor string property for the ID of the vendor-specific Accounting portion of a Diameter application, advertising its support. If specified, the Vendor-Specific-Auth-Application-Id must also be specified, and Acct-Application-Id must not be specified. (default: 0)
      STYPE_DIAMETER_VENDOR_SPECIFIC_ACCT_APPLICATION_ID = :STYPE_DIAMETER_VENDOR_SPECIFIC_ACCT_APPLICATION_ID
      # Diameter monitor string property for the ID of the vendor-specific Authentication and Authorization portion of a Diameter application, advertising its support. If specified, Vendor-Specific-Acct-Application-Id must also be specified, and Auth-Application-Id must not be specfied. (default: 0)
      STYPE_DIAMETER_VENDOR_SPECIFIC_AUTH_APPLICATION_ID = :STYPE_DIAMETER_VENDOR_SPECIFIC_AUTH_APPLICATION_ID
    end


    # A list of template types.
    class TemplateType < IControl::Base::Enumeration
      # The template type is unknown.
      TTYPE_UNSET = :TTYPE_UNSET
      # The ICMP template type.
      TTYPE_ICMP = :TTYPE_ICMP
      # The TCP template type.
      TTYPE_TCP = :TTYPE_TCP
      # The TCP_ECHO template type.
      TTYPE_TCP_ECHO = :TTYPE_TCP_ECHO
      # The EXTERNAL template type.
      TTYPE_EXTERNAL = :TTYPE_EXTERNAL
      # The HTTP template type.
      TTYPE_HTTP = :TTYPE_HTTP
      # The HTTPS template type.
      TTYPE_HTTPS = :TTYPE_HTTPS
      # The NNTP template type.
      TTYPE_NNTP = :TTYPE_NNTP
      # The FTP template type.
      TTYPE_FTP = :TTYPE_FTP
      # The POP3 template type.
      TTYPE_POP3 = :TTYPE_POP3
      # The SMTP template type.
      TTYPE_SMTP = :TTYPE_SMTP
      # The MSSQL template type.
      TTYPE_MSSQL = :TTYPE_MSSQL
      # The GATEWAY template type.
      TTYPE_GATEWAY = :TTYPE_GATEWAY
      # The IMAP template type.
      TTYPE_IMAP = :TTYPE_IMAP
      # The RADIUS template type.
      TTYPE_RADIUS = :TTYPE_RADIUS
      # The LDAP template type.
      TTYPE_LDAP = :TTYPE_LDAP
      # The WMI template type.
      TTYPE_WMI = :TTYPE_WMI
      # The SNMP_DCA template type.
      TTYPE_SNMP_DCA = :TTYPE_SNMP_DCA
      # The SNMP_DCA_BASE template type.
      TTYPE_SNMP_DCA_BASE = :TTYPE_SNMP_DCA_BASE
      # The REAL_SERVER template type.
      TTYPE_REAL_SERVER = :TTYPE_REAL_SERVER
      # The UDP template type.
      TTYPE_UDP = :TTYPE_UDP
      # Not using any monitor template.
      TTYPE_NONE = :TTYPE_NONE
      # The ORACLE template type.
      TTYPE_ORACLE = :TTYPE_ORACLE
      # The SOAP template type.
      TTYPE_SOAP = :TTYPE_SOAP
      # The GATEWAY_ICMP template type.
      TTYPE_GATEWAY_ICMP = :TTYPE_GATEWAY_ICMP
      # The SIP template type.
      TTYPE_SIP = :TTYPE_SIP
      # The TCP_HALF_OPEN template type.
      TTYPE_TCP_HALF_OPEN = :TTYPE_TCP_HALF_OPEN
      # The SCRIPTED template type.
      TTYPE_SCRIPTED = :TTYPE_SCRIPTED
      # The WAP template type.
      TTYPE_WAP = :TTYPE_WAP
      # The RPC template type.
      TTYPE_RPC = :TTYPE_RPC
      # The SMB template type.
      TTYPE_SMB = :TTYPE_SMB
      # The SASP template type.
      TTYPE_SASP = :TTYPE_SASP
      # The MODULE_SCORE template type.
      TTYPE_MODULE_SCORE = :TTYPE_MODULE_SCORE
      # Template type for monitoring Firepass servers
      TTYPE_FIREPASS = :TTYPE_FIREPASS
      # Template type for an inband monitor, i.e., monitor server activity via its traffic, not actively querying servers
      TTYPE_INBAND = :TTYPE_INBAND
      # The RADIUS accounting template type.
      TTYPE_RADIUS_ACCOUNTING = :TTYPE_RADIUS_ACCOUNTING
      # The Diameter authorization, authentication, and accounting server template type.
      TTYPE_DIAMETER = :TTYPE_DIAMETER
      # The Virtual Location monitor template type. This monitor can be assigned to a pool with virtual node members, determining whether each member is local or remote, and adjusting the pool member priority to give local members a higher priority than remote members.
      TTYPE_VIRTUAL_LOCATION = :TTYPE_VIRTUAL_LOCATION
    end


  end
end
