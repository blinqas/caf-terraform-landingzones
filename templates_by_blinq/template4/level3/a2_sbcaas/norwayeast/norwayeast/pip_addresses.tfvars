public_ip_addresses = {

  lz_sbcaas_pip_sip1_norwayeast = {

    name = "sip1-norwayeast"
    # lz_key                     = "bs-prod-203-lz-sbcaas-caf-shared-services"
    resource_group_key      = "lz_sbcaas_rg_norwayeast"
    region                  = "region2"
    sku                     = "Standard"
    allocation_method       = "Static"
    ip_version              = "IPv4"
    idle_timeout_in_minutes = 4
    # Whatever you add here will be suffixed with <region>.cloudapp.azure.com,
    domain_name_label = "sip1-sbcaas-cloud"
    # reverse_fqdn               = false
    tags = { locked = true }
    # ip_tags                    = { PTR = true }
    public_ip_prefix = {
      lz_key = "sbcaas_prod_norwayeast_level3"
      key    = "lz_sbcaas_pippf_sip_norwayeast"
    }
    zones = "Zone-Redundant"

    /*
    diagnostic_profiles = {
      central_logs_region1 = {
        definition_key   = "public_ip_address"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
      }
    }
    */
  }

  lz_sbcaas_pip_sip2_norwayeast = {

    name = "sip2-norwayeast"
    # lz_key                     = "bs-prod-203-lz-sbcaas-caf-shared-services"
    resource_group_key      = "lz_sbcaas_rg_norwayeast"
    region                  = "region2"
    sku                     = "Standard"
    allocation_method       = "Static"
    ip_version              = "IPv4"
    idle_timeout_in_minutes = 4
    # Whatever you add here will be suffixed with <region>.cloudapp.azure.com,
    domain_name_label = "sip2-sbcaas-cloud"
    # reverse_fqdn               = false
    tags = { locked = true }
    # ip_tags                    = { PTR = true }
    public_ip_prefix = {
      lz_key = "sbcaas_prod_norwayeast_level3"
      key    = "lz_sbcaas_pippf_sip_norwayeast"
    }
    zones = "Zone-Redundant"

    /*diagnostic_profiles = {
      central_logs_region1 = {
        definition_key   = "public_ip_address"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
      }
    }
    */
  }

  lz_sbcaas_pip_media1_norwayeast = {

    name = "media1-norwayeast"
    # lz_key                     = "bs-prod-203-lz-sbcaas-caf-shared-services"
    resource_group_key      = "lz_sbcaas_rg_norwayeast"
    region                  = "region2"
    sku                     = "Standard"
    allocation_method       = "Static"
    ip_version              = "IPv4"
    idle_timeout_in_minutes = 4
    # Whatever you add here will be suffixed with <region>.cloudapp.azure.com,
    domain_name_label = "media1-sbcaas-cloud"
    # reverse_fqdn               = false
    tags = { locked = true }
    # ip_tags                    = { PTR = true }
    public_ip_prefix = {
      lz_key = "sbcaas_prod_norwayeast_level3"
      key    = "lz_sbcaas_pippf_media_norwayeast"
    }
    zones = "Zone-Redundant"

    /*
    diagnostic_profiles = {
      central_logs_region1 = {
        definition_key   = "public_ip_address"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
      }
    }
    */
  }

  lz_sbcaas_pip_media2_norwayeast = {

    name = "media2-norwayeast"
    # lz_key                     = "bs-prod-203-lz-sbcaas-caf-shared-services"
    resource_group_key      = "lz_sbcaas_rg_norwayeast"
    region                  = "region2"
    sku                     = "Standard"
    allocation_method       = "Static"
    ip_version              = "IPv4"
    idle_timeout_in_minutes = 4
    # Whatever you add here will be suffixed with <region>.cloudapp.azure.com,
    domain_name_label = "media2-sbcaas-cloud"
    # reverse_fqdn               = false
    tags = { locked = true }
    # ip_tags                    = { PTR = true }
    public_ip_prefix = {
      lz_key = "sbcaas_prod_norwayeast_level3"
      key    = "lz_sbcaas_pippf_media_norwayeast"
    }
    zones = "Zone-Redundant"

    /*
    diagnostic_profiles = {
      central_logs_region1 = {
        definition_key   = "public_ip_address"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
      }
    }
    */
  }

}

