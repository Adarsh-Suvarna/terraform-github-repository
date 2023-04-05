module "github" {
  for_each              = { for x in var.list_of_github_repo : x.repo_name => x }
  source                = "./modules"
  repo_name             = each.value.repo_name
  description           = each.value.description
  private               = each.value.private
  default_branch_name   = each.value.default_branch_name
  gitignore_template    = each.value.gitignore_template
  license_template      = each.value.license_template
  status_checks_strict  = each.value.status_checks_strict
  additional_push_users = each.value.additional_push_users
}