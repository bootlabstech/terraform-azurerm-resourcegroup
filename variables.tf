variable "resource_group_name" {
  type = string
}
variable "location" {
  type = string
}
# Keyvault
variable "keyvault_name" {
  type = string
}
variable "sku_name" {
  type    = string
  default = "standard"
}
variable "enabled_for_deployment" {
  type    = bool
  default = true
}
variable "enabled_for_disk_encryption" {
  type    = bool
  default = true
}
variable "enabled_for_template_deployment" {
  type    = bool
  default = true
}
variable "enable_rbac_authorization" {
  type    = bool
  default = false
}
variable "purge_protection_enabled" {
  type    = bool
  default = true
}

variable "public_network_access_enabled" {
  type    = bool
  default = true
}
variable "soft_delete_retention_days" {
  type    = number
  default = 7
}