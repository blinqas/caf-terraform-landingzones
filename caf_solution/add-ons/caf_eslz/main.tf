
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.75.0"
    }
  }
  required_version = ">= 1.3.5"
}

provider "azurerm" {
  partner_id = "047b6579-da91-4bea-a9e1-df0fbc86f832"
  # partner identifier for CAF Terraform landing zones.
  features {}
}

provider "azurerm" {
  partner_id = "047b6579-da91-4bea-a9e1-df0fbc86f832"
  alias      = "connectivity"
  features {}
  subscription_id = local.subscription_id_connectivity
  tenant_id       = var.tenant_id
}

provider "azurerm" {
  partner_id = "047b6579-da91-4bea-a9e1-df0fbc86f832"
  alias      = "management"
  features {}
  subscription_id = var.subscription_id_management == null ? data.azurerm_client_config.current.subscription_id : var.subscription_id_management
  tenant_id       = var.tenant_id
}

provider "azurerm" {
  partner_id = "047b6579-da91-4bea-a9e1-df0fbc86f832"
  alias      = "identity"
  features {}
  subscription_id = var.subscription_id_identity == null ? data.azurerm_client_config.current.subscription_id : var.subscription_id_identity
  tenant_id       = var.tenant_id
}

data "azurerm_client_config" "current" {}
