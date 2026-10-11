variable "logs_integration_pipelines" {
  description = <<EOT
Map of logs_integration_pipelines, attributes below
Optional:
    - is_enabled
EOT

  type = map(object({
    is_enabled = optional(bool)
  }))
}

