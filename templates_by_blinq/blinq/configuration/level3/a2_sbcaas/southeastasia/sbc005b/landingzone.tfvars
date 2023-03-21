landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "pippf_sbc005b"
  key                 = "vm_sbc005b"
  level               = "level3"
  tfstates = {
    security_level2 = {
      tfstate = "security_level2.tfstate"
      workspace = "tfstate"
      level = "lower"
    }
    vnet_a2_sbcaas_southeastasia = {
      tfstate = "vnet_a2_sbcaas_southeastasia.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
    pippf_sbc005 = {
      tfstate   = "pippf_sbc005.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
  }
}
