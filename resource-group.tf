resource "azurerm_resource_group" "rg" {
  name     = var.RESOURCE_GROUP
  location = "norwayeast"
  tags     = local.common_tags
}