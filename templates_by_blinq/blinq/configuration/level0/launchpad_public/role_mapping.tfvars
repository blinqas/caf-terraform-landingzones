role_mapping = {
  built_in_role_mapping = {
    management_group = {
      "root" = {
        "User Access Administrator" = {
          azuread_groups = {
            keys = ["level0", "caf_user_access_administrator"]
          }
        }
        "Management Group Contributor" = {
          azuread_groups = {
            keys = ["alz", "caf_platform_maintainers"]
          }
        }
        "Owner" = {
          azuread_groups = {
            keys = ["caf_tenant_root_owner"]
          }
        }
        #"Reader" = {
        #  azuread_groups = {
        #    keys = ["caf_platform_contributors"]
        #  }
        #}
      }
    }
    subscriptions = {
      "logged_in_subscription" = {
        "Owner" = {
          azuread_groups = {
            keys = ["level0", "management", "subscription_creation_platform", "caf_platform_maintainers"]
          }
        }
        "Reader" = {
          azuread_groups = {
            keys = ["identity"]
          }
        }
      }
    }
    resource_groups = {
      "level0" = {
        "Reader" = {
          azuread_groups = {
            keys = ["identity", "subscription_creation_platform", "caf_platform_contributors"]
          }
        }
      }
      "level1" = {
        "Reader" = {
          azuread_groups = {
            keys = ["identity", "management", "alz", "security", "subscription_creation_platform", "subscription_creation_landingzones", "caf_platform_contributors"]
          }
        }
      }
      "level2" = {
        "Reader" = {
          azuread_groups = {
            keys = ["identity", "management", "connectivity", "security", "subscription_creation_platform", "subscription_creation_landingzones", "caf_platform_contributors", "caf_landingzones_contributors", "caf_landingzones_maintainers", "landingzones"]
          }
        }
      }
      "level3" = {
        "Reader" = {
          azuread_groups = {
            keys = ["landingzones", "subscription_creation_landingzones", "caf_landingzones_contributors"]
          }
        }
      }
      "level4" = {
        "Reader" = {
          azuread_groups = {
            keys = ["landingzones", "subscription_creation_landingzones", "caf_landingzones_contributors"]
          }
        }
      }
    }
    storage_accounts = {
      "level0" = {
        "Storage Blob Data Contributor" = {
          azuread_groups = {
            keys = ["level0", "identity", "caf_platform_maintainers"]
          }
        }
        "Storage Blob Data Reader" = {
          azuread_groups = {
            keys = ["management", "alz", "security", "caf_platform_contributors", "subscription_creation_platform"]
          }
        }
      }
      "level1" = {
        "Storage Blob Data Contributor" = {
          azuread_groups = {
            keys = ["identity", "management", "alz", "security", "caf_platform_maintainers", "subscription_creation_platform"]
          }
        }
        "Storage Blob Data Reader" = {
          azuread_groups = {
            keys = ["connectivity", "caf_platform_contributors", "subscription_creation_landingzones"]
            # keys = ["caf_platform_contributors", "level0"] Hein Tonny: Try to remove level0, should not require read access one level up.
          }
        }
      }
      "level2" = {
        "Storage Blob Data Contributor" = {
          azuread_groups = {
            keys = ["identity", "connectivity", "management", "security", "landingzones", "caf_platform_maintainers", "subscription_creation_platform", "subscription_creation_landingzones"]
            # keys = ["level0", "identity", "connectivity", "management", "security", "caf_platform_maintainers"] Hein Tonny: Try to remove level0, should not require read access two levels up.
          }
        }
        "Storage Blob Data Reader" = {
          azuread_groups = {
            keys = ["caf_platform_contributors", "landingzones", "caf_landingzones_maintainers", "caf_landingzones_contributors"]
          }
        }
      }
      "level3" = {
        "Storage Blob Data Contributor" = {
          azuread_groups = {
            keys = ["landingzones", "caf_landingzones_maintainers"]
          }
        }
        "Storage Blob Data Reader" = {
          azuread_groups = {
            keys = ["caf_landingzones_contributors"]
          }
        }
      }
      "level4" = {
        "Storage Blob Data Contributor" = {
          azuread_groups = {
            keys = ["landingzones", "caf_landingzones_maintainers"]
          }
        }
        "Storage Blob Data Reader" = {
          azuread_groups = {
            keys = ["caf_landingzones_contributors"]
          }
        }
      }
    }
    keyvaults = {
      "level0" = {
        "Key Vault Administrator" = {
          # CAF Landing Zone Azure AD App for gitops
          object_ids = {
            keys = ["f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
          }
        }
        "Key Vault Secrets Officer" = {
          azuread_groups = {
            keys = ["level0", "caf_platform_maintainers"]
          }
        }
        "Key Vault Secrets User" = {
          azuread_groups = {
            keys = ["identity", "caf_platform_contributors"]
          }
        }
      }
      "level1" = {
        "Key Vault Administrator" = {
          # CAF Landing Zone Azure AD App for gitops
          object_ids = {
            keys = ["f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
          }
        }
        "Key Vault Secrets Officer" = {
          azuread_groups = {
            keys = ["level0", "caf_platform_maintainers"]
          }
        }
        "Key Vault Secrets User" = {
          azuread_groups = {
            keys = ["identity", "management", "alz", "security", "subscription_creation_platform", "caf_platform_contributors"]
          }
        }
      }
      "level2" = {
        "Key Vault Administrator" = {
          # CAF Landing Zone Azure AD App for gitops
          object_ids = {
            keys = ["f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
          }
        }
        "Key Vault Secrets Officer" = {
          azuread_groups = {
            keys = ["level0", "caf_platform_maintainers"]
          }
        }
        "Key Vault Secrets User" = {
          azuread_groups = {
            keys = ["identity", "management", "alz", "security", "connectivity", "subscription_creation_platform", "subscription_creation_landingzones", "caf_platform_contributors", "caf_landingzones_contributors", "landingzones"]
          }
        }
      }
      "level3" = {
        "Key Vault Administrator" = {
          # CAF Landing Zone Azure AD App for gitops
          object_ids = {
            keys = ["f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
          }
        }
        "Key Vault Secrets Officer" = {
          azuread_groups = {
            keys = ["level0", "caf_landingzones_maintainers"]
          }
        }
        "Key Vault Secrets User" = {
          azuread_groups = {
            keys = ["landingzones", "subscription_creation_landingzones", "caf_landingzones_contributors"]
          }
        }
      }
      "level4" = {
        "Key Vault Administrator" = {
          # CAF Landing Zone Azure AD App for gitops
          object_ids = {
            keys = ["f9f5715b-c8e3-44e6-bb3e-fba3f54a176d"]
          }
        }
        "Key Vault Secrets Officer" = {
          azuread_groups = {
            keys = ["level0", "caf_landingzones_maintainers"]
          }
        }
        "Key Vault Secrets User" = {
          azuread_groups = {
            keys = ["landingzones", "subscription_creation_landingzones", "caf_landingzones_contributors"]
          }
        }
      }
    }
  }
}
