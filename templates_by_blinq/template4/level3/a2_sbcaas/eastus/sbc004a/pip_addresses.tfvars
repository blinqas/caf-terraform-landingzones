public_ip_addresses = {

  pip_sip1_sbc004a = {
    name = "sip1-sbc004a"
    # lz_key                     = "bs-prod-203-lz-sbcaas-caf-shared-services"
    resource_group_key      = "rg_sbc004a"
    region                  = "region4"
    sku                     = "Standard"
    allocation_method       = "Static"
    ip_version              = "IPv4"
    idle_timeout_in_minutes = 4
    # Whatever you add here will be suffixed with <region>.cloudapp.azure.com,
    domain_name_label = "sip1-sbc004a"
    # reverse_fqdn               = false
    tags = { locked = true }
    # ip_tags                    = { PTR = true }
    public_ip_prefix = {
      lz_key = "pippf_sip_sbc004"
      key    = "pippf_sip_sbc004"
    }
    zones = [1, 2, 3]
  }

  pip_media1_sbc004a = {
    name = "media1-sbc004a"
    # lz_key                     = "bs-prod-203-lz-sbcaas-caf-shared-services"
    resource_group_key      = "rg_sbc004a"
    region                  = "region4"
    sku                     = "Standard"
    allocation_method       = "Static"
    ip_version              = "IPv4"
    idle_timeout_in_minutes = 4
    # Whatever you add here will be suffixed with <region>.cloudapp.azure.com,
    domain_name_label = "media1-sbc004a"
    # reverse_fqdn               = false
    tags = { locked = true }
    # ip_tags                    = { PTR = true }
    public_ip_prefix = {
      lz_key = "pippf_sip_sbc004"
      key    = "pippf_media_sbc004"
    }
    zones = [1, 2, 3]
  }
}

