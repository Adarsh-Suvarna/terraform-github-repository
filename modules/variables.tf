variable "repo_name" {
  description = "The name of the repository"
  type        = string
}

variable "description" {
  description = "A description of the repository"
  type        = string
}

variable "homepage_url" {
  description = "URL of a page describing the project"
  default     = ""
  type        = string
}

variable "private" {
  description = "Set to true to create a private repository. Repositories are created as private by default"
  default     = true
  type        = bool
}

variable "archived" {
  description = "Specifies if the repository should be archived"
  default     = false
  type        = bool
}

variable "topics" {
  description = "The list of topics for the repository"
  default     = []
  type        = list(string)
}

variable "has_issues" {
  description = "Set to false to disable the GitHub Issues features on the repository."
  default     = true
  type        = bool
}

variable "has_downloads" {
  description = "Set to true to enable the (deprecated) downloads features on the repository."
  default     = true
  type        = bool
}

variable "has_discussions" {
  description = "Set to true to enable GitHub Discussions on the repository."
  default     = false
  type        = bool
}

variable "has_projects" {
  description = "Set to true to enable the GitHub Projects features on the repository."
  default     = false
  type        = bool
}

variable "has_wiki" {
  description = "Set to true to enable the GitHub Wiki features on the repository."
  default     = false
  type        = bool
}

variable "is_template" {
  description = "Tell GitHub that this is a template repository"
  default     = false
  type        = bool
}

variable "delete_branch_on_merge" {
  description = "Delete branches upon merge"
  default     = true
  type        = bool
}

variable "template" {
  description = "Template to use for creating the repo"
  default     = null
  type = object({
    owner      = string
    repository = string
  })
}