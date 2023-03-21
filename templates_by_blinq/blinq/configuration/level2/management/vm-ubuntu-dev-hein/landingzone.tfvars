landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "connectivity_virtual_wans"
  key                 = "vm_ubuntu_dev_hein_norwayeast"
  level               = "level2"
  tfstates = {
    connectivity_vnet_shared_services_norwayeast = {
      tfstate = "connectivity_vnet_shared_services_norwayeast.tfstate"
      workspace = "tfstate"
      level = "current"
    }
    connectivity_virtual_wans = {
      tfstate = "connectivity_virtual_wans.tfstate"
      workspace = "tfstate"
      level = "current"
    }
    pippf_mgmt_norwayeast = {
      tfstate = "pippf_mgmt_norwayeast.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
    security_level2 = {
      tfstate = "security_level2.tfstate"
      workspace = "tfstate"
      level = "current"
    }
  }
}
