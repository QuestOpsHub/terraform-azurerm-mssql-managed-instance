#------------------------
# MSSQL Managed Instance
#------------------------
variable "name" {
  description = "(Required) The name of the SQL Managed Instance. This needs to be globally unique within Azure. Changing this forces a new resource to be created."
  type        = string
}

variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the SQL Managed Instance. Changing this forces a new resource to be created."
  type        = string
}

variable "location" {
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
}

variable "license_type" {
  description = "(Required) What type of license the Managed Instance will use. Possible values are LicenseIncluded and BasePrice."
  type        = string
}

variable "sku_name" {
  description = "(Required) Specifies the SKU Name for the SQL Managed Instance. Valid values include GP_Gen4, GP_Gen5, GP_Gen8IM, GP_Gen8IH, BC_Gen4, BC_Gen5, BC_Gen8IM or BC_Gen8IH."
  type        = string
}

variable "storage_size_in_gb" {
  description = "(Required) Maximum storage space for the SQL Managed instance. This should be a multiple of 32 (GB)."
  type        = string
}

variable "subnet_id" {
  description = "(Required) The subnet resource id that the SQL Managed Instance will be associated with. Changing this forces a new resource to be created."
  type        = string
}

variable "vcores" {
  description = "(Required) Number of cores that should be assigned to the SQL Managed Instance. Values can be 8, 16, or 24 for Gen4 SKUs, or 4, 8, 16, 24, 32, 40, 64, or 80 for Gen5 SKUs."
  type        = number
}

variable "administrator_login" {
  description = "(Optional) The administrator login name for the new SQL Managed Instance. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "administrator_login_password" {
  description = "(Optional) The password associated with the administrator_login user."
  type        = string
  default     = null
}

variable "collation" {
  description = "(Optional) Specifies how the SQL Managed Instance will be collated. Default value is SQL_Latin1_General_CP1_CI_AS. Changing this forces a new resource to be created."
  type        = string
  default     = null
}

variable "dns_zone_partner_id" {
  description = "(Optional) The ID of the SQL Managed Instance which will share the DNS zone. This is a prerequisite for creating an azurerm_sql_managed_instance_failover_group. Setting this after creation forces a new resource to be created."
  type        = string
  default     = null
}

variable "identity" {
  description = "(Optional) An identity block"
  type        = any
  default     = {}
}

variable "maintenance_configuration_name" {
  description = "(Optional) The name of the Public Maintenance Configuration window to apply to the SQL Managed Instance. Valid values include SQL_Default or an Azure Location in the format SQL_{Location}_MI_{Size}(for example SQL_EastUS_MI_1). Defaults to SQL_Default."
  type        = string
  default     = "SQL_Default"
}

variable "minimum_tls_version" {
  description = "(Optional) The Minimum TLS Version. Default value is 1.2 Valid values include 1.0, 1.1, 1.2."
  type        = string
  default     = "1.2"
}

variable "proxy_override" {
  description = "(Optional) Specifies how the SQL Managed Instance will be accessed. Default value is Default. Valid values include Default, Proxy, and Redirect."
  type        = string
  default     = "Default"
}

variable "public_data_endpoint_enabled" {
  description = "(Optional) Is the public data endpoint enabled? Default value is false."
  type        = bool
  default     = false
}

variable "storage_account_type" {
  description = "(Optional) Specifies the storage account type used to store backups for this database. Changing this forces a new resource to be created. Possible values are GRS, LRS and ZRS. The default value is GRS."
  type        = string
  default     = "GRS"
}

variable "timezone_id" {
  description = "(Optional) The TimeZone ID that the SQL Managed Instance will be operating in. Default value is UTC. Changing this forces a new resource to be created."
  type        = string
  default     = "UTC"
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource."
  type        = map(any)
  default     = {}
}

#-----------------------
# Security Alert Policy
#-----------------------
variable "enable_security_alert_policy" {
  description = "(Required) Additional parameter added to check whether the Security Alert Policy needs to be enabled"
  type        = bool
  default     = false
}

variable "disabled_alerts" {
  description = "(Optional) Specifies an array of alerts that are disabled. Possible values are Sql_Injection, Sql_Injection_Vulnerability, Access_Anomaly, Data_Exfiltration, Unsafe_Action and Brute_Force."
  type        = list(string)
  default     = []
}

variable "enabled" {
  description = "(Optional) Specifies the state of the Security Alert Policy, whether it is enabled or disabled. Possible values are true, false."
  type        = bool
  default     = false
}

variable "email_account_admins_enabled" {
  description = "(Optional) Boolean flag which specifies if the alert is sent to the account administrators or not. Defaults to false."
  type        = bool
  default     = false
}

variable "email_addresses" {
  description = "(Optional) Specifies an array of email addresses to which the alert is sent."
  type        = list(string)
  default     = []
}

variable "retention_days" {
  description = "(Optional) Specifies the number of days to keep in the Threat Detection audit logs. Defaults to 0."
  type        = string
  default     = "0"
}

variable "storage_endpoint" {
  description = "(Optional) Specifies the blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs."
  type        = string
  default     = null
}

variable "storage_account_access_key" {
  description = "(Optional) Specifies the identifier key of the Threat Detection audit storage account. This is mandatory when you use storage_endpoint to specify a storage account blob endpoint."
  type        = string
  default     = null
}