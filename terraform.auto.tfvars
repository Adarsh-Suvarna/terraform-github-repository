list_of_github_repo = [
  {
    repo_name             = "terraform-test-01"
    description           = "Creates a repository"
    private               = false
    default_branch_name   = "dev"
    gitignore_template    = "Terraform"
    license_template      = ""
    additional_push_users = ["adarshasuvarna"]
    status_checks_strict  = true
  },
  {
    repo_name             = "terraform-test-02"
    description           = "Creates a repository"
    private               = false
    default_branch_name   = "master"
    gitignore_template    = "Terraform"
    license_template      = ""
    additional_push_users = ["adarshasuvarna"]
    status_checks_strict  = false
  }
]