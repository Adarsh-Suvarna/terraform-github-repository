module "repository" {
  source             = "./modules"
  name               = "terraform-github-repository-01"
  license_template   = "apache-2.0"
  gitignore_template = "Terraform"
}