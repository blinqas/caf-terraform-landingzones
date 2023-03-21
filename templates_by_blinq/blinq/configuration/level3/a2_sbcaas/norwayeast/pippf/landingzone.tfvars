landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "vnet_a2_sbcaas_norwayeast"
  key                 = "pippf_sbc002"
  level               = "level3"
  tfstates = {
    vnet_a2_sbcaas_norwayeast = {
      tfstate   = "vnet_a2_sbcaas_norwayeast.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}
