landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "management_level2"
  global_settings_key = "connectivity_virtual_hubs_norwayeast"
  tfstates = {
    management = {
      tfstate   = "management.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
    connectivity_virtual_hubs_norwayeast = {
      tfstate   = "connectivity_virtual_hubs_norwayeast.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
  }
}

propagate_launchpad_identities = true
