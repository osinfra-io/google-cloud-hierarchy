# Terraform Global Infrastructure Documentation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_billing_budget.organization](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/billing_budget) | resource |
| [google_billing_budget.services](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/billing_budget) | resource |
| [google_cloud_identity_group.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_identity_group) | resource |
| [google_cloud_identity_group_membership.managers](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_identity_group_membership) | resource |
| [google_cloud_identity_group_membership.members](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_identity_group_membership) | resource |
| [google_cloud_identity_group_membership.owners](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_identity_group_membership) | resource |
| [google_folder.environment](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_folder.service](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_folder.team](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_folder_iam_policy.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder_iam_policy) | resource |
| [google_organization_iam_member.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |
| [google_iam_policy.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/iam_policy) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_account"></a> [billing\_account](#input\_billing\_account) | The alphanumeric ID of the billing account this project belongs to | `string` | n/a | yes |
| <a name="input_customer_id"></a> [customer\_id](#input\_customer\_id) | The unique customer ID assigned to you when you signed up for Google Workspace or Cloud Identity. You can look up this ID in your Admin console | `string` | n/a | yes |
| <a name="input_default_monthly_budget_amount"></a> [default\_monthly\_budget\_amount](#input\_default\_monthly\_budget\_amount) | The default monthly budget amount in USD | `number` | `50` | no |
| <a name="input_folder_iam_policies"></a> [folder\_iam\_policies](#input\_folder\_iam\_policies) | A map of authoritative IAM policies for the folder, replaces any existing policy already attached | <pre>map(object({<br>    team        = string<br>    service     = string<br>    environment = string<br>    bindings = list(object({<br>      members = list(string)<br>      role    = string<br>    }))<br>  }))</pre> | n/a | yes |
| <a name="input_folder_services"></a> [folder\_services](#input\_folder\_services) | A map of folder services to create | <pre>map(object({<br>    display_name          = string<br>    environments          = list(string)<br>    monthly_budget_amount = optional(number, 10)<br>    parent                = string<br>  }))</pre> | n/a | yes |
| <a name="input_folder_teams"></a> [folder\_teams](#input\_folder\_teams) | A map of folder teams to create | <pre>map(object({<br>    display_name = string<br>  }))</pre> | n/a | yes |
| <a name="input_identity_groups"></a> [identity\_groups](#input\_identity\_groups) | A map of identity groups to create | <pre>map(object({<br>    description  = string<br>    display_name = string<br>    managers     = list(string)<br>    members      = list(string)<br>    owners       = list(string)<br>    roles        = list(string)<br>  }))</pre> | n/a | yes |
| <a name="input_organization_id"></a> [organization\_id](#input\_organization\_id) | The organization ID to create the hierarchy under | `string` | n/a | yes |
| <a name="input_primary_domain"></a> [primary\_domain](#input\_primary\_domain) | The main domain associated with your Google Workspace account. By default, your users get a username at this domain | `string` | `"osinfra.io"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
