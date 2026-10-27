output "group_lookup_id" {
  description = "Map of id values across all group_lookup, keyed the same as var.group_lookup"
  value       = { for k, v in data.azuredevops_group.group_lookup : k => v.id }
}
output "group_lookup_descriptor" {
  description = "Map of descriptor values across all group_lookup, keyed the same as var.group_lookup"
  value       = { for k, v in data.azuredevops_group.group_lookup : k => v.descriptor }
}
output "group_lookup_group_id" {
  description = "Map of group_id values across all group_lookup, keyed the same as var.group_lookup"
  value       = { for k, v in data.azuredevops_group.group_lookup : k => v.group_id }
}
output "group_lookup_name" {
  description = "Map of name values across all group_lookup, keyed the same as var.group_lookup"
  value       = { for k, v in data.azuredevops_group.group_lookup : k => v.name }
}
output "group_lookup_origin" {
  description = "Map of origin values across all group_lookup, keyed the same as var.group_lookup"
  value       = { for k, v in data.azuredevops_group.group_lookup : k => v.origin }
}
output "group_lookup_origin_id" {
  description = "Map of origin_id values across all group_lookup, keyed the same as var.group_lookup"
  value       = { for k, v in data.azuredevops_group.group_lookup : k => v.origin_id }
}
output "group_lookup_project_id" {
  description = "Map of project_id values across all group_lookup, keyed the same as var.group_lookup"
  value       = { for k, v in data.azuredevops_group.group_lookup : k => v.project_id }
}

