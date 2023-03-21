dns_zone_records = {
  southeastasia = {
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
        southeastasia_z1 = {
          name = "southeastasia-z1"
          ttl  = 1
          resource_id = {
            public_ip_address = {
              lz_key = "vm_sbc005a"
              key = "pip_sip1_sbc005a"
            }
          }
        }
        southeastasia_z2 = {
          name = "southeastasia-z2"
          ttl  = 1
          resource_id = {
            public_ip_address = {
              lz_key = "vm_sbc005b"
              key = "pip_sip1_sbc005b"
            }
          }
        }
        sbc005a = {
          name = "sbc005a"
          ttl  = 1
          resource_id = {
            public_ip_address = {
              lz_key = "vm_sbc005a"
              key = "pip_sip1_sbc005a"
            }
          }
        }
        sbc005b = {
          name = "sbc005b"
          ttl  = 1
          resource_id = {
            public_ip_address = {
              lz_key = "vm_sbc005b"
              key = "pip_sip1_sbc005b"
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
