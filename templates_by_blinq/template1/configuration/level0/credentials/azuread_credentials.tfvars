azuread_credentials = {
  level0 = {
    type                          = "password"
    azuread_credential_policy_key = "default_policy"
    azuread_application = {
      lz_key = "launchpad"
      key    = "level0"
    }
    keyvaults = {
      cred_level0 = {
        secret_prefix = "sp"
      }
    }
  }
  identity = {
    type                          = "password"
    azuread_credential_policy_key = "default_policy"
    azuread_application = {
      lz_key = "launchpad"
      key    = "identity"
    }
    keyvaults = {
      cred_identity = {
        secret_prefix = "sp"
      }
    }
  }
}
