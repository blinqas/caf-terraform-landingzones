role_mapping = {
  custom_role_mapping = {
    resource_groups = {
      "dns_connectivity" = {
        "landgingzone_extended" = {
          azuread_groups = {
            lz_key = "identity_level2"
            keys   = ["caf_landingzones_dns_contributors"]
          }
        }
      }
    }
  }
  built_in_role_mapping = {
    resource_groups = {
      "dns_connectivity" = {
        "Private DNS Zone Contributor" = {
          azuread_groups = {
            lz_key = "identity_level2"
            keys   = ["caf_landingzones_dns_contributors"]
          }
        }
      }
    }
  }
}