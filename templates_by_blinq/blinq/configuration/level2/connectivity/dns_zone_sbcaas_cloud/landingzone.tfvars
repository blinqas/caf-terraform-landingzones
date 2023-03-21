landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "dns_zone_sbcaas_cloud"
  global_settings_key = "management"
  tfstates = {
    identity_level2 = {
      tfstate = "identity_level2.tfstate"
      workspace = "tfstate"
      level = "current"    
    }      
    management = {
      tfstate   = "management.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }    
  }
}
