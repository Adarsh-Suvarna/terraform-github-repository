module "github" {
  source      = "./modules"
  repo_name   = "terraform-test-01"
  description = "Creates a repository."
  private     = false
}