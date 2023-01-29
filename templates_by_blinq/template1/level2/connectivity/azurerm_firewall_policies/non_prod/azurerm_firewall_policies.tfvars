azurerm_firewall_policies = {
  fw_secure_prod = {
    name   = "secure-root-policy-non_prod"
    region = "region1"
    resource_group = {
      key = "firewall_policies"
    }
    threat_intelligence_mode = "Alert"
  }
}