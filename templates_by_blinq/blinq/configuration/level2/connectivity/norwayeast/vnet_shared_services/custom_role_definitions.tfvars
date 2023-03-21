custom_role_definitions = {
  landgingzone_extended = {
    name        = "landingzone-networking-private-endpoint-extended"
    useprefix   = "true"
    description = "(prod) Provides additional permissions to create private endpoints with private dns zones for private links."
    permissions = {
      actions = [
        "Microsoft.Network/privateEndpoints/write",
        "Microsoft.Network/privateEndpoints/privateDnsZoneGroups/read",
        "Microsoft.Network/privateEndpoints/privateDnsZoneGroups/write"
      ]
    }
  }
}