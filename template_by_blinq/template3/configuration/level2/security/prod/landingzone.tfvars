landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "security_level2_prod"
  global_settings_key = "management"
  tfstates = {
    management = {
      tfstate   = "management.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}
