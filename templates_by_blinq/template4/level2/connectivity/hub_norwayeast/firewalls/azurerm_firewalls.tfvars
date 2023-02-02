azurerm_firewalls = {
  fw_norwayeast = {
    name               = "norwayeast"
    region = "region2"
    resource_group = {
      lz_key = "connectivity_virtual_wans"
      key    = "global_wan"
    }
    #vnet_key           = "vnet_shared_services_norwayeast"
    sku_tier           = "Basic"
    sku_name           = "AZFW_Hub"
    firewall_policy = {
      key    = "secure_root"
      lz_key = "connectivity_firewall_policies"
    }
    zones = [1, 2, 3]
    #public_ips = {
    #  ip1 = {
    #    name          = "pip1-norwayeast"
    #    public_ip_key = "fw_pip1_norwayeast"
    #    vnet_key      = "vnet_shared_services_norwayeast"
    #    subnet_key    = "AzureFirewallSubnet"
    #  }
    #}
    virtual_hub = {
      norwayeast = {
        lz_key          = "connectivity_virtual_hubs_norwayeast"
        virtual_hub_key = "norwayeast"
      }
    }
  }
}