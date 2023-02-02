landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "asvm_a1_apps"
  global_settings_key = "asvm"
  tfstates = {
    asvm = {
      tfstate   = "asvm.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
  }
}
