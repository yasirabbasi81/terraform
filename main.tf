terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.4.1"
    }
  }

  backend "azurerm" {
    resource_group_name  = "workshop"
    storage_account_name = "terraformworkshop2023"
    container_name       = "state-backend"
    key                  = "iuFIuuwHybzxmkP9ccyaObEB0K4jlPlyD+ruV0NKolQukPglfF7m/pIn8PIrdLUnpa9DXHq87E7J+AStvx9Rfw=="
  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

data "azurerm_client_config" "current" {}