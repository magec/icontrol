module IControl::Networking
  ##
  # The PortMirror interface enables you to work with the definitions and attributes
  # of port mirroring.
  class PortMirror < IControl::Base
    ##
    # Adds the lists of mirrored-from interfaces to the specified port mirrors (mirrored-to
    # interfaces).
    # :method: add_interface
    # :call-seq:
    # add_interface(pmirrors ,interfaces)
    #
    # Parameters:
    # - pmirrors String[] The names of the port mirrors (mirrored-to interfaces).
    # - interfaces String[][] The lists of mirrored-from interfaces.

    ##
    # Creates the specified port mirrors (mirrored-to interfaces) from the list of specified
    # interfaces (mirrored-from interfaces).
    # :method: create
    # :call-seq:
    # create(pmirrors ,interfaces)
    #
    # Parameters:
    # - pmirrors String[] The names of the port mirrors (mirrored-to interfaces).
    # - interfaces String[][] The lists of interfaces from which mirroring will take place.

    ##
    # Deletes all port mirrors (mirrored-to interfaces).
    # :method: delete_all_port_mirrors

    ##
    # Deletes the specified port mirrors (mirrored-to interfaces).
    # :method: delete_port_mirror
    # :call-seq:
    # delete_port_mirror(pmirrors)
    #
    # Parameters:
    # - pmirrors String[] The names of the port mirrors (mirrored-to interfaces).

    ##
    # Gets the lists of mirrored-from interfaces associated with the specified port mirrors.
    # :method: get_interface
    # :call-seq:
    # get_interface(pmirrors)
    #
    # Parameters:
    # - pmirrors String[] The names of the port mirrors (mirrored-to interfaces).

    ##
    # Gets a list of all port mirrors (mirrored-to interfaces) on this device.
    # :method: get_list

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Removes all mirrored-from interfaces from the specified port mirrors (mirrored-to
    # interfaces).
    # :method: remove_all_interfaces
    # :call-seq:
    # remove_all_interfaces(pmirrors)
    #
    # Parameters:
    # - pmirrors String[] The names of the port mirrors (mirrored-to interfaces).

    ##
    # Removes the lists of mirrored-from interfaces from the specified port mirrors (mirrored-to
    # interfaces).
    # :method: remove_interface
    # :call-seq:
    # remove_interface(pmirrors ,interfaces)
    #
    # Parameters:
    # - pmirrors String[] The names of the port mirrors (mirrored-to interfaces).
    # - interfaces String[][] The lists of mirrored-from interfaces.


  end
end
