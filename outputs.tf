output "snapshots" {
  description = "All snapshot resources"
  value       = azurerm_snapshot.snapshots
}
output "snapshots_create_option" {
  description = "List of create_option values across all snapshots"
  value       = [for k, v in azurerm_snapshot.snapshots : v.create_option]
}
output "snapshots_disk_access_id" {
  description = "List of disk_access_id values across all snapshots"
  value       = [for k, v in azurerm_snapshot.snapshots : v.disk_access_id]
}
output "snapshots_disk_size_gb" {
  description = "List of disk_size_gb values across all snapshots"
  value       = [for k, v in azurerm_snapshot.snapshots : v.disk_size_gb]
}
output "snapshots_encryption_settings" {
  description = "List of encryption_settings values across all snapshots"
  value       = [for k, v in azurerm_snapshot.snapshots : v.encryption_settings]
}
output "snapshots_incremental_enabled" {
  description = "List of incremental_enabled values across all snapshots"
  value       = [for k, v in azurerm_snapshot.snapshots : v.incremental_enabled]
}
output "snapshots_location" {
  description = "List of location values across all snapshots"
  value       = [for k, v in azurerm_snapshot.snapshots : v.location]
}
output "snapshots_name" {
  description = "List of name values across all snapshots"
  value       = [for k, v in azurerm_snapshot.snapshots : v.name]
}
output "snapshots_network_access_policy" {
  description = "List of network_access_policy values across all snapshots"
  value       = [for k, v in azurerm_snapshot.snapshots : v.network_access_policy]
}
output "snapshots_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all snapshots"
  value       = [for k, v in azurerm_snapshot.snapshots : v.public_network_access_enabled]
}
output "snapshots_resource_group_name" {
  description = "List of resource_group_name values across all snapshots"
  value       = [for k, v in azurerm_snapshot.snapshots : v.resource_group_name]
}
output "snapshots_source_resource_id" {
  description = "List of source_resource_id values across all snapshots"
  value       = [for k, v in azurerm_snapshot.snapshots : v.source_resource_id]
}
output "snapshots_source_uri" {
  description = "List of source_uri values across all snapshots"
  value       = [for k, v in azurerm_snapshot.snapshots : v.source_uri]
}
output "snapshots_storage_account_id" {
  description = "List of storage_account_id values across all snapshots"
  value       = [for k, v in azurerm_snapshot.snapshots : v.storage_account_id]
}
output "snapshots_tags" {
  description = "List of tags values across all snapshots"
  value       = [for k, v in azurerm_snapshot.snapshots : v.tags]
}
output "snapshots_trusted_launch_enabled" {
  description = "List of trusted_launch_enabled values across all snapshots"
  value       = [for k, v in azurerm_snapshot.snapshots : v.trusted_launch_enabled]
}

