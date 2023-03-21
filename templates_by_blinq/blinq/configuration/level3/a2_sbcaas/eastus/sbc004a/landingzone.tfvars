landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "pippf_sbc004a"
  key                 = "vm_sbc004a"
  level               = "level3"
  tfstates = {
    security_level2 = {
      tfstate = "security_level2.tfstate"
      workspace = "tfstate"
      level = "lower"
    }
    vnet_a2_sbcaas_eastus = {
      tfstate = "vnet_a2_sbcaas_eastus.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
    pippf_sbc004 = {
      tfstate   = "pippf_sbc004.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
  }
}
