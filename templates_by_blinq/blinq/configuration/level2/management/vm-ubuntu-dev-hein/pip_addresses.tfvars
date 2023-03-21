public_ip_addresses = {

  pip_vm_ubuntu_dev_hein_norwayeast = {
    name = "ubuntu-dev-hein"
    # lz_key                     = "bs-prod-203-lz-sbcaas-caf-shared-services"
    resource_group_key      = "rg_vm_ubuntu_dev_hein_norwayeast"
    region                  = "region2"
    sku                     = "Standard"
    allocation_method       = "Static"
    ip_version              = "IPv4"
    idle_timeout_in_minutes = 4
    # Whatever you add here will be suffixed with <region>.cloudapp.azure.com,
    domain_name_label = "ubuntu-dev-hein-blinq"
    # reverse_fqdn               = false
    tags = { locked = true }
    # ip_tags                    = { PTR = true }
    public_ip_prefix = {
      lz_key = "pippf_mgmt_norwayeast"
      key    = "pippf_mgmt_norwayeast"
    }
    zones = [1, 2, 3]
  }
}

