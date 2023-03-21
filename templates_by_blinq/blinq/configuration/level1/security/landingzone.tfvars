landingzone = {
  backend_type        = "azurerm"
  level               = "level1"
  key                 = "security"
  global_settings_key = "identity"
  tfstates = {
    identity = {
      tfstate   = "identity.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
  }
}

propagate_launchpad_identities = true