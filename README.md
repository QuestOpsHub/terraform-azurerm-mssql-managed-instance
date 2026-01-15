## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.13 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=4.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_mssql_managed_instance.mssql_managed_instance](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_managed_instance) | resource |
| [azurerm_mssql_managed_instance_security_alert_policy.security_alert_policy](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_managed_instance_security_alert_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_administrator_login"></a> [administrator\_login](#input\_administrator\_login) | (Optional) The administrator login name for the new SQL Managed Instance. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_administrator_login_password"></a> [administrator\_login\_password](#input\_administrator\_login\_password) | (Optional) The password associated with the administrator\_login user. | `string` | `null` | no |
| <a name="input_collation"></a> [collation](#input\_collation) | (Optional) Specifies how the SQL Managed Instance will be collated. Default value is SQL\_Latin1\_General\_CP1\_CI\_AS. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_disabled_alerts"></a> [disabled\_alerts](#input\_disabled\_alerts) | (Optional) Specifies an array of alerts that are disabled. Possible values are Sql\_Injection, Sql\_Injection\_Vulnerability, Access\_Anomaly, Data\_Exfiltration, Unsafe\_Action and Brute\_Force. | `list(string)` | `[]` | no |
| <a name="input_dns_zone_partner_id"></a> [dns\_zone\_partner\_id](#input\_dns\_zone\_partner\_id) | (Optional) The ID of the SQL Managed Instance which will share the DNS zone. This is a prerequisite for creating an azurerm\_sql\_managed\_instance\_failover\_group. Setting this after creation forces a new resource to be created. | `string` | `null` | no |
| <a name="input_email_account_admins_enabled"></a> [email\_account\_admins\_enabled](#input\_email\_account\_admins\_enabled) | (Optional) Boolean flag which specifies if the alert is sent to the account administrators or not. Defaults to false. | `bool` | `false` | no |
| <a name="input_email_addresses"></a> [email\_addresses](#input\_email\_addresses) | (Optional) Specifies an array of email addresses to which the alert is sent. | `list(string)` | `[]` | no |
| <a name="input_enable_security_alert_policy"></a> [enable\_security\_alert\_policy](#input\_enable\_security\_alert\_policy) | (Required) Additional parameter added to check whether the Security Alert Policy needs to be enabled | `bool` | `false` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | (Optional) Specifies the state of the Security Alert Policy, whether it is enabled or disabled. Possible values are true, false. | `bool` | `false` | no |
| <a name="input_identity"></a> [identity](#input\_identity) | (Optional) An identity block | `any` | `{}` | no |
| <a name="input_license_type"></a> [license\_type](#input\_license\_type) | (Required) What type of license the Managed Instance will use. Possible values are LicenseIncluded and BasePrice. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | (Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_maintenance_configuration_name"></a> [maintenance\_configuration\_name](#input\_maintenance\_configuration\_name) | (Optional) The name of the Public Maintenance Configuration window to apply to the SQL Managed Instance. Valid values include SQL\_Default or an Azure Location in the format SQL\_{Location}\_MI\_{Size}(for example SQL\_EastUS\_MI\_1). Defaults to SQL\_Default. | `string` | `"SQL_Default"` | no |
| <a name="input_minimum_tls_version"></a> [minimum\_tls\_version](#input\_minimum\_tls\_version) | (Optional) The Minimum TLS Version. Default value is 1.2 Valid values include 1.0, 1.1, 1.2. | `string` | `"1.2"` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) The name of the SQL Managed Instance. This needs to be globally unique within Azure. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_proxy_override"></a> [proxy\_override](#input\_proxy\_override) | (Optional) Specifies how the SQL Managed Instance will be accessed. Default value is Default. Valid values include Default, Proxy, and Redirect. | `string` | `"Default"` | no |
| <a name="input_public_data_endpoint_enabled"></a> [public\_data\_endpoint\_enabled](#input\_public\_data\_endpoint\_enabled) | (Optional) Is the public data endpoint enabled? Default value is false. | `bool` | `false` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) The name of the resource group in which to create the SQL Managed Instance. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_retention_days"></a> [retention\_days](#input\_retention\_days) | (Optional) Specifies the number of days to keep in the Threat Detection audit logs. Defaults to 0. | `string` | `"0"` | no |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | (Required) Specifies the SKU Name for the SQL Managed Instance. Valid values include GP\_Gen4, GP\_Gen5, GP\_Gen8IM, GP\_Gen8IH, BC\_Gen4, BC\_Gen5, BC\_Gen8IM or BC\_Gen8IH. | `string` | n/a | yes |
| <a name="input_storage_account_access_key"></a> [storage\_account\_access\_key](#input\_storage\_account\_access\_key) | (Optional) Specifies the identifier key of the Threat Detection audit storage account. This is mandatory when you use storage\_endpoint to specify a storage account blob endpoint. | `string` | `null` | no |
| <a name="input_storage_account_type"></a> [storage\_account\_type](#input\_storage\_account\_type) | (Optional) Specifies the storage account type used to store backups for this database. Changing this forces a new resource to be created. Possible values are GRS, LRS and ZRS. The default value is GRS. | `string` | `"GRS"` | no |
| <a name="input_storage_endpoint"></a> [storage\_endpoint](#input\_storage\_endpoint) | (Optional) Specifies the blob storage endpoint (e.g. https://example.blob.core.windows.net). This blob storage will hold all Threat Detection audit logs. | `string` | `null` | no |
| <a name="input_storage_size_in_gb"></a> [storage\_size\_in\_gb](#input\_storage\_size\_in\_gb) | (Required) Maximum storage space for the SQL Managed instance. This should be a multiple of 32 (GB). | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | (Required) The subnet resource id that the SQL Managed Instance will be associated with. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A mapping of tags to assign to the resource. | `map(any)` | `{}` | no |
| <a name="input_timezone_id"></a> [timezone\_id](#input\_timezone\_id) | (Optional) The TimeZone ID that the SQL Managed Instance will be operating in. Default value is UTC. Changing this forces a new resource to be created. | `string` | `"UTC"` | no |
| <a name="input_vcores"></a> [vcores](#input\_vcores) | (Required) Number of cores that should be assigned to the SQL Managed Instance. Values can be 8, 16, or 24 for Gen4 SKUs, or 4, 8, 16, 24, 32, 40, 64, or 80 for Gen5 SKUs. | `number` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dns_zone"></a> [dns\_zone](#output\_dns\_zone) | The Dns Zone where the SQL Managed Instance is located. |
| <a name="output_fqdn"></a> [fqdn](#output\_fqdn) | The fully qualified domain name of the Azure Managed SQL Instance |
| <a name="output_id"></a> [id](#output\_id) | The SQL Managed Instance ID. |
| <a name="output_name"></a> [name](#output\_name) | The SQL Managed Instance Name. |
