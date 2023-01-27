azurerm_routes = {
  internet = {
    name               = "internet"
    resource_group_key = "gitops"
    route_table_key    = "internet"
    address_prefix     = "0.0.0.0/0"
    next_hop_type      = "Internet"
  }
}
