variable "appconfig_deployment_strategies" {
  description = <<EOT
Map of appconfig_deployment_strategies, attributes below
Required:
    - deployment_duration_in_minutes
    - growth_factor
    - name
    - replicate_to
Optional:
    - description
    - final_bake_time_in_minutes
    - growth_type
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    deployment_duration_in_minutes = number
    growth_factor                  = number
    name                           = string
    replicate_to                   = string
    description                    = optional(string)
    final_bake_time_in_minutes     = optional(number)
    growth_type                    = optional(string)
    region                         = optional(string)
    tags                           = optional(map(string))
    tags_all                       = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.appconfig_deployment_strategies : (
        v.deployment_duration_in_minutes >= 0 && v.deployment_duration_in_minutes <= 1440
      )
    ])
    error_message = "must be between 0 and 1440"
  }
  validation {
    condition = alltrue([
      for k, v in var.appconfig_deployment_strategies : (
        v.final_bake_time_in_minutes == null || (v.final_bake_time_in_minutes >= 0 && v.final_bake_time_in_minutes <= 1440)
      )
    ])
    error_message = "must be between 0 and 1440"
  }
  validation {
    condition = alltrue([
      for k, v in var.appconfig_deployment_strategies : (
        v.growth_factor >= 1.0 && v.growth_factor <= 100.0
      )
    ])
    error_message = "must be between 1.0 and 100.0"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

