# Google Cloud Platform - Hierarchy

Metaphorically speaking, the [Google Cloud resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy) resembles the file system found in traditional operating systems as a way of organizing and managing entities hierarchically.

## Terraform Documentation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
### Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider_google) | 4.37.0 |

### Modules

No modules.

### Resources

| Name | Type |
|------|------|
| [google_cloud_identity_group.administrative_groups](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_identity_group) | resource |
| [google_folder.department](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_folder.devops](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_folder.devops_testing](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_folder.shared](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_folder.shared_logging](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_folder.shared_observability](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_folder.shared_services](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_folder.shared_terraform](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/folder) | resource |
| [google_organization_iam_member.billing_admins](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |
| [google_organization_iam_member.devops](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |
| [google_organization_iam_member.logging_admins](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |
| [google_organization_iam_member.monitoring_admins](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |
| [google_organization_iam_member.monitoring_viewers](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |
| [google_organization_iam_member.network_admins](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |
| [google_organization_iam_member.organization_admins](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |
| [google_organization_iam_member.security_admins](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_project"></a> [billing_project](#input_billing_project) | The quota project to send in `user_project_override`, used for all requests sent from the provider. If set on a resource that supports sending the resource project, this value will supersede the resource project. This field is ignored if `user_project_override` is set to false or unset | `string` | n/a | yes |
| <a name="input_customer_id"></a> [customer_id](#input_customer_id) | The unique customer ID assigned to you when you signed up for Google Workspace or Cloud Identity. You can look up this ID in your Admin console | `string` | n/a | yes |
| <a name="input_organization_id"></a> [organization_id](#input_organization_id) | The organization ID to create the hierarchy under | `string` | n/a | yes |
| <a name="input_primary_domain"></a> [primary_domain](#input_primary_domain) | The main domain associated with your Google Workspace account. By default, your users get a username at this domain | `string` | `"osinfra.io"` | no |

### Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
