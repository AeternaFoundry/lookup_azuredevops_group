variable "group_lookup" {
  description = <<EOT
Map of group_lookup, attributes below
Required:
    - name
Optional:
    - project_id
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    name       = string
    project_id = optional(string)
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.group_lookup : (
        length(trimspace(v.name)) > 0
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.group_lookup : (
        v.project_id == null || (length(trimspace(v.project_id)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
}

