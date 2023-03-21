
network_security_group_definition = {
  # This entry is applied to all subnets with no NSG defined
  nsg_default = {
    version            = 1
    resource_group_key = "rg_vnet_identity_norwayeast"
    name               = "default"
  }
  nsg_azure_bastion = {
    version            = 1
    resource_group_key = "rg_vnet_identity_norwayeast"
    name               = "azure-bastion"
    
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
        destination_port_range     = "443"
        source_address_prefix      = "GatewayManager"
        destination_address_prefix = "*"
      },
      {
        name                       = "azure-loadbalancer-in-allow-443",
        priority                   = "130"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "AzureLoadBalancer"
        destination_address_prefix = "*"
      },
      {
        name                       = "bastion-host-communication-in-allow-8080-5071",
        priority                   = "140"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_ranges    = ["8080", "5071"]
        source_address_prefix      = "VirtualNetwork"
        destination_address_prefix = "*"
      },
      {
        name                       = "bastion-vnet-out-allow-22",
        priority                   = "100"
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
        priority                   = "110"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "3389"
        source_address_prefix      = "*"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "bastion-cloud-out-allow-443",
        priority                   = "120"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "AzureCloud"
      },
      {
        name                       = "bastion-communication-out-allow-8080-5071",
        priority                   = "130"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_ranges    = ["8080", "5071"]
        source_address_prefix      = "*"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "bastion-session-information-out-allow-80",
        priority                   = "140"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "Internet"
      }
    ]
  }
  nsg_jumpbox = {
    version            = 1
    resource_group_key = "rg_vnet_identity_norwayeast"
    name               = "jumpbox"
  }
  nsg_private_endpoints = {
    version            = 1
    resource_group_key = "rg_vnet_identity_norwayeast"
    name               = "private-endpoints"
  }
}
