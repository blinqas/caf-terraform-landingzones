landingzone = {
  backend_type        = "azurerm"
  key                 = "sig_management"
  level               = "level2"
  global_settings_key = "management"
  tfstates = {
    #asvm_management = {
    #  tfstate   = "asvm_management.tfstate"
    #  workspace = "tfstate"
    #  level     = "current"
    #}
    management = {
      tfstate   = "management.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
    identity_level2 = {
      tfstate ="identity_level2"
      workspace = "tfstate"
      level = "current"
    }
  }
}


