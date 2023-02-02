virtual_hub_connections = {

  # Establish the peering with Virtual Hubs


  lz_sbcaas_vnet_norwayeast = {
    name                      = "lz-sbcaas-vnet-norwayeast"
    internet_security_enabled = false

    virtual_hub = {
      lz_key = "connectivity_vwan_norwayeast"
      key    = "lz_connectivity_vhub_norwayeast"
    }

    vnet = {
      # If the virtual network is stored in another another landing zone, use the following attributes to refer the state file:
      lz_key   = "sbcaas_prod_norwayeast_level3"
      vnet_key = "lz_sbcaas_vnet_norwayeast"
    }

    /*
    routing = {
      route1 = {
        virtual_hub_route_table_key = "routetable1"

        propagated_route_table = {
          virtual_hub_route_table_keys = [
            "routetable1"
          ]
          # ids = [
          #   "/subscriptions/{subscriptionId}/resourceGroups/testRG/providers/Microsoft.Network/virtualHubs/westushub/hubRouteTables/defaultRouteTable"
          # ]
          labels = ["test", "test1"]
        }

        static_vnet_route = {
          egress_internet = {
            name = "egress-internet"
            address_prefixes = [
              "0.0.0.0/0"
            ]


            # Either next_hop or next_hop_ip_address can be used
            next_hop = {
              # lz_key = "" #
              key             = "egress-fw"
              interface_index = 0 # Required.
            }

            # next_hop_ip_address = "192.34.23.11"
          }
        }

      }
    }
    */

  }

}

