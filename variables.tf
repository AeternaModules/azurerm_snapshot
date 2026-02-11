variable "snapshots" {
  description = <<EOT
Map of snapshots, attributes below
Required:
    - create_option
    - location
    - name
    - resource_group_name
Optional:
    - disk_access_id
    - disk_size_gb
    - incremental_enabled
    - network_access_policy
    - public_network_access_enabled
    - source_resource_id
    - source_uri
    - storage_account_id
    - tags
    - encryption_settings (block):
        - disk_encryption_key (required, block):
            - secret_url (required)
            - source_vault_id (required)
        - key_encryption_key (optional, block):
            - key_url (required)
            - source_vault_id (required)
EOT

  type = map(object({
    create_option                 = string
    location                      = string
    name                          = string
    resource_group_name           = string
    disk_access_id                = optional(string)
    disk_size_gb                  = optional(number)
    incremental_enabled           = optional(bool)   # Default: false
    network_access_policy         = optional(string) # Default: "AllowAll"
    public_network_access_enabled = optional(bool)   # Default: true
    source_resource_id            = optional(string)
    source_uri                    = optional(string)
    storage_account_id            = optional(string)
    tags                          = optional(map(string))
    encryption_settings = optional(object({
      disk_encryption_key = object({
        secret_url      = string
        source_vault_id = string
      })
      key_encryption_key = optional(object({
        key_url         = string
        source_vault_id = string
      }))
    }))
  }))
}

