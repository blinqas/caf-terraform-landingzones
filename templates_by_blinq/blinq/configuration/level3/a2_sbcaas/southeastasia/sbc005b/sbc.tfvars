# Virtual machines
virtual_machines = {
  vm_sbc005b = {
    resource_group_key = "rg_sbc005b"
    provision_vm_agent = true
    # when boot_diagnostics_storage_account_key is empty string "", boot diagnostics will be put on azure managed storage
    # when boot_diagnostics_storage_account_key is a non-empty string, it needs to point to the key of a user managed storage defined in diagnostic_storage_accounts
    # if boot_diagnostics_storage_account_key is not defined, but global_settings.resource_defaults.virtual_machines.use_azmanaged_storage_for_boot_diagnostics is true, boot diagnostics will be put on azure managed storage
    # HTK: removed temporarly boot_diagnostics_storage_account_key = "lz_sbcaas_bootdiag_region2"

    os_type = "linux"

    # the auto-generated ssh key in keyvault secret. Secret name being {VM name}-ssh-public and {VM name}-ssh-private
    keyvault = {
      lz_key = "security_level2"
      key    = "kv_ssh_keys_a2_sbcaas"
    }

    # Define the number of networking cards to attach the virtual machine
    # Option to use when BYOI (Bring your Own Interface)
    # networking_interface_ids = ["/subscriptions/<subid>/resourceGroups/<rg-name>/providers/Microsoft.Network/networkInterfaces/<nicID>"]

    networking_interfaces = {

      nic0 = {
        # Value of the keys from vnet.tfvars and nsg.tfvars
        lz_key               = "vnet_a2_sbcaas_southeastasia"
        vnet_key             = "vnet_a2_sbcaas_southeastasia"
        subnet_key           = "public_sip"
        primary              = true
        name                 = "0-sbc005b"
        enable_ip_forwarding = false

        network_security_group = {
          lz_key = "vnet_a2_sbcaas_southeastasia"
          key    = "nsg_public_sip"
        }

        internal_dns_name_label       = "sbc005b-nic0"
        private_ip_address_allocation = "Static"
        private_ip_address_version    = "IPv4"
        private_ip_address            = "10.51.2.101"

        public_ip_address_key = "pip_sip1_sbc005b"
        # public_address_id = "/subscriptions/26fa8950-d742-4940-bfcd-56d8586b11b3/resourceGroups/bs-prod-sbcaas-re3-pip-prefixes/providers/Microsoft.Network/publicIPAddresses/20.117.217.200"
        # example with external network objects
        # subnet_id = "/subscriptions/sub-id/resourceGroups/test-manual/providers/Microsoft.Network/virtualNetworks/vnet/subnets/default"
        # We have reserved prefix 20.108.216.208/29 with 8 addresses, 4 first for SIP 4 last for RTP
        # nsg_id = "/subscriptions/sub-id/resourceGroups/test-manual/providers/Microsoft.Network/networkSecurityGroups/nsgtest"

      },

      nic1 = {
        # Value of the keys from networking.tfvars
        lz_key               = "vnet_a2_sbcaas_southeastasia"
        vnet_key             = "vnet_a2_sbcaas_southeastasia"
        subnet_key           = "public_media"
        primary              = true
        name                 = "1-sbc005b"
        enable_ip_forwarding = false

        network_security_group = {
          lz_key = "vnet_a2_sbcaas_southeastasia"
          key    = "nsg_public_media"
        }

        internal_dns_name_label       = "sbc005b-nic1"
        private_ip_address_allocation = "Static"
        private_ip_address_version    = "IPv4"
        private_ip_address            = "10.51.2.133"

        public_ip_address_key = "pip_media1_sbc005b"
        # public_address_id = "/subscriptions/26fa8950-d742-4940-bfcd-56d8586b11b3/resourceGroups/bs-prod-sbcaas-re3-pip-prefixes/providers/Microsoft.Network/publicIPAddresses/20.117.217.204"
        # example with external network objects
        # subnet_id = "/subscriptions/sub-id/resourceGroups/test-manual/providers/Microsoft.Network/virtualNetworks/vnet/subnets/default"
        # We have reserved prefix with 8 addresses, 4 first for SIP 4 last for Media
        # nsg_id = "/subscriptions/sub-id/resourceGroups/test-manual/providers/Microsoft.Network/networkSecurityGroups/nsgtest"

      },

      nic2 = {
        # Value of the keys from networking.tfvars
        lz_key               = "vnet_a2_sbcaas_southeastasia"
        vnet_key             = "vnet_a2_sbcaas_southeastasia"
        subnet_key           = "private_sip"
        primary              = true
        name                 = "2-sbc005b"
        enable_ip_forwarding = false

        network_security_group = {
          lz_key = "vnet_a2_sbcaas_southeastasia"
          key    = "nsg_private_sip"
        }

        internal_dns_name_label       = "sbc005b-nic2"
        private_ip_address_allocation = "Static"
        private_ip_address_version    = "IPv4"
        private_ip_address            = "10.51.2.165"

        # public_ip_address_key = "lz_sbcaas_pip_sip1_southeastasia"
        # public_address_id = "/subscriptions/26fa8950-d742-4940-bfcd-56d8586b11b3/resourceGroups/bs-prod-sbcaas-re3-pip-prefixes/providers/Microsoft.Network/publicIPAddresses/20.117.217.200"
        # example with external network objects
        # subnet_id = "/subscriptions/sub-id/resourceGroups/test-manual/providers/Microsoft.Network/virtualNetworks/vnet/subnets/default"
        # We have reserved prefix 20.108.216.208/29 with 8 addresses, 4 first for SIP 4 last for RTP
        # nsg_id = "/subscriptions/sub-id/resourceGroups/test-manual/providers/Microsoft.Network/networkSecurityGroups/nsgtest"

      },

      nic3 = {
        # Value of the keys from networking.tfvars
        lz_key               = "vnet_a2_sbcaas_southeastasia"
        vnet_key             = "vnet_a2_sbcaas_southeastasia"
        subnet_key           = "private_media"
        primary              = true
        name                 = "3-sbc005b"
        enable_ip_forwarding = false

        network_security_group = {
          lz_key = "vnet_a2_sbcaas_southeastasia"
          key    = "nsg_private_sip"
        }

        internal_dns_name_label       = "sbc005b-nic3"
        private_ip_address_allocation = "Static"
        private_ip_address_version    = "IPv4"
        private_ip_address            = "10.51.2.197"

        # public_ip_address_key = "lz_sbcaas_pip_media1_southeastasia"
        # public_address_id = "/subscriptions/26fa8950-d742-4940-bfcd-56d8586b11b3/resourceGroups/bs-prod-sbcaas-re3-pip-prefixes/providers/Microsoft.Network/publicIPAddresses/20.117.217.204"
        # example with external network objects
        # subnet_id = "/subscriptions/sub-id/resourceGroups/test-manual/providers/Microsoft.Network/virtualNetworks/vnet/subnets/default"
        # We have reserved prefix with 8 addresses, 4 first for SIP 4 last for Media
        # nsg_id = "/subscriptions/sub-id/resourceGroups/test-manual/providers/Microsoft.Network/networkSecurityGroups/nsgtest"

      }

    }

    virtual_machine_settings = {

      linux = {
        name = "sbc005b"
        size = "Standard_DS3_v2"
        admin_user_keyvault = {
          # When this block is defined a Azure Keyvault will be used for admin_username and admin_password. Keyvault can be in a remote state and in a different subscription, ex: in the security landing zone
          lz_key                           = "security_level2"
          key                              = "kv_ssh_keys_a2_sbcaas"
          prefix_secret_names_with_vm_name = false # Deafult secret names will be: admin-username and admin-password. If you want to use the same keyvault for multiple vm's with different password secrets you can enable vm name as prefix to the secrets.
          creation_secrets = {
            admin_username = "blinqadmin"
            # admin_password =  # If not configured a random password will be created with default policy length=30, special=true, lower=true, upper=true, numeric=true, min_lower=1, min_upper=1, min_numeric=1, min_special=1. Default Policy can be overruled by admin_password_policy block.            
            admin_password_policy = {
              keepers = {
                # frequency = time_rotating.key.0.rotation_rfc3339
              }
              length      = 30
              special     = true
              lower       = true
              upper       = true
              numeric     = true
              min_lower   = 1
              min_upper   = 1
              min_numeric = 1
              min_special = 1
            }
          }
        }
        #admin_username                  = "admin"            # If defined here, this property will overrule the value in admin_user_keyvault
        #admin_password                  = "Test_1234@56"     # If defined here, this property will overrule the value in admin_user_keyvault
        disable_password_authentication = false # When true this will also disable use of admin_user_keyvault
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
          name                 = "sbc005b-os"
          caching              = "ReadWrite"
          storage_account_type = "StandardSSD_LRS"
          disk_encryption_set = {
            lz_key = "security_level2"
            key    = "deskey1_sbcaas"
          }
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
