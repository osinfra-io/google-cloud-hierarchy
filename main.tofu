# IAM Policy Data Source
# https://search.opentofu.org/provider/hashicorp/google/latest/docs/data-sources/iam_policy

data "google_iam_policy" "this" {
  for_each = var.folder_iam_policies

  dynamic "binding" {
    for_each = each.value.bindings

    content {
      members = binding.value.members
      role    = binding.value.role
    }
  }
}

# Billing Budget Resource
# https://search.opentofu.org/provider/hashicorp/google/latest/docs/resources/billing_budget

resource "google_billing_budget" "organization" {
  amount {
    specified_amount {
      currency_code = "USD"
      units         = var.organization_monthly_budget_amount
    }
  }

  billing_account = var.billing_account
  display_name    = "Organization Monthly"

  threshold_rules {
    threshold_percent = 0.50
    spend_basis       = "CURRENT_SPEND"
  }

  threshold_rules {
    threshold_percent = 0.75
    spend_basis       = "CURRENT_SPEND"
  }

  threshold_rules {
    threshold_percent = 1.0
    spend_basis       = "CURRENT_SPEND"
  }
}

resource "google_billing_budget" "services" {
  for_each = var.folder_services

  amount {
    specified_amount {
      currency_code = "USD"
      units         = each.value.monthly_budget_amount
    }
  }

  billing_account = var.billing_account

  budget_filter {
    resource_ancestors = [google_folder.service[each.key].id]
  }

  display_name = "${each.value.display_name} Monthly"

  threshold_rules {
    threshold_percent = 0.50
    spend_basis       = "CURRENT_SPEND"
  }

  threshold_rules {
    threshold_percent = 0.75
    spend_basis       = "CURRENT_SPEND"
  }

  threshold_rules {
    threshold_percent = 1.0
    spend_basis       = "CURRENT_SPEND"
  }
}

# Cloud Identity Group Resource
# https://search.opentofu.org/provider/hashicorp/google/latest/docs/resources/cloud_identity_group

resource "google_cloud_identity_group" "this" {
  for_each = var.identity_groups

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
# https://search.opentofu.org/provider/hashicorp/google/latest/docs/resources/cloud_identity_group_membership

resource "google_cloud_identity_group_membership" "managers" {

  # Iterate over local.managers to create a resource for each user in the manager list.

  for_each = local.managers

  group = google_cloud_identity_group.this[each.value.group].id

  preferred_member_key {
    id = each.value.manager
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
    id = each.value.member
  }

  roles { name = "MEMBER" }
}

resource "google_cloud_identity_group_membership" "owners" {

  # Iterate over local.owners to create a resource for each user in the owner list.

  for_each = local.owners

  group = google_cloud_identity_group.this[each.value.group].id

  preferred_member_key {
    id = each.value.owner
  }

  # MEMBER role must be specified. The order of roles should not be changed.

  roles { name = "OWNER" }
  roles { name = "MEMBER" }
}

# Folder Resource
# https://search.opentofu.org/provider/hashicorp/google/latest/docs/resources/google_folder

# Folder resources optionally provide an additional grouping mechanism and isolation
# boundaries between projects. They can be seen as sub-organizations within the organization
# resource. Folder resources can be used to model different legal entities, departments, and
# teams within a company. For example, a first level of folder resources could be used to
# represent the main departments in your organization.

# https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy#folders

resource "google_folder" "team" {
  for_each = var.folder_teams

  display_name = each.value.display_name
  parent       = "organizations/${var.organization_id}"
}

resource "google_folder" "service" {
  for_each = var.folder_services

  display_name = each.value.display_name
  parent       = google_folder.team[each.value.parent].name
}

resource "google_folder" "environment" {
  for_each = local.environments

  display_name = each.value.environment
  parent       = google_folder.service[each.value.service].name
}

# Folder IAM Policy Resource
# https://search.opentofu.org/provider/hashicorp/google/latest/docs/resources/google_folder_iam#google_folder_iam_policy

resource "google_folder_iam_policy" "this" {
  for_each = var.folder_iam_policies

  folder      = each.key
  policy_data = data.google_iam_policy.this[each.key].policy_data

  depends_on = [

  ]
}

# Organization IAM Custom Role Resource
# https://search.opentofu.org/provider/hashicorp/google/latest/docs/resources/google_organization_iam_custom_role

resource "google_organization_iam_custom_role" "this" {
  for_each = var.organization_custom_iam_roles

  org_id  = var.organization_id
  role_id = each.value.role_id

  title       = each.value.title
  description = each.value.description

  permissions = each.value.permissions
}

# Organization IAM Member Resource
# https://search.opentofu.org/provider/hashicorp/google/latest/docs/resources/google_organization_iam#google_organization_iam_member

# Predefined roles provide granular access for a specific service and are managed by Google Cloud.
# https://cloud.google.com/iam/docs/understanding-roles#predefined

# In this step, you grant to group by assigning roles at the organization level.

resource "google_organization_iam_member" "this" {
  for_each = local.roles

  member = "group:${google_cloud_identity_group.this[each.value.group].group_key[0].id}"
  org_id = var.organization_id
  role   = each.value.role
}
