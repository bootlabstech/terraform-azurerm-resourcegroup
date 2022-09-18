resource "azurerm_resource_group" "resource_group" {
  name     = var.name
  location = var.location
}

resource "azurerm_management_lock" "resource-group-lock" {
  name       = "${var.name}-lock"
  scope      = azurerm_resource_group.resource_group.id
  lock_level = var.lock_level
}


