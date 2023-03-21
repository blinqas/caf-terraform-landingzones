azuread_credentials = {
  cred_hcvault = {
    type                          = "password"
    azuread_credential_policy_key = "default_policy"
    azuread_application = {
      key = "app_hcvault"
    }
    keyvaults = {
      kv_cred_hcvault = {
        secret_prefix = "sp"
      }
    }
  }
}
