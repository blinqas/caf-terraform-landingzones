landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "asvm"
  global_settings_key = "connectivity_virtual_hubs_norwayeast"
  tfstates = {
    connectivity_virtual_hubs_norwayeast = {
      tfstate   = "connectivity_virtual_hubs_norwayeast.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
  }
}

propagate_launchpad_identities = true