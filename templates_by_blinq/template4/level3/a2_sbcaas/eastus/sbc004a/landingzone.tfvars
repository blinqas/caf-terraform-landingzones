landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "pippf_sbc004a"
  key                 = "vm_sbc004a"
  level               = "level3"
  tfstates = {
    pippf_sbc004a = {
      tfstate   = "pippf_sbc004a"
      workspace = "tfstate"
      level     = "current"
    }
    dns_zone_sbcaas_cloud = {
      tfstate   = "dns_zone_sbcaas_cloud.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}
