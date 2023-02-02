azurerm_firewall_policies = {
  secure_root = {
    sku    = "Basic"
    name   = "secure-root-policy"
    region = "region2"
    resource_group = {
      lz_key = "connectivity_virtual_wans"
      key    = "global_wan"
    }
    #dns = {
    #  proxy_enabled = true
    #}
    threat_intelligence_mode = "Alert"
  }
}
