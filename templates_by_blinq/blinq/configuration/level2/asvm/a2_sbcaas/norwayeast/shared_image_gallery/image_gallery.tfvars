shared_image_galleries = {
  gallery1 = {
    name               = "sbcaas-norwayeast"
    resource_group_key = "rg_sig_a2_sbcaas_norwayeast"
    description        = "Azure Shared Image Gallery for SBCaaS NorwayEast"
  }

}

image_definitions = {
  image1 = {
    name               = "image1"
    gallery_key        = "gallery1"
    resource_group_key = "rg_sig_a2_sbcaas_norwayeast"
    os_type            = "Linux"
    publisher          = "MyCompany"
    offer              = "WebServer"
    sku                = "2020.1"
  }
}

managed_identities = {
  example_mi = {
    name               = "example_mi"
    resource_group_key = "rg_sig_a2_sbcaas_norwayeast"
  }
}

vnets = {
  vnet_region1 = {
    resource_group_key = "rg_sig_a2_sbcaas_norwayeast"
    vnet = {
      name          = "buildvnet"
      address_space = ["10.100.100.0/24"]
    }
    subnets = {
      buildsubnet = {
        name = "buildsubnet"
        cidr = ["10.100.100.0/29"]
      }
    }
  }
}
