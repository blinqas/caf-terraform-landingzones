
#
# Definition of the networking security groups
#
network_security_group_definition = {
  # This entry is applied to all subnets with no NSG defined
  empty_nsg = {
    version            = 1
    resource_group_key = "lz_sbcaas_rg_norwayeast"
    name               = "empty_nsg-norwayeast"

    /*
    flow_logs = {
      version             = 2
      enabled             = true
      network_watcher_key = "lz_sbcaas_nwwatcher_norwayeast"
      lz_key              = "bs-prod-203-lz-sbcaas-shared-services"

      storage_account = {
        storage_account_destination = "all_regions"
        retention = {
          enabled = true
          days    = 30
        }
      }
      traffic_analytics = {
        enabled                             = true
        log_analytics_workspace_destination = "ops_logs_rg2"
        interval_in_minutes                 = "10"
      }
    }
    diagnostic_profiles = {
      nsg = {
        definition_key   = "network_security_group"
        destination_type = "storage"
        destination_key  = "all_regions"
      }
      operations = {
        name             = "operations"
        definition_key   = "network_security_group"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
      }
    }
    */

    nsg = []
  }

  azure_bastion_nsg = {
    version            = 1
    resource_group_key = "lz_sbcaas_rg_norwayeast"
    name               = "azure_bastion_nsg-norwayeast"

    /*
    # flow_logs block is optionnal
    flow_logs = {
      version             = 2
      enabled             = true
      network_watcher_key = "lz_sbcaas_nwwatcher_norwayeast"
      lz_key              = "bs-prod-203-lz-sbcaas-shared-services"

      storage_account = {
        storage_account_destination = "all_regions"
        retention = {
          enabled = true
          days    = 30
        }
      }
      traffic_analytics = {
        enabled                             = true
        log_analytics_workspace_destination = "ops_logs_rg2"
        interval_in_minutes                 = "10"
      }
    }
    diagnostic_profiles = {
      nsg = {
        definition_key   = "network_security_group"
        destination_type = "storage"
        destination_key  = "all_regions"
      }
      operations = {
        name             = "operations"
        definition_key   = "network_security_group"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
      }
    }
    */

    nsg = [
      {
        name                       = "bastion-in-allow",
        priority                   = "100"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      },
      {
        name                       = "bastion-control-in-allow-443",
        priority                   = "120"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "135"
        source_address_prefix      = "GatewayManager"
        destination_address_prefix = "*"
      },
      {
        name                       = "Kerberos-password-change",
        priority                   = "121"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "4443"
        source_address_prefix      = "GatewayManager"
        destination_address_prefix = "*"
      },
      {
        name                       = "bastion-vnet-out-allow-22",
        priority                   = "103"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "*"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "bastion-vnet-out-allow-3389",
        priority                   = "101"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "3389"
        source_address_prefix      = "*"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "bastion-azure-out-allow",
        priority                   = "120"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "AzureCloud"
      }
    ]
  }

  application_gateway = {
    version            = 1
    resource_group_key = "lz_sbcaas_rg_norwayeast"
    name               = "application_gateway-norwayeast"

    /*
    diagnostic_profiles = {
      nsg = {
        definition_key   = "network_security_group"
        destination_type = "storage"
        destination_key  = "all_regions"
      }
      operations = {
        name             = "operations"
        definition_key   = "network_security_group"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
      }
    }

    flow_logs = {
      version             = 2
      enabled             = true
      network_watcher_key = "lz_sbcaas_nwwatcher_norwayeast"
      lz_key              = "bs-prod-203-lz-sbcaas-shared-services"

      storage_account = {
        storage_account_destination = "all_regions"
        retention = {
          enabled = true
          days    = 30
        }
      }
      traffic_analytics = {
        enabled                             = true
        log_analytics_workspace_destination = "ops_logs_rg2"
        interval_in_minutes                 = "10"
      }
    }
    */

    nsg = [
      {
        name                       = "Inbound-HTTP",
        priority                   = "120"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "80-82"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      },
      {
        name                       = "Inbound-HTTPs",
        priority                   = "130"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      },
      {
        name                       = "Inbound-AGW",
        priority                   = "140"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "65200-65535"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      },
    ]
  }

  api_management = {
    version            = 1
    resource_group_key = "lz_sbcaas_rg_norwayeast"
    name               = "api_management-norwayeast"

    /*
    diagnostic_profiles = {
      nsg = {
        definition_key   = "network_security_group"
        destination_type = "storage"
        destination_key  = "all_regions"
      }
      operations = {
        name             = "operations"
        definition_key   = "network_security_group"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
      }
    }
    flow_logs = {
      version             = 2
      enabled             = true
      network_watcher_key = "lz_sbcaas_nwwatcher_norwayeast"
      lz_key              = "bs-prod-203-lz-sbcaas-shared-services"

      storage_account = {
        storage_account_destination = "all_regions"
        retention = {
          enabled = true
          days    = 30
        }
      }
      traffic_analytics = {
        enabled                             = true
        log_analytics_workspace_destination = "ops_logs_rg2"
        interval_in_minutes                 = "10"
      }
    }
    */

    nsg = [
      {
        name                       = "Inbound-APIM",
        priority                   = "100"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "3443"
        source_address_prefix      = "ApiManagement"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "Inbound-Redis",
        priority                   = "110"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "6381-6383"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "Inbound-LoadBalancer",
        priority                   = "120"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "AzureLoadBalancer"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "Outbound-StorageHttp",
        priority                   = "100"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "Storage"
      },
      {
        name                       = "Outbound-StorageHttps",
        priority                   = "110"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "Storage"
      },
      {
        name                       = "Outbound-AADHttp",
        priority                   = "120"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "AzureActiveDirectory"
      },
      {
        name                       = "Outbound-AADHttps",
        priority                   = "130"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "AzureActiveDirectory"
      },
      {
        name                       = "Outbound-SQL",
        priority                   = "140"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "1433"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "SQL"
      },
      {
        name                       = "Outbound-EventHub",
        priority                   = "150"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "5671-5672"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "EventHub"
      },
      {
        name                       = "Outbound-EventHubHttps",
        priority                   = "160"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "EventHub"
      },
      {
        name                       = "Outbound-FileShareGit",
        priority                   = "170"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "445"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "Storage"
      },
      {
        name                       = "Outbound-Health",
        priority                   = "180"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "1886"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "INTERNET"
      },
      {
        name                       = "Outbound-Monitor",
        priority                   = "190"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "AzureMonitor"
      },
      {
        name                       = "Outbound-MoSMTP1itor",
        priority                   = "200"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "25"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "INTERNET"
      },
      {
        name                       = "Outbound-SMTP2",
        priority                   = "210"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "587"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "INTERNET"
      },
      {
        name                       = "Outbound-SMTP3",
        priority                   = "220"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "25028"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "INTERNET"
      },
      {
        name                       = "Outbound-Redis",
        priority                   = "230"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "6381-6383"
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "VirtualNetwork"
      },
    ]
  }

  jumpbox = {
    version            = 1
    resource_group_key = "lz_sbcaas_rg_norwayeast"
    name               = "jumpbox-norwayeast"

    /*
    diagnostic_profiles = {
      nsg = {
        definition_key   = "network_security_group"
        destination_type = "storage"
        destination_key  = "all_regions"
      }
      operations = {
        name             = "operations"
        definition_key   = "network_security_group"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
      }
    }
    flow_logs = {
      version = 2
      enabled = true

      network_watcher_key = "lz_sbcaas_nwwatcher_norwayeast"
      lz_key              = "bs-prod-203-lz-sbcaas-shared-services"

      storage_account = {
        storage_account_destination = "all_regions"
        retention = {
          enabled = true
          days    = 30
        }
      }
      traffic_analytics = {
        enabled                             = true
        log_analytics_workspace_destination = "ops_logs_rg2"
        interval_in_minutes                 = "10"
      }
    }
    */

    nsg = [
      {
        name                       = "ssh-inbound-22",
        priority                   = "200"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "*"
        destination_address_prefix = "VirtualNetwork"
      },
    ]
  }

  public_sip = {
    version            = 1
    resource_group_key = "lz_sbcaas_rg_norwayeast"
    name               = "public-sip-norwayeast"

    /*
    flow_logs = {
      version = 2
      enabled = true

      network_watcher_key = "lz_sbcaas_nwwatcher_norwayeast"
      lz_key              = "bs-prod-203-lz-sbcaas-shared-services"

      storage_account = {
        storage_account_destination = "all_regions"
        retention = {
          enabled = true
          days    = 30
        }
      }
      traffic_analytics = {
        enabled                             = true
        log_analytics_workspace_destination = "ops_logs_rg2"
        interval_in_minutes                 = "10"
      }
    }

    diagnostic_profiles = {
      nsg = {
        definition_key   = "network_security_group"
        destination_type = "storage"
        destination_key  = "all_regions"
      }
      operations = {
        name             = "operations"
        definition_key   = "network_security_group"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
      }
    }
    */

    nsg = [
      {
        name                       = "AzureBastion-ssh-22",
        priority                   = "200"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "10.1.0.0/26"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "AzureBastion-https-443",
        priority                   = "201"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "10.1.0.0/26"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "HTK-OAM",
        priority                   = "202"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_ranges    = ["22", "443"]
        source_address_prefix      = "195.1.148.243/32"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "AzureTrafficManager",
        priority                   = "205"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "5061"
        source_address_prefix      = "AzureTrafficManager"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "Microsoft-Online-PSTN-Gateway-tls-5062",
        priority                   = "210"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "5062"
        source_address_prefixes    = ["52.112.0.0/14", "52.120.0.0/14"]
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "Telnyx-tls-5061",
        priority                   = "215"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "5061"
        source_address_prefixes    = ["192.76.120.128/26", "192.76.120.192/27", "185.246.41.0/26", "103.115.244.0/26"]
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "Unifon-tcp-5060",
        priority                   = "220"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "5060"
        source_address_prefixes    = ["194.6.238.0/24","193.36.178.0/24"]
        destination_address_prefix = "VirtualNetwork"
      }
    ]
  }

  public_media = {
    version            = 1
    resource_group_key = "lz_sbcaas_rg_norwayeast"
    name               = "public-media-norwayeast"

    /*
    flow_logs = {
      version = 2
      enabled = true

      network_watcher_key = "lz_sbcaas_nwwatcher_norwayeast"
      lz_key              = "bs-prod-203-lz-sbcaas-shared-services"

      storage_account = {
        storage_account_destination = "all_regions"
        retention = {
          enabled = true
          days    = 30
        }
      }
      traffic_analytics = {
        enabled                             = true
        log_analytics_workspace_destination = "ops_logs_rg2"
        interval_in_minutes                 = "10"
      }
    }

    diagnostic_profiles = {
      nsg = {
        definition_key   = "network_security_group"
        destination_type = "storage"
        destination_key  = "all_regions"
      }
      operations = {
        name             = "operations"
        definition_key   = "network_security_group"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
      }
    }
    */

    nsg = [
      {
        name                       = "Allow_All_Media",
        priority                   = "200"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "udp"
        source_port_range          = "*"
        destination_port_range     = "58000-59999"
        source_address_prefix      = "*"
        destination_address_prefix = "VirtualNetwork"
      },
    ]
  }

  private_sip = {
    version            = 1
    resource_group_key = "lz_sbcaas_rg_norwayeast"
    name               = "private-sip-norwayeast"

    /*
    flow_logs = {
      version = 2
      enabled = true

      network_watcher_key = "lz_sbcaas_nwwatcher_norwayeast"
      lz_key              = "bs-prod-203-lz-sbcaas-shared-services"

      storage_account = {
        storage_account_destination = "all_regions"
        retention = {
          enabled = true
          days    = 30
        }
      }
      traffic_analytics = {
        enabled                             = true
        log_analytics_workspace_destination = "ops_logs_rg2"
        interval_in_minutes                 = "10"
      }
    }

    diagnostic_profiles = {
      nsg = {
        definition_key   = "network_security_group"
        destination_type = "storage"
        destination_key  = "all_regions"
      }
      operations = {
        name             = "operations"
        definition_key   = "network_security_group"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
      }
    }
    */

    nsg = [
      {
        name                       = "AzureTrafficManager",
        priority                   = "205"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "5061"
        source_address_prefix      = "AzureTrafficManager"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "Telenor-IPT-Partner-SIP-5060",
        priority                   = "215"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "5060"
        source_address_prefixes    = ["148.122.250.150/32", "148.122.99.150/32", "148.122.96.150/32"]
        destination_address_prefix = "VirtualNetwork"
      }
    ]
  }

  private_media = {
    version            = 1
    resource_group_key = "lz_sbcaas_rg_norwayeast"
    name               = "private-media-norwayeast"

    /*
    flow_logs = {
      version = 2
      enabled = true

      network_watcher_key = "lz_sbcaas_nwwatcher_norwayeast"
      lz_key              = "bs-prod-203-lz-sbcaas-shared-services"

      storage_account = {
        storage_account_destination = "all_regions"
        retention = {
          enabled = true
          days    = 30
        }
      }
      traffic_analytics = {
        enabled                             = true
        log_analytics_workspace_destination = "ops_logs_rg2"
        interval_in_minutes                 = "10"
      }
    }

    diagnostic_profiles = {
      nsg = {
        definition_key   = "network_security_group"
        destination_type = "storage"
        destination_key  = "all_regions"
      }
      operations = {
        name             = "operations"
        definition_key   = "network_security_group"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
      }
    }
    */

    nsg = [
      {
        name                       = "Telenor_Allow_Media",
        priority                   = "200"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "udp"
        source_port_range          = "*"
        destination_port_range     = "58000-59999"
        source_address_prefixes    = ["148.122.250.0/24", "148.122.99.0/24", "148.122.96.0/24"]
        destination_address_prefix = "VirtualNetwork"
      },
    ]
  }

}
