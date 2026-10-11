resource "datadog_logs_integration_pipeline" "logs_integration_pipelines" {
  for_each = var.logs_integration_pipelines

  is_enabled = each.value.is_enabled
}

