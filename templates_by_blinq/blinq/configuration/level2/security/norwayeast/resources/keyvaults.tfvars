provider_azurerm_features_keyvault = {
  // set to true to cleanup the CI
  purge_soft_delete_on_destroy = false
}

keyvaults = {
  kv_ssh_keys_management = {
    name                        = "ssh-keys-management"
    resource_group_key          = "rg_ssh_keys"
    sku_name                    = "standard"
    soft_delete_enabled         = true
    purge_protection_enabled    = true
    enabled_for_disk_encryption = false

    network = {
      bypass         = "AzureServices"
      default_action = "Deny"
      ip_rules       = ["20.100.37.228/30", "20.0.177.210/32", "195.1.148.222/32"]
      # 20.0.177.210/32 = Ubuntu-dev UK HTK
      # 195.1.148.222/32 = Hein Public IP
      # 20.100.37.228/30 = Public IP prefix blinQ azlz management
      # 213.52.77.210/32 = blinQ Lab public IP
    }
    creation_policies = {
      logged_in_user = {
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      security = {
        lz_key                  = "launchpad"
        azuread_group_key       = "security"
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      management = {
        lz_key                  = "launchpad"
        azuread_group_key       = "management"
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      security_keyvalut_admins = {
        lz_key                  = "identity"
        azuread_group_key       = "security_keyvalut_admins"
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
    }
    private_endpoints = {
      pep_kv_ssh_keys_management = {
        name               = "kv-ssh-key-management"
        resource_group_key = "rg_ssh_keys"
        subnet = {
          lz_key   = "vnet_security_norwayeast"
          vnet_key = "vnet_security_norwayeast"
          key      = "private_endpoints"
        }
        private_service_connection = {
          name                 = "kv-ssh-key-management-link"
          is_manual_connection = false
          subresource_names    = ["vault"]
        }
        private_dns = {
          zone_group_name = "norwayeast"
          lz_key          = "connectivity_private_dns_zones"
          keys            = ["privatelink.vaultcore.azure.net"]
        }
      }
    }
  }
  kv_des_keys_management = {
    name                        = "des-keys-management"
    resource_group_key          = "rg_des_keys"
    sku_name                    = "standard"
    soft_delete_enabled         = true
    purge_protection_enabled    = true
    enabled_for_disk_encryption = true

    network = {
      bypass         = "AzureServices"
      default_action = "Deny"
      ip_rules       = ["20.100.37.228/30", "20.0.177.210/32", "195.1.148.222/32"]
    }

    creation_policies = {
      logged_in_user = {
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      security = {
        lz_key                  = "launchpad"
        azuread_group_key       = "security"
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      management = {
        lz_key                  = "launchpad"
        azuread_group_key       = "management"
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      security_keyvalut_admins = {
        lz_key                  = "identity"
        azuread_group_key       = "security_keyvalut_admins"
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
    }
    private_endpoints = {
      pep_kv_des_keys_management = {
        name               = "kv-des-key-management"
        resource_group_key = "rg_des_keys"
        subnet = {
          lz_key   = "vnet_security_norwayeast"
          vnet_key = "vnet_security_norwayeast"
          key      = "private_endpoints"
        }
        private_service_connection = {
          name                 = "kv-des-key-management-link"
          is_manual_connection = false
          subresource_names    = ["vault"]
        }
        private_dns = {
          zone_group_name = "norwayeast"
          lz_key          = "connectivity_private_dns_zones"
          keys            = ["privatelink.vaultcore.azure.net"]
        }
      }
    }
  }
  kv_ssh_keys_a2_sbcaas = {
    name                        = "ssh-keys-a2-sbcaas"
    resource_group_key          = "rg_ssh_keys"
    sku_name                    = "standard"
    soft_delete_enabled         = true
    purge_protection_enabled    = true
    enabled_for_disk_encryption = true

    network = {
      bypass         = "AzureServices"
      default_action = "Deny"
      ip_rules       = ["20.100.37.228/30", "20.0.177.210/32", "195.1.148.222/32"]
    }

    creation_policies = {
      logged_in_user = {
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      security = {
        lz_key                  = "launchpad"
        azuread_group_key       = "security"
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      landingzones = {
        lz_key                  = "launchpad"
        azuread_group_key       = "landingzones"
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      caf_landingzones_maintainers = {
        lz_key                  = "launchpad"
        azuread_group_key       = "caf_landingzones_maintainers"
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      security_keyvalut_admins = {
        lz_key                  = "identity"
        azuread_group_key       = "security_keyvalut_admins"
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      caf_landingzones_contributors = {
        lz_key                  = "launchpad"
        azuread_group_key       = "caf_landingzones_contributors"
        secret_permissions      = ["Get", "List"]
        key_permissions         = ["Get", "List"]
        certificate_permissions = ["Get", "List"]
      }
    }
    private_endpoints = {
      pep_kv_ssh_keys_a2_sbcaas = {
        name               = "kv-ssh-key-a2-sbcaas"
        resource_group_key = "rg_ssh_keys"
        subnet = {
          lz_key   = "vnet_security_norwayeast"
          vnet_key = "vnet_security_norwayeast"
          key      = "private_endpoints"
        }
        private_service_connection = {
          name                 = "kv-ssh-key-a2-sbcaas-link"
          is_manual_connection = false
          subresource_names    = ["vault"]
        }
        private_dns = {
          zone_group_name = "norwayeast"
          lz_key          = "connectivity_private_dns_zones"
          keys            = ["privatelink.vaultcore.azure.net"]
        }
      }
    }
  }
  kv_des_keys_a2_sbcaas = {
    name                        = "des-keys-a2-sbcaas"
    resource_group_key          = "rg_des_keys"
    sku_name                    = "standard"
    soft_delete_enabled         = true
    purge_protection_enabled    = true
    enabled_for_disk_encryption = true

    network = {
      bypass         = "AzureServices"
      default_action = "Deny"
      ip_rules       = ["20.100.37.228/30", "20.0.177.210/32", "195.1.148.222/32"]
    }

    creation_policies = {
      logged_in_user = {
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      security = {
        lz_key                  = "launchpad"
        azuread_group_key       = "security"
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      landingzones = {
        lz_key                  = "launchpad"
        azuread_group_key       = "landingzones"
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      caf_landingzones_maintainers = {
        lz_key                  = "launchpad"
        azuread_group_key       = "caf_landingzones_maintainers"
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      security_keyvalut_admins = {
        lz_key                  = "identity"
        azuread_group_key       = "security_keyvalut_admins"
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      caf_landingzones_contributors = {
        lz_key                  = "launchpad"
        azuread_group_key       = "caf_landingzones_contributors"
        secret_permissions      = ["Get", "List"]
        key_permissions         = ["Get", "List"]
        certificate_permissions = ["Get", "List"]
      }
    }
    private_endpoints = {
      pep_kv_des_keys_a2_sbcaas = {
        name               = "kv-des-key-a2-sbcaas"
        resource_group_key = "rg_des_keys"
        subnet = {
          lz_key   = "vnet_security_norwayeast"
          vnet_key = "vnet_security_norwayeast"
          key      = "private_endpoints"
        }
        private_service_connection = {
          name                 = "kv-des-key-a2-sbcaas-link"
          is_manual_connection = false
          subresource_names    = ["vault"]
        }
        private_dns = {
          zone_group_name = "norwayeast"
          lz_key          = "connectivity_private_dns_zones"
          keys            = ["privatelink.vaultcore.azure.net"]
        }
      }
    }
  }

  kv_hcvault = {
    name                        = "hcvault"
    resource_group_key          = "rg_hcvault_keys"
    sku_name                    = "standard"
    soft_delete_enabled         = true
    purge_protection_enabled    = true
    enabled_for_disk_encryption = false

    network = {
      bypass         = "AzureServices"
      default_action = "Deny"
      ip_rules       = ["20.100.37.228/30", "20.0.177.210/32", "195.1.148.222/32"]
    }

    creation_policies = {
      logged_in_user = {
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      security = {
        lz_key                  = "launchpad"
        azuread_group_key       = "security"
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      landingzones = {
        lz_key                  = "launchpad"
        azuread_group_key       = "landingzones"
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      caf_landingzones_maintainers = {
        lz_key                  = "launchpad"
        azuread_group_key       = "caf_landingzones_maintainers"
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      security_keyvalut_admins = {
        lz_key                  = "identity"
        azuread_group_key       = "security_keyvalut_admins"
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      #cred_hcvault = {
      #  lz_key                        = "identity_level2"
      #  azuread_service_principal_key = "cred_hcvault"
      #  secret_permissions            = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
      #  key_permissions               = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
      #  certificate_permissions       = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      #}

      private_endpoints = {
        pep_kv_hcvault = {
          name               = "kv-hcvault"
          resource_group_key = "rg_hcvault_keys"
          subnet = {
            lz_key   = "vnet_security_norwayeast"
            vnet_key = "vnet_security_norwayeast"
            key      = "private_endpoints"
          }
          private_service_connection = {
            name                 = "kv-hcvault-link"
            is_manual_connection = false
            subresource_names    = ["vault"]
          }
          private_dns = {
            zone_group_name = "norwayeast"
            lz_key          = "connectivity_private_dns_zones"
            keys            = ["privatelink.vaultcore.azure.net"]
          }
        }
      }

    }
  }
}

