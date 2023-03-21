custom_landing_zones = {

  es-security = {
    display_name               = "Security"
    parent_management_group_id = "es-platform"
    archetype_config = {
      archetype_id = "platform_security"
      parameters   = {}
      access_control = {
        "Contributor" = {
          "azuread_groups" = {
            lz_key        = "launchpad"
            attribute_key = "id"
            resource_keys = ["security"]
          }
        }
      }
    }
    subscriptions = {
      "security" = {
        lz_key = "subscriptions"
        key    = "security"
      }
    }

    subscription_ids = []
  }

  es-landing-zone-a1 = {
    display_name               = "A1-Apps"
    parent_management_group_id = "es-landing-zones"
    archetype_config = {
      archetype_id   = "landingzone_online"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}

    subscription_ids = ["0f8df592-5664-49f1-ac92-0513b1afbfe8"]
  }

  es-landing-zone-a2 = {
    display_name               = "A2-SBCaaS"
    parent_management_group_id = "es-landing-zones"
    archetype_config = {
      archetype_id   = "landingzone_online"
      parameters     = {}
      access_control = {}
    }
    subscriptions    = {}
    subscription_ids = ["26fa8950-d742-4940-bfcd-56d8586b11b3"]
  }

}
