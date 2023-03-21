dns_zone_records = {
  norwayeast = {
    dns_zone = {
      # name     = "name of an existing dns_zone"
      # resource_group_name = "set the name when the id is provided"
      key    = "sbcaas_cloud"
      lz_key = "connectivity_dns_zone_sbcaas_cloud"
    } //dns_zone

    records = {

      #cname = {
      #  www_fr = {
      #    name   = "www-fr"
      #    record = "www.bing.fr"
      #  }
      #} //cname

      a = {
        norwayeast_z1 = {
          name = "norwayeast-z1"
          ttl  = 1
          resource_id = {
            public_ip_address = {
              key = "lz_sbcaas_pip_sip1_norwayeast"
            }
          }
        }
        norwayeast_z2 = {
          name = "norwayeast-z2"
          ttl  = 1
          resource_id = {
            public_ip_address = {
              key = "lz_sbcaas_pip_sip2_norwayeast"
            }
          }
        }
        sbc002a = {
          name = "sbc002a"
          ttl  = 1
          resource_id = {
            public_ip_address = {
              key = "lz_sbcaas_pip_sip1_norwayeast"
            }
          }
        }
        sbc002b = {
          name = "sbc002b"
          ttl  = 1
          resource_id = {
            public_ip_address = {
              key = "lz_sbcaas_pip_sip2_norwayeast"
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
