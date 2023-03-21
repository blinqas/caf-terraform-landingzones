landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "connectivity_firewall_policies"
  global_settings_key = "connectivity_virtual_wans"
  tfstates = {
    connectivity_virtual_wans = {
      tfstate   = "connectivity_virtual_wans.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
  }
}

propagate_launchpad_identities = true