keyvaults = {
  packer_client_management = {
    name                = "pmim"
    resource_group_key  = "rg_kv_identities"
    sku_name            = "standard"
    soft_delete_enabled = true
    tags = {
      tfstate = "level2"
    }
    creation_policies = {
      logged_in_user = {
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
    }
    private_endpoints = {
      pep_kv_packer_client_management = {
        name               = "kv-packer-client-management"
        resource_group_key = "rg_kv_identities"
        vnet_key           = "vnet_identity_norwayeast"
        subnet_key         = "private_endpoints"
        private_service_connection = {
          name                 = "kv-packer-client-management-link"
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

  kv_cred_hcvault = {
    name                     = "alz-cred-hcvault"
    resource_group_key       = "rg_kv_identities"
    sku_name                 = "premium"
    purge_protection_enabled = false
    tags                     = {}
    creation_policies = {
      logged_in_user = {
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
      caf_platform_maintainers = {
        lz_key             = "launchpad"
        azuread_group_key  = "caf_platform_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      identity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "identity"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }
    private_endpoints = {
      pep_kv_cred_hcvault = {
        name               = "kv-cred-hcvault"
        resource_group_key = "rg_kv_identities"
        vnet_key           = "vnet_identity_norwayeast"
        subnet_key         = "private_endpoints"
        private_service_connection = {
          name                 = "kv-cred-hcvault-link"
          is_manual_connection = false
          subresource_names    = ["vault"]
        }
        private_dns = {
          zone_group_name = "norwayeast"
          lz_key          = "connectivity_private_dns_zones"
          keys            = ["privatelink.vaultcore.azure.net"]
        }
      }
    network = {
      public_network_access_enabled = true
      default_action                = "Deny"
      bypass                        = "AzureServices"
      ip_rules                      = ["20.100.37.228/30", "20.0.177.210/32", "195.1.148.222/32"]
      subnets = {
        private_endpoints = {
          lz_key     = "vnet_identity_norwayeast"
          vnet_key   = "vnet_identity_norwayeast"
          subnet_key = "private_endpoints"
        }
      }
    }
  }
}

