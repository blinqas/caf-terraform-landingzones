keyvaults = {
  "cred_level0" = {
    name                     = "idl0"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = true
    tags = {
      caf_environment      = "alz"
      caf_identity_aad_key = "cred_level0"
    }
    creation_policies = {
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
      level0 = {
        lz_key             = "launchpad"
        azuread_group_key  = "level0"
        secret_permissions = ["Get"]
      }
    }
    network = {
      public_network_access_enabled = true
      default_action                = "Deny"
      bypass                        = "AzureServices"
      ip_rules                      = ["20.100.37.228/30", "20.0.177.210/32", "195.1.148.222/32"]
      subnets = {
        level0 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level0"
        }
      }
    }
    private_endpoints = {
      cred-level0 = {
        name               = "kv-cred-level0"
        resource_group_key = "sp_credentials"
        lz_key             = "launchpad"
        vnet_key           = "vnet_region1"
        subnet_key         = "credentials"
        private_service_connection = {
          name                 = "kv-cred-level0-link"
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
  "cred_identity" = {
    name                     = "id"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = true
    tags = {
      caf_environment      = "alz"
      caf_identity_aad_key = "cred_identity"
    }
    creation_policies = {
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
    network = {
      public_network_access_enabled = true
      default_action                = "Deny"
      bypass                        = "AzureServices"
      ip_rules                      = ["20.100.37.228/30", "20.0.177.210/32", "195.1.148.222/32"]
      subnets = {
        level0 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level0"
        }
      }
    }
    private_endpoints = {
      cred_identity = {
        name               = "kv-cred-identity"
        resource_group_key = "sp_credentials"
        lz_key             = "launchpad"
        vnet_key           = "vnet_region1"
        subnet_key         = "credentials"
        private_service_connection = {
          name                 = "kv-cred-identity-link"
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
  "cred_management" = {
    name                     = "mg"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = true
    tags = {
      caf_environment      = "alz"
      caf_identity_aad_key = "cred_management"
    }
    creation_policies = {
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
      management_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "management"
        secret_permissions = ["Get"]
      }
    }
    network = {
      public_network_access_enabled = true
      default_action                = "Deny"
      bypass                        = "AzureServices"
      ip_rules                      = ["20.100.37.228/30", "20.0.177.210/32", "195.1.148.222/32"]
      subnets = {
        level0 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level0"
        }
      }
    }
    private_endpoints = {
      cred_management = {
        name               = "kv-cred-management"
        resource_group_key = "sp_credentials"
        lz_key             = "launchpad"
        vnet_key           = "vnet_region1"
        subnet_key         = "credentials"
        private_service_connection = {
          name                 = "kv-cred-management-link"
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
  "cred_alz" = {
    name                     = "es"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = true
    tags = {
      caf_environment      = "alz"
      caf_identity_aad_key = "cred_alz"
    }
    creation_policies = {
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
      alz_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "alz"
        secret_permissions = ["Get"]
      }
    }
    network = {
      public_network_access_enabled = true
      default_action                = "Deny"
      bypass                        = "AzureServices"
      ip_rules                      = ["20.100.37.228/30", "20.0.177.210/32", "195.1.148.222/32"]
      subnets = {
        level0 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level0"
        }
      }
    }
    private_endpoints = {
      cred_alz = {
        name               = "kv-cred-alz"
        resource_group_key = "sp_credentials"
        lz_key             = "launchpad"
        vnet_key           = "vnet_region1"
        subnet_key         = "credentials"
        private_service_connection = {
          name                 = "kv-cred-alz-link"
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
  "cred_connectivity" = {
    name                     = "co"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = true
    tags = {
      caf_environment      = "alz"
      caf_identity_aad_key = "cred_connectivity"
    }
    creation_policies = {
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
      connectivity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "connectivity"
        secret_permissions = ["Get"]
      }
    }
    network = {
      public_network_access_enabled = true
      default_action                = "Deny"
      bypass                        = "AzureServices"
      ip_rules                      = ["20.100.37.228/30", "20.0.177.210/32", "195.1.148.222/32"]
      subnets = {
        level0 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level0"
        }
      }
    }
    private_endpoints = {
      co = {
        name               = "kv-co"
        resource_group_key = "sp_credentials"
        lz_key             = "launchpad"
        vnet_key           = "vnet_region1"
        subnet_key         = "credentials"
        private_service_connection = {
          name                 = "kv-co-link"
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
  "cred_security" = {
    name                     = "sec"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = true
    tags = {
      caf_environment      = "alz"
      caf_identity_aad_key = "cred_security"
    }
    creation_policies = {
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
      security_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "security"
        secret_permissions = ["Get"]
      }
    }
    network = {
      public_network_access_enabled = true
      default_action                = "Deny"
      bypass                        = "AzureServices"
      ip_rules                      = ["20.100.37.228/30", "20.0.177.210/32", "195.1.148.222/32"]
      subnets = {
        level0 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level0"
        }
      }
    }
    private_endpoints = {
      sec = {
        name               = "sec"
        resource_group_key = "sp_credentials"
        lz_key             = "launchpad"
        vnet_key           = "vnet_region1"
        subnet_key         = "credentials"
        private_service_connection = {
          name                 = "kv-sec-link"
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
  "cred_subscription_creation_platform" = {
    name                     = "scp"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = true
    tags = {
      caf_environment      = "alz"
      caf_identity_aad_key = "cred_subscription_creation_platform"
    }
    creation_policies = {
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
      subscription_creation_platform_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "subscription_creation_platform"
        secret_permissions = ["Get"]
      }
    }
    network = {
      public_network_access_enabled = true
      default_action                = "Deny"
      bypass                        = "AzureServices"
      ip_rules                      = ["20.100.37.228/30", "20.0.177.210/32", "195.1.148.222/32"]
      subnets = {
        level0 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level0"
        }
      }
    }
    private_endpoints = {
      scp = {
        name               = "kv-scp"
        resource_group_key = "sp_credentials"
        lz_key             = "launchpad"
        vnet_key           = "vnet_region1"
        subnet_key         = "credentials"
        private_service_connection = {
          name                 = "kv-scp-link"
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
  "cred_subscription_creation_landingzones" = {
    name                     = "scl"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = true
    tags = {
      caf_environment      = "alz"
      caf_identity_aad_key = "cred_subscription_creation_landingzones"
    }
    creation_policies = {
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
      subscription_creation_platform_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "subscription_creation_landingzones"
        secret_permissions = ["Get"]
      }
    }
    network = {
      public_network_access_enabled = true
      default_action                = "Deny"
      bypass                        = "AzureServices"
      ip_rules                      = ["20.100.37.228/30", "20.0.177.210/32", "195.1.148.222/32"]
      subnets = {
        level0 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level0"
        }
      }
    }
    private_endpoints = {
      cred_subscription_creation_landingzones = {
        name               = "kv-scl"
        resource_group_key = "sp_credentials"
        lz_key             = "launchpad"
        vnet_key           = "vnet_region1"
        subnet_key         = "credentials"
        private_service_connection = {
          name                 = "kv-scl-link"
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
  "cred_landingzones" = {
    name                     = "lzs"
    resource_group_key       = "sp_credentials"
    sku_name                 = "standard"
    purge_protection_enabled = true
    tags = {
      caf_environment      = "alz"
      caf_identity_aad_key = "cred_landingzones"
    }
    creation_policies = {
      caf_landingzones_maintainers = {
        lz_key             = "launchpad"
        azuread_group_key  = "caf_landingzones_maintainers"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      identity_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "identity"
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
      landingzones_azuread_group = {
        lz_key             = "launchpad"
        azuread_group_key  = "landingzones"
        secret_permissions = ["Get"]
      }
    }
    network = {
      public_network_access_enabled = true
      default_action                = "Deny"
      bypass                        = "AzureServices"
      ip_rules                      = ["20.100.37.228/30", "20.0.177.210/32", "195.1.148.222/32"]
      subnets = {
        level0 = {
          lz_key     = "launchpad"
          vnet_key   = "vnet_region1"
          subnet_key = "level0"
        }
      }
    }
    private_endpoints = {
      cred_subscription_creation_landingzones = {
        name               = "kv-scl"
        resource_group_key = "sp_credentials"
        lz_key             = "launchpad"
        vnet_key           = "vnet_region1"
        subnet_key         = "credentials"
        private_service_connection = {
          name                 = "kv-scl-link"
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
