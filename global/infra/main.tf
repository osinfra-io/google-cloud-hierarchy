terraform {

  # Required Providers
  # https://www.terraform.io/language/providers/requirements#requiring-providers

  required_providers {

    # Google Cloud Platform Provider
    # https://registry.terraform.io/providers/hashicorp/google/latest/docs

    google = {
      source = "hashicorp/google"
    }
  }
}

# Google Cloud Provider
# https://registry.terraform.io/providers/hashicorp/google/latest/docs

# The google_cloud_identity_group resource requires this if you are using User ADCs (Application Default Credentials).
# Your account must have the serviceusage.services.use permission on the billing_project you defined as well.
# The following APIs must be enabled on the billing_project:
# - cloudresourcemanager.googleapis.com
# - cloudidentity.googleapis.com

provider "google" {
  billing_project       = var.billing_project
  user_project_override = true
}

# Cloud Identity Group Resource
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_identity_group

resource "google_cloud_identity_group" "this" {
  for_each = local.identity_groups

  description          = each.value.description
  display_name         = each.value.display_name
  initial_group_config = "EMPTY"

  # When you signed up for Google Workspace or Cloud Identity, your account is assigned a unique customer ID.
  # You can look up this ID in your Admin console.
  # https://admin.google.com/ac/accountsettings/profile

  parent = "customers/${var.customer_id}"

  group_key {
    id = "${each.key}@${var.primary_domain}"
  }

  labels = {

    # Must not contain more than one entry and must contain the following entry:

    "cloudidentity.googleapis.com/groups.discussion_forum" = ""
  }
}

# Identity Group Membership
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/cloud_identity_group_membership

resource "google_cloud_identity_group_membership" "managers" {

  # Iterate over local.managers to create a resource for each user in the manager list.

  for_each = local.managers

  group = google_cloud_identity_group.this[each.value.group].id

  preferred_member_key {
    id = "${each.value.manager}@${var.primary_domain}"
  }

  # MEMBER role must be specified. The order of roles should not be changed.

  roles { name = "MEMBER" }
  roles { name = "MANAGER" }
}

resource "google_cloud_identity_group_membership" "members" {

  # Iterate over local.members to create a resource for each user in the member list.

  for_each = local.members

  group = google_cloud_identity_group.this[each.value.group].id

  preferred_member_key {
    id = "${each.value.member}@${var.primary_domain}"
  }

  roles { name = "MEMBER" }
}

resource "google_cloud_identity_group_membership" "owners" {

  # Iterate over local.owners to create a resource for each user in the owner list.

  for_each = local.owners

  group = google_cloud_identity_group.this[each.value.group].id

  preferred_member_key {
    id = "${each.value.owner}@${var.primary_domain}"
  }

  # MEMBER role must be specified. The order of roles should not be changed.

  roles { name = "OWNER" }
  roles { name = "MEMBER" }
}

# Folder Resource
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_folder

# Folder resources optionally provide an additional grouping mechanism and isolation
# boundaries between projects. They can be seen as sub-organizations within the organization
#resource. Folder resources can be used to model different legal entities, departments, and
#teams within a company. For example, a first level of folder resources could be used to
# represent the main departments in your organization.

# https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy#folders

resource "google_folder" "department" {
  for_each = local.folder_departments

  display_name = each.value.display_name
  parent       = "organizations/${var.organization_id}"
}

resource "google_folder" "system" {
  for_each = local.folder_systems

  display_name = each.value.display_name
  parent       = google_folder.department[each.value.parent].name
}

resource "google_folder" "environment" {
  for_each = local.environments

  display_name = each.value.environment
  parent       = google_folder.system[each.value.system].name
}

# Organization IAM Member Resource
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_organization_iam#google_organization_iam_member

# Predefined roles provide granular access for a specific service and are managed by Google Cloud.
# https://cloud.google.com/iam/docs/understanding-roles#predefined

# In this step, you grant to group by assigning roles at the organization level.

resource "google_organization_iam_member" "this" {
  for_each = local.roles

  member = "group:${google_cloud_identity_group.this[each.value.group].group_key[0].id}"
  org_id = var.organization_id
  role   = each.value.role
}
