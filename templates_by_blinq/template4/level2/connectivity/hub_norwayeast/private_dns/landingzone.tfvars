landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "connectivity_private_dns_zones"
  global_settings_key = "connectivity_firewalls_norwayeast"
  tfstates = {
    connectivity_firewalls_norwayeast = {
      tfstate   = "connectivity_firewalls_norwayeast.tfstate"
      workspace = "tfstate"
    }
    identity_level2 = {
      tfstate   = "identity_level2.tfstate"
      workspace = "tfstate"
    }
  }
}

propagate_launchpad_identities = true