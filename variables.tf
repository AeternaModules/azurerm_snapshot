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
  # --- Unconfirmed validation candidates, derived from azurerm_snapshot's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.SnapshotName] !regexp.MustCompile("^[A-Za-z0-9_-]+$").MatchString(value)
  # path: name
  #   source:    [from validate.SnapshotName] length > 80
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: create_option
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: network_access_policy
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: disk_access_id
  #   source:    [from diskaccesses.ValidateDiskAccessID] !ok
  # path: disk_access_id
  #   source:    [from diskaccesses.ValidateDiskAccessID] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

