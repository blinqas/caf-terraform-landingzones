landingzone = {
  backend_type        = "azurerm"
  key                 = "cloudockit_license_blob"
  level               = "level2"
  global_settings_key = "management"
  tfstates = {
    management = {
      tfstate   = "management.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
    #cloudockit_license = {
    #  tfstate   = "cloudockit_license.tfstate"
    #  workspace = "tfstate"
    #  level     = "current"
    #}
    connectivity_private_dns_zones = {
      tfstate   = "connectivity_private_dns_zones.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
    connectivity_vnet_shared_services_norwayeast = {
      tfstate   = "connectivity_vnet_shared_services_norwayeast.tfstate"
      workspace = "tfstate"
      level     = "current"
    }
  }
}


