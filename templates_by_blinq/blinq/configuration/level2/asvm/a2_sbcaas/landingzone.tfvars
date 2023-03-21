landingzone = {
  backend_type        = "azurerm"
  level               = "level2"
  key                 = "asvm_a2_sbcaas"
  global_settings_key = "asvm"
  tfstates = {
    asvm = {
      tfstate   = "asvm_a2_sbcaas.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
  }
}

propagate_launchpad_identities = true