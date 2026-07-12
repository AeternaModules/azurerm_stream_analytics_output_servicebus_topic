data "azurerm_key_vault_secret" "shared_access_policy_key" {
  for_each     = { for k, v in var.stream_analytics_output_servicebus_topics : k => v if v.shared_access_policy_key_key_vault_id != null && v.shared_access_policy_key_key_vault_secret_name != null }
  name         = each.value.shared_access_policy_key_key_vault_secret_name
  key_vault_id = each.value.shared_access_policy_key_key_vault_id
}
resource "azurerm_stream_analytics_output_servicebus_topic" "stream_analytics_output_servicebus_topics" {
  for_each = var.stream_analytics_output_servicebus_topics

  name                      = each.value.name
  resource_group_name       = each.value.resource_group_name
  servicebus_namespace      = each.value.servicebus_namespace
  stream_analytics_job_name = each.value.stream_analytics_job_name
  topic_name                = each.value.topic_name
  authentication_mode       = each.value.authentication_mode
  property_columns          = each.value.property_columns
  shared_access_policy_key  = each.value.shared_access_policy_key != null ? each.value.shared_access_policy_key : try(data.azurerm_key_vault_secret.shared_access_policy_key[each.key].value, null)
  shared_access_policy_name = each.value.shared_access_policy_name
  system_property_columns   = each.value.system_property_columns

  serialization {
    encoding        = each.value.serialization.encoding
    field_delimiter = each.value.serialization.field_delimiter
    format          = each.value.serialization.format
    type            = each.value.serialization.type
  }
}

