dns_zone_records = {
  eastus = {
    dns_zone = {
      # name     = "name of an existing dns_zone"
      # resource_group_name = "set the name when the id is provided"
      key    = "sbcaas_cloud"
      lz_key = "dns_zone_sbcaas_cloud"
    } //dns_zone

    records = {

      #cname = {
      #  www_fr = {
      #    name   = "www-fr"
      #    record = "www.bing.fr"
      #  }
      #} //cname

      a = {
        eastus_z1 = {
          name = "eastus-z1"
          ttl  = 1
          resource_id = {
            public_ip_address = {
              lz_key = "vm_sbc004a"
              key = "pip_sip1_sbc004a"
            }
          }
        }
        eastus_z2 = {
          name = "eastus-z2"
          ttl  = 1
          resource_id = {
            public_ip_address = {
              lz_key = "vm_sbc004b"
              key = "pip_sip1_sbc004b"
            }
          }
        }
        sbc004a = {
          name = "sbc004a"
          ttl  = 1
          resource_id = {
            public_ip_address = {
              lz_key = "vm_sbc004a"
              key = "pip_sip1_sbc004a"
            }
          }
        }
        sbc004b = {
          name = "sbc004b"
          ttl  = 1
          resource_id = {
            public_ip_address = {
              lz_key = "vm_sbc004b"
              key = "pip_sip1_sbc004b"
            }
          }
        }
      } //a
    }   //records
  }     //record1

  #
  # Example to reference an existing dns_zone in the target subscription
  #
  # record2 = {
  #   dns_zone = {
  #     name                = "sfjcnwejcwejvwe.com"
  #     resource_group_name = "example-resources"
  #   }

  #   records = {

  #     cname = {
  #       www_fr = {
  #         name   = "www-fr"
  #         record = "www.bing.fr"
  #       }
  #     } //cname

  #     a = {
  #       dns = {
  #         name = "dns"
  #         records = [
  #           "10.10.1.1", "172.10.2.2"
  #         ]
  #       }
  #     } //a
  #   }   //record2
  # }
}
