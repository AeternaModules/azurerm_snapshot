output "snapshots_id" {
  description = "Map of id values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.id if v.id != null && length(v.id) > 0 }
}
output "snapshots_create_option" {
  description = "Map of create_option values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.create_option if v.create_option != null && length(v.create_option) > 0 }
}
output "snapshots_disk_access_id" {
  description = "Map of disk_access_id values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.disk_access_id if v.disk_access_id != null && length(v.disk_access_id) > 0 }
}
output "snapshots_disk_size_gb" {
  description = "Map of disk_size_gb values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.disk_size_gb if v.disk_size_gb != null }
}
output "snapshots_encryption_settings" {
  description = "Map of encryption_settings values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.encryption_settings if v.encryption_settings != null && length(v.encryption_settings) > 0 }
}
output "snapshots_incremental_enabled" {
  description = "Map of incremental_enabled values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.incremental_enabled if v.incremental_enabled != null }
}
output "snapshots_location" {
  description = "Map of location values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.location if v.location != null && length(v.location) > 0 }
}
output "snapshots_name" {
  description = "Map of name values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.name if v.name != null && length(v.name) > 0 }
}
output "snapshots_network_access_policy" {
  description = "Map of network_access_policy values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.network_access_policy if v.network_access_policy != null && length(v.network_access_policy) > 0 }
}
output "snapshots_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.public_network_access_enabled if v.public_network_access_enabled != null }
}
output "snapshots_resource_group_name" {
  description = "Map of resource_group_name values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "snapshots_source_resource_id" {
  description = "Map of source_resource_id values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.source_resource_id if v.source_resource_id != null && length(v.source_resource_id) > 0 }
}
output "snapshots_source_uri" {
  description = "Map of source_uri values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.source_uri if v.source_uri != null && length(v.source_uri) > 0 }
}
output "snapshots_storage_account_id" {
  description = "Map of storage_account_id values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.storage_account_id if v.storage_account_id != null && length(v.storage_account_id) > 0 }
}
output "snapshots_tags" {
  description = "Map of tags values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "snapshots_trusted_launch_enabled" {
  description = "Map of trusted_launch_enabled values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.trusted_launch_enabled if v.trusted_launch_enabled != null }
}

