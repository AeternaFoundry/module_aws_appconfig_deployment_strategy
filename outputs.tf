output "appconfig_deployment_strategies_id" {
  description = "Map of id values across all appconfig_deployment_strategies, keyed the same as var.appconfig_deployment_strategies"
  value       = { for k, v in aws_appconfig_deployment_strategy.appconfig_deployment_strategies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appconfig_deployment_strategies_arn" {
  description = "Map of arn values across all appconfig_deployment_strategies, keyed the same as var.appconfig_deployment_strategies"
  value       = { for k, v in aws_appconfig_deployment_strategy.appconfig_deployment_strategies : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "appconfig_deployment_strategies_deployment_duration_in_minutes" {
  description = "Map of deployment_duration_in_minutes values across all appconfig_deployment_strategies, keyed the same as var.appconfig_deployment_strategies"
  value       = { for k, v in aws_appconfig_deployment_strategy.appconfig_deployment_strategies : k => v.deployment_duration_in_minutes if v.deployment_duration_in_minutes != null }
}
output "appconfig_deployment_strategies_description" {
  description = "Map of description values across all appconfig_deployment_strategies, keyed the same as var.appconfig_deployment_strategies"
  value       = { for k, v in aws_appconfig_deployment_strategy.appconfig_deployment_strategies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "appconfig_deployment_strategies_final_bake_time_in_minutes" {
  description = "Map of final_bake_time_in_minutes values across all appconfig_deployment_strategies, keyed the same as var.appconfig_deployment_strategies"
  value       = { for k, v in aws_appconfig_deployment_strategy.appconfig_deployment_strategies : k => v.final_bake_time_in_minutes if v.final_bake_time_in_minutes != null }
}
output "appconfig_deployment_strategies_growth_factor" {
  description = "Map of growth_factor values across all appconfig_deployment_strategies, keyed the same as var.appconfig_deployment_strategies"
  value       = { for k, v in aws_appconfig_deployment_strategy.appconfig_deployment_strategies : k => v.growth_factor if v.growth_factor != null }
}
output "appconfig_deployment_strategies_growth_type" {
  description = "Map of growth_type values across all appconfig_deployment_strategies, keyed the same as var.appconfig_deployment_strategies"
  value       = { for k, v in aws_appconfig_deployment_strategy.appconfig_deployment_strategies : k => v.growth_type if v.growth_type != null && length(v.growth_type) > 0 }
}
output "appconfig_deployment_strategies_name" {
  description = "Map of name values across all appconfig_deployment_strategies, keyed the same as var.appconfig_deployment_strategies"
  value       = { for k, v in aws_appconfig_deployment_strategy.appconfig_deployment_strategies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "appconfig_deployment_strategies_region" {
  description = "Map of region values across all appconfig_deployment_strategies, keyed the same as var.appconfig_deployment_strategies"
  value       = { for k, v in aws_appconfig_deployment_strategy.appconfig_deployment_strategies : k => v.region if v.region != null && length(v.region) > 0 }
}
output "appconfig_deployment_strategies_replicate_to" {
  description = "Map of replicate_to values across all appconfig_deployment_strategies, keyed the same as var.appconfig_deployment_strategies"
  value       = { for k, v in aws_appconfig_deployment_strategy.appconfig_deployment_strategies : k => v.replicate_to if v.replicate_to != null && length(v.replicate_to) > 0 }
}
output "appconfig_deployment_strategies_tags" {
  description = "Map of tags values across all appconfig_deployment_strategies, keyed the same as var.appconfig_deployment_strategies"
  value       = { for k, v in aws_appconfig_deployment_strategy.appconfig_deployment_strategies : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "appconfig_deployment_strategies_tags_all" {
  description = "Map of tags_all values across all appconfig_deployment_strategies, keyed the same as var.appconfig_deployment_strategies"
  value       = { for k, v in aws_appconfig_deployment_strategy.appconfig_deployment_strategies : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

