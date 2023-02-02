# Virtual machines
virtual_machines = {
  vm_sbc004a = {
    resource_group_key = "rg_sbc004a"
    provision_vm_agent = true
    # when boot_diagnostics_storage_account_key is empty string "", boot diagnostics will be put on azure managed storage
    # when boot_diagnostics_storage_account_key is a non-empty string, it needs to point to the key of a user managed storage defined in diagnostic_storage_accounts
    # if boot_diagnostics_storage_account_key is not defined, but global_settings.resource_defaults.virtual_machines.use_azmanaged_storage_for_boot_diagnostics is true, boot diagnostics will be put on azure managed storage
    # HTK: removed temporarly boot_diagnostics_storage_account_key = "lz_sbcaas_bootdiag_region2"

    os_type = "linux"

    # the auto-generated ssh key in keyvault secret. Secret name being {VM name}-ssh-public and {VM name}-ssh-private
    keyvault_key = "kv_sbc004a"

    # Define the number of networking cards to attach the virtual machine
    # Option to use when BYOI (Bring your Own Interface)
    # networking_interface_ids = ["/subscriptions/<subid>/resourceGroups/<rg-name>/providers/Microsoft.Network/networkInterfaces/<nicID>"]

    networking_interfaces = {

      nic0 = {
        # Value of the keys from vnet.tfvars and nsg.tfvars
        lz_key               = "vnet"
        vnet_key             = "vnet"
        subnet_key           = "public_sip"
        primary              = true
        name                 = "0-sbc004a"
        enable_ip_forwarding = false

        network_security_group = {
          lz_key = "pippf_sip_sbc004"
          key    = "public_sip"
        }

        internal_dns_name_label       = "sbc004a-nic0"
        private_ip_address_allocation = "static"
        private_ip_address_version    = "IPv4"
        private_ip_address            = "10.41.2.100"

        public_ip_address_key = "pip_sip1_sbc004a"
        # public_address_id = "/subscriptions/26fa8950-d742-4940-bfcd-56d8586b11b3/resourceGroups/bs-prod-sbcaas-re3-pip-prefixes/providers/Microsoft.Network/publicIPAddresses/20.117.217.200"
        # example with external network objects
        # subnet_id = "/subscriptions/sub-id/resourceGroups/test-manual/providers/Microsoft.Network/virtualNetworks/vnet/subnets/default"
        # We have reserved prefix 20.108.216.208/29 with 8 addresses, 4 first for SIP 4 last for RTP
        # nsg_id = "/subscriptions/sub-id/resourceGroups/test-manual/providers/Microsoft.Network/networkSecurityGroups/nsgtest"

      },

      nic1 = {
        # Value of the keys from networking.tfvars
        lz_key               = "vnet"
        vnet_key             = "vnet"
        subnet_key           = "public_media"
        primary              = true
        name                 = "1-sbc004a"
        enable_ip_forwarding = false

        network_security_group = {
          lz_key = "pippf_sip_sbc004"
          key    = "public_media"
        }

        internal_dns_name_label       = "sbc004a-nic1"
        private_ip_address_allocation = "static"
        private_ip_address_version    = "IPv4"
        private_ip_address            = "10.41.2.132"

        public_ip_address_key = "pip_media1_sbc004a"
        # public_address_id = "/subscriptions/26fa8950-d742-4940-bfcd-56d8586b11b3/resourceGroups/bs-prod-sbcaas-re3-pip-prefixes/providers/Microsoft.Network/publicIPAddresses/20.117.217.204"
        # example with external network objects
        # subnet_id = "/subscriptions/sub-id/resourceGroups/test-manual/providers/Microsoft.Network/virtualNetworks/vnet/subnets/default"
        # We have reserved prefix with 8 addresses, 4 first for SIP 4 last for Media
        # nsg_id = "/subscriptions/sub-id/resourceGroups/test-manual/providers/Microsoft.Network/networkSecurityGroups/nsgtest"

      },

      nic2 = {
        # Value of the keys from networking.tfvars
        lz_key               = "vnet"
        vnet_key             = "vnet"
        subnet_key           = "private_sip"
        primary              = true
        name                 = "2-sbc004a"
        enable_ip_forwarding = false

        network_security_group = {
          lz_key = "pippf_sip_sbc004"
          key    = "private_sip"
        }

        internal_dns_name_label       = "sbc004a-nic2"
        private_ip_address_allocation = "static"
        private_ip_address_version    = "IPv4"
        private_ip_address            = "10.41.2.164"

        # public_ip_address_key = "lz_sbcaas_pip_sip1_eastus"
        # public_address_id = "/subscriptions/26fa8950-d742-4940-bfcd-56d8586b11b3/resourceGroups/bs-prod-sbcaas-re3-pip-prefixes/providers/Microsoft.Network/publicIPAddresses/20.117.217.200"
        # example with external network objects
        # subnet_id = "/subscriptions/sub-id/resourceGroups/test-manual/providers/Microsoft.Network/virtualNetworks/vnet/subnets/default"
        # We have reserved prefix 20.108.216.208/29 with 8 addresses, 4 first for SIP 4 last for RTP
        # nsg_id = "/subscriptions/sub-id/resourceGroups/test-manual/providers/Microsoft.Network/networkSecurityGroups/nsgtest"

      },

      nic3 = {
        # Value of the keys from networking.tfvars
        lz_key               = "vnet"
        vnet_key             = "vnet"
        subnet_key           = "private_media"
        primary              = true
        name                 = "3-sbc004a"
        enable_ip_forwarding = false

        network_security_group = {
          lz_key = "pippf_sip_sbc004"
          key    = "private_media"
        }

        internal_dns_name_label       = "sbc004a-nic3"
        private_ip_address_allocation = "static"
        private_ip_address_version    = "IPv4"
        private_ip_address            = "10.41.2.196"

        # public_ip_address_key = "lz_sbcaas_pip_media1_eastus"
        # public_address_id = "/subscriptions/26fa8950-d742-4940-bfcd-56d8586b11b3/resourceGroups/bs-prod-sbcaas-re3-pip-prefixes/providers/Microsoft.Network/publicIPAddresses/20.117.217.204"
        # example with external network objects
        # subnet_id = "/subscriptions/sub-id/resourceGroups/test-manual/providers/Microsoft.Network/virtualNetworks/vnet/subnets/default"
        # We have reserved prefix with 8 addresses, 4 first for SIP 4 last for Media
        # nsg_id = "/subscriptions/sub-id/resourceGroups/test-manual/providers/Microsoft.Network/networkSecurityGroups/nsgtest"

      }

    }

    virtual_machine_settings = {

      linux = {
        name                            = "sbc004a"
        size                            = "Standard_DS3_v2"
        admin_username                  = "blinqadmin"
        admin_password                  = "P@ssword99!4Ever"
        disable_password_authentication = false
        timezone                        = "Central Europe Standard Time"
        zone                            = "1"

        #custom_data - Users can either reference a local file path or a block of code as seen below.
        # custom_data                     = "scripts/cloud-init/install-rover-tools.config"
        #custom_data = <<CUSTOM_DATA
        #                  #!/bin/bash
        #                  echo "Execute your super awesome commands here!"
        #                CUSTOM_DATA

        # Spot VM to save money
        # priority        = "Spot"
        # eviction_policy = "Deallocate"

        # Value of the nic keys to attach the VM. The first one in the list is the default nic
        network_interface_keys = ["nic0", "nic1", "nic2", "nic3"]

        os_disk = {
          name                    = "sbc004a-os"
          caching                 = "ReadWrite"
          storage_account_type    = "StandardSSD_LRS"
          disk_encryption_set_key = "deskey_set1"
        }

        identity = {
          type = "SystemAssigned" #SystemAssigned OR UserAssigned OR SystemAssigned, UserAssigned
          # remote = {
          #   remote_kz_key = { # remote lz key
          #     managed_identity_keys = [""] # remote msi resource key
          #   }
          # }
          # managed_identity_keys = [""] //local msi resource key
        }

        source_image_reference = {
          publisher = "audiocodes"
          offer     = "mediantsessionbordercontroller"
          sku       = "mediantvesbcazure"
          version   = "74.300.013"
        }

        plan = {
          name      = "mediantvesbcazure"
          publisher = "audiocodes"
          product   = "mediantsessionbordercontroller"
        }

      }
    }

    #data_disks = {
    #  data1 = {
    #    name                 = "server1-data1"
    #    storage_account_type = "StandardSSD_LRS"
    #    # Only Empty is supported. More community contributions required to cover other scenarios
    #    create_option           = "Empty"
    #    disk_size_gb            = "32"
    #    lun                     = 1
    #    zones                   = ["1"]
    #    disk_encryption_set_key = "set1"
    #  }
    #}
  }
}
