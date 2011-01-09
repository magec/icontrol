module IControl::ARX
  ##
  # The FileChangeNotification Interface lets applications monitor and manage ARX file
  # data storage activity.
  class FileChangeNotification < IControl::Base

    set_id_name "namespace"

    ##
    # Complete the file change notification session established by FileChangeNotification::start_notifications.
    # If the caller does not call this function, the file change notification session will
    # be automatically cleared after no requests received for an hour.
    # @rspec_example
    # @return [String]
    # @param [Hash] opts
    # @option opts [String] :session_id File change notification session identifier returned by FileChangeNotification ::start_notifications.
    def finish_notifications(opts)
      check_params(opts,[:session_id])
      super
    end

    ##
    # Retrieve file and directory changes that took place during the window of time defined
    # by from_snapshot and to_snapshot. The caller may call this function repeatedly until
    # there are no more file changes. When a fault occurs, the caller must discard the
    # current session and start a new session. When the fault is not arxFaultFcnRescan
    # or arxFaultFcnSessionRestart, the caller can resume from where they left off by providing
    # the last received change_idx to the first get_notifications call in the new session.
    # @rspec_example
    # @return [FileChangeResponse]
    # @param [Hash] opts
    # @option opts [String] :session_id File change notification session identifier returned by FileChangeNotification ::start_notifications.
    # @option opts [long] :count Maximum number of file changes to be returned. (Min: 25 Max: 100)
    # @option opts [String] :change_idx Index from which to start request. It must be empty if this is the first call in a new session. Otherwise, it is the change_idx returned by last call.
    def notifications(opts)
      check_params(opts,[:session_id,:count,:change_idx])
      super
    end

    ##
    # Returns a list of snapshot definitions for a list of specified snapshots.
    # @rspec_example
    # @return [SnapshotDefinition]
    # @param [Hash] opts
    # @option opts [String] :volume The volume name.
    # @option opts [String] :rule The notification rule name.
    # @option opts [String] :snapshots The list of snapshots.
    def snapshot_definition(opts)
      check_params(opts,[:volume,:rule,:snapshots])
      super
    end

    ##
    # Returns a list of snapshots for a notification rule.
    # @rspec_example
    # @return [String]
    # @param [Hash] opts
    # @option opts [String] :volume The volume name.
    # @option opts [String] :rule The notification rule name.
    def snapshots(opts)
      check_params(opts,[:volume,:rule])
      super
    end

    ##
    # Start processing file and directory changes. If the from_snapshot parameter is non-zero,
    # then the changes that occurred between the creation time of the snapshot specified
    # by from_snapshot and the creation time of the snapshot specified by to_snapshot will
    # be processed. If the from_snapshot parameter is 0, then all files that exist in the
    # snapshot specified by to_snapshot will be processed. This function creates a new
    # file change notification session that the caller uses to get all file changes that
    # occurred between from_snapshot and to_snapshot. The caller passes the returned session
    # id to FileChangeNotification::get_notifications to get file changes and FileChangeNotification::finish_notifications
    # to complete the session. In case of error, this function generates a SOAP fault.
    # @rspec_example
    # @return [String]
    # @param [Hash] opts
    # @option opts [String] :volume Volume name.
    # @option opts [String] :rule Notification rule name.
    # @option opts [long] :from_snapshot Timestamp of source snapshot. If 0 is specified, the entire volume is scanned.
    # @option opts [long] :to_snapshot Timestamp of destination snapshot. It must be the creation time of the next consecutive snapshot after from_snapshot.
    # @option opts [boolean] :all_files File changes to be returned, and should be set to true.
    def start_notifications(opts)
      check_params(opts,[:volume,:rule,:from_snapshot,:to_snapshot,:all_files])
      super
    end


  end
end
