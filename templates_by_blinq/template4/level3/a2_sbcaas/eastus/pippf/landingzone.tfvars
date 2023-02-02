landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "vnet_a2_sbcaas_eastus"
  key                 = "pippf_sip_sbc004"
  level               = "level3"
  tfstates = {
    vnet_a2_sbcaas_eastus = {
      tfstate   = "vnet_a2_sbcaas_eastus.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}
