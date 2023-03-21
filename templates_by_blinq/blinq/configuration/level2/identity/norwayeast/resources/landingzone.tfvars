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
    vnet_identity_norwayeast = {
      tfstate   = "vnet_identity_norwayeast.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
    connectivity_private_dns_zones = {
      tfstate   = "connectivity_private_dns_zones.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
  }
}

propagate_launchpad_identities = true
