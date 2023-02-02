
#
# Definition of the networking security groups
#
network_security_group_definition = {
  # This entry is applied to all subnets with no NSG defined
  empty_nsg = {
    version            = 1
    resource_group_key = "rg_vnet_a2_sbcaas_eastus"
    name               = "empty-a2-sbcaas-eastus"

    nsg = []
  }

  azure_bastion_nsg = {
    version            = 1
    resource_group_key = "rg_vnet_a2_sbcaas_eastus"
    name               = "azure-bastion-a2-sbcaas-eastus"

    nsg = [
      {
        name                       = "bastion-in-allow",
        priority                   = "100"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
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
        protocol                   = "Tcp"
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
        protocol                   = "Tcp"
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
        protocol                   = "Tcp"
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
        protocol                   = "Tcp"
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
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "AzureCloud"
      }
    ]
  }

  public_sip = {
    version            = 1
    resource_group_key = "rg_vnet_a2_sbcaas_eastus"
    name               = "public-sip-a2-sbcaas-eastus"

    nsg = [
      {
        name                       = "AzureBastion-ssh-22",
        priority                   = "200"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
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
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "10.1.0.0/26"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "AzureTrafficManager",
        priority                   = "205"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
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
        protocol                   = "Tcp"
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
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "5061"
        source_address_prefixes    = ["192.76.120.128/26", "192.76.120.192/27", "185.246.41.0/26", "103.115.244.0/26"]
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "Unifon-Tcp-5060",
        priority                   = "220"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "5060"
        source_address_prefixes    = ["194.6.238.0/24","193.36.178.0/24"]
        destination_address_prefix = "VirtualNetwork"
      }
    ]
  }

  public_media = {
    version            = 1
    resource_group_key = "rg_vnet_a2_sbcaas_eastus"
    name               = "public-media-a2-sbcaas-eastus"

    nsg = [
      {
        name                       = "Allow_All_Media",
        priority                   = "200"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Udp"
        source_port_range          = "*"
        destination_port_range     = "58000-59999"
        source_address_prefix      = "*"
        destination_address_prefix = "VirtualNetwork"
      },
    ]
  }

  private_sip = {
    version            = 1
    resource_group_key = "rg_vnet_a2_sbcaas_eastus"
    name               = "private-sip-a2-sbcaas-eastus"

    nsg = [
      {
        name                       = "AzureTrafficManager",
        priority                   = "205"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
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
    resource_group_key = "rg_vnet_a2_sbcaas_eastus"
    name               = "private-media-a2-sbcaas-eastus"

    nsg = [
      {
        name                       = "Telenor_Allow_Media",
        priority                   = "200"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Udp"
        source_port_range          = "*"
        destination_port_range     = "58000-59999"
        source_address_prefixes    = ["148.122.250.0/24", "148.122.99.0/24", "148.122.96.0/24"]
        destination_address_prefix = "VirtualNetwork"
      },
    ]
  }

}
