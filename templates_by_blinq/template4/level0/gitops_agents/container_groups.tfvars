container_groups = {
  alz = {
    containers = {
      rover_alz = {
        cpu = 3
        environment_variables = {
          AGENT_NAME   = "rover-alz"
          LABELS       = "rover-alz"
          LABELS       = "platform"
          ROVER_RUNNER = true
          URL          = "https://github.com/alzas/azlz-alz"
        }
        image  = "aztfmod/rover-agent:1.3.6-2212.011747-preview-github"
        memory = 3
        name   = "rover-alz"
        ports = {
          ssh = {
            port     = 22
            protocol = "TCP"
          }
        }
        secure_variables_from_command = {
          AGENT_TOKEN = "gh api --method POST -H 'Accept: application/vnd.github.v3+json' /repos/alzas/azlz-alz/actions/runners/registration-token | jq -r ' {value: .token}'"
        }
      }
    }
    ip_address_type = "Private"
    name            = "rover-alz"
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
