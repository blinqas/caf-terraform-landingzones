storage_accounts = {
  cloudockit = {
    name = "debugblinq1234"
    azurecaf = {
      passthrough = true
    }
    # region = "region2"
    resource_group_key = "rg_cloudockit"
    #resource_group = {
    #  key    = "rg_cloudockit"
    #  lz_key = "cloudockit_license"
    #}
    account_kind                    = "BlobStorage"
    account_tier                    = "Standard"
    shared_access_key_enabled       = false
    account_replication_type        = "GRS"
    public_network_access_enabled   = true
    allow_nested_items_to_be_public = false
    blob_properties = {
      versioning_enabled       = true
      last_access_time_enabled = true
      container_delete_retention_policy = {
        days = 7
      }
      delete_retention_policy = {
        days = 7
      }
    }
    network = {
      default_action = "Deny"
      bypass         = ["Logging", "Metrics", "AzureServices"]
      ip_rules       = ["20.0.177.210"]
      subnets = {
        cloudockit = {
          lz_key     = "connectivity_vnet_shared_services_norwayeast"
          vnet_key   = "vnet_shared_services_norwayeast"
          subnet_key = "cloudockit"
        }
      }
    }
    private_endpoints = {
      cloudockit = {
        name = "stg-cloudockit"
        resource_group_key = "rg_cloudockit"
        #resource_group = {
        #  key    = "rg_cloudockit"
        #  lz_key = "cloudockit_license"
        #}
        # lz_key     = "connectivity_vnet_shared_services_norwayeast"
        subnet = {
          lz_key = "connectivity_vnet_shared_services_norwayeast"
          vnet_key = "vnet_shared_services_norwayeast"
          key = "cloudockit"
        }
        #vnet_key   = "vnet_shared_services_norwayeast"
        #subnet_key = "cloudockit"
        private_service_connection = {
          name                 = "stg-cloudockit-link"
          is_manual_connection = false
          subresource_names    = ["blob"]
        }
        private_dns = {
          zone_group_name = "norwayeast"
          lz_key          = "connectivity_private_dns_zones"
          keys            = ["privatelink.blob.core.windows.net"]
        }
      }
    }
  }
}
