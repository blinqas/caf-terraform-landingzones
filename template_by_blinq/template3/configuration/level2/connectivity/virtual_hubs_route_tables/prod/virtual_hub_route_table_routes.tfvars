virtual_hub_route_table_routes = {
  all_traffic = {
    name = "all_traffic"
    virtual_hub = {
      lz_key = "connectivity_virtual_hubs_prod"
      key    = "prod"
    }
    route_table = {
      name = "defaultRouteTable"
    }
    destinations_type = "CIDR"
    next_hop_type     = "ResourceId"
    next_hop = {
      resource_type = "azurerm_firewall"
      lz_key        = "connectivity_secure_firewalls_prod"
      key           = "fw_secure_prod"
    }
    destinations = ["0.0.0.0/0", "10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/16"]
  }
}