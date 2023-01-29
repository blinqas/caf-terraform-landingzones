storage_accounts = {
  nsgflogs = {
    name                            = "nsglogs"
    resource_group_key              = "management"
    account_kind                    = "BlobStorage"
    account_tier                    = "Standard"
    shared_access_key_enabled       = false
    account_replication_type        = "LRS"
    public_network_access_enabled   = false
    allow_nested_items_to_be_public = false
    network = {
      default_action = "Deny"
      bypass         = ["Logging", "Metrics"]
      # ip_rules       = ["20.0.177.210"]
      subnets = {
        level0 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level0"
        }
      }
    }
    private_endpoints = {
      nsgflogs = {
        name               = "stg-nsgflogs"
        resource_group_key = "management"
        lz_key             = "launchpad"
        vnet_key           = "vnet_region1"
        subnet_key         = "level0"
        private_service_connection = {
          name                 = "stg-nsgflogs-link"
          is_manual_connection = false
          subresource_names    = ["blob"]
        }
        private_dns = {
          zone_group_name = "gitops"
          lz_key          = "launchpad"
          keys            = ["privatelink.blob.core.windows.net"]
        }
      }
      nsgflogstable = {
        name               = "stg-nsgflogs-table"
        resource_group_key = "management"
        lz_key             = "launchpad"
        vnet_key           = "vnet_region1"
        subnet_key         = "level0"
        private_service_connection = {
          name                 = "stg-nsgflogs-table-link"
          is_manual_connection = false
          subresource_names    = ["table"]
        }
        private_dns = {
          zone_group_name = "gitops"
          lz_key          = "launchpad"
          keys            = ["privatelink.table.core.windows.net"]
        }
      }
      nsgflogsdfs = {
        name               = "stg-nsgflogs-dfs"
        resource_group_key = "management"
        lz_key             = "launchpad"
        vnet_key           = "vnet_region1"
        subnet_key         = "level0"
        private_service_connection = {
          name                 = "stg-nsgflogs-dfs-link"
          is_manual_connection = false
          subresource_names    = ["dfs"]
        }
        private_dns = {
          zone_group_name = "gitops"
          lz_key          = "launchpad"
          keys            = ["privatelink.dfs.core.windows.net"]
        }
      }
    }
  }

}
