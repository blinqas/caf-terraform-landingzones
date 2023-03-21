azuread_apps = {
  packer_client_management = {
    useprefix                    = true
    application_name             = "packer-client-management"
    password_expire_in_days      = 1
    app_role_assignment_required = true
    keyvaults = {
      packer_client_management = {
        secret_prefix = "packer-client-management"
      }
    }
    # Store the ${secret_prefix}-client-id, ${secret_prefix}-client-secret...
    # Set the policy during the creation process of the launchpad
  }
}
