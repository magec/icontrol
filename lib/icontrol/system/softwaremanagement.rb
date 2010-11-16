module IControl::System
  ##
  # The SoftwareManagement interface enables you to manage the software installed on
  # the system.
  class SoftwareManagement < IControl::Base
    class HotFixInformation < IControl::Base::Struct; end
    class InstallationID < IControl::Base::Struct; end
    class SoftwareStatus < IControl::Base::Struct; end
    class RepositoryImageID < IControl::Base::Struct; end
    class SoftwareRepositoryHotfix < IControl::Base::Struct; end
    class SoftwareRepositoryImage < IControl::Base::Struct; end    ## A sequence of hotfix information.
    class HotFixInformationSequence < IControl::Base::Sequence ; end## A sequence of InstallationID information.
    class InstallationIDSequence < IControl::Base::Sequence ; end## A sequence of software status objects.
    class SoftwareStatusSequence < IControl::Base::Sequence ; end## A sequence of repositoryImageID s.
    class RepositoryImageIDSequence < IControl::Base::Sequence ; end## A sequence of softwareRepositoryHotfix objects.
    class SoftwareRepositoryHotfixSequence < IControl::Base::Sequence ; end## A sequence of softwareRepositoryImage objects.
    class SoftwareRepositoryImageSequence < IControl::Base::Sequence ; end##
    # A structure that contains the information on hotfixes that have been applied to the
    # system.
    class HotFixInformation < IControl::Base::Struct
      # The description of the software fix contained in this hotfix, if available.
      icontrol_attribute :description, String
      # The product name for which this hotfix is applied.
      icontrol_attribute :product, String
      # The unique identifier for this hotfix, i.e. a related CR or subcase ID.
      icontrol_attribute :id, String
      # The dot-separated major, minor, and maintenance release level			 in which the same
      # issue was resolved; i.e. the product version			 in which the original problem no
      # longer occurs. Note that			 this value is only available when appropriate, due to
      # the fact			 that at the time the hotfix was created, there might not be exact
      # knowledge of what release the final fix will be in.
      icontrol_attribute :version_resolved, String
      # The list of the software packages affected and updated by this hotfix.
      icontrol_attribute :packages, StringSequence
    end

    ##
    # A structure that contains the information for identifying a live install process.
    class InstallationID < IControl::Base::Struct
      # is the blade location in the system chassis.
      icontrol_attribute :chassis_slot_id, Numeric
      # is the hard drive slot the installation is targeted for.
      icontrol_attribute :install_volume, String
    end

    ##
    # A structure that contains information on software status. This includes items like
    # product, version, build, and (live install) completion status.
    class SoftwareStatus < IControl::Base::Struct
      # The location for the status.
      icontrol_attribute :installation_id, IControl::System::SoftwareManagement::InstallationID
      # The product you are installing (ex: BIGIP) (or, product which is installed).
      icontrol_attribute :product, String
      # The version of product (ex: 9.6.0).
      icontrol_attribute :version, String
      # The build number you are installing.
      icontrol_attribute :build, String
      # The base build (used for hotfixes).
      icontrol_attribute :base_build, String
      # Whether the boot location is active.
      icontrol_attribute :active, Object
      # Gives the edition, e.g."Hotfix HF4" (used for hotfixes).
      icontrol_attribute :edition, String
      # A string indicating the status of the live install process. The status strings are
      # "none", "audited", "retry", "upgrade needed", "waiting for image", "installing nn.mmm
      # pct", "complete", "cancelling", "cancelled", and "failed". The "failed" string may
      # have text giving a reason after it. The "waiting for image" string may have further
      # text after it describing the image being awaited. A client should ignore any strings
      # returned other than these. You can use the status field to monitor the completion
      # status of a live install operation in process. When checking status, you should ensure
      # that the product, version, and build reflect the software whose status you are interested
      # in (because there are a few scenarios where the product, version, and build for a
      # volume may not be updated as quickly as you might expect).
      icontrol_attribute :status, String
    end

    ##
    # A structure with information for identifying a specific image or hotfix.
    class RepositoryImageID < IControl::Base::Struct
      # is the blade location in the system chassis.
      icontrol_attribute :chassis_slot_id, Numeric
      # indicates the file in /shared/images or the full path and name to a different location.
      icontrol_attribute :filename, String
    end

    ##
    # A structure with information for describing a specific image.
    class SoftwareRepositoryHotfix < IControl::Base::Struct
      # is the blade location in the system chassis.
      icontrol_attribute :chassis_slot_id, Numeric
      # The filename of the image.
      icontrol_attribute :filename, String
      # The product's name.
      icontrol_attribute :product, String
      # The product's version.
      icontrol_attribute :version, String
      # The products build number.
      icontrol_attribute :build, String
      # The md5 checksum of the file.
      icontrol_attribute :chksum, String
      # Verified is True if the md5 is up to date, False if the checksum is being calculated.
      icontrol_attribute :verified, Object
      # The ID of the hotfix.
      icontrol_attribute :hotfix_id, String
      # The title of the hotfix
      icontrol_attribute :hotfix_title, String
    end

    ##
    # A structure with information for describing a specific image.
    class SoftwareRepositoryImage < IControl::Base::Struct
      # is the blade location in the system chassis.
      icontrol_attribute :chassis_slot_id, Numeric
      # The filename of the image.
      icontrol_attribute :filename, String
      # The product's name.
      icontrol_attribute :product, String
      # The product's version.
      icontrol_attribute :version, String
      # The products build number.
      icontrol_attribute :build, String
      # The md5 checksum of the file.
      icontrol_attribute :chksum, String
      # Verified is True if the md5 is up to date, False if the checksum is being calculated.
      icontrol_attribute :verified, Object
      # The date this build was created.
      icontrol_attribute :build_date, String
      # The date this file was last modified.
      icontrol_attribute :last_modified, String
      # The size in bytes of the file.
      icontrol_attribute :file_size, String
    end

    ##
    # Cleanup the ramfs mounted at HF_MNT_LOCATION
    # :method: cleanup_ramfs

    ##
    # Create a RAM disk and return its path to the caller.
    # :method: create_ramfs

    ##
    # Deletes software images from the repository.
    # :method: delete_software_image
    # :call-seq:
    # delete_software_image(image_filenames)
    #
    # Parameters:
    # - image_filenames String[] are the images you want to delete.

    ##
    # Gets the software status for all installation ids. This provides a complete picture
    # of software status, for all ids.
    # :method: get_all_software_status

    ##
    # Gets text which contains boot image information, in the form of &amp;quot;name=value"
    # pairs. The text includes information about what's installed in each of the boot locations
    # in the device. While this method is not officially deprecated, it is preferred to
    # use get_software_status, as that method is a newer method which yields much the same
    # information in a more rigorous and controlled manner.
    # :method: get_boot_image_information
    # :call-seq:
    # get_boot_image_information(save_active_config)
    #
    # Parameters:
    # - save_active_config boolean The boolean indicating whether we should backup the			 configuration on the active boot location for the installer.

    ##
    # Gets the configured default boot location, which will be the location that boots
    # after the system reboots.
    # :method: get_boot_location

    ##
    # Gets the cluster boot location, which will be the location set in the software desired
    # table.
    # :method: get_cluster_boot_location

    ##
    # Gets information on any hotfixes applied to the system. There may not be any hotfix
    # installed, in which case the returned sequence is empty.
    # :method: get_hotfix_information

    ##
    # Gets the percent complete of the current live install processes. Note: You may wish
    # to use get_software_status instead of this method as it returns more information,
    # such as the product, version, and build, along with the &amp;quot;percent complete"/status
    # field.
    # :method: get_live_install_completion
    # :call-seq:
    # get_live_install_completion(installation_ids)
    #
    # Parameters:
    # - installation_ids InstallationID[] What locations do you want percent complete.

    ##
    # Gets the RPM packages installed on the device.
    # :method: get_rpm_package_information

    ##
    # Gets a list of hotfix information about specific hotfix image in the reporitory.
    # :method: get_software_hotfix
    # :call-seq:
    # get_software_hotfix(imageIDs)
    #
    # Parameters:
    # - imageIDs repositoryImageID[] a list of imageIDs you want the information for.

    ##
    # Gets a list of hotfix images available in the repository.
    # :method: get_software_hotfix_list

    ##
    # Gets a list of image information about specific image in the reporitory.
    # :method: get_software_image
    # :call-seq:
    # get_software_image(imageIDs)
    #
    # Parameters:
    # - imageIDs repositoryImageID[] a list of imageIDs you want the information for.

    ##
    # Gets a list of software images available in the repository.
    # :method: get_software_image_list

    ##
    # Gets the software status for given installation ids. This provides a complete picture
    # of software status, per id.
    # :method: get_software_status
    # :call-seq:
    # get_software_status(installation_ids)
    #
    # Parameters:
    # - installation_ids InstallationID[] Locations for which you want software status.

    ##
    # Gets the version information for this interface.
    # :method: get_version

    ##
    # Checks to see whether the system disks are managed with logical volumes.
    # :method: has_logical_volume_management

    ##
    # Installs the specified hotfixes.
    # :method: install_hotfix
    # :call-seq:
    # install_hotfix(hotfix_files ,reboot_system)
    #
    # Parameters:
    # - hotfix_files String[] The names of the hotfix files to be installed. These hotfix files		 must already exist on the system.
    # - reboot_system boolean The flag to indicate whether to reboot the system after the			hotfixes have been installed.

    ##
    # Calls bigstart stop and installs the specified hotfixes. Upon completion, if reboot_system
    # is set to false, bigstart start is called to bring daemons back up.
    # :method: install_hotfix_no_daemons
    # :call-seq:
    # install_hotfix_no_daemons(hotfix_files ,reboot_system)
    #
    # Parameters:
    # - hotfix_files String[] The names of the hotfix files to be installed. These hotfix files		 must already exist on the system.
    # - reboot_system boolean The flag to indicate whether to reboot the system after the			hotfixes have been installed.

    ##
    # Initiates an install of SW images on all blades installed on one chassis.
    # :method: install_software_image
    # :call-seq:
    # install_software_image(install_volume ,product ,version ,build)
    #
    # Parameters:
    # - install_volume String installation slot (HD slot) to install to. This will be the same on all blades.
    # - product String The product you are installing (ex: BIGIP)
    # - version String The version of product (ex: 10.0.0)
    # - build String

    ##
    # Sets the boot image information and automatically initiates installation based on
    # the boot image information.
    # :method: set_boot_image_information
    # :call-seq:
    # set_boot_image_information(boot_image_information)
    #
    # Parameters:
    # - boot_image_information char[] The boot image information file data.

    ##
    # Sets the default boot location, which will be the boot location that boots after
    # the next system reboot. This version will not work on a clustered system.
    # :method: set_boot_location
    # :call-seq:
    # set_boot_location(location)
    #
    # Parameters:
    # - location String The boot location name. Short-form names such as CF1 .1, HD1 .1, HD1 .2

    ##
    # Sets the cluster wide boot location, which will be the boot location after the next
    # system reboot. Starting with BIG-IP version 9.6.0, clustered systems will reboot
    # immediately.
    # :method: set_cluster_boot_location
    # :call-seq:
    # set_cluster_boot_location(location)
    #
    # Parameters:
    # - location String The boot location name. Short-form names such as CF1 .1, HD1 .1, HD1 .2


  end
end
