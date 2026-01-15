#------------------------
# MSSQL Managed Instance
#------------------------
resource "azurerm_mssql_managed_instance" "mssql_managed_instance" {
  name                         = var.mssql_managed_instance_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
  license_type                 = var.license_type
  sku_name                     = var.sku_name
  storage_size_in_gb           = var.storage_size_in_gb
  subnet_id                    = var.subnet_id
  vcores                       = var.vcores
  collation                    = try(var.collation, "SQL_Latin1_General_CP1_CI_AS")
  dns_zone_partner_id          = try(var.dns_zone_partner_id, null)

  dynamic "identity" {
    for_each = var.identity.type != null ? [1] : []
    content {
      type         = var.identity.type
      identity_ids = var.identity.type == "UserAssigned" || var.identity.type == "SystemAssigned, UserAssigned" ? var.identity.identity_ids : null
    }
  }

  maintenance_configuration_name = try(var.maintenance_configuration_name, "SQL_Default")
  minimum_tls_version            = try(var.minimum_tls_version, "1.2")
  proxy_override                 = try(var.proxy_override, "Default")
  public_data_endpoint_enabled   = try(var.public_data_endpoint_enabled, false)
  storage_account_type           = try(var.storage_account_type, "GRS")
  timezone_id                    = try(var.timezone_id, "UTC")

  tags = var.tags
  lifecycle {
    ignore_changes = [
      tags["creation_timestamp"],
    ]
  }
}

#-----------------------
# Security Alert Policy
#-----------------------
resource "azurerm_mssql_managed_instance_security_alert_policy" "security_alert_policy" {
  count                        = var.enable_security_alert_policy == true ? 1 : 0
  resource_group_name          = azurerm_mssql_managed_instance.mssql_managed_instance.resource_group_name
  managed_instance_name        = azurerm_mssql_managed_instance.mssql_managed_instance.name
  disabled_alerts              = try(var.disabled_alerts, [])
  enabled                      = try(var.enabled, false)
  email_account_admins_enabled = try(var.email_account_admins_enabled, false)
  email_addresses              = try(var.email_addresses, [])
  retention_days               = try(var.retention_days, "0")
  storage_endpoint             = try(var.storage_endpoint, null)
  storage_account_access_key   = try(var.storage_account_access_key, null)
}