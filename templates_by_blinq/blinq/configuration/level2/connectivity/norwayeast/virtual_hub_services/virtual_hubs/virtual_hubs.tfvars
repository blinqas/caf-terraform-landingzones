virtual_hubs = {
  norwayeast = {
    virtual_wan = {
      lz_key = "connectivity_virtual_wans"
      key    = "global_wan"
    }
    resource_group = {
      lz_key = "connectivity_virtual_wans"
      key    = "global_wan"
    }
    hub_name           = "norwayeast"
    region             = "region2"
    hub_address_prefix = "10.20.0.0/16"
    deploy_p2s         = false
    p2s_config = {
      name       = "norwayeast"
      scale_unit = "1"
    }
    deploy_s2s = false
    s2s_config = {
    }
    deploy_er = false
  }
}