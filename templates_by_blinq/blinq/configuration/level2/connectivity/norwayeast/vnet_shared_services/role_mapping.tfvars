role_mapping = {
  custom_role_mapping = {
    resource_groups = {
      "rg_vnet_shared_services_norwayeast" = {
        "landgingzone_extended" = {
          azuread_groups = {
            lz_key = "launchpad"
            keys   = ["identity"]
          }
        }
      }
    }
  }
  built_in_role_mapping = {
    resource_groups = {
      "rg_vnet_shared_services_norwayeast" = {
        "Contributor" = {
          azuread_groups = {
            lz_key = "launchpad"
            keys   = ["identity"]
          }
        }
      }
    }
  }
}
