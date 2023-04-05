resource "github_repository" "main" {
  name                   = var.repo_name
  description            = var.description
  homepage_url           = var.homepage_url
  visibility             = var.private ? "private" : "public"
  archived               = var.archived
  topics                 = var.topics
  has_issues             = var.has_issues
  has_downloads          = var.has_downloads
  has_discussions        = var.has_discussions
  has_projects           = var.has_projects
  has_wiki               = var.has_wiki
  is_template            = var.is_template
  delete_branch_on_merge = var.delete_branch_on_merge

  dynamic "template" {
    for_each = var.template != null ? [var.template] : []
    content {
      owner      = template.value.owner
      repository = template.value.repository
    }
  }
}

resource "github_branch" "main" {
  repository = github_repository.main.name
  branch     = var.default_branch_name
}

resource "github_branch_default" "main" {
  repository = github_repository.main.name
  branch     = github_branch.main.branch
}