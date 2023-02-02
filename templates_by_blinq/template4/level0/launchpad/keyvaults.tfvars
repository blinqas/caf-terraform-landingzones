keyvaults = {
  "level0" = {
    name                      = "l0"
    resource_group_key        = "level0"
    sku_name                  = "premium"
    purge_protection_enabled  = true
    enable_rbac_authorization = true
    tags = {
      caf_tfstate     = "level0"
      caf_environment = "alz"
    }
    network = {
      public_network_access_enabled = false
      default_action                = "Deny"
      bypass                        = "AzureServices"
      ip_rules                      = ["20.0.177.210/32"]
      subnets = {
        level0 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level0"
        }
      }
    }
    private_endpoints = {
      level0 = {
        name               = "kv-level0"
        resource_group_key = "level0"
        vnet_key           = "vnet_region1"
        subnet_key         = "level0"
        private_service_connection = {
          name                 = "kv-level0-link"
          is_manual_connection = false
          subresource_names    = ["vault"]
        }
        private_dns = {
          zone_group_name = "gitops"
          lz_key          = "launchpad"
          keys            = ["privatelink.vaultcore.azure.net"]
        }
      }
    }
  }
  "level1" = {
    name                      = "l1"
    resource_group_key        = "level1"
    sku_name                  = "premium"
    purge_protection_enabled  = true
    enable_rbac_authorization = true
    tags = {
      caf_tfstate     = "level1"
      caf_environment = "alz"
    }
    network = {
      public_network_access_enabled = false
      default_action                = "Deny"
      bypass                        = "AzureServices"
      ip_rules                      = ["20.0.177.210/32"]
      subnets = {
        level1 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level1"
        }
      }
    }
    private_endpoints = {
      level1 = {
        name               = "kv-level1"
        resource_group_key = "level1"
        vnet_key           = "vnet_region1"
        subnet_key         = "level1"
        private_service_connection = {
          name                 = "kv-level1-link"
          is_manual_connection = false
          subresource_names    = ["vault"]
        }
        private_dns = {
          zone_group_name = "gitops"
          lz_key          = "launchpad"
          keys            = ["privatelink.vaultcore.azure.net"]
        }
      }
    }
  }
  "level2" = {
    name                      = "l2"
    resource_group_key        = "level2"
    sku_name                  = "premium"
    purge_protection_enabled  = true
    enable_rbac_authorization = true
    tags = {
      caf_tfstate     = "level2"
      caf_environment = "alz"
    }
    network = {
      public_network_access_enabled = false
      default_action                = "Deny"
      bypass                        = "AzureServices"
      ip_rules                      = ["20.0.177.210/32"]
      subnets = {
        level2 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level2"
        }
      }
    }
    private_endpoints = {
      level2 = {
        name               = "kv-level2"
        resource_group_key = "level2"
        vnet_key           = "vnet_region1"
        subnet_key         = "level2"
        private_service_connection = {
          name                 = "kv-level2-link"
          is_manual_connection = false
          subresource_names    = ["vault"]
        }
        private_dns = {
          zone_group_name = "gitops"
          lz_key          = "launchpad"
          keys            = ["privatelink.vaultcore.azure.net"]
        }
      }
    }
  }
  "level3" = {
    name                      = "l3"
    resource_group_key        = "level3"
    sku_name                  = "standard"
    purge_protection_enabled  = true
    enable_rbac_authorization = true
    tags = {
      caf_tfstate     = "level3"
      caf_environment = "alz"
    }
    network = {
      public_network_access_enabled = false
      default_action                = "Deny"
      bypass                        = "AzureServices"
      ip_rules                      = ["20.0.177.210/32"]
      subnets = {
        level3 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level3"
        }
      }
    }
    private_endpoints = {
      level3 = {
        name               = "kv-level3"
        resource_group_key = "level3"
        vnet_key           = "vnet_region1"
        subnet_key         = "level3"
        private_service_connection = {
          name                 = "kv-level3-link"
          is_manual_connection = false
          subresource_names    = ["vault"]
        }
        private_dns = {
          zone_group_name = "gitops"
          lz_key          = "launchpad"
          keys            = ["privatelink.vaultcore.azure.net"]
        }
      }
    }
  }
  "level4" = {
    name                      = "l4"
    resource_group_key        = "level4"
    sku_name                  = "standard"
    purge_protection_enabled  = true
    enable_rbac_authorization = true
    tags = {
      caf_tfstate     = "level4"
      caf_environment = "alz"
    }
    network = {
      public_network_access_enabled = false
      default_action                = "Deny"
      bypass                        = "AzureServices"
      ip_rules                      = ["20.0.177.210/32"]
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
        name               = "kv-level4"
        resource_group_key = "level4"
        vnet_key           = "vnet_region1"
        subnet_key         = "level4"
        private_service_connection = {
          name                 = "kv-level4-link"
          is_manual_connection = false
          subresource_names    = ["vault"]
        }
        private_dns = {
          zone_group_name = "gitops"
          lz_key          = "launchpad"
          keys            = ["privatelink.vaultcore.azure.net"]
        }
      }
    }
  }
}
