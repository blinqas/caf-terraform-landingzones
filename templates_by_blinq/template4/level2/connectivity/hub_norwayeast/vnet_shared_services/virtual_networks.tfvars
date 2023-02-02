vnets = {
  vnet_shared_services_norwayeast = {
    resource_group = {
      lz_key = "connectivity_virtual_wans"
      key    = "global_wan"
    }
    vnet = {
      name          = "vnet-shared-services-norwayeast"
      address_space = ["10.21.0.0/22"]
    }
    specialsubnets = {
      AzureFirewallSubnet = {
        name = "AzureFirewallSubnet"
        cidr = ["10.21.0.0/24"]
      }
    }
    subnets = {
      dns = {
        name                                           = "dns"
        cidr                                           = ["10.21.1.0/28"]
        nsg_key                                        = "default_nsg"
        route_table_key                                = "internet"
        enforce_private_link_endpoint_network_policies = true
      }
    }
  }
}