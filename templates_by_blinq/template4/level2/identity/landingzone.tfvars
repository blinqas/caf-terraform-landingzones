landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "identity_level2"
  global_settings_key = "identity"
  tfstates = {
    identity = {
      tfstate   = "identity.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}

propagate_launchpad_identities = true
