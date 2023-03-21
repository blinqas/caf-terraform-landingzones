role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      "dns_zone_sbcaas_cloud" = {
        "DNS Zone Contributor" = {
          azuread_groups = {
            lz_key = "identity_level2"
            keys   = ["caf_landingzones_dns_contributors"]
          }
        }
        "DNS Zone Contributor" = {
          azuread_groups = {
            lz_key = "launchpad"
            keys   = ["landingzones"]
          }
        }
      }
    }
  }
}