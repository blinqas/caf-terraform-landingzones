landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "connectivity_firewalls_norwayeast"
  global_settings_key = "connectivity_virtual_hubs_norwayeast"
  tfstates = {
    connectivity_virtual_wans = {
      tfstate   = "connectivity_virtual_wans.tfstate"
      workspace = "tfstate"
      level = "current"
    }
    connectivity_virtual_hubs_norwayeast = {
      tfstate   = "connectivity_virtual_hubs_norwayeast.tfstate"
      workspace = "tfstate"
      level = "current"
    }
    connectivity_firewall_policies = {
      tfstate   = "connectivity_firewall_policies.tfstate"
      workspace = "tfstate"
      level = "current"
    }
  }
}

propagate_launchpad_identities = true