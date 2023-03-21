landingzone = {
  backend_type        = "azurerm"
  level               = "level3"
  key                 = "customer_ambassaden-de-france"
  global_settings_key = "dns_zone_sbcaas_cloud"
  tfstates = {
    dns_zone_sbcaas_cloud = {
      tfstate   = "dns_zone_sbcaas_cloud.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}
