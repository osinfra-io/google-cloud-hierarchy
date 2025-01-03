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

- [checkov](https://github.com/bridgecrewio/checkov)
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

<!-- BEGIN_TF_DOCS -->
#### Providers

| Name | Version |
|------|---------|
| google | 6.14.1 |

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
| billing\_account | The alphanumeric ID of the billing account this project belongs to | `string` | `"01C550-A2C86B-B8F16B"` | no |
| customer\_id | The unique customer ID assigned to you when you signed up for Google Workspace or Cloud Identity. You can look up this ID in your Admin console | `string` | `"C01hd34v8"` | no |
| folder\_iam\_policies | A map of authoritative IAM policies for the folder, replaces any existing policy already attached | ```map(object({ service = string environment = string bindings = list(object({ members = list(string) role = string })) }))``` | n/a | yes |
| folder\_services | A map of folder services to create | ```map(object({ display_name = string environments = list(string) monthly_budget_amount = optional(number, 10) parent = string }))``` | n/a | yes |
| folder\_teams | A map of folder teams to create | ```map(object({ display_name = string }))``` | n/a | yes |
| identity\_groups | A map of identity groups to create | ```map(object({ description = string display_name = string managers = list(string) members = list(string) owners = list(string) roles = list(string) }))``` | n/a | yes |
| organization\_custom\_iam\_roles | A map of organization custom IAM roles to create | ```map(object({ description = optional(string, null) permissions = list(string) role_id = string title = string }))``` | n/a | yes |
| organization\_id | The organization ID to create the hierarchy under | `string` | `"163313809793"` | no |
| organization\_monthly\_budget\_amount | The organization monthly budget amount in USD | `number` | `100` | no |
| primary\_domain | The main domain associated with your Google Workspace account. By default, your users get a username at this domain | `string` | `"osinfra.io"` | no |
<!-- END_TF_DOCS -->
