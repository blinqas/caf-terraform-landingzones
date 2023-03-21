keyvaults = {
  kv_test = {
    name                     = "alz-test"
    resource_group_key       = "rg_vnet_shared_services_norwayeast"
    sku_name                 = "standard"
    purge_protection_enabled = false
    tags                     = {}
    creation_policies = {
      logged_in_user = {
        secret_permissions      = ["Set", "Get", "List", "Delete", "Recover", "Backup", "Restore", "Purge"]
        key_permissions         = ["Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey", "Release", "Rotate", "GetRotationPolicy", "SetRotationPolicy"]
        certificate_permissions = ["Get", "List", "Update", "Create", "Import", "Delete", "Recover", "Backup", "Restore", "ManageContacts", "ManageIssuers", "GetIssuers", "ListIssuers", "SetIssuers", "DeleteIssuers", "Purge"]
      }
    }
    network = {
      public_network_access_enabled = true
      default_action                = "Deny"
      bypass                        = "AzureServices"
      ip_rules                      = ["20.100.37.228/30", "20.0.177.210/32", "195.1.148.222/32"]
      subnets = {
        credentials = {
          lz_key     = "connectivity_vnet_shared_services_norwayeast"
          vnet_key   = "vnet_shared_services_norwayeast"
          subnet_key = "credentials"
        }
      }
    }
    private_endpoints = {
      pep_kv_test = {
        name               = "kv-test"
        #resource_group_key = "rg_vnet_shared_services_norwayeast"
        resource_group = {
          lz_key = "connectivity_vnet_shared_services_norwayeast"
          key = "rg_vnet_shared_services_norwayeast"
        }
        subnet = {
          lz_key   = "connectivity_vnet_shared_services_norwayeast"
          vnet_key = "vnet_shared_services_norwayeast"
          key      = "credentials"
        }
        private_service_connection = {
          name                 = "kv-test-link"
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

