module "github" {
  for_each            = { for x in var.list_of_github_repo : x.repo_name => x }
  source              = "./modules"
  repo_name           = each.value.repo_name
  description         = each.value.description
  private             = each.value.private
  homepage_url        = each.value.homepage_url
  default_branch_name = each.value.default_branch_name
  topics              = each.value.topics
}