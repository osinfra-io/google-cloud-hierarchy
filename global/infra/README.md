# Terraform Global Infrastructure Documentation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.54.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_cloud_identity_group.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_identity_group) | resource |
| [google_cloud_identity_group_membership.managers](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_identity_group_membership) | resource |
| [google_cloud_identity_group_membership.members](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_identity_group_membership) | resource |
| [google_cloud_identity_group_membership.owners](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_identity_group_membership) | resource |
| [google_folder.environment](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_folder.service](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_folder.team](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_organization_iam_member.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_customer_id"></a> [customer\_id](#input\_customer\_id) | The unique customer ID assigned to you when you signed up for Google Workspace or Cloud Identity. You can look up this ID in your Admin console | `string` | n/a | yes |
| <a name="input_folder_services"></a> [folder\_services](#input\_folder\_services) | A map of folder services to create | <pre>map(object({<br>    display_name = string<br>    environments = list(string)<br>    parent       = string<br>  }))</pre> | n/a | yes |
| <a name="input_folder_teams"></a> [folder\_teams](#input\_folder\_teams) | A map of folder teams to create | <pre>map(object({<br>    display_name = string<br>  }))</pre> | n/a | yes |
| <a name="input_identity_groups"></a> [identity\_groups](#input\_identity\_groups) | A map of identity groups to create | <pre>map(object({<br>    description  = string<br>    display_name = string<br>    managers     = list(string)<br>    members      = list(string)<br>    owners       = list(string)<br>    roles        = list(string)<br>  }))</pre> | n/a | yes |
| <a name="input_organization_id"></a> [organization\_id](#input\_organization\_id) | The organization ID to create the hierarchy under | `string` | n/a | yes |
| <a name="input_primary_domain"></a> [primary\_domain](#input\_primary\_domain) | The main domain associated with your Google Workspace account. By default, your users get a username at this domain | `string` | `"osinfra.io"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
