private_dns = {
  "privatelink.blob.core.windows.net" = {
    name               = "privatelink.blob.core.windows.net"
    resource_group_key = "level0"
    vnet_links = {
      vnet_region1 = {
        name     = "vnet-region1"
        vnet_key = "vnet_region1"
        lz_key   = "launchpad"
      }
    }
  }
  "privatelink.vaultcore.azure.net" = {
    name               = "privatelink.vaultcore.azure.net"
    resource_group_key = "level0"
    vnet_links = {
      vnet_region1 = {
        name     = "vnet-region1"
        vnet_key = "vnet_region1"
        lz_key   = "launchpad"
      }
    }
  }
  "privatelink.table.azure.net" = {
    name               = "privatelink.table.azure.net"
    resource_group_key = "level0"
    vnet_links = {
      vnet_region1 = {
        name     = "vnet-region1"
        vnet_key = "vnet_region1"
        lz_key   = "launchpad"
      }
    }
  }
  "privatelink.dfs.azure.net" = {
    name               = "privatelink.dfs.azure.net"
    resource_group_key = "level0"
    vnet_links = {
      vnet_region1 = {
        name     = "vnet-region1"
        vnet_key = "vnet_region1"
        lz_key   = "launchpad"
      }
    }
  }
}
