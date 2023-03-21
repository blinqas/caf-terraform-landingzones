landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "security_level2"
  global_settings_key = "vnet_security_norwayeast"
  tfstates = {
    vnet_security_norwayeast = {
      tfstate   = "vnet_security_norwayeast.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
    identity = {
      tfstate   = "identity.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
    identity_level2 = {
      tfstate   = "identity_level2.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
  }
}

propagate_launchpad_identities = true
