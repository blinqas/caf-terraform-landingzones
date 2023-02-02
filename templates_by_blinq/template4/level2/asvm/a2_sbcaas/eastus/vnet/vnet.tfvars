vnets = {
  vnet_a2_sbcaas_eastus = {
    resource_group_key = "rg_vnet_a2_sbcaas_eastus"
    region             = "region4"
    vnet = {
      name          = "a2-sbcaas-eastus"
      address_space = ["10.41.2.0/23"]
    }
    subnets = {
      AzureBastionSubnet = {
        name    = "AzureBastionSubnet" #Must be called AzureBastionSubnet
        cidr    = ["10.41.2.0/26"]
        nsg_key = "azure_bastion_nsg"
      }
      jumpbox = {
        name    = "jumpbox-a2-sbcaas-eastus"
        cidr    = ["10.41.2.64/27"]
        nsg_key = "jumpbox"
      }
      public_sip = {
        name            = "public-sip-a2-sbcaas-eastus"
        cidr            = ["10.41.2.96/27"]
        nsg_key         = "public_sip"
        route_table_key = "route_internet_a2_sbcaas_eastus"
      }
      public_media = {
        name            = "public-media-a2-sbcaas-eastus"
        cidr            = ["10.41.2.128/27"]
        nsg_key         = "public_media"
        route_table_key = "route_internet_a2_sbcaas_eastus"
      }
      private_sip = {
        name    = "private-sip-a2-sbcaas-eastus"
        cidr    = ["10.41.2.160/27"]
        nsg_key = "private_sip"
      }
      private_media = {
        name    = "private-media-a2-sbcaas-eastus"
        cidr    = ["10.41.2.192/27"]
        nsg_key = "private_media"
      }
    }
  }
}

route_tables = {
  route_internet_a2_sbcaas_eastus = {
    name               = "internet-a2-sbcaas-eastus"
    resource_group_key = "rg_vnet_a2_sbcaas_eastus"
  }
}

azurerm_routes = {
  internet_ = {
    name               = "internet"
    resource_group_key = "rg_vnet_a2_sbcaas_eastus"
    route_table_key    = "route_internet_a2_sbcaas_eastus"
    address_prefix     = "0.0.0.0/0"
    next_hop_type      = "Internet"
  }
}
