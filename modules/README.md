## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_branch.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch) | resource |
| [github_branch_default.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_default) | resource |
| [github_branch_protection.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection) | resource |   
| [github_repository.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_push_users"></a> [additional\_push\_users](#input\_additional\_push\_users) | The list of Github usernames allowed to push to the protected main branch | `list(string)` | `[]` | no |
| <a name="input_archived"></a> [archived](#input\_archived) | Specifies if the repository should be archived | `bool` | `false` | no |
| <a name="input_default_branch_name"></a> [default\_branch\_name](#input\_default\_branch\_name) | The default branch for the repo. Branch protection settings will be applied to the branch with this name. Currently defaults to `main`. | `string` | `"main"` | no |
| <a name="input_delete_branch_on_merge"></a> [delete\_branch\_on\_merge](#input\_delete\_branch\_on\_merge) | Delete branches upon merge | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | A description of the repository | `string` | n/a | yes |
| <a name="input_gitignore_template"></a> [gitignore\_template](#input\_gitignore\_template) | (Optional) Use the name of the template without the extension. For example, Haskell. Available templates: https://github.com/github/gitignore | `string` | `null` | no |
| <a name="input_has_discussions"></a> [has\_discussions](#input\_has\_discussions) | Set to true to enable GitHub Discussions on the repository. | `bool` | `false` | no |
| <a name="input_has_downloads"></a> [has\_downloads](#input\_has\_downloads) | Set to true to enable the (deprecated) downloads features on the repository. | `bool` | `true` | no |
| <a name="input_has_issues"></a> [has\_issues](#input\_has\_issues) | Set to false to disable the GitHub Issues features on the repository. | `bool` | `true` | no |
| <a name="input_has_projects"></a> [has\_projects](#input\_has\_projects) | Set to true to enable the GitHub Projects features on the repository. | `bool` | `false` | no |
| <a name="input_has_wiki"></a> [has\_wiki](#input\_has\_wiki) | Set to true to enable the GitHub Wiki features on the repository. | `bool` | `false` | no |
| <a name="input_homepage_url"></a> [homepage\_url](#input\_homepage\_url) | URL of a page describing the project | `string` | `""` | no |
| <a name="input_is_template"></a> [is\_template](#input\_is\_template) | Tell GitHub that this is a template repository | `bool` | `false` | no |    
| <a name="input_license_template"></a> [license\_template](#input\_license\_template) | (Optional) Use the name of the template without the extension. For example, 'mit' or 'mpl-2.0'. Available licences: https://github.com/github/choosealicense.com/tree/gh-pages/_licenses | `string` | `null` | no |
| <a name="input_private"></a> [private](#input\_private) | Set to true to create a private repository. Repositories are created as private by default | `bool` | `true` | no |
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | The name of the repository | `string` | n/a | yes |
| <a name="input_status_checks_strict"></a> [status\_checks\_strict](#input\_status\_checks\_strict) | Require branches to be up to date before merging | `bool` | `true` | no |
| <a name="input_template"></a> [template](#input\_template) | Template to use for creating the repo | <pre>object({<br>    owner      = string<br>    repository = string<br>  })</pre> | `null` | no |
| <a name="input_topics"></a> [topics](#input\_topics) | The list of topics for the repository | `list(string)` | `[]` | no |

## Outputs

No outputs.