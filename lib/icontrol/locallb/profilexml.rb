module IControl::LocalLB
  ##
  # The ProfileXML interface enables you to manipulate a local load balancer's XML profile.
  class ProfileXML < IControl::Base
    class NamespaceMapping < IControl::Base::Struct; end
    class ProfileNamespaceMappingSequence < IControl::Base::Struct; end
    class ProfileXMLStatisticEntry < IControl::Base::Struct; end
    class ProfileXMLStatistics < IControl::Base::Struct; end    ## A sequence of NamespaceMapping's.
    class NamespaceMappingSequence < IControl::Base::Sequence ; end## An alias for a sequence of NamespaceMapping's for a particular XML profile.
    class NamespaceMappingSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of sequence of profile namespace mappings strings.
    class ProfileNamespaceMappingSequenceSequence < IControl::Base::SequenceSequence ; end## A sequence of ProfileXML statistics.
    class ProfileXMLStatisticEntrySequence < IControl::Base::Sequence ; end##
    # A struct that contains definition for the namespace mapping.
    class NamespaceMapping < IControl::Base::Struct
      # The mapping prefix.
      icontrol_attribute :mapping_prefix, String
      # The mapping namespace.
      icontrol_attribute :mapping_namespace, String
    end

    ##
    # A structure that specifies a sequence of namespace mappings strings used in profile
    # attributes.
    class ProfileNamespaceMappingSequence < IControl::Base::Struct
      # The namespace mappings strings.
      icontrol_attribute :values, IControl::LocalLB::ProfileXML::NamespaceMappingSequence
      # The flag that indicates how the value should be interpreted.			On queries, if default_flag
      # is true, that means the requested			value is the parent profile's value. If false,
      # that means		 the requested value has been explicitly set.			On creations/modifications,
      # if default_flag is true, that means		 the parent profile's value should be restored
      # for this		 attribute value, hence the passed-in value is ignored. If false,		 that
      # means the user wants to set the attribute value using the		 passed-in value.
      icontrol_attribute :default_flag, Object
    end

    ##
    # A struct that describes statistics for a particular XML profile.
    class ProfileXMLStatisticEntry < IControl::Base::Struct
      # The profile name.
      icontrol_attribute :profile_name, String
      # The statistics for the profile.
      icontrol_attribute :statistics, IControl::Common::StatisticSequence
    end

    ##
    # A struct that describes profile statistics and timestamp.
    class ProfileXMLStatistics < IControl::Base::Struct
      # The statistics for a sequence of profiles.
      icontrol_attribute :statistics, IControl::LocalLB::ProfileXML::ProfileXMLStatisticEntrySequence
      # The time stamp at the time the statistics are gathered.
      icontrol_attribute :time_stamp, IControl::Common::TimeStamp
    end

    ##
    # Adds sets of namespace mappings to a set of XML profiles. Specifies a list of mappings
    # between namespaces and prefixes to be used in the profile context. For example, to
    # define a namespace mapping of XML schema namespace one would add the namespace mapping
    # of the prefix &amp;quot;xsd" to the namespace &amp;quot;http://www.w3.org/2001/XMLSchema".
    # :method: add_namespace_mappings
    # :call-seq:
    # add_namespace_mappings(profile_names ,namespace_mappings)
    #
    # Parameters:
    # - profile_names String[] The names of the XML profiles.
    # - namespace_mappings NamespaceMapping[][] The lists of namespace mappings to be added to the namespace mappings list for each of the XML profiles respectively.

    ##
    # Adds sets of XPath query strings to a set of XML profiles. A match of any of the
    # queries will trigger an iRule event. For example, to trigger an iRule event on document
    # having title of the first book node under the bookstore element it's needed to add
    # the &amp;quot;/bookstore/book[1]/title" XPath query to a xml profile.
    # :method: add_xpath_queries
    # :call-seq:
    # add_xpath_queries(profile_names ,xpath_queries)
    #
    # Parameters:
    # - profile_names String[] The names of the XML profiles.
    # - xpath_queries String[][] The lists of XPath queries to be added to the XPath queries list of each XML profile respectively.

    ##
    # Creates the specified XML profiles.
    # :method: create
    # :call-seq:
    # create(profile_names)
    #
    # Parameters:
    # - profile_names String[] The XML profiles to create.

    ##
    # Deletes all XML profiles.
    # :method: delete_all_profiles

    ##
    # Deletes the specified XML profiles.
    # :method: delete_profile
    # :call-seq:
    # delete_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the XML profiles to delete.

    ##
    # Gets the state that if true, abort the connection on errors.
    # :method: get_abort_on_error_state
    # :call-seq:
    # get_abort_on_error_state(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets the statistics for all the XML profiles.
    # :method: get_all_statistics

    ##
    # Gets the names of the default profiles from which the specified profiles will derive
    # default values for its attributes.
    # :method: get_default_profile
    # :call-seq:
    # get_default_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Gets a list of all XML profiles.
    # :method: get_list

    ##
    # Gets the values that specify the maximum buffer size for the specified profiles.
    # :method: get_maximum_buffer_size
    # :call-seq:
    # get_maximum_buffer_size(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the XML profiles.

    ##
    # Gets sets of namespace mappings of a set of XML profiles.
    # :method: get_namespace_mappings
    # :call-seq:
    # get_namespace_mappings(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the XML profiles.

    ##
    # Gets the statistics for the specified XML profiles.
    # :method: get_statistics
    # :call-seq:
    # get_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The XML profiles to get the statistics from.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Gets sets of XPath query strings of a set of XML profiles.
    # :method: get_xpath_queries
    # :call-seq:
    # get_xpath_queries(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the XML profiles.

    ##
    # Determines whether the specified profiles are base/pre-configured profiles, or user-defined
    # profiles.
    # :method: is_base_profile
    # :call-seq:
    # is_base_profile(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.

    ##
    # Removes all the namespace mappings from a set of XML profiles.
    # :method: remove_all_namespace_mappings
    # :call-seq:
    # remove_all_namespace_mappings(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the XML profiles.

    ##
    # Removes all the XPath queries from a set of XML profiles.
    # :method: remove_all_xpath_queries
    # :call-seq:
    # remove_all_xpath_queries(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the XML profiles.

    ##
    # Removes sets of namespace mappings from a set of XML profiles.
    # :method: remove_namespace_mappings
    # :call-seq:
    # remove_namespace_mappings(profile_names ,namespace_mappings)
    #
    # Parameters:
    # - profile_names String[] The names of the XML profiles.
    # - namespace_mappings NamespaceMapping[][] The lists of namespace mappings to be removed from each of the XML profiles respectively.

    ##
    # Removes sets of XPath query strings from a set of XML profiles.
    # :method: remove_xpath_queries
    # :call-seq:
    # remove_xpath_queries(profile_names ,xpath_queries)
    #
    # Parameters:
    # - profile_names String[] The names of the XML profiles.
    # - xpath_queries String[][] The lists of XPath queries to be removed from the XPath queries list of each XML profile respectively.

    ##
    # Resets the statistics for the specified XML profiles.
    # :method: reset_statistics
    # :call-seq:
    # reset_statistics(profile_names)
    #
    # Parameters:
    # - profile_names String[] The names of the XML profiles.

    ##
    # Sets the state that if true, abort the connection on errors.
    # :method: set_abort_on_error_state
    # :call-seq:
    # set_abort_on_error_state(profile_names ,states)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - states ProfileEnabledState[] The states for the specified profiles.

    ##
    # Sets the names of the default profiles from which the specified profiles will derive
    # default values for its attributes.
    # :method: set_default_profile
    # :call-seq:
    # set_default_profile(profile_names ,defaults)
    #
    # Parameters:
    # - profile_names String[] The names of the profiles.
    # - defaults String[] The default profiles from which the specified profiles will get default values.

    ##
    # Sets the values that specify the maximum buffer size for the specified profiles.
    # :method: set_maximum_buffer_size
    # :call-seq:
    # set_maximum_buffer_size(profile_names ,sizes)
    #
    # Parameters:
    # - profile_names String[] The names of the XML profiles.
    # - sizes ProfileULong[] The maximum buffer sizes.


  end
end
