module IControl::Management
  ##
  # The ZoneRunner interface handles all the top level calls
  class ZoneRunner < IControl::Base
    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # (re)init ZoneRunner instructs ZoneRunner to re-read named.conf and rebuild its internal
    # data structures based on contents
    # :method: init

    ##
    # Set the logging level for messages
    # :method: set_loglevel
    # :call-seq:
    # set_loglevel(level)
    #
    # Parameters:
    # - level DebugLevel One of the enums from DebugLevel


  end
end
