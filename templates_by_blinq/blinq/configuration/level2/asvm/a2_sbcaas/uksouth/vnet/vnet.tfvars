vnets = {
  vnet_a2_sbcaas_uksouth = {
    resource_group_key = "rg_vnet_a2_sbcaas_uksouth"
    region             = "region3"
    vnet = {
      name          = "a2-sbcaas-uksouth"
      address_space = ["10.31.2.0/23"]
    }
    subnets = {
      AzureBastionSubnet = {
        name = "AzureBastionSubnet" #Must be called AzureBastionSubnet
        cidr = ["10.31.2.0/26"]
        nsg_key = "nsg_azure_bastion"
      }
      jumpbox = {
        name    = "jumpbox-a2-sbcaas-uksouth"
        cidr    = ["10.31.2.64/27"]
        nsg_key = "nsg_jumpbox"
      }
      public_sip = {
        name            = "public-sip-a2-sbcaas-uksouth"
        cidr            = ["10.31.2.96/27"]
        nsg_key         = "nsg_public_sip"
        route_table_key = "route_internet_a2_sbcaas_uksouth"
      }
      public_media = {
        name            = "public-media-a2-sbcaas-uksouth"
        cidr            = ["10.31.2.128/27"]
        nsg_key         = "nsg_public_media"
        route_table_key = "route_internet_a2_sbcaas_uksouth"
      }
      private_sip = {
        name    = "private-sip-a2-sbcaas-uksouth"
        cidr    = ["10.31.2.160/27"]
        nsg_key = "nsg_private_sip"
      }
      private_media = {
        name    = "private-media-a2-sbcaas-uksouth"
        cidr    = ["10.31.2.192/27"]
        nsg_key = "nsg_private_media"
      }
    }
  }
}

route_tables = {
  route_internet_a2_sbcaas_uksouth = {
    name               = "internet-a2-sbcaas-uksouth"
    resource_group_key = "rg_vnet_a2_sbcaas_uksouth"
  }
}

azurerm_routes = {
  internet_ = {
    name               = "internet"
    resource_group_key = "rg_vnet_a2_sbcaas_uksouth"
    route_table_key    = "route_internet_a2_sbcaas_uksouth"
    address_prefix     = "0.0.0.0/0"
    next_hop_type      = "Internet"
  }
}
