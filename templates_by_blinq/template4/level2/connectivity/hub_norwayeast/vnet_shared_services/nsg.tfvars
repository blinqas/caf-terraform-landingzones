network_security_group_definition = {
  default_nsg = {
    version = 1
    name = "default"
    resource_group = {
      lz_key = "connectivity_virtual_wans"
      key    = "global_wan"
    }
  }
}
