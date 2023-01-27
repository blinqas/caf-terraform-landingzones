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
    display_name               = "A1"
    parent_management_group_id = "es-landing-zones"
    archetype_config = {
      archetype_id   = "landingzone_corp"
      parameters     = {}
      access_control = {}
    }
    subscriptions = {}

    subscription_ids = [
      "2ddb4ed7-acfa-498c-8877-c0e48bdc2375"
    ]
  }

}
