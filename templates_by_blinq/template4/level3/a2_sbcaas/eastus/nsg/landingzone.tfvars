landingzone = {
  backend_type        = "azurerm"
  level               = "level3"
  key                 = "nsg"
  global_settings_key = "vnet"
  tfstates = {
    vnet = {
      tfstate   = "vnet"
      workspace = "tfstate"
      level     = "lower"
    }    
  }
}
