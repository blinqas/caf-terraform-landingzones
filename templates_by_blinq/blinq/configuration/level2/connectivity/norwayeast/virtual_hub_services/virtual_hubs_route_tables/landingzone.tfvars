landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "virtual_hubs_route_tables_prod"
  global_settings_key = "connectivity_virtual_hubs_norwayeast"
  tfstates = {
    connectivity_virtual_hubs_norwayeast = {
      tfstate   = "connectivity_virtual_hubs_norwayeast.tfstate"
      workspace = "tfstate"
    }
    connectivity_secure_firewalls_prod = {
      tfstate   = "connectivity_secure_firewalls_prod.tfstate"
      workspace = "tfstate"
    }
    connectivity_firewalls_norwayeast = {
      tfstate   = "connectivity_firewalls_norwayeast.tfstate"
      workspace = "tfstate"
    }
  }
}

propagate_launchpad_identities = true