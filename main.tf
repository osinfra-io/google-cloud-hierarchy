terraform {

  # Required Providers
  # https://www.terraform.io/language/providers/requirements#requiring-providers

  required_providers {
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

resource "google_cloud_identity_group" "administrative_groups" {
  for_each = {
    gcp-billing-admins = {
      description  = "Billing administrators are responsible for setting up billing accounts and monitoring their usage"
      display_name = "Google Cloud Platform Billing Administrators"
    },
    gcp-developers = {
      description  = "Developers are responsible for designing, coding, and testing applications"
      display_name = "Google Cloud Platform Developers"
    },
    gcp-devops = {
      description  = "DevOps practitioners create or manage end-to-end pipelines that support continuous integration and delivery, monitoring, and system provisioning"
      display_name = "Google Cloud Platform DevOps"
    },
    gcp-logging-admins = {
      description  = "Logging administrators have access to all features of Cloud Logging"
      display_name = "Google Cloud Platform Logging Administrators"
    },
    gcp-logging-viewers = {
      description  = "Logging viewers have read-only access to a specific subset of logs ingested into Cloud Logging"
      display_name = "Google Cloud Platform Logging Viewers"
    },
    gcp-monitoring-admins = {
      description  = "Monitoring administrators have access to use and configure all features of Cloud Monitoring"
      display_name = "Google Cloud Platform Monitoring Administrators"
    },
    gcp-monitoring-viewers = {
      description  = "Monitoring viewers have read-only access to view Cloud Monitoring"
      display_name = "Google Cloud Platform Monitoring Viewers"
    },
    gcp-network-admins = {
      description  = "Network administrators are responsible for creating networks, subnets, firewall rules, and network devices such as cloud routers, Cloud VPN instances, and load balancers"
      display_name = "Google Cloud Platform Network Administrators"
    },
    gcp-organization-admins = {
      description  = "Organization administrators have access to administer all resources belonging to the organization"
      display_name = "Google Cloud Platform Organization Administrators"
    },
    gcp-security-admins = {
      description  = "Security administrators are responsible for establishing and managing security policies for the entire organization, including access management and organization constraint policies"
      display_name = "Google Cloud Platform Security Administrators"
    }
  }

  description          = each.value.description
  display_name         = each.value.display_name
  initial_group_config = "WITH_INITIAL_OWNER"

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

# Folder Resource
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_folder

resource "google_folder" "department" {
  for_each = toset(
    [
      "DevOps",
      "Shared",
    ]
  )

  display_name = each.key
  parent       = "organizations/${var.organization_id}"
}

resource "google_folder" "devops" {
  for_each = toset(
    [
      "Testing"
    ]
  )

  display_name = each.key
  parent       = google_folder.department["DevOps"].name
}

resource "google_folder" "devops_testing" {
  for_each = toset(
    [
      "Non-Production",
      "Production",
      "Sandbox"
    ]
  )

  display_name = each.key
  parent       = google_folder.devops["Testing"].name
}

resource "google_folder" "shared" {
  for_each = toset(
    [
      "Logging",
      "Observability",
      "Services",
      "Terraform",
      "Workload Identity Federation"
    ]
  )

  display_name = each.key
  parent       = google_folder.department["Shared"].name
}

resource "google_folder" "shared_logging" {
  for_each = toset(
    [
      "Non-Production",
      "Production",
      "Sandbox"
    ]
  )

  display_name = each.key
  parent       = google_folder.shared["Logging"].name
}

resource "google_folder" "shared_observability" {
  for_each = toset(
    [
      "Non-Production",
      "Production",
      "Sandbox"
    ]
  )

  display_name = each.key
  parent       = google_folder.shared["Observability"].name
}

resource "google_folder" "shared_services" {
  for_each = toset(
    [
      "Non-Production",
      "Production",
      "Sandbox"
    ]
  )

  display_name = each.key
  parent       = google_folder.shared["Services"].name
}

resource "google_folder" "shared_terraform" {
  for_each = toset(
    [
      "Non-Production",
      "Production",
      "Sandbox"
    ]
  )

  display_name = each.key
  parent       = google_folder.shared["Terraform"].name
}

resource "google_folder" "shared_workload_identity_federation" {
  for_each = toset(
    [
      "Non-Production",
      "Production",
      "Sandbox"
    ]
  )

  display_name = each.key
  parent       = google_folder.shared["Workload Identity Federation"].name
}

# Organization IAM Member Resource
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_organization_iam#google_organization_iam_member

# Predefined roles provide granular access for a specific service and are managed by Google Cloud.
# https://cloud.google.com/iam/docs/understanding-roles#predefined

# Set up organization administrative access
# In this step, you grant administrative access to the gcp-organization-admins group by assigning the
# following roles at the organization level.

resource "google_organization_iam_member" "organization_admins" {
  for_each = toset(
    [
      "roles/resourcemanager.organizationAdmin",
      "roles/resourcemanager.folderAdmin",
      "roles/resourcemanager.projectCreator",
      "roles/resourcemanager.projectDeleter",
      "roles/billing.user",
      "roles/iam.organizationRoleAdmin",
      "roles/orgpolicy.policyAdmin",
      "roles/securitycenter.admin",
      "roles/cloudsupport.admin"
    ]
  )

  member = "group:${google_cloud_identity_group.administrative_groups["gcp-organization-admins"].group_key[0].id}"
  org_id = var.organization_id
  role   = each.key
}

# Set up billing administrative access
# In this step, you grant administrative access to the gcp-billing-admins group by assigning the
# following roles at the organization level.

resource "google_organization_iam_member" "billing_admins" {
  for_each = toset(
    [
      "roles/billing.admin",
      "roles/billing.user",
      "roles/resourcemanager.organizationViewer"
    ]
  )

  member = "group:${google_cloud_identity_group.administrative_groups["gcp-billing-admins"].group_key[0].id}"
  org_id = var.organization_id
  role   = each.key
}

# Set up network administrative access
# In this step, you grant administrative access to the gcp-network-admins group by assigning the
# following roles at the organization level.

resource "google_organization_iam_member" "network_admins" {
  for_each = toset(
    [
      "roles/compute.networkAdmin",
      "roles/compute.securityAdmin",
      "roles/compute.xpnAdmin",
      "roles/resourcemanager.folderViewer"
    ]
  )

  member = "group:${google_cloud_identity_group.administrative_groups["gcp-network-admins"].group_key[0].id}"
  org_id = var.organization_id
  role   = each.key
}

# Set up logging administrative access
# In this step, you grant administrative access to the gcp-logging-admins group by assigning the
# following roles at the organization level.

resource "google_organization_iam_member" "logging_admins" {
  for_each = toset(
    [
      "roles/logging.admin"
    ]
  )

  member = "group:${google_cloud_identity_group.administrative_groups["gcp-logging-admins"].group_key[0].id}"
  org_id = var.organization_id
  role   = each.key
}

# Set up monitoring administrative access
# In this step, you grant administrative access to the gcp-monitoring-admins group by assigning the
# following roles at the organization level.

resource "google_organization_iam_member" "monitoring_admins" {
  for_each = toset(
    [
      "roles/monitoring.admin"
    ]
  )

  member = "group:${google_cloud_identity_group.administrative_groups["gcp-monitoring-admins"].group_key[0].id}"
  org_id = var.organization_id
  role   = each.key
}

# Set up monitoring administrative access
# In this step, you grant administrative access to the gcp-monitoring-viewers group by assigning the
# following roles at the organization level.

resource "google_organization_iam_member" "monitoring_viewers" {
  for_each = toset(
    [
      "roles/monitoring.viewer"
    ]
  )

  member = "group:${google_cloud_identity_group.administrative_groups["gcp-monitoring-viewers"].group_key[0].id}"
  org_id = var.organization_id
  role   = each.key
}

# Set up security administrative access
# In this step, you grant administrative access to the gcp-security-admins group by assigning the
# following roles at the organization level.

resource "google_organization_iam_member" "security_admins" {
  for_each = toset(
    [
      "roles/orgpolicy.policyAdmin",
      "roles/iam.securityReviewer",
      "roles/iam.organizationRoleViewer",
      "roles/securitycenter.admin",
      "roles/resourcemanager.folderIamAdmin",
      "roles/logging.privateLogViewer",
      "roles/logging.configWriter",
      "roles/container.viewer",
      "roles/compute.viewer"
    ]
  )

  member = "group:${google_cloud_identity_group.administrative_groups["gcp-security-admins"].group_key[0].id}"
  org_id = var.organization_id
  role   = each.key
}

# Set up DevOps access
# In this step, you grant access to the gcp-devops group by assigning the
# following roles at the organization level.

resource "google_organization_iam_member" "devops" {
  for_each = toset(
    [
      "roles/resourcemanager.folderViewer"
    ]
  )

  member = "group:${google_cloud_identity_group.administrative_groups["gcp-devops"].group_key[0].id}"
  org_id = var.organization_id
  role   = each.key
}
