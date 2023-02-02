landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "security_disk_encryptions_sbc004a_eastus"
  global_settings_key = "security_level2"
  tfstates = {
    security_level2 = {
      tfstate   = "security_level2.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }    
  }
}
