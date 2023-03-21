# ------------------------ Public IP Prefixes in each region --------------------------------
public_ip_prefixes = {

  pippf_sip_sbc002 = {
    name               = "sip-sbc002"
    resource_group_key = "rg_pippf_sbc002"
    region             = "region2"
    sku                = "Standard"
    zones              = [1,2,3]
    ip_version         = "IPv4"
    prefix_length      = 31
    tags = {
      locked = true
    }
    create_pips = false
  }

  pippf_media_sbc002 = {
    name               = "media-sbc002"
    resource_group_key = "rg_pippf_sbc002"
    region             = "region2"
    sku                = "Standard"
    zones              = [1,2,3]
    ip_version         = "IPv4"
    prefix_length      = 31
    tags = {
      locked = true
    }
    create_pips = false
  }

}
