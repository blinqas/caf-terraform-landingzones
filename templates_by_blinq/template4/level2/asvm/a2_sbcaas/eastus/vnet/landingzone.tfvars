landingzone = {
  backend_type        = "azurerm"
  key                 = "vnet_a2_sbcaas_eastus"
  level               = "level2"
  global_settings_key = "connectivity_virtual_hubs_norwayeast"
  tfstates = {
    asvm_a2_sbcaas = {
      tfstate   = "asvm_a2_sbcaas.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
    connectivity_virtual_hubs_norwayeast = {
      tfstate   = "connectivity_virtual_hubs_norwayeast.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
  }
}


