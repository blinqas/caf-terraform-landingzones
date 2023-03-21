dns_zone_records = {
  norwayeast = {
    dns_zone = {
      key    = "sbcaas_cloud"
      lz_key = "dns_zone_sbcaas_cloud"
    }
    records = {
      a = {
        ambassaden-de-france = {
          name  = "ambassaden-de-france"
          ttl   = 1
          records = ["217.13.18.229"]
        }
      }
    }
  }
}
