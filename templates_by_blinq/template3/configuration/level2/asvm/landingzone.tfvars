landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "asvm"
  global_settings_key = "identity"
  tfstates = {
    identity = {
      tfstate   = "identity.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}
