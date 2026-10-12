variable "maintenance_windows" {
  description = <<EOT
Map of maintenance_windows, attributes below
Required:
    - end_time
    - services
    - start_time
Optional:
    - description
EOT

  type = map(object({
    end_time    = string
    services    = set(string)
    start_time  = string
    description = optional(string)
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

