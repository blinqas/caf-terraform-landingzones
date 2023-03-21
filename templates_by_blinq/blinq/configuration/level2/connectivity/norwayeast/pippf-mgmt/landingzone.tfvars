landingzone = {
  backend_type        = "azurerm"
  key                 = "pippf_mgmt_norwayeast"
  global_settings_key = "connectivity_virtual_wans"
  level               = "level2"
  tfstates = {
    connectivity_virtual_wans = {
      tfstate   = "connectivity_virtual_wans.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
  }
}
