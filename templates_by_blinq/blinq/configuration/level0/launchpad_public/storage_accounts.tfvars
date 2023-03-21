storage_accounts = {
  level0 = {
    name                            = "l0"
    resource_group_key              = "level0"
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
        level0 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level0"
        }
      }
    }
    containers = {
      tfstate = {
        name = "tfstate"
      }
    }
    private_endpoints = {
      level0 = {
        name               = "stg-level0"
        resource_group_key = "level0"
        vnet_key           = "vnet_region1"
        subnet_key         = "level0"
        private_service_connection = {
          name                 = "stg-level0-link"
          is_manual_connection = false
          subresource_names    = ["blob"]
        }
        private_dns = {
          zone_group_name = "gitops"
          lz_key          = "launchpad"
          keys            = ["privatelink.blob.core.windows.net"]
        }
      }
    }
    tags = {
      caf_environment = "alz"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level0"
    }
  }
  level1 = {
    name                            = "l1"
    resource_group_key              = "level1"
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
        level1 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level1"
        }
      }
    }
    containers = {
      tfstate = {
        name = "tfstate"
      }
    }
    private_endpoints = {
      level1 = {
        name               = "stg-level1"
        resource_group_key = "level1"
        vnet_key           = "vnet_region1"
        subnet_key         = "level1"
        private_service_connection = {
          name                 = "stg-level1-link"
          is_manual_connection = false
          subresource_names    = ["blob"]
        }
        private_dns = {
          zone_group_name = "gitops"
          lz_key          = "launchpad"
          keys            = ["privatelink.blob.core.windows.net"]
        }
      }
    }
    tags = {
      caf_environment = "alz"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level1"
    }
  }
  level2 = {
    name                            = "l2"
    resource_group_key              = "level2"
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
        level2 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level2"
        }
      }
    }
    containers = {
      tfstate = {
        name = "tfstate"
      }
    }
    private_endpoints = {
      level2 = {
        name               = "stg-level2"
        resource_group_key = "level2"
        vnet_key           = "vnet_region1"
        subnet_key         = "level2"
        private_service_connection = {
          name                 = "stg-level2-link"
          is_manual_connection = false
          subresource_names    = ["blob"]
        }
        private_dns = {
          zone_group_name = "gitops"
          lz_key          = "launchpad"
          keys            = ["privatelink.blob.core.windows.net"]
        }
      }
    }
    tags = {
      caf_environment = "alz"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level2"
    }
  }
  level3 = {
    name                            = "l3"
    resource_group_key              = "level3"
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
        level3 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level3"
        }
      }
    }
    containers = {
      tfstate = {
        name = "tfstate"
      }
    }
    private_endpoints = {
      level3 = {
        name               = "stg-level3"
        resource_group_key = "level3"
        vnet_key           = "vnet_region1"
        subnet_key         = "level3"
        private_service_connection = {
          name                 = "stg-level3-link"
          is_manual_connection = false
          subresource_names    = ["blob"]
        }
        private_dns = {
          zone_group_name = "gitops"
          lz_key          = "launchpad"
          keys            = ["privatelink.blob.core.windows.net"]
        }
      }
    }
    tags = {
      caf_environment = "alz"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level3"
    }
  }
  level4 = {
    name                            = "l4"
    resource_group_key              = "level4"
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
        level4 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level4"
        }
      }
    }
    private_endpoints = {
      level4 = {
        name               = "stg-level4"
        resource_group_key = "level4"
        vnet_key           = "vnet_region1"
        subnet_key         = "level4"
        private_service_connection = {
          name                 = "stg-level4-link"
          is_manual_connection = false
          subresource_names    = ["blob"]
        }
        private_dns = {
          zone_group_name = "gitops"
          lz_key          = "launchpad"
          keys            = ["privatelink.blob.core.windows.net"]
        }
      }
    }
    tags = {
      caf_environment = "alz"
      caf_launchpad   = "launchpad"
      caf_tfstate     = "level4"
    }
  }
}
