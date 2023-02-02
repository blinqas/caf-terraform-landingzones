# ------------------------ Public IP Prefixes in each region --------------------------------
public_ip_prefixes = {

  pippf_sip_sbc004 = {
    name               = "sip-sbc004"
    resource_group_key = "rg_pippf_sbc004"
    region             = "region4"
    sku                = "Standard"
    zones              = [1,2,3]
    ip_version         = "IPv4"
    prefix_length      = 31
    tags = {
      locked = true
    }
    create_pips = false
  }

  pippf_media_sbc004 = {
    name               = "media-sbc004"
    resource_group_key = "rg_pippf_sbc004"
    region             = "region4"
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
