output "group_lookup_id" {
  description = "Map of id values across all group_lookup, keyed the same as var.group_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_group.group_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_lookup_descriptor" {
  description = "Map of descriptor values across all group_lookup, keyed the same as var.group_lookup except keys with no descriptor are omitted"
  value       = { for k, v in data.azuredevops_group.group_lookup : k => v.descriptor if v.descriptor != null && length(v.descriptor) > 0 }
}
output "group_lookup_group_id" {
  description = "Map of group_id values across all group_lookup, keyed the same as var.group_lookup except keys with no group_id are omitted"
  value       = { for k, v in data.azuredevops_group.group_lookup : k => v.group_id if v.group_id != null && length(v.group_id) > 0 }
}
output "group_lookup_name" {
  description = "Map of name values across all group_lookup, keyed the same as var.group_lookup except keys with no name are omitted"
  value       = { for k, v in data.azuredevops_group.group_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "group_lookup_origin" {
  description = "Map of origin values across all group_lookup, keyed the same as var.group_lookup except keys with no origin are omitted"
  value       = { for k, v in data.azuredevops_group.group_lookup : k => v.origin if v.origin != null && length(v.origin) > 0 }
}
output "group_lookup_origin_id" {
  description = "Map of origin_id values across all group_lookup, keyed the same as var.group_lookup except keys with no origin_id are omitted"
  value       = { for k, v in data.azuredevops_group.group_lookup : k => v.origin_id if v.origin_id != null && length(v.origin_id) > 0 }
}
output "group_lookup_project_id" {
  description = "Map of project_id values across all group_lookup, keyed the same as var.group_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.azuredevops_group.group_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}

