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
    incremental_enabled           = optional(bool)
    network_access_policy         = optional(string)
    public_network_access_enabled = optional(bool)
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
  validation {
    condition = alltrue([
      for k, v in var.snapshots : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.snapshots : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.snapshots : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.snapshots : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

