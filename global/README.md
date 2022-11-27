# Terraform Global Documentation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.44.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_cloud_identity_group.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_identity_group) | resource |
| [google_cloud_identity_group_membership.managers](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_identity_group_membership) | resource |
| [google_cloud_identity_group_membership.members](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_identity_group_membership) | resource |
| [google_cloud_identity_group_membership.owners](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_identity_group_membership) | resource |
| [google_folder.folder_department](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_folder.folder_system](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_folder.system_1](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_folder.system_2](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_folder.system_3](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_folder.system_4](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_folder.system_5](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_folder.system_6](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_organization_iam_member.billing_admins](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |
| [google_organization_iam_member.billing_users](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |
| [google_organization_iam_member.devops](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |
| [google_organization_iam_member.logging_admins](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |
| [google_organization_iam_member.monitoring_admins](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |
| [google_organization_iam_member.monitoring_viewers](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |
| [google_organization_iam_member.network_admins](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |
| [google_organization_iam_member.organization_admins](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |
| [google_organization_iam_member.security_admins](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_project"></a> [billing\_project](#input\_billing\_project) | The quota project to send in `user_project_override`, used for all requests sent from the provider. If set on a resource that supports sending the resource project, this value will supersede the resource project. This field is ignored if `user_project_override` is set to false or unset | `string` | n/a | yes |
| <a name="input_customer_id"></a> [customer\_id](#input\_customer\_id) | The unique customer ID assigned to you when you signed up for Google Workspace or Cloud Identity. You can look up this ID in your Admin console | `string` | n/a | yes |
| <a name="input_folder_departments"></a> [folder\_departments](#input\_folder\_departments) | Map of the folder names for departments | <pre>map(object({<br>    display_name = string<br>  }))</pre> | n/a | yes |
| <a name="input_folder_environments"></a> [folder\_environments](#input\_folder\_environments) | Map of the folder names environments | <pre>map(object({<br>    display_name = string<br>  }))</pre> | n/a | yes |
| <a name="input_folder_systems"></a> [folder\_systems](#input\_folder\_systems) | Map of the folder names for systems and their parent folder | <pre>map(object({<br>    display_name = string<br>    parent       = string<br>  }))</pre> | n/a | yes |
| <a name="input_identity_groups"></a> [identity\_groups](#input\_identity\_groups) | Map of identity groups to create with their owners, members, managers, and description | <pre>map(object({<br>    description  = string<br>    display_name = string<br>    managers     = set(string)<br>    members      = set(string)<br>    owners       = set(string)<br>  }))</pre> | n/a | yes |
| <a name="input_organization_id"></a> [organization\_id](#input\_organization\_id) | The organization ID to create the hierarchy under | `string` | n/a | yes |
| <a name="input_primary_domain"></a> [primary\_domain](#input\_primary\_domain) | The main domain associated with your Google Workspace account. By default, your users get a username at this domain | `string` | `"osinfra.io"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
