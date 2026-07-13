variable "stream_analytics_output_servicebus_topics" {
  description = <<EOT
Map of stream_analytics_output_servicebus_topics, attributes below
Required:
    - name
    - resource_group_name
    - servicebus_namespace
    - stream_analytics_job_name
    - topic_name
    - serialization (block):
        - encoding (optional)
        - field_delimiter (optional)
        - format (optional)
        - type (required)
Optional:
    - authentication_mode
    - property_columns
    - shared_access_policy_key
    - shared_access_policy_key_key_vault_id (alternative to shared_access_policy_key - read from Key Vault instead)
    - shared_access_policy_key_key_vault_secret_name (alternative to shared_access_policy_key - read from Key Vault instead)
    - shared_access_policy_name
    - system_property_columns
EOT

  type = map(object({
    name                                           = string
    resource_group_name                            = string
    servicebus_namespace                           = string
    stream_analytics_job_name                      = string
    topic_name                                     = string
    authentication_mode                            = optional(string)
    property_columns                               = optional(list(string))
    shared_access_policy_key                       = optional(string)
    shared_access_policy_key_key_vault_id          = optional(string)
    shared_access_policy_key_key_vault_secret_name = optional(string)
    shared_access_policy_name                      = optional(string)
    system_property_columns                        = optional(map(string))
    serialization = object({
      encoding        = optional(string)
      field_delimiter = optional(string)
      format          = optional(string)
      type            = string
    })
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_stream_analytics_output_servicebus_topic's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: stream_analytics_job_name
  #   condition: length(value) > 0
  #   message:   must not be empty
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
  # path: topic_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: servicebus_namespace
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: shared_access_policy_key
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: shared_access_policy_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: property_columns[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: system_property_columns[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: serialization.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: serialization.field_delimiter
  #   condition: contains([" ", ",", "\t", "|", ";"], value)
  #   message:   must be one of:  , ,, 	, |, ;
  # path: serialization.encoding
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: serialization.format
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: authentication_mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
}

