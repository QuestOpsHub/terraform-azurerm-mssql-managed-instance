#------------------------
# MSSQL Managed Instance
#------------------------
output "name" {
  description = "The SQL Managed Instance Name."
  value       = azurerm_mssql_managed_instance.mssql_managed_instance.name
}

output "id" {
  description = "The SQL Managed Instance ID."
  value       = azurerm_mssql_managed_instance.mssql_managed_instance.id
}

output "dns_zone" {
  description = "The Dns Zone where the SQL Managed Instance is located."
  value       = azurerm_mssql_managed_instance.mssql_managed_instance.dns_zone
}

output "fqdn" {
  description = "The fully qualified domain name of the Azure Managed SQL Instance"
  value       = azurerm_mssql_managed_instance.mssql_managed_instance.fqdn
}