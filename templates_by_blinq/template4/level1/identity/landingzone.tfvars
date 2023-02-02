landingzone = {
  backend_type        = "azurerm"
  level               = "level1"
  key                 = "identity"
  global_settings_key = "subscriptions"
  tfstates = {
    subscriptions = {
      tfstate   = "platform_subscriptions.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
  }
}

propagate_launchpad_identities = true