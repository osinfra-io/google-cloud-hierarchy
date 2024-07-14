# <img align="left" width="45" height="45" src="https://github.com/osinfra-io/google-cloud-hierarchy/assets/1610100/502cc3e9-fd8c-42be-be03-8aa45e04452a"> Google Cloud Platform - Hierarchy

**[GitHub Actions](https://github.com/osinfra-io/google-cloud-hierarchy/actions):**

[![Dependabot](https://github.com/osinfra-io/google-cloud-hierarchy/actions/workflows/dependabot.yml/badge.svg)](https://github.com/osinfra-io/google-cloud-hierarchy/actions/workflows/dependabot.yml)

**[Infracost](https://www.infracost.io):**

[![infracost](https://img.shields.io/endpoint?url=https://dashboard.api.infracost.io/shields/json/cbeecfe3-576f-4553-984c-e451a575ee47/repos/57318eb1-8a72-432f-8305-4ac7b10c9495/branch/0049fa37-5530-460c-9f8a-ab4824107d09)](https://dashboard.infracost.io/org/osinfra-io/repos/57318eb1-8a72-432f-8305-4ac7b10c9495?tab=settings)

💵 Monthly estimates based on Infracost baseline costs.

## 📄 Repository Description

This repository creates a resource hierarchy and manages IAM. It aligns with our [Google Cloud landing zone platform](https://docs.osinfra.io/google-cloud-platform/landing-zone) design. A landing zone should be a prerequisite to deploying enterprise workloads in a cloud environment.

## 🏭 Platform Information

- Documentation: [docs.osinfra.io](https://docs.osinfra.io/product-guides/google-cloud-platform/landing-zone/google-cloud-hierarchy)
- Service Interfaces: [github.com](https://github.com/osinfra-io/google-cloud-hierarchy/issues/new/choose)

## <img align="left" width="35" height="35" src="https://github.com/osinfra-io/github-organization-management/assets/1610100/39d6ae3b-ccc2-42db-92f1-276a5bc54e65"> Development

Our focus is on the core fundamental practice of platform engineering, Infrastructure as Code.

>Open Source Infrastructure (as Code) is a development model for infrastructure that focuses on open collaboration and applying relative lessons learned from software development practices that organizations can use internally at scale. - [Open Source Infrastructure (as Code)](https://www.osinfra.io)

To avoid slowing down stream-aligned teams, we want to open up the possibility for contributions. The Open Source Infrastructure (as Code) model allows team members external to the platform team to contribute with only a slight increase in cognitive load. This section is for developers who want to contribute to this repository, describing the tools used, the skills, and the knowledge required, along with Terraform documentation.

See the documentation for setting up a development environment [here](https://docs.osinfra.io/fundamentals/development-setup).

### 🛠️ Tools

- [infracost](https://github.com/infracost/infracost)
- [pre-commit](https://github.com/pre-commit/pre-commit)
- [pre-commit-terraform](https://github.com/antonbabenko/pre-commit-terraform)
- [terraform-docs](https://github.com/terraform-docs/terraform-docs)

### 📋 Skills and Knowledge

Links to documentation and other resources required to develop and iterate in this repository successfully.

- [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy)
- [groups](https://cloud.google.com/identity/docs/groups)
- [iam](https://cloud.google.com/iam/docs/overview)

### 📓 Terraform Documentation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
#### Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 5.37.0 |

#### Modules

No modules.

#### Resources

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
| [google_organization_iam_custom_role.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_custom_role) | resource |
| [google_organization_iam_member.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_member) | resource |
| [google_iam_policy.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/iam_policy) | data source |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_account"></a> [billing\_account](#input\_billing\_account) | The alphanumeric ID of the billing account this project belongs to | `string` | `"01C550-A2C86B-B8F16B"` | no |
| <a name="input_customer_id"></a> [customer\_id](#input\_customer\_id) | The unique customer ID assigned to you when you signed up for Google Workspace or Cloud Identity. You can look up this ID in your Admin console | `string` | n/a | yes |
| <a name="input_folder_iam_policies"></a> [folder\_iam\_policies](#input\_folder\_iam\_policies) | A map of authoritative IAM policies for the folder, replaces any existing policy already attached | <pre>map(object({<br>    service     = string<br>    environment = string<br>    bindings = list(object({<br>      members = list(string)<br>      role    = string<br>    }))<br>  }))</pre> | n/a | yes |
| <a name="input_folder_services"></a> [folder\_services](#input\_folder\_services) | A map of folder services to create | <pre>map(object({<br>    display_name          = string<br>    environments          = list(string)<br>    monthly_budget_amount = optional(number, 10)<br>    parent                = string<br>  }))</pre> | n/a | yes |
| <a name="input_folder_teams"></a> [folder\_teams](#input\_folder\_teams) | A map of folder teams to create | <pre>map(object({<br>    display_name = string<br>  }))</pre> | n/a | yes |
| <a name="input_identity_groups"></a> [identity\_groups](#input\_identity\_groups) | A map of identity groups to create | <pre>map(object({<br>    description  = string<br>    display_name = string<br>    managers     = list(string)<br>    members      = list(string)<br>    owners       = list(string)<br>    roles        = list(string)<br>  }))</pre> | n/a | yes |
| <a name="input_organization_custom_iam_roles"></a> [organization\_custom\_iam\_roles](#input\_organization\_custom\_iam\_roles) | A map of organization custom IAM roles to create | <pre>map(object({<br>    description = optional(string, null)<br>    permissions = list(string)<br>    role_id     = string<br>    title       = string<br>  }))</pre> | n/a | yes |
| <a name="input_organization_id"></a> [organization\_id](#input\_organization\_id) | The organization ID to create the hierarchy under | `string` | n/a | yes |
| <a name="input_organization_monthly_budget_amount"></a> [organization\_monthly\_budget\_amount](#input\_organization\_monthly\_budget\_amount) | The organization monthly budget amount in USD | `number` | `50` | no |
| <a name="input_primary_domain"></a> [primary\_domain](#input\_primary\_domain) | The main domain associated with your Google Workspace account. By default, your users get a username at this domain | `string` | `"osinfra.io"` | no |

#### Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
