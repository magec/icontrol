module IControl::System
  ##
  # The Cluster interface enables you to work with the definitions and attributes in
  # a clustered device.
  class Cluster < IControl::Base
    ##
    # Gets the cluster enabled states.
    # :method: get_cluster_enabled_state
    # :call-seq:
    # get_cluster_enabled_state(cluster_names)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.

    ##
    # Gets the cluster high-availability states.
    # :method: get_cluster_ha_state
    # :call-seq:
    # get_cluster_ha_state(cluster_names)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.

    ##
    # Gets the primary slot numbers.
    # :method: get_current_primary_slot
    # :call-seq:
    # get_current_primary_slot(cluster_names)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.

    ##
    # Gets a list of the cluster names.
    # :method: get_list

    ##
    # Gets the cluster member enabled states.
    # :method: get_member_enabled_state
    # :call-seq:
    # get_member_enabled_state(cluster_names ,slot_ids)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.
    # - slot_ids long[][] The list of lists of slot ids.

    ##
    # Gets the cluster member high-availability states.
    # :method: get_member_ha_state
    # :call-seq:
    # get_member_ha_state(cluster_names ,slot_ids)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.
    # - slot_ids long[][] The list of lists of slot ids.

    ##
    # Gets the cluster member licensed states.
    # :method: get_member_licensed_state
    # :call-seq:
    # get_member_licensed_state(cluster_names ,slot_ids)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.
    # - slot_ids long[][] The list of lists of slot ids.

    ##
    # Gets the cluster member priming states.
    # :method: get_member_priming_state
    # :call-seq:
    # get_member_priming_state(cluster_names ,slot_ids)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.
    # - slot_ids long[][] The list of lists of slot ids.

    ##
    # Gets the minimum up members values.
    # :method: get_min_up_members
    # :call-seq:
    # get_min_up_members(cluster_names)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.

    ##
    # Gets the cluster minimum up members actions.
    # :method: get_min_up_members_action
    # :call-seq:
    # get_min_up_members_action(cluster_names)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.

    ##
    # Gets the cluster minimum up members enabled states.
    # :method: get_min_up_members_state
    # :call-seq:
    # get_min_up_members_state(cluster_names)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.

    ##
    # Get a list of list of slot ids (the size of each list is the number of slots).
    # :method: get_slot_id
    # :call-seq:
    # get_slot_id(cluster_names)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Checks to see whether the system is a clustered environment.
    # :method: is_clustered_environment

    ##
    # Sets the cluster enabled states.
    # :method: set_cluster_enabled_state
    # :call-seq:
    # set_cluster_enabled_state(cluster_names ,cluster_states)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.
    # - cluster_states EnabledState[] The list of enabled states.

    ##
    # Currently this is not implemented.
    # :method: set_current_primary_slot
    # :call-seq:
    # set_current_primary_slot(cluster_names ,primary_slots)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.
    # - primary_slots long[]

    ##
    # Sets the cluster member enabled states.
    # :method: set_member_enabled_state
    # :call-seq:
    # set_member_enabled_state(cluster_names ,slot_ids ,member_states)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.
    # - slot_ids long[][] The list of lists of slot ids.
    # - member_states EnabledState[][]

    ##
    # Sets the cluster member priming states.
    # :method: set_member_priming_state
    # :call-seq:
    # set_member_priming_state(cluster_names ,slot_ids ,priming_states)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.
    # - slot_ids long[][] The list of lists of slot ids.
    # - priming_states EnabledState[][] The list of lists of priming states.

    ##
    # Sets the minimum up members values.
    # :method: set_min_up_members
    # :call-seq:
    # set_min_up_members(cluster_names ,min_up_members)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.
    # - min_up_members long[] The list of minimum up members values.

    ##
    # Sets the cluster minimum up members actions.
    # :method: set_min_up_members_action
    # :call-seq:
    # set_min_up_members_action(cluster_names ,min_up_actions)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.
    # - min_up_actions HAAction[] The list of minimum up members actions.

    ##
    # Sets the cluster minimum up members enabled states.
    # :method: set_min_up_members_state
    # :call-seq:
    # set_min_up_members_state(cluster_names ,min_up_states)
    #
    # Parameters:
    # - cluster_names String[] The list of cluster names.
    # - min_up_states EnabledState[] The list of minimum up members enabled states.


  end
end
