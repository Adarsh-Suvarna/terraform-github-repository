variable "list_of_github_repo" {
  description = ""
  type = list(object({
    repo_name             = string
    description           = string
    private               = bool
    default_branch_name   = string
    gitignore_template    = string
    license_template      = string
    status_checks_strict  = bool
  }))
  default = []
}