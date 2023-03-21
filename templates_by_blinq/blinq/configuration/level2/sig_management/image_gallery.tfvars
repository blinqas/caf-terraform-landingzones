shared_image_galleries = {
  sig_management = {
    name               = "sbcaas-norwayeast"
    resource_group_key = "rg_sig_management"
    description        = "Azure Shared Image Gallery for SBCaaS NorwayEast"
  }

}

image_definitions = {
  image1 = {
    name               = "image1"
    gallery_key        = "sig_management"
    resource_group_key = "rg_sig_management"
    os_type            = "Linux"
    publisher          = "blinQ"
    offer              = "WebServer"
    sku                = "2020.1"
  }
}

managed_identities = {
  mi_sig_management = {
    name               = "sig-management"
    resource_group_key = "rg_sig_management"
  }
}

vnets = {
  vnet_build_management = {
    resource_group_key = "rg_sig_management"
    vnet = {
      name          = "build-management"
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
