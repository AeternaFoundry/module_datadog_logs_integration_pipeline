output "logs_integration_pipelines_id" {
  description = "Map of id values across all logs_integration_pipelines, keyed the same as var.logs_integration_pipelines except keys with no id are omitted"
  value       = { for k, v in datadog_logs_integration_pipeline.logs_integration_pipelines : k => v.id if v.id != null && length(v.id) > 0 }
}
output "logs_integration_pipelines_is_enabled" {
  description = "Map of is_enabled values across all logs_integration_pipelines, keyed the same as var.logs_integration_pipelines except keys with no is_enabled are omitted"
  value       = { for k, v in datadog_logs_integration_pipeline.logs_integration_pipelines : k => v.is_enabled if v.is_enabled != null }
}

