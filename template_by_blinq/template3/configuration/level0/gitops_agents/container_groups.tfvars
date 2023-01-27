container_groups = {
  blinq = {
    containers = {
      rover_blinq = {
        cpu = 3
        environment_variables = {
          AGENT_NAME   = "rover-blinq"
          LABELS       = "rover-blinq, platform"
          ROVER_RUNNER = true
          URL          = "https://github.com/blinqas/azlz-selmer"
        }
        image  = "aztfmod/rover-agent:1.3.6-2212.011747-preview-github"
        memory = 3
        name   = "rover-blinq"
        ports = {
          ssh = {
            port     = 22
            protocol = "TCP"
          }
        }
        secure_variables_from_command = {
          AGENT_TOKEN = "gh api --method POST -H 'Accept: application/vnd.github.v3+json' /repos/blinqas/azlz-selmer/actions/runners/registration-token | jq -r ' {value: .token}'"
        }
      }
    }
    ip_address_type = "Private"
    name            = "rover-blinq"
    os_type         = "Linux"
    region          = "region1"
    resource_group = {
      key    = "gitops"
      lz_key = "launchpad"
    }
    restart_policy = "Never"
    subnet_ids = {
      subnet1 = {
        lz_key     = "launchpad"
        subnet_key = "containergroups"
        vnet_key   = "vnet_region1"
      }
    }
  }
}
