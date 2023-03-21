landingzone = {
  backend_type        = "azurerm"
  key                 = "cloudockit_license"
  level               = "level2"
  global_settings_key = "management"
  tfstates = {
    management = {
      tfstate   = "management.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}


