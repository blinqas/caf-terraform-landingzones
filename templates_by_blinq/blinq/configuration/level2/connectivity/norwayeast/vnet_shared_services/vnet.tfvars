vnets = {
  vnet_shared_services_norwayeast = {
    resource_group = {
      lz_key = "connectivity_vnet_shared_services_norwayeast"
      key    = "rg_vnet_shared_services_norwayeast"
    }
    vnet = {
      name          = "vnet-shared-services-norwayeast"
      address_space = ["10.22.0.0/16"]
    }
    #specialsubnets = {
    #  AzureFirewallSubnet = {
    #    name = "AzureFirewallSubnet"
    #    cidr = ["10.22.0.0/24"]
    #  }
    #}
    subnets = {
      dns = {
        name                                           = "dns"
        cidr                                           = ["10.22.1.0/28"]
        nsg_key                                        = "nsg_default"
        route_table_key                                = "internet"
        enforce_private_link_endpoint_network_policies = true
      }
      cloudockit = {
        name                                           = "cloudockit"
        cidr                                           = ["10.22.1.16/28"]
        nsg_key                                        = "nsg_default"
        route_table_key                                = "internet"
        enforce_private_link_endpoint_network_policies = true
      }
      credentials = {
        name                                           = "credentials"
        cidr                                           = ["10.22.2.0/24"]
        nsg_key                                        = "nsg_default"
        route_table_key                                = "internet"
        service_endpoints                              = ["Microsoft.KeyVault", "Microsoft.Storage"]
        enforce_private_link_endpoint_network_policies = true
      }
      ubuntu_dev = {
        name                                           = "ubuntu-dev"
        cidr                                           = ["10.22.3.0/26"]
        nsg_key                                        = "nsg_default"
        route_table_key                                = "internet"
        service_endpoints                              = ["Microsoft.KeyVault", "Microsoft.Storage"]
        enforce_private_link_endpoint_network_policies = true
      }
    }
  }
}