variable "list_of_github_repo" {
  description = ""
  type = list(object({
    repo_name   = string
    description = string
    private     = bool
  }))
  default = []
}