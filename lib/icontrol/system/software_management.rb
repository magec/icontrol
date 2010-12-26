module IControl::System
  ##
  # The SoftwareManagement interface enables you to manage the software installed on the system.
  class SoftwareManagement < IControl::Base

    set_id_name "imageIDs"

    class HotFixInformation < IControl::Base::Struct; end
    class InstallationID < IControl::Base::Struct; end
    class SoftwareStatus < IControl::Base::Struct; end
    class RepositoryImageID < IControl::Base::Struct; end
    class SoftwareRepositoryHotfix < IControl::Base::Struct; end
    class SoftwareRepositoryImage < IControl::Base::Struct; end    ##
    # Cleanup the ramfs mounted at HF_MNT_LOCATION
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument]
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def cleanup_ramfs
      super
    end

    ##
    # Create a RAM disk and return its path to the caller.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument]
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def create_ramfs
      super
    end

    ##
    # Deletes software images from the repository.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :image_filenames are the images you want to delete.
    def delete_software_image(opts)
      check_params(opts,[:image_filenames])
      super
    end

    ##
    # Gets the software status for all installation ids. This provides a complete picture of software status, for all ids.
    # @return [SoftwareStatus]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def all_software_status
      super
    end

    ##
    # Gets text which contains boot image information, in the form of &amp;quot;name=value" pairs. The text includes information about what's installed in each of the boot locations in the device. While this method is not officially deprecated, it is preferred to use get_software_status, as that method is a newer method which yields much the same information in a more rigorous and controlled manner.
    # @return [char]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [boolean] :save_active_config The boolean indicating whether we should backup the			 configuration on the active boot location for the installer.
    def boot_image_information(opts)
      check_params(opts,[:save_active_config])
      super
    end

    ##
    # Gets the configured default boot location, which will be the location that boots after the system reboots.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def boot_location
      super
    end

    ##
    # Gets the cluster boot location, which will be the location set in the software desired table.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def cluster_boot_location
      super
    end

    ##
    # Gets information on any hotfixes applied to the system. There may not be any hotfix installed, in which case the returned sequence is empty.
    # @return [HotFixInformation]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def hotfix_information
      super
    end

    ##
    # Gets the percent complete of the current live install processes. Note: You may wish to use get_software_status instead of this method as it returns more information, such as the product, version, and build, along with the &amp;quot;percent complete"/status field.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::System::SoftwareManagement::InstallationID] :installation_ids What locations do you want percent complete.
    def live_install_completion(opts)
      check_params(opts,[:installation_ids])
      super
    end

    ##
    # Gets the RPM packages installed on the device.
    # @return [String]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def rpm_package_information
      super
    end

    ##
    # Gets a list of hotfix information about specific hotfix image in the reporitory.
    # @return [softwareRepositoryHotfix]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def software_hotfix
      super
    end

    ##
    # Gets a list of hotfix images available in the repository.
    # @return [repositoryImageID]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def software_hotfix_list
      super
    end

    ##
    # Gets a list of image information about specific image in the reporitory.
    # @return [softwareRepositoryImage]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def software_image
      super
    end

    ##
    # Gets a list of software images available in the repository.
    # @return [repositoryImageID]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def software_image_list
      super
    end

    ##
    # Gets the software status for given installation ids. This provides a complete picture of software status, per id.
    # @return [SoftwareStatus]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [IControl::System::SoftwareManagement::InstallationID] :installation_ids Locations for which you want software status.
    def software_status(opts)
      check_params(opts,[:installation_ids])
      super
    end

    ##
    # Gets the version information for this interface.
    # @return [String]
    def version
      super
    end

    ##
    # Checks to see whether the system disks are managed with logical volumes.
    # @return [boolean]
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    def has_logical_volume_management
      super
    end

    ##
    # Installs this hotfixes.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :hotfix_files The names of the hotfix files to be installed. These hotfix files		 must already exist on the system.
    # @option opts [boolean] :reboot_system The flag to indicate whether to reboot the system after the			hotfixes have been installed.
    def install_hotfix(opts)
      check_params(opts,[:hotfix_files,:reboot_system])
      super
    end

    ##
    # Calls bigstart stop and installs this hotfixes. Upon completion, if reboot_system is set to false, bigstart start is called to bring daemons back up.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :hotfix_files The names of the hotfix files to be installed. These hotfix files		 must already exist on the system.
    # @option opts [boolean] :reboot_system The flag to indicate whether to reboot the system after the			hotfixes have been installed.
    def install_hotfix_no_daemons(opts)
      check_params(opts,[:hotfix_files,:reboot_system])
      super
    end

    ##
    # Initiates an install of SW images on all blades installed on one chassis.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :install_volume installation slot (HD slot) to install to. This will be the same on all blades.
    # @option opts [String] :product The product you are installing (ex: BIGIP)
    # @option opts [String] :version The version of product (ex: 10.0.0)
    # @option opts [String] :build
    def install_software_image(opts)
      check_params(opts,[:install_volume,:product,:version,:build])
      super
    end

    ##
    # Sets the boot image information and automatically initiates installation based on the boot image information.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [char] :boot_image_information The boot image information file data.
    def set_boot_image_information(opts)
      check_params(opts,[:boot_image_information])
      super
    end

    ##
    # Sets the default boot location, which will be the boot location that boots after the next system reboot. This version will not work on a clustered system.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs.
    # @param [Hash] opts
    # @option opts [String] :location The boot location name. Short-form names such as CF1 .1, HD1 .1, HD1 .2
    def set_boot_location(opts)
      check_params(opts,[:location])
      super
    end

    ##
    # Sets the cluster wide boot location, which will be the boot location after the next system reboot. Starting with BIG-IP version 9.6.0, clustered systems will reboot immediately.
    # @raise [IControl::Common::AccessDenied] raised if the client credentials are not valid.
    # @raise [IControl::Common::InvalidArgument] raised if one of the arguments is invalid.
    # @raise [IControl::Common::OperationFailed] raised if an operation error occurs, or if attemped on a non clustered system.
    # @param [Hash] opts
    # @option opts [String] :location The boot location name. Short-form names such as CF1 .1, HD1 .1, HD1 .2
    def set_cluster_boot_location(opts)
      check_params(opts,[:location])
      super
    end

    ##
    # A structure that contains the information on hotfixes that have been applied to the system.
    # @attr [String] description The description of the software fix contained in this hotfix, if available.
    # @attr [String] product The product name for which this hotfix is applied.
    # @attr [String] id The unique identifier for this hotfix, i.e. a related CR or subcase ID.
    # @attr [String] version_resolved The dot-separated major, minor, and maintenance release level			 in which the same issue was resolved; i.e. the product version			 in which the original problem no longer occurs. Note that			 this value is only available when appropriate, due to the fact			 that at the time the hotfix was created, there might not be exact			 knowledge of what release the final fix will be in.
    # @attr [String] packages The list of the software packages affected and updated by this hotfix.
    class HotFixInformation < IControl::Base::Struct
      icontrol_attribute :description, String
      icontrol_attribute :product, String
      icontrol_attribute :id, String
      icontrol_attribute :version_resolved, String
      icontrol_attribute :packages, String
    end

    ##
    # A structure that contains the information for identifying a live install process.
    # @attr [Numeric] chassis_slot_id is the blade location in the system chassis.
    # @attr [String] install_volume is the hard drive slot the installation is targeted for.
    class InstallationID < IControl::Base::Struct
      icontrol_attribute :chassis_slot_id, Numeric
      icontrol_attribute :install_volume, String
    end

    ##
    # A structure that contains information on software status. This includes items like product, version, build, and (live install) completion status.
    # @attr [IControl::System::SoftwareManagement::InstallationID] installation_id The location for the status.
    # @attr [String] product The product you are installing (ex: BIGIP) (or, product which is installed).
    # @attr [String] version The version of product (ex: 9.6.0).
    # @attr [String] build The build number you are installing.
    # @attr [String] base_build The base build (used for hotfixes).
    # @attr [Object] active Whether the boot location is active.
    # @attr [String] edition Gives the edition, e.g."Hotfix HF4" (used for hotfixes).
    # @attr [String] status A string indicating the status of the live install process. The status strings are "none", "audited", "retry", "upgrade needed", "waiting for image", "installing nn.mmm pct", "complete", "cancelling", "cancelled", and "failed". The "failed" string may have text giving a reason after it. The "waiting for image" string may have further text after it describing the image being awaited. A client should ignore any strings returned other than these. You can use the status field to monitor the completion status of a live install operation in process. When checking status, you should ensure that the product, version, and build reflect the software whose status you are interested in (because there are a few scenarios where the product, version, and build for a volume may not be updated as quickly as you might expect).
    class SoftwareStatus < IControl::Base::Struct
      icontrol_attribute :installation_id, IControl::System::SoftwareManagement::InstallationID
      icontrol_attribute :product, String
      icontrol_attribute :version, String
      icontrol_attribute :build, String
      icontrol_attribute :base_build, String
      icontrol_attribute :active, Object
      icontrol_attribute :edition, String
      icontrol_attribute :status, String
    end

    ##
    # A structure with information for identifying a specific image or hotfix.
    # @attr [Numeric] chassis_slot_id is the blade location in the system chassis.
    # @attr [String] filename indicates the file in /shared/images or the full path and name to a different location.
    class RepositoryImageID < IControl::Base::Struct
      icontrol_attribute :chassis_slot_id, Numeric
      icontrol_attribute :filename, String
    end

    ##
    # A structure with information for describing a specific image.
    # @attr [Numeric] chassis_slot_id is the blade location in the system chassis.
    # @attr [String] filename The filename of the image.
    # @attr [String] product The product's name.
    # @attr [String] version The product's version.
    # @attr [String] build The products build number.
    # @attr [String] chksum The md5 checksum of the file.
    # @attr [Object] verified Verified is True if the md5 is up to date, False if the checksum is being calculated.
    # @attr [String] hotfix_id The ID of the hotfix.
    # @attr [String] hotfix_title The title of the hotfix
    class SoftwareRepositoryHotfix < IControl::Base::Struct
      icontrol_attribute :chassis_slot_id, Numeric
      icontrol_attribute :filename, String
      icontrol_attribute :product, String
      icontrol_attribute :version, String
      icontrol_attribute :build, String
      icontrol_attribute :chksum, String
      icontrol_attribute :verified, Object
      icontrol_attribute :hotfix_id, String
      icontrol_attribute :hotfix_title, String
    end

    ##
    # A structure with information for describing a specific image.
    # @attr [Numeric] chassis_slot_id is the blade location in the system chassis.
    # @attr [String] filename The filename of the image.
    # @attr [String] product The product's name.
    # @attr [String] version The product's version.
    # @attr [String] build The products build number.
    # @attr [String] chksum The md5 checksum of the file.
    # @attr [Object] verified Verified is True if the md5 is up to date, False if the checksum is being calculated.
    # @attr [String] build_date The date this build was created.
    # @attr [String] last_modified The date this file was last modified.
    # @attr [String] file_size The size in bytes of the file.
    class SoftwareRepositoryImage < IControl::Base::Struct
      icontrol_attribute :chassis_slot_id, Numeric
      icontrol_attribute :filename, String
      icontrol_attribute :product, String
      icontrol_attribute :version, String
      icontrol_attribute :build, String
      icontrol_attribute :chksum, String
      icontrol_attribute :verified, Object
      icontrol_attribute :build_date, String
      icontrol_attribute :last_modified, String
      icontrol_attribute :file_size, String
    end


    ## A sequence of hotfix information.
    class HotFixInformationSequence < IControl::Base::Sequence ; end
    ## A sequence of InstallationID information.
    class InstallationIDSequence < IControl::Base::Sequence ; end
    ## A sequence of software status objects.
    class SoftwareStatusSequence < IControl::Base::Sequence ; end
    ## A sequence of repositoryImageID s.
    class RepositoryImageIDSequence < IControl::Base::Sequence ; end
    ## A sequence of softwareRepositoryHotfix objects.
    class SoftwareRepositoryHotfixSequence < IControl::Base::Sequence ; end
    ## A sequence of softwareRepositoryImage objects.
    class SoftwareRepositoryImageSequence < IControl::Base::Sequence ; end
  end
end
