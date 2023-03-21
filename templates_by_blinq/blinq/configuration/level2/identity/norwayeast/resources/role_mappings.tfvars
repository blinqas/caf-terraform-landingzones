
#
# Services supported: subscriptions, storage accounts and resource groups
# Can assign roles to: AD groups, AD object ID, AD applications, Managed identities
#

role_mapping = {
  built_in_role_mapping = {
    resource_groups = {
      rg_kv_identities = {
        "Contributor" = {
          azuread_groups = {
            lz_key = "launchpad"
            keys = [
              "identity"
            ]
          }
        }
      }
    }
  }
}
