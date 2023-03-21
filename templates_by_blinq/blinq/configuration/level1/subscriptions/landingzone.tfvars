landingzone = {
  backend_type        = "azurerm"
  level               = "level1"
  key                 = "subscriptions"
  global_settings_key = "management"
  tfstates = {
    management = {
      tfstate   = "management.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
  }
}

propagate_launchpad_identities = true