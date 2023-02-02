# ------------------------ Public IP Prefixes in each region --------------------------------
public_ip_prefixes = {

  lz_sbcaas_pippf_sip_norwayeast = {
    name               = "sip-norwayeast"
    resource_group_key = "lz_sbcaas_rg_norwayeast"
    region             = "region2"
    sku                = "Standard"
    zones              = "Zone-Redundant"
    ip_version         = "IPv4"
    prefix_length      = 31
    tags = {
      locked = true
    }
    create_pips = false
  }

  lz_sbcaas_pippf_media_norwayeast = {
    name               = "media-norwayeast"
    resource_group_key = "lz_sbcaas_rg_norwayeast"
    region             = "region2"
    sku                = "Standard"
    zones              = "Zone-Redundant"
    ip_version         = "IPv4"
    prefix_length      = 31
    tags = {
      locked = true
    }
    create_pips = false
  }

}
