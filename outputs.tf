output "stream_analytics_output_servicebus_topics" {
  description = "All stream_analytics_output_servicebus_topic resources"
  value       = azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics
  sensitive   = true
}
output "stream_analytics_output_servicebus_topics_authentication_mode" {
  description = "List of authentication_mode values across all stream_analytics_output_servicebus_topics"
  value       = [for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : v.authentication_mode]
}
output "stream_analytics_output_servicebus_topics_name" {
  description = "List of name values across all stream_analytics_output_servicebus_topics"
  value       = [for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : v.name]
}
output "stream_analytics_output_servicebus_topics_property_columns" {
  description = "List of property_columns values across all stream_analytics_output_servicebus_topics"
  value       = [for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : v.property_columns]
}
output "stream_analytics_output_servicebus_topics_resource_group_name" {
  description = "List of resource_group_name values across all stream_analytics_output_servicebus_topics"
  value       = [for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : v.resource_group_name]
}
output "stream_analytics_output_servicebus_topics_serialization" {
  description = "List of serialization values across all stream_analytics_output_servicebus_topics"
  value       = [for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : v.serialization]
}
output "stream_analytics_output_servicebus_topics_servicebus_namespace" {
  description = "List of servicebus_namespace values across all stream_analytics_output_servicebus_topics"
  value       = [for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : v.servicebus_namespace]
}
output "stream_analytics_output_servicebus_topics_shared_access_policy_key" {
  description = "List of shared_access_policy_key values across all stream_analytics_output_servicebus_topics"
  value       = [for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : v.shared_access_policy_key]
  sensitive   = true
}
output "stream_analytics_output_servicebus_topics_shared_access_policy_name" {
  description = "List of shared_access_policy_name values across all stream_analytics_output_servicebus_topics"
  value       = [for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : v.shared_access_policy_name]
}
output "stream_analytics_output_servicebus_topics_stream_analytics_job_name" {
  description = "List of stream_analytics_job_name values across all stream_analytics_output_servicebus_topics"
  value       = [for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : v.stream_analytics_job_name]
}
output "stream_analytics_output_servicebus_topics_system_property_columns" {
  description = "List of system_property_columns values across all stream_analytics_output_servicebus_topics"
  value       = [for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : v.system_property_columns]
}
output "stream_analytics_output_servicebus_topics_topic_name" {
  description = "List of topic_name values across all stream_analytics_output_servicebus_topics"
  value       = [for k, v in azurerm_stream_analytics_output_servicebus_topic.stream_analytics_output_servicebus_topics : v.topic_name]
}

