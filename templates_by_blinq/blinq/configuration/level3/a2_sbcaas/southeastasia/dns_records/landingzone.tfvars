landingzone = {
  backend_type        = "azurerm"
  level               = "level3"
  key                 = "dns_records_sbc005"
  global_settings_key = "vm_sbc005b"
  tfstates = {
    dns_zone_sbcaas_cloud = {
      tfstate   = "dns_zone_sbcaas_cloud.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
    vm_sbc005a = {
      tfstate   = "vm_sbc005a.tfstate"
      workspace = "tfstate"
      level     = "current"
    } 
    vm_sbc005b = {
      tfstate   = "vm_sbc005b.tfstate"
      workspace = "tfstate"
      level     = "current"
    }    
  }
}
