resource "azurerm_resource_group" "resource_group" {
  name     = var.name
  location = var.location
  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}
resource "azurerm_log_analytics_workspace" "central_workspace" {
  name                = "${var.name}-workspace"
  location            = "${azurerm_resource_group.resource_group.location}"
  resource_group_name = "${azurerm_resource_group.resource_group.name}"
  sku                 = "PerGB2018"
  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}