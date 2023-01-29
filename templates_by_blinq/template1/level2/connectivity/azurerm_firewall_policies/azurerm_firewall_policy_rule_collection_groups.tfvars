azurerm_firewall_policy_rule_collection_groups = {
  root = {
    name        = "firewall-policy-root"
    priority    = 1000
    passthrough = true
    firewall_policy = {
      key = "fw_secure_prod"
    }
    application_rule_collections = {
      azure_firewall_management = {
        name     = "Azure Firewall management"
        action   = "Allow"
        priority = 30001
        rules    = "None"
      }
      azure_management = {
        name     = "Azure management services"
        action   = "Allow"
        priority = 30000
        rules = {
          monitoring = {
            destination_fqdns = [
              "*.monitoring.azure.com",
              "*.ods.opinsights.azure.com",
              "*.oms.opinsights.azure.com",
              "dc.services.visualstudio.com"
            ]
            name = "azure-monitor"
            protocols = {
              https = {
                port = 443
                type = "Https"
              }
            }
            source_addresses = [
              "*"
            ]
          }
          policy = {
            destination_fqdns = [
              "data.policy.core.windows.net",
              "dc.services.visualstudio.com",
              "store.policy.core.windows.net"
            ]
            name = "azure-policy"
            protocols = {
              https = {
                port = 443
                type = "Https"
              }
            }
            source_addresses = [
              "*"
            ]
          }
        }
      }
      gitops = {
        name     = "gitops"
        action   = "Allow"
        priority = 30200
        rules    = "None"
      }
      hashicorp = {
        name     = "Hashicorp"
        action   = "Allow"
        priority = 30300
        rules    = "None"
      }
      packages_linux = {
        name     = "security packages"
        action   = "Allow"
        priority = 30100
        rules = {
          docker = {
            description = "docker package updates"
            destination_fqdns = [
              "download.docker.com"
            ]
            name = "docker"
            protocols = {
              https = {
                port = 443
                type = "Https"
              }
            }
            source_addresses = [
              "*"
            ]
          }
          github = {
            description = "github package updates"
            destination_fqdns = [
              "cli.github.com"
            ]
            name = "github"
            protocols = {
              https = {
                port = 443
                type = "Https"
              }
            }
            source_addresses = [
              "*"
            ]
          }
          google = {
            description = "Google package updates"
            destination_fqdns = [
              "packages.cloud.google.com"
            ]
            name = "google"
            protocols = {
              https = {
                port = 443
                type = "Https"
              }
            }
            source_addresses = [
              "*"
            ]
          }
          kubernetes = {
            description = "kubernetes package updates"
            destination_fqdns = [
              "apt.kubernetes.io"
            ]
            name = "kubernetes"
            protocols = {
              https = {
                port = 443
                type = "Https"
              }
            }
            source_addresses = [
              "*"
            ]
          }
          microsoft = {
            description = "Microsoft package updates"
            destination_fqdns = [
              "packages.microsoft.com"
            ]
            name = "microsoft"
            protocols = {
              https = {
                port = 443
                type = "Https"
              }
            }
            source_addresses = [
              "*"
            ]
          }
          ubuntu = {
            description = "Upstream addresses to get Ubuntu package updates"
            destination_fqdns = [
              "archive.ubuntu.com",
              "azure.archive.ubuntu.com",
              "changelogs.ubuntu.com",
              "security.ubuntu.com"
            ]
            name = "ubuntu"
            protocols = {
              http = {
                port = 80
                type = "Http"
              }
              https = {
                port = 443
                type = "Https"
              }
            }
            source_addresses = [
              "*"
            ]
          }
        }
      }
    }
    network_rule_collections = {
      caf_terraform_lz = {
        name     = "CAF Terraform landing zones"
        action   = "Allow"
        priority = 20001
        rules    = "None"
      }
      services = {
        name     = "services"
        action   = "Allow"
        priority = 20000
        rules = {
          dns = {
            destination_addresses = [
              "168.63.129.16"
            ]
            destination_ports = [
              53
            ]
            name = "dns"
            protocols = [
              "TCP",
              "UDP"
            ]
            source_addresses = [
              "*"
            ]
          }
          ntp = {
            destination_addresses = [
              "*"
            ]
            destination_ports = [
              123
            ]
            name = "ntp"
            protocols = [
              "UDP"
            ]
            source_addresses = [
              "*"
            ]
          }
        }
      }
    }
  }
}