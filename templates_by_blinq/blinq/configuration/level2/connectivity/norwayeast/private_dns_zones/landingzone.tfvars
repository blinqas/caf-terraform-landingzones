landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "connectivity_private_dns_zones"
  global_settings_key = "connectivity_firewalls_norwayeast"
  tfstates = {
    connectivity_firewalls_norwayeast = {
      tfstate   = "connectivity_firewalls_norwayeast.tfstate"
      workspace = "tfstate"
      level = "current"
    }
    connectivity_vnet_shared_services_norwayeast = {
      tfstate = "connectivity_vnet_shared_services_norwayeast.tfstate"
      workspace = "tfstate"
      level = "current"
    }
    identity = {
      tfstate   = "identity.tfstate"
      workspace = "tfstate"
      level = "lower"
    }
  }
}

propagate_launchpad_identities = true