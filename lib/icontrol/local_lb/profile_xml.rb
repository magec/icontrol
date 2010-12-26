module IControl::LocalLB
  ##
  # The ProfileXML interface enables you to manipulate a local load balancer's XML profile.
  class ProfileXML < IControl::Base

    set_id_name "profile_names"

    class NamespaceMapping < IControl::Base::Struct; end
    class ProfileNamespaceMappingSequence < IControl::Base::Struct; end
    class ProfileXMLStatisticEntry < IControl::Base::Struct; end
    class ProfileXMLStatistics < IControl::Base::Struct; end    ##
    # Adds sets of namespace mappings to a set of XML profile. Specifies a list of mappings between namespaces and prefixes to be used in the profile context. For example, to define a namespace mapping of XML schema namespace one would add the namespace mapping of the prefix &amp;quot;xsd" to the namespace &amp;quot;http://www.w3.org/2001/XMLSchema".
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileXML::NamespaceMapping[]] :namespace_mappings The lists of namespace mappings to be added to the namespace mappings list for each of the XML profiles respectively.
    def add_namespace_mappings(opts)
      check_params(opts,[:namespace_mappings])
      super
    end

    ##
    # Adds sets of XPath query strings to a set of XML profile. A match of any of the queries will trigger an iRule event. For example, to trigger an iRule event on document having title of the first book node under the bookstore element it's needed to add the &amp;quot;/bookstore/book[1]/title" XPath query to a xml profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :xpath_queries The lists of XPath queries to be added to the XPath queries list of each XML profile respectively.
    def add_xpath_queries(opts)
      check_params(opts,[:xpath_queries])
      super
    end

    ##
    # Creates this XML profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def create
      super
    end

    ##
    # Deletes all XML profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_all_profiles
      super
    end

    ##
    # Deletes this XML profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def delete_profile
      super
    end

    ##
    # Gets the state that if true, abort the connection on errors.
    # @return [ProfileEnabledState]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def abort_on_error_state
      super
    end

    ##
    # Gets the statistics for all the XML profile.
    # @return [ProfileXMLStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_statistics
      super
    end

    ##
    # Gets the names of the default profile from which this profile will derive default values for its attributes.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def default_profile
      super
    end

    ##
    # Gets a list of all XML profile.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def list
      super
    end

    ##
    # Gets the values that specify the maximum buffer size for this profile.
    # @return [ProfileULong]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def maximum_buffer_size
      super
    end

    ##
    # Gets sets of namespace mappings of a set of XML profile.
    # @return [ProfileNamespaceMappingSequence]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def namespace_mappings
      super
    end

    ##
    # Gets the statistics for this XML profile.
    # @return [ProfileXMLStatistics]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def statistics
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Gets sets of XPath query strings of a set of XML profile.
    # @return [ProfileStringArray]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def xpath_queries
      super
    end

    ##
    # Determines whether this profile are base/pre-configured profile, or user-defined profile.
    # @return [boolean]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def is_base_profile
      super
    end

    ##
    # Removes all the namespace mappings from a set of XML profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_namespace_mappings
      super
    end

    ##
    # Removes all the XPath queries from a set of XML profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def remove_all_xpath_queries
      super
    end

    ##
    # Removes sets of namespace mappings from a set of XML profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileXML::NamespaceMapping[]] :namespace_mappings The lists of namespace mappings to be removed from each of the XML profiles respectively.
    def remove_namespace_mappings(opts)
      check_params(opts,[:namespace_mappings])
      super
    end

    ##
    # Removes sets of XPath query strings from a set of XML profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String[]] :xpath_queries The lists of XPath queries to be removed from the XPath queries list of each XML profile respectively.
    def remove_xpath_queries(opts)
      check_params(opts,[:xpath_queries])
      super
    end

    ##
    # Resets the statistics for this XML profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def reset_statistics
      super
    end

    ##
    # Sets the state that if true, abort the connection on errors.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileEnabledState] :states The states for the specified profiles.
    def set_abort_on_error_state(opts)
      check_params(opts,[:states])
      super
    end

    ##
    # Sets the names of the default profile from which this profile will derive default values for its attributes.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :defaults The default profiles from which the specified profiles will get default values.
    def set_default_profile(opts)
      check_params(opts,[:defaults])
      super
    end

    ##
    # Sets the values that specify the maximum buffer size for this profile.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::LocalLB::ProfileULong] :sizes The maximum buffer sizes.
    def set_maximum_buffer_size(opts)
      check_params(opts,[:sizes])
      super
    end

    ##
    # A struct that contains definition for the namespace mapping.
    # @attr [String] mapping_prefix The mapping prefix.
    # @attr [String] mapping_namespace The mapping namespace.
    class NamespaceMapping < IControl::Base::Struct
      icontrol_attribute :mapping_prefix, String
      icontrol_attribute :mapping_namespace, String
    end

    ##
    # A structure that specifies a sequence of namespace mappings strings used in profile attributes.
    # @attr [IControl::LocalLB::ProfileXML::NamespaceMapping] values The namespace mappings strings.
    # @attr [Object] default_flag The flag that indicates how the value should be interpreted.			On queries, if default_flag is true, that means the requested			value is the parent profile's value. If false, that means		 the requested value has been explicitly set.			On creations/modifications, if default_flag is true, that means		 the parent profile's value should be restored for this		 attribute value, hence the passed-in value is ignored. If false,		 that means the user wants to set the attribute value using the		 passed-in value.
    class ProfileNamespaceMappingSequence < IControl::Base::Struct
      icontrol_attribute :values, IControl::LocalLB::ProfileXML::NamespaceMapping
      icontrol_attribute :default_flag, Object
    end

    ##
    # A struct that describes statistics for a particular XML profile.
    # @attr [String] profile_name The profile name.
    # @attr [IControl::Common::Statistic] statistics The statistics for the profile.
    class ProfileXMLStatisticEntry < IControl::Base::Struct
      icontrol_attribute :profile_name, String
      icontrol_attribute :statistics, IControl::Common::Statistic
    end

    ##
    # A struct that describes profile statistics and timestamp.
    # @attr [IControl::LocalLB::ProfileXML::ProfileXMLStatisticEntry] statistics The statistics for a sequence of profiles.
    # @attr [IControl::Common::TimeStamp] time_stamp The time stamp at the time the statistics are gathered.
    class ProfileXMLStatistics < IControl::Base::Struct
      icontrol_attribute :statistics, IControl::LocalLB::ProfileXML::ProfileXMLStatisticEntry
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end


    ## A sequence of NamespaceMapping's.
    class NamespaceMappingSequence < IControl::Base::Sequence ; end
    ## An alias for a sequence of NamespaceMapping's for a particular XML profile.
    class NamespaceMappingSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of sequence of profile namespace mappings strings.
    class ProfileNamespaceMappingSequenceSequence < IControl::Base::SequenceSequence ; end
    ## A sequence of ProfileXML statistics.
    class ProfileXMLStatisticEntrySequence < IControl::Base::Sequence ; end
  end
end
