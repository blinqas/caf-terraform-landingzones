dns_zones = {

  sbcaas_cloud = {
    name               = "sbcaas.cloud" // Set as empty for CI. this will creation a random_domain_name.com
    resource_group_key = "dns_zone_sbcaas_cloud"

    # You can create dns records using the following nested structure
    records = {
      /*a = {
        www1 = {
          name    = "www1"
          records = ["10.10.1.1", "172.10.2.2"]
          #resource_id = {
          #  public_ip_address = {
          #    key = "example_pip1_re1"
          #  }
          #}
        }
      }
      */
    } //cname */
  }   //records
}     //dns_zone1

