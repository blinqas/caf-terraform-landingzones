variable "backend_type" {
  default     = "azurerm"
  description = "Set the terraform remote backend provider."
  validation {
    condition     = contains(["azurerm", "remote", "local"], var.backend_type)
    error_message = "Only azurerm, remote and local are supported at that time."
  }
}
