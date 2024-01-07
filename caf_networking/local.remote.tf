locals {
  remote = {
    azuread_apps = try(var.remote_resources_to_merge.azuread_apps, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].azuread_apps, {}), try(data.terraform_remote_state.remote[key].outputs.objects[key].aad_apps, {}))
    } : {}
    azuread_applications = try(var.remote_resources_to_merge.azuread_applications, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].azuread_applications, {}))
    } : {}
    azuread_groups = try(var.remote_resources_to_merge.azuread_groups, true) ? merge(
      tomap({ "launchpad" = try(data.terraform_remote_state.remote[var.landingzone.global_settings_key].outputs.launchpad_identities["launchpad"].azuread_groups, {}) }),
      {
        for key, value in try(var.landingzone.tfstates, {}) : key => merge(
          try(data.terraform_remote_state.remote[key].outputs.objects[key].azuread_groups, {})
        )
      }
    ) : {}
    azuread_service_principals = try(var.remote_resources_to_merge.azuread_service_principals, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].azuread_service_principals, {}))
    } : {}
    azuread_users = try(var.remote_resources_to_merge.azuread_users, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].azuread_users, {}))
    } : {}
    aks_clusters = try(var.remote_resources_to_merge.aks_clusters, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].aks_clusters, {}))
    } : {}
    app_config = try(var.remote_resources_to_merge.app_config, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].app_config, {}))
    } : {}
    app_service_environments = try(var.remote_resources_to_merge.app_service_environments, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].app_service_environments, {}))
    } : {}
    app_service_environments_v3 = try(var.remote_resources_to_merge.app_service_environments_v3, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].app_service_environments_v3, {}))
    } : {}
    app_service_plans = try(var.remote_resources_to_merge.app_service_plans, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].app_service_plans, {}))
    } : {}
    app_services = try(var.remote_resources_to_merge.app_services, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].app_services, {}))
    } : {}
    application_security_groups = try(var.remote_resources_to_merge.application_security_groups, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].application_security_groups, {}))
    } : {}
    application_gateway_applications = try(var.remote_resources_to_merge.application_gateway_applications, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].application_gateway_applications, {}))
    } : {}
    application_gateway_waf_policies = try(var.remote_resources_to_merge.application_gateway_waf_policies, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].application_gateway_waf_policies, {}))
    } : {}
    application_gateways = try(var.remote_resources_to_merge.application_gateways, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].application_gateways, {}))
    } : {}
    application_gateway_platforms = try(var.remote_resources_to_merge.application_gateway_platforms, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].application_gateway_platforms, {}))
    } : {}
    application_gateway_applications_v1 = try(var.remote_resources_to_merge.application_gateway_applications_v1, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].application_gateway_applications_v1, {}))
    } : {}
    availability_sets = try(var.remote_resources_to_merge.availability_sets, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].availability_sets, {}))
    } : {}
    azuread_users = try(var.remote_resources_to_merge.azuread_users, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].azuread_users, {}))
    } : {}
    azurerm_firewall_policies = try(var.remote_resources_to_merge.azurerm_firewall_policies, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].azurerm_firewall_policies, {}))
    } : {}
    azurerm_firewalls = try(var.remote_resources_to_merge.azurerm_firewalls, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].azurerm_firewalls, {}))
    } : {}
    container_registry = try(var.remote_resources_to_merge.container_registry, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].azure_container_registries, {}))
    } : {}
    databricks_workspaces = try(var.remote_resources_to_merge.databricks_workspaces, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].databricks_workspaces, {}))
    } : {}
    ddos_services = try(var.remote_resources_to_merge.ddos_services, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].ddos_services, {}))
    } : {}
    cosmos_dbs = try(var.remote_resources_to_merge.cosmos_dbs, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].cosmos_dbs, {}))
    } : {}
    disk_encryption_sets = try(var.remote_resources_to_merge.disk_encryption_sets, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].disk_encryption_sets, {}))
    } : {}
    dedicated_hosts = try(var.remote_resources_to_merge.dedicated_hosts, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].dedicated_hosts, {}))
    } : {}
    dedicated_host_groups = try(var.remote_resources_to_merge.dedicated_host_groups, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].dedicated_host_groups, {}))
    } : {}
    dns_zones = try(var.remote_resources_to_merge.dns_zones, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].dns_zones, {}))
    } : {}
    domain_name_registrations = try(var.remote_resources_to_merge.domain_name_registrations, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].domain_name_registrations, {}))
    } : {}
    event_hub_namespaces = try(var.remote_resources_to_merge.event_hub_namespaces, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].event_hub_namespaces, {}))
    } : {}
    express_route_circuit_authorizations = try(var.remote_resources_to_merge.express_route_circuit_authorizations, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].express_route_circuit_authorizations, {}))
    } : {}
    express_route_circuits = try(var.remote_resources_to_merge.express_route_circuits, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].express_route_circuits, {}))
    } : {}
    express_route_circuit_peerings = try(var.remote_resources_to_merge.express_route_circuit_peerings, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].express_route_circuit_peerings, {}))
    } : {}
    front_door_waf_policies = try(var.remote_resources_to_merge.front_door_waf_policies, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].front_door_waf_policies, {}))
    } : {}
    integration_service_environment = try(var.remote_resources_to_merge.integration_service_environment, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].integration_service_environment, {}))
    } : {}
    keyvault_certificates = try(var.remote_resources_to_merge.keyvault_certificates, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].keyvault_certificates, {}))
    } : {}
    keyvault_certificate_requests = try(var.remote_resources_to_merge.keyvault_certificate_requests, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].keyvault_certificate_requests, {}))
    } : {}
    keyvault_keys = try(var.remote_resources_to_merge.keyvault_keys, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].keyvault_keys, {}))
    } : {}
    keyvaults = try(var.remote_resources_to_merge.keyvaults, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].keyvaults, {}))
    } : {}
    lb = try(var.remote_resources_to_merge.lb, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].lb, {}))
    } : {}
    lb_backend_address_pool = try(var.remote_resources_to_merge.lb_backend_address_pool, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].lb_backend_address_pool, {}))
    } : {}
    logic_app_integration_account = try(var.remote_resources_to_merge.logic_app_integration_account, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].logic_app_integration_account, {}))
    } : {}
    logic_app_workflow = try(var.remote_resources_to_merge.logic_app_workflow, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].logic_app_workflow, {}))
    } : {}
    machine_learning_workspaces = try(var.remote_resources_to_merge.machine_learning_workspaces, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].machine_learning_workspaces, {}))
    } : {}
    managed_identities = merge(
      tomap({ "launchpad" = try(data.terraform_remote_state.remote[var.landingzone.global_settings_key].outputs.launchpad_identities["launchpad"].managed_identities, {}) }),
      try(var.remote_resources_to_merge.try, true) ? {
        for key, value in try(var.landingzone.tfstates, {}) : key => merge(
          try(data.terraform_remote_state.remote[key].outputs.objects[key]. : {}managed_identities, {})
        )
      }
    )
    signalr_services = try(var.remote_resources_to_merge.signalr_services, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].signalr_services, {}))
    } : {}
    mssql_databases = try(var.remote_resources_to_merge.mssql_databases, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].mssql_databases, {}))
    } : {}
    mssql_elastic_pools = try(var.remote_resources_to_merge.mssql_elastic_pools, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].mssql_elastic_pools, {}))
    } : {}
    mssql_managed_databases = try(var.remote_resources_to_merge.mssql_managed_databases, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].mssql_managed_databases, {}))
    } : {}
    mssql_managed_instances = try(var.remote_resources_to_merge.mssql_managed_instances, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].mssql_managed_instances, {}))
    } : {}
    mssql_managed_instances_secondary = try(var.remote_resources_to_merge.mssql_managed_instances_secondary, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].mssql_managed_instances_secondary, {}))
    } : {}
    mssql_servers = try(var.remote_resources_to_merge.mssql_servers, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].mssql_servers, {}))
    } : {}
    mysql_servers = try(var.remote_resources_to_merge.mysql_servers, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].mysql_servers, {}))
    } : {}
    nat_gateways = try(var.remote_resources_to_merge.nat_gateways, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].nat_gateways, {}))
    } : {}
    network_security_groups = try(var.remote_resources_to_merge.network_security_groups, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].network_security_groups, {}))
    } : {}
    network_watchers = try(var.remote_resources_to_merge.network_watchers, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].network_watchers, {}))
    } : {}
    postgresql_servers = try(var.remote_resources_to_merge.postgresql_servers, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].postgresql_servers, {}))
    } : {}
    postgresql_flexible_servers = try(var.remote_resources_to_merge.postgresql_flexible_servers, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].postgresql_flexible_servers, {}))
    } : {}
    private_dns = try(var.remote_resources_to_merge.private_dns, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].private_dns, {}))
    } : {}
    private_dns_resolvers = try(var.remote_resources_to_merge.private_dns_resolvers, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].private_dns_resolvers, {}))
    } : {}
    private_dns_resolver_inbound_endpoints = try(var.remote_resources_to_merge.private_dns_resolver_inbound_endpoints, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].private_dns_resolver_inbound_endpoints, {}))
    } : {}
    private_dns_resolver_outbound_endpoints = try(var.remote_resources_to_merge.private_dns_resolver_outbound_endpoints, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].private_dns_resolver_outbound_endpoints, {}))
    } : {}
    private_dns_resolver_dns_forwarding_rulesets = try(var.remote_resources_to_merge.private_dns_resolver_dns_forwarding_rulesets, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].private_dns_resolver_dns_forwarding_rulesets, {}))
    } : {}
    proximity_placement_groups = try(var.remote_resources_to_merge.proximity_placement_groups, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].proximity_placement_groups, {}))
    } : {}
    public_ip_addresses = try(var.remote_resources_to_merge.public_ip_addresses, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].public_ip_addresses, {}))
    } : {}
    public_ip_prefixes = try(var.remote_resources_to_merge.public_ip_prefixes, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].public_ip_prefixes, {}))
    } : {}
    recovery_vaults = try(var.remote_resources_to_merge.recovery_vaults, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].recovery_vaults, {}))
    } : {}
    resource_groups = try(var.remote_resources_to_merge.resource_groups, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].resource_groups, {}))
    } : {}
    sentinel_watchlists = try(var.remote_resources_to_merge.sentinel_watchlists, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].sentinel_watchlists, {}))
    } : {}
    servicebus_namespaces = try(var.remote_resources_to_merge.servicebus_namespaces, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].servicebus_namespaces, {}))
    } : {}
    servicebus_topics = try(var.remote_resources_to_merge.servicebus_topics, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].servicebus_topics, {}))
    } : {}
    servicebus_queues = try(var.remote_resources_to_merge.servicebus_queues, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].servicebus_queues, {}))
    } : {}
    storage_accounts = try(var.remote_resources_to_merge.storage_accounts, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].storage_accounts, {}))
    } : {}
    storage_containers = try(var.remote_resources_to_merge.storage_containers, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].storage_containers, {}))
    } : {}
    subscriptions = try(var.remote_resources_to_merge.subscriptions, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].subscriptions, {}))
    } : {}
    synapse_workspaces = try(var.remote_resources_to_merge.synapse_workspaces, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].synapse_workspaces, {}))
    } : {}
    virtual_hub_connections = try(var.remote_resources_to_merge.virtual_hub_connections, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].virtual_hub_connections, {}))
    } : {}
    virtual_hub_route_tables = try(var.remote_resources_to_merge.virtual_hub_route_tables, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].virtual_hub_route_table, {}))
    } : {}
    virtual_hubs = try(var.remote_resources_to_merge.virtual_hubs, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].virtual_hubs, {}))
    } : {}
    virtual_machines = try(var.remote_resources_to_merge.virtual_machines, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].virtual_machines, {}))
    } : {}
    virtual_subnets = try(var.remote_resources_to_merge.virtual_subnets, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].virtual_subnets, {}))
    } : {}
    virtual_wans = try(var.remote_resources_to_merge.virtual_wans, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].virtual_wans, {}))
    } : {}
    vnets = try(var.remote_resources_to_merge.vnets, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].vnets, {}))
    } : {}
    vpn_sites = try(var.remote_resources_to_merge.vpn_sites, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].vpn_sites, {}))
    } : {}
    vpn_gateway_connections = try(var.remote_resources_to_merge.vpn_gateway_connections, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].vpn_gateway_connections, {}))
    } : {}
    vmware_private_clouds = try(var.remote_resources_to_merge.vmware_private_clouds, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].vmware_private_clouds, {}))
    } : {}
    vmware_clusters = try(var.remote_resources_to_merge.vmware_clusters, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].vmware_clusters, {}))
    } : {}
    vmware_express_route_authorizations = try(var.remote_resources_to_merge.vmware_express_route_authorizations, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].vmware_express_route_authorizations, {}))
    } : {}
    wvd_host_pools = try(var.remote_resources_to_merge.wvd_host_pools, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].wvd_host_pools, {}))
    } : {}
    wvd_application_groups = try(var.remote_resources_to_merge.wvd_application_groups, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].wvd_application_groups, {}))
    } : {}
    wvd_workspaces = try(var.remote_resources_to_merge.wvd_workspaces, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].wvd_workspaces, {}))
    } : {}
    image_definitions = try(var.remote_resources_to_merge.image_definitions, true) ? {
      for key, value in try(var.landingzone.tfstates, {}) : key => merge(try(data.terraform_remote_state.remote[key].outputs.objects[key].image_definitions, {}))
    } : {}
  }

}
