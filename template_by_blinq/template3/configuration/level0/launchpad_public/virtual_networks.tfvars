vnets = {
  vnet_region1 = {
    resource_group_key = "gitops"
    vnet = {
      name          = "gitops"
      address_space = ["10.100.0.0/24"]
    }
    subnets = {
      level0 = {
        name                                           = "level0"
        cidr                                           = ["10.100.0.0/27"]
        nsg_key                                        = "default_nsg"
        route_table_key                                = "internet"
        service_endpoints                              = ["Microsoft.KeyVault", "Microsoft.Storage"]
        enforce_private_link_endpoint_network_policies = true
      }
      level1 = {
        name                                           = "level1"
        cidr                                           = ["10.100.0.32/27"]
        nsg_key                                        = "default_nsg"
        route_table_key                                = "internet"
        service_endpoints                              = ["Microsoft.KeyVault", "Microsoft.Storage"]
        enforce_private_link_endpoint_network_policies = true
      }
      level2 = {
        name                                           = "level2"
        cidr                                           = ["10.100.0.64/27"]
        nsg_key                                        = "default_nsg"
        route_table_key                                = "internet"
        service_endpoints                              = ["Microsoft.KeyVault", "Microsoft.Storage"]
        enforce_private_link_endpoint_network_policies = true
      }

      level3 = {
        name                                           = "level3"
        cidr                                           = ["10.100.0.96/27"]
        nsg_key                                        = "default_nsg"
        route_table_key                                = "internet"
        service_endpoints                              = ["Microsoft.KeyVault", "Microsoft.Storage"]
        enforce_private_link_endpoint_network_policies = true
      }
      level4 = {
        name                                           = "level4"
        cidr                                           = ["10.100.0.128/27"]
        nsg_key                                        = "default_nsg"
        route_table_key                                = "internet"
        service_endpoints                              = ["Microsoft.KeyVault", "Microsoft.Storage"]
        enforce_private_link_endpoint_network_policies = true
      }
      containergroups = {
        name                                           = "containergroups"
        cidr                                           = ["10.100.0.160/27"]
        nsg_key                                        = "default_nsg"
        route_table_key                                = "internet"
        enforce_private_link_endpoint_network_policies = true
        delegation = {
          name               = "Microsoft.ContainerInstance/containerGroups"
          service_delegation = "Microsoft.ContainerInstance/containerGroups"
          actions            = ["Microsoft.Network/virtualNetworks/subnets/action"]
        }
      }
      credentials = {
        name                                           = "credentials"
        cidr                                           = ["10.100.0.192/27"]
        nsg_key                                        = "default_nsg"
        route_table_key                                = "internet"
        service_endpoints                              = ["Microsoft.KeyVault", "Microsoft.Storage"]
        enforce_private_link_endpoint_network_policies = true
      }
    }
  }
}