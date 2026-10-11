variable "sourcerepo_repository_iam_members" {
  description = <<EOT
Map of sourcerepo_repository_iam_members, attributes below
Required:
    - member
    - repository
    - role
Optional:
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    member     = string
    repository = string
    role       = string
    project    = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

