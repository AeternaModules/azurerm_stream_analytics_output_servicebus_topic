output "stream_analytics_output_servicebus_topics_id" {
  description = "Map of id values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.id if v.id != null && length(v.id) > 0 }
}
output "stream_analytics_output_servicebus_topics_authentication_mode" {
  description = "Map of authentication_mode values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.authentication_mode if v.authentication_mode != null && length(v.authentication_mode) > 0 }
}
output "stream_analytics_output_servicebus_topics_name" {
  description = "Map of name values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.name if v.name != null && length(v.name) > 0 }
}
output "stream_analytics_output_servicebus_topics_property_columns" {
  description = "Map of property_columns values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.property_columns if v.property_columns != null && length(v.property_columns) > 0 }
}
output "stream_analytics_output_servicebus_topics_resource_group_name" {
  description = "Map of resource_group_name values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "stream_analytics_output_servicebus_topics_serialization" {
  description = "Map of serialization values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => one(v.serialization) if v.serialization != null && length(v.serialization) > 0 }
}
output "stream_analytics_output_servicebus_topics_servicebus_namespace" {
  description = "Map of servicebus_namespace values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.servicebus_namespace if v.servicebus_namespace != null && length(v.servicebus_namespace) > 0 }
}
output "stream_analytics_output_servicebus_topics_shared_access_policy_key" {
  description = "Map of shared_access_policy_key values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.shared_access_policy_key if v.shared_access_policy_key != null && length(v.shared_access_policy_key) > 0 }
  sensitive   = true
}
output "stream_analytics_output_servicebus_topics_shared_access_policy_name" {
  description = "Map of shared_access_policy_name values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.shared_access_policy_name if v.shared_access_policy_name != null && length(v.shared_access_policy_name) > 0 }
}
output "stream_analytics_output_servicebus_topics_stream_analytics_job_name" {
  description = "Map of stream_analytics_job_name values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.stream_analytics_job_name if v.stream_analytics_job_name != null && length(v.stream_analytics_job_name) > 0 }
}
output "stream_analytics_output_servicebus_topics_system_property_columns" {
  description = "Map of system_property_columns values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.system_property_columns if v.system_property_columns != null && length(v.system_property_columns) > 0 }
}
output "stream_analytics_output_servicebus_topics_topic_name" {
  description = "Map of topic_name values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.topic_name if v.topic_name != null && length(v.topic_name) > 0 }
}

