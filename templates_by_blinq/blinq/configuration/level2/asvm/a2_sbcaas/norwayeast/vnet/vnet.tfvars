vnets = {
  vnet_a2_sbcaas_norwayeast = {
    resource_group_key = "rg_vnet_a2_sbcaas_norwayeast"
    region             = "region2"
    vnet = {
      name          = "a2-sbcaas-norwayeast"
      address_space = ["10.21.2.0/23"]
    }
    subnets = {
      AzureBastionSubnet = {
        name = "AzureBastionSubnet" #Must be called AzureBastionSubnet
        cidr = ["10.21.2.0/26"]
        nsg_key = "nsg_azure_bastion"
      }
      jumpbox = {
        name    = "jumpbox-a2-sbcaas-norwayeast"
        cidr    = ["10.21.2.64/27"]
        nsg_key = "nsg_jumpbox"
      }
      public_sip = {
        name            = "public-sip-a2-sbcaas-norwayeast"
        cidr            = ["10.21.2.96/27"]
        nsg_key         = "nsg_public_sip"
        route_table_key = "route_internet_a2_sbcaas_norwayeast"
      }
      public_media = {
        name            = "public-media-a2-sbcaas-norwayeast"
        cidr            = ["10.21.2.128/27"]
        nsg_key         = "nsg_public_media"
        route_table_key = "route_internet_a2_sbcaas_norwayeast"
      }
      private_sip = {
        name    = "private-sip-a2-sbcaas-norwayeast"
        cidr    = ["10.21.2.160/27"]
        nsg_key = "nsg_private_sip"
      }
      private_media = {
        name    = "private-media-a2-sbcaas-norwayeast"
        cidr    = ["10.21.2.192/27"]
        nsg_key = "nsg_private_media"
      }
    }
  }
}

route_tables = {
  route_internet_a2_sbcaas_norwayeast = {
    name               = "internet-a2-sbcaas-norwayeast"
    resource_group_key = "rg_vnet_a2_sbcaas_norwayeast"
  }
}

azurerm_routes = {
  internet_ = {
    name               = "internet"
    resource_group_key = "rg_vnet_a2_sbcaas_norwayeast"
    route_table_key    = "route_internet_a2_sbcaas_norwayeast"
    address_prefix     = "0.0.0.0/0"
    next_hop_type      = "Internet"
  }
}
