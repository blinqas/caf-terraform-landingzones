variable "backend_type" {
  default     = "azurerm"
  description = "Set the terraform remote backend provider."
  validation {
    condition     = contains(["azurerm", "remote", "local"], var.backend_type)
    error_message = "Only azurerm, remote and local are supported at that time."
  }
}

variable "tf_cloud_organization" {
  default     = null
  description = "When user backend_type with remote, set the TFC/TFE organization name."
}

variable "tf_cloud_hostname" {
  default     = "app.terraform.io"
  description = "When user backend_type with remote, set the TFC/TFE hostname."
}