packer_build = {
  build1 = {
    packer_working_dir                               = "/tf/caf/configuration/level2/management/shared_image_gallery/packer_files/"
    packer_template_file                             = "build.pkr.hcl"
    packer_var_file                                  = "packer.vars.json"
    secret_prefix                                    = "packer-client-management"
    keyvault_key                                     = "packer_client_management"
    managed_image_name                               = "myImage1"
    build_resource_group_key                         = "rg_build_management" #build in existing resource group instead of temporary rg created by packer
    resource_group_key                               = "rg_sig_management"   #for managed_image_resource_group_name
    os_type                                          = "Linux"
    image_publisher                                  = "Canonical"
    image_offer                                      = "UbuntuServer"
    image_sku                                        = "18.04-LTS"
    location                                         = "norwayeast"
    vm_size                                          = "Standard_A2_v2"
    build_script                                     = "ansible-ping.yml"
    managed_identity_key                             = "mi_sig_management"   #managed identity configured on build VM for permissions to Azure resources during build
    vnet_key                                         = "vnet_build_management" #build in existing vnet/subnet if preferred or for internal builds
    subnet_key                                       = "buildsubnet"  #build in existing vnet/subnet if preferred or for internal builds
    private_virtual_network_with_public_ip           = true           #false for internal builds, needed for example
    managed_image_storage_account_type               = "Standard_LRS" #storage type used during build. Premium_LRS for faster builds, note chosen vm_size needs to support the storage type
    storage_account_type                             = "Standard_LRS" #storage type in shared image gallery
    tag_packer_resources                             = true           #apply tags to the Azure resources created by Packer
    keep_image                                       = false          #source Azure managed image can be deleted once imported into shared image gallery
    shared_gallery_image_version_exclude_from_latest = false
    keep_versions                                    = 2 # number of image versions to keep
    tags = {
      mybuild = "linux"
    }
    shared_image_gallery_destination = {
      gallery_key         = "sig_management"
      image_key           = "image1"
      resource_group_key  = "rg_sig_management"
      replication_regions = ["norwayeast", "westeurope"]
    }
  }
}