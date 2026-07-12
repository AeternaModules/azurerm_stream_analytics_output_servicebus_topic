output "stream_analytics_output_servicebus_topics_authentication_mode" {
  description = "Map of authentication_mode values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.authentication_mode }
}
output "stream_analytics_output_servicebus_topics_name" {
  description = "Map of name values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.name }
}
output "stream_analytics_output_servicebus_topics_property_columns" {
  description = "Map of property_columns values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.property_columns }
}
output "stream_analytics_output_servicebus_topics_resource_group_name" {
  description = "Map of resource_group_name values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.resource_group_name }
}
output "stream_analytics_output_servicebus_topics_serialization" {
  description = "Map of serialization values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.serialization }
}
output "stream_analytics_output_servicebus_topics_servicebus_namespace" {
  description = "Map of servicebus_namespace values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.servicebus_namespace }
}
output "stream_analytics_output_servicebus_topics_shared_access_policy_key" {
  description = "Map of shared_access_policy_key values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.shared_access_policy_key }
  sensitive   = true
}
output "stream_analytics_output_servicebus_topics_shared_access_policy_name" {
  description = "Map of shared_access_policy_name values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.shared_access_policy_name }
}
output "stream_analytics_output_servicebus_topics_stream_analytics_job_name" {
  description = "Map of stream_analytics_job_name values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.stream_analytics_job_name }
}
output "stream_analytics_output_servicebus_topics_system_property_columns" {
  description = "Map of system_property_columns values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.system_property_columns }
}
output "stream_analytics_output_servicebus_topics_topic_name" {
  description = "Map of topic_name values across all stream_analytics_output_servicebus_topics, keyed the same as var.stream_analytics_output_servicebus_topics"
  value       = { for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : k => v.topic_name }
}

