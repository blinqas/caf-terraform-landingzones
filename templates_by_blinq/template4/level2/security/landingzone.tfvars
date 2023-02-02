landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "security_level2"
  global_settings_key = "management"
  tfstates = {
    management = {
      tfstate   = "management.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
    identity = {
      tfstate   = "identity.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}

propagate_launchpad_identities = true