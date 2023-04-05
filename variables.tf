variable "list_of_github_repo" {
  description = ""
  type = list(object({
    repo_name           = string
    description         = string
    private             = bool
    homepage_url        = string
    default_branch_name = string
    topics              = list(string)
    gitignore_template  = string
    license_template    = string
  }))
  default = []
}