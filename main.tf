resource "azurerm_resource_group" "resource_group" {
  name     = var.name
  location = var.location
  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

# resource "azurerm_management_lock" "resource-group-lock" {
#   name       = "${var.name}-lock"
#   scope      = azurerm_resource_group.resource_group.id
#   lock_level = var.lock_level
#   depends_on = [
#     azurerm_resource_group.resource_group
#   ]
# }



