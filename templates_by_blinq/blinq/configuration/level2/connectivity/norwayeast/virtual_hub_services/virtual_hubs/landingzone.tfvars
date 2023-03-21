landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "connectivity_virtual_hubs_norwayeast"
  global_settings_key = "connectivity_virtual_wans"
  tfstates = {
    connectivity_virtual_wans = {
      tfstate   = "connectivity_virtual_wans.tfstate"
      workspace = "tfstate"
    }
  }
}
custom_variables = {
  virtual_hub_lz_key = "connectivity_virtual_hubs_norwayeast"
}

propagate_launchpad_identities = true