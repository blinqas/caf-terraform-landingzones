# ------------------------ Public IP Prefixes in each region --------------------------------
public_ip_prefixes = {

  pippf_sip_sbc005 = {
    name               = "sip-sbc005"
    resource_group_key = "rg_pippf_sbc005"
    region             = "region5"
    sku                = "Standard"
    zones              = [1,2,3]
    ip_version         = "IPv4"
    prefix_length      = 31
    tags = {
      locked = true
    }
    create_pips = false
  }

  pippf_media_sbc005 = {
    name               = "media-sbc005"
    resource_group_key = "rg_pippf_sbc005"
    region             = "region5"
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
