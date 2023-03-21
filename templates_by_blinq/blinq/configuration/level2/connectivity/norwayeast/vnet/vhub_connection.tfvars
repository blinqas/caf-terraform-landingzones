virtual_hub_connections = {
  vnet_to_hub_norwayeast = {
    name = "vnet-connectivity-norwayeast-TO-vhub-norwayeast"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_norwayeast"
      key    = "norwayeast"
    }
    vnet = {
      vnet_key = "vnet_connectivity_norwayeast"
    }
    internet_security_enabled = true
    routing = {
      firewall_manager = {
        virtual_hub_route_table_key = "defaultRouteTable"
        #propagated_route_table = {
        #  labels                       = ["none"]
        #  virtual_hub_route_table_keys = ["noneRouteTable"]
        #}
      }
    }
  }
}