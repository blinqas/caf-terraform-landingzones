landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "vnet_a2_sbcaas_southeastasia"
  key                 = "pippf_sbc005"
  level               = "level3"
  tfstates = {
    vnet_a2_sbcaas_southeastasia = {
      tfstate   = "vnet_a2_sbcaas_southeastasia.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}
