module IControl::Networking
  ##
  # The iSession Local interface enables you to work with the definitions and attributes
  # contained in a device's local endpoint object.
  class ISessionLocalInterface < IControl::Base
    class NatSourceAddress < IControl::Base::Enumeration; end    ## A sequence of NatSourceAddress states.
    class NatSourceAddressSequence < IControl::Base::Sequence ; end##
    # An enumeration of nat address states.
    class NatSourceAddress < IControl::Base::Enumeration
      # Disable all nat addresses.
      WOC_NAT_SOURCE_ADDRESS_NONE = :WOC_NAT_SOURCE_ADDRESS_NONE
      # Use client NAT address.
      WOC_NAT_SOURCE_ADDRESS_CLIENT = :WOC_NAT_SOURCE_ADDRESS_CLIENT
      # Use WOM NAT address.
      WOC_NAT_SOURCE_ADDRESS_WOM = :WOC_NAT_SOURCE_ADDRESS_WOM
      # Use tunnel NAT address.
      WOC_NAT_SOURCE_ADDRESS_TUNNEL = :WOC_NAT_SOURCE_ADDRESS_TUNNEL
    end

    ##
    # Create a local WOC object.
    # :method: create
    # :call-seq:
    # create(woc_instance ,local_ips ,enabled ,serverssl)
    #
    # Parameters:
    # - woc_instance long The local woc object id.
    # - local_ips String[] The local ip addresses.
    # - enabled EnabledState The enabled flag.
    # - serverssl String The serverssl name.

    ##
    # Delete the local WOC object.
    # :method: delete_local
    # :call-seq:
    # delete_local(wocs)
    #
    # Parameters:
    # - wocs long[] The woc record(s) to use.

    ##
    # Get UUID
    # :method: get_UUID
    # :call-seq:
    # get_UUID(wocs)
    #
    # Parameters:
    # - wocs long[] The woc record(s) to use.

    ##
    # Get the allow_nat attribute in the local WOC object.
    # :method: get_allow_nat
    # :call-seq:
    # get_allow_nat(wocs)
    #
    # Parameters:
    # - wocs long[] The woc record(s) to use.

    ##
    # Get enable setting in the local WOC object.
    # :method: get_enabled_state
    # :call-seq:
    # get_enabled_state(wocs)
    #
    # Parameters:
    # - wocs long[] The woc record(s) to use.

    ##
    # Get a list of the current WOC object names.
    # :method: get_ip_list
    # :call-seq:
    # get_ip_list(wocs)
    #
    # Parameters:
    # - wocs long[] The woc record(s) to use.

    ##
    # Get a list of the current local endpoint object ids.
    # :method: get_list

    ##
    # Get Management address
    # :method: get_management_address
    # :call-seq:
    # get_management_address(wocs)
    #
    # Parameters:
    # - wocs long[] The woc record(s) to use.

    ##
    # Gets the nat source address in the local WOC object.
    # :method: get_nat_source_address
    # :call-seq:
    # get_nat_source_address(wocs)
    #
    # Parameters:
    # - wocs long[] The woc record(s) to use.

    ##
    # Get serverssl name strings in the local WOC object(s).
    # :method: get_serverssl
    # :call-seq:
    # get_serverssl(wocs)
    #
    # Parameters:
    # - wocs long[] The woc record(s) to use.

    ##
    # Get local port number in the local WOC object.
    # :method: get_tunnel_port
    # :call-seq:
    # get_tunnel_port(wocs)
    #
    # Parameters:
    # - wocs long[] The woc record(s) to use.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Set the allow_nat attribute in the local WOC object.
    # :method: set_allow_nat
    # :call-seq:
    # set_allow_nat(wocs ,nat_states)
    #
    # Parameters:
    # - wocs long[] The woc record(s) to use.
    # - nat_states EnabledState[] The new nat states.

    ##
    # Set enable in the local WOC object.
    # :method: set_enabled_state
    # :call-seq:
    # set_enabled_state(wocs ,enabled_states)
    #
    # Parameters:
    # - wocs long[] The woc record(s) to use.
    # - enabled_states EnabledState[] The new enabled state flags.

    ##
    # Set Management address
    # :method: set_management_address
    # :call-seq:
    # set_management_address(wocs ,ips)
    #
    # Parameters:
    # - wocs long[] The woc record(s) to use.
    # - ips String[] The local ip addresses.

    ##
    # Sets the nat source address in the local WOC object.
    # :method: set_nat_source_address
    # :call-seq:
    # set_nat_source_address(wocs ,nat_states)
    #
    # Parameters:
    # - wocs long[] The woc record(s) to use.
    # - nat_states NatSourceAddress[] The new nat states.

    ##
    # Set serverssl string in the local WOC object.
    # :method: set_serverssl
    # :call-seq:
    # set_serverssl(wocs ,serverssls)
    #
    # Parameters:
    # - wocs long[] The target records.
    # - serverssls String[] The serverssl strings to be used.

    ##
    # Set local port number in the local WOC object.
    # :method: set_tunnel_port
    # :call-seq:
    # set_tunnel_port(wocs ,ports)
    #
    # Parameters:
    # - wocs long[] The woc record(s) to use.
    # - ports long[] The new local port numbers.


  end
end
