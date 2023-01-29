virtual_hub_connections = {
  vnet_to_hub = {
    name = "vnet-connectivity-prod-fw-plinks-TO-vhub-prod"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_prod"
      key    = "prod"
    }
    vnet = {
      vnet_key = "vnet"
    }
    internet_security_enabled = true
    routing = {
      firewall_manager = {
        virtual_hub_route_table_key = "defaultRouteTable"
        propagated_route_table = {
          labels                       = ["none"]
          virtual_hub_route_table_keys = ["noneRouteTable"]
        }
      }
    }
  }
}