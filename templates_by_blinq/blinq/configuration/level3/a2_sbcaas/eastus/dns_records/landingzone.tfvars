landingzone = {
  backend_type        = "azurerm"
  level               = "level3"
  key                 = "dns_records_sbc004"
  global_settings_key = "vm_sbc004b"
  tfstates = {
    dns_zone_sbcaas_cloud = {
      tfstate   = "dns_zone_sbcaas_cloud.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
    vm_sbc004a = {
      tfstate   = "vm_sbc004a.tfstate"
      workspace = "tfstate"
      level     = "current"
    } 
    vm_sbc004b = {
      tfstate   = "vm_sbc004b.tfstate"
      workspace = "tfstate"
      level     = "current"
    }    
  }
}
