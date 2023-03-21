landingzone = {
  backend_type        = "azurerm"
  level               = "level3"
  key                 = "dns_sbcaas_cloud_customer_cname_records"
  global_settings_key = "dns_zone_sbcaas_cloud"
  tfstates = {
    dns_zone_sbcaas_cloud = {
      tfstate   = "dns_zone_sbcaas_cloud.tfstate"
      workspace = "tfstate"
      level     = "lower"
    }
  }
}
