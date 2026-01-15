#------------------------
# MSSQL Managed Instance
#------------------------
output "id" {
  value = azurerm_mssql_managed_instance.mssql_managed_instance.id
}

output "fqdn" {
  value = azurerm_mssql_managed_instance.mssql_managed_instance.fqdn
}

output "identity" {
  description = "An identity block"
  value       = azurerm_mssql_managed_instance.mssql_managed_instance.identity
}

#-----------------------
# Security Alert Policy
#-----------------------
output "security_alert_policy" {
  value = azurerm_mssql_managed_instance_security_alert_policy.security_alert_policy
}