# ------------------------ Public IP Prefixes in each region --------------------------------
public_ip_prefixes = {

  pippf_mgmt_norwayeast = {
    name               = "mgmt-norwayeast"
    resource_group_key = "rg_pippf_mgmt_norwayeast"
    region             = "region2"
    sku                = "Standard"
    zones              = [1,2,3]
    ip_version         = "IPv4"
    prefix_length      = 30
    tags = {
      locked = true
    }
    create_pips = false
  }
}
