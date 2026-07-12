output "snapshots_id" {
  description = "Map of id values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.id }
}
output "snapshots_create_option" {
  description = "Map of create_option values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.create_option }
}
output "snapshots_disk_access_id" {
  description = "Map of disk_access_id values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.disk_access_id }
}
output "snapshots_disk_size_gb" {
  description = "Map of disk_size_gb values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.disk_size_gb }
}
output "snapshots_encryption_settings" {
  description = "Map of encryption_settings values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.encryption_settings }
}
output "snapshots_incremental_enabled" {
  description = "Map of incremental_enabled values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.incremental_enabled }
}
output "snapshots_location" {
  description = "Map of location values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.location }
}
output "snapshots_name" {
  description = "Map of name values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.name }
}
output "snapshots_network_access_policy" {
  description = "Map of network_access_policy values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.network_access_policy }
}
output "snapshots_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.public_network_access_enabled }
}
output "snapshots_resource_group_name" {
  description = "Map of resource_group_name values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.resource_group_name }
}
output "snapshots_source_resource_id" {
  description = "Map of source_resource_id values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.source_resource_id }
}
output "snapshots_source_uri" {
  description = "Map of source_uri values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.source_uri }
}
output "snapshots_storage_account_id" {
  description = "Map of storage_account_id values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.storage_account_id }
}
output "snapshots_tags" {
  description = "Map of tags values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.tags }
}
output "snapshots_trusted_launch_enabled" {
  description = "Map of trusted_launch_enabled values across all snapshots, keyed the same as var.snapshots"
  value       = { for k, v in azurerm_snapshot.snapshots : k => v.trusted_launch_enabled }
}

