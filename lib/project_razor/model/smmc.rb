module ProjectRazor
  module ModelTemplate

    class SmmcCentos6 < Redhat
      include(ProjectRazor::Logging)

      def initialize(hash)
        super(hash)
        # Static config
        @hidden      = false
        @name        = "smmc_centos_6"
        @description = "SMMC CentOS 6 Model"
        @osversion   = "nic"

        @current_state = :init
        # Image UUID
        @image_uuid = true
        # Image prefix we can attach
        @image_prefix = "os"
        # Enable agent brokers for this model
        @broker_plugin = :agent
        @final_state = :os_complete

        from_hash(hash) unless hash == nil

        # Custom NIC Configuration:
        @req_metadata_hash = {}
        @hostname_prefix = "nic-hadoop-smmc0"
        @domainname = "nearinfinity.com"
        @root_password = "password"
      end
    end
  end
end
