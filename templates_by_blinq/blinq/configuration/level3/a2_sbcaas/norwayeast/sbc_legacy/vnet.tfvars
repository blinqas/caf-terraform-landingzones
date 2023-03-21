vnets = {
  lz_sbcaas_vnet_norwayeast = {
    resource_group_key = "lz_sbcaas_rg_norwayeast"
    region             = "region2"
    vnet = {
      name          = "norwayeast"
      address_space = ["10.2.2.0/23"]
    }
    subnets = {
      AzureBastionSubnet = {
        name    = "AzureBastionSubnet" #Must be called AzureBastionSubnet
        cidr    = ["10.2.2.0/26"]
        nsg_key = "azure_bastion_nsg"
      }
      jumpbox = {
        name    = "jumpbox"
        cidr    = ["10.2.2.64/27"]
        nsg_key = "jumpbox"
      }
      public_sip = {
        name            = "public-sip"
        cidr            = ["10.2.2.96/27"]
        nsg_key         = "public_sip"
        route_table_key = "internet"
      }
      public_media = {
        name            = "public-media"
        cidr            = ["10.2.2.128/27"]
        nsg_key         = "public_media"
        route_table_key = "internet"
      }
      private_sip = {
        name    = "private-sip"
        cidr    = ["10.2.2.160/27"]
        nsg_key = "private_sip"
      }
      private_media = {
        name    = "private-media"
        cidr    = ["10.2.2.192/27"]
        nsg_key = "private_media"
      }
    }

    # you can setup up to 5 keys - vnet diganostic
    diagnostic_profiles = {
      central_logs_region1 = {
        definition_key   = "networking_all"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
      }
    }

  }

  /*
  lz_sbcaas_vnet_temp_norwayeast = {
    resource_group_key = "lz_sbcaas_rg_norwayeast"
    region             = "region2"
    vnet = {
      name          = "temp-norwayeast"
      address_space = ["10.4.0.0/23"]
    }
    subnets = {
      AzureBastionSubnet = {
        name    = "AzureBastionSubnet" #Must be called AzureBastionSubnet
        cidr    = ["10.4.0.0/26"]
        nsg_key = "azure_bastion_nsg"
      }
      jumpbox = {
        name    = "jumpbox"
        cidr    = ["10.4.0.64/27"]
        nsg_key = "jumpbox"
      }
      public_sip = {
        name    = "public-sip"
        cidr    = ["10.4.0.96/27"]
        nsg_key = "public_sip"
        route_table_key = "internet"
      }
      public_media = {
        name    = "public-media"
        cidr    = ["10.4.0.128/27"]
        nsg_key = "public_media"
        route_table_key = "internet"
      }
      private_sip = {
        name    = "private-sip"
        cidr    = ["10.4.1.0/25"]
        nsg_key = "private_sip"
      }
      private_media = {
        name    = "private-media"
        cidr    = ["10.4.1.128/25"]
        nsg_key = "private_media"
      }
    }

    # you can setup up to 5 keys - vnet diganostic
    diagnostic_profiles = {
      central_logs_region1 = {
        definition_key   = "networking_all"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
      }
    }

  }
  */
}


route_tables = {
  internet = {
    name               = "internet-norwayeast"
    resource_group_key = "lz_sbcaas_rg_norwayeast"
  }
}

azurerm_routes = {
  internet = {
    name               = "internet-norwayeast"
    resource_group_key = "lz_sbcaas_rg_norwayeast"
    route_table_key    = "internet"
    address_prefix     = "0.0.0.0/0"
    next_hop_type      = "Internet"
  }
}
