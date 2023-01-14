folder_departments = {
  department-1 = {
    display_name = "Shared"
  }
}

folder_systems = {
  system-1 = {
    display_name = "Audit Logging"
    environments = ["Sandbox", "Non-Production", "Production"]
    parent       = "department-1"
  },

  system-2 = {
    display_name = "Observability"
    environments = ["Sandbox", "Non-Production", "Production"]
    parent       = "department-1"
  },

  system-3 = {
    display_name = "Services"
    environments = ["Sandbox", "Non-Production", "Production"]
    parent       = "department-1"
  },

  system-4 = {
    display_name = "Terraform Backend"
    environments = ["Sandbox", "Non-Production", "Production"]
    parent       = "department-1"
  },

  system-5 = {
    display_name = "Testing"
    environments = ["Sandbox"]
    parent       = "department-1"
  },

  system-6 = {
    display_name = "Workload Identity Federation"
    environments = ["Sandbox", "Non-Production", "Production"]
    parent       = "department-1"
  }
}

identity_groups = {
  gcp-billing-admins = {
    description  = "Billing administrators are responsible for setting up billing accounts and monitoring their usage"
    display_name = "Google Cloud Platform Billing Administrators"
    managers     = []
    members      = []
    owners       = ["brett@osinfra.io"]
    roles = [
      "roles/billing.admin",
      "roles/billing.user",
      "roles/resourcemanager.organizationViewer"
    ]
  }

  gcp-billing-users = {
    description  = "Billing users are able to attach billing accounts to projects"
    display_name = "Google Cloud Platform Billing Users"
    managers     = []
    members      = []
    owners       = ["brett@osinfra.io"]
    roles = [
      "roles/billing.user",
      "roles/resourcemanager.organizationViewer"
    ]
  }

  gcp-logging-admins = {
    description  = "Logging administrators have access to all features of Cloud Logging"
    display_name = "Google Cloud Platform Logging Administrators"
    managers     = []
    members      = []
    owners       = ["brett@osinfra.io"]
    roles = [
      "roles/logging.admin",
    ]
  }

  gcp-logging-viewers = {
    description  = "Logging viewers have read-only access to a specific subset of logs ingested into Cloud Logging"
    display_name = "Google Cloud Platform Logging Viewers"
    managers     = []
    members      = []
    owners       = ["brett@osinfra.io"]
    roles = [
      "roles/logging.viewer",
      "roles/resourcemanager.organizationViewer"
    ]
  }

  gcp-monitoring-admins = {
    description  = "Monitoring administrators have access to use and configure all features of Cloud Monitoring"
    display_name = "Google Cloud Platform Monitoring Administrators"
    managers     = []
    members      = []
    owners       = ["brett@osinfra.io"]
    roles = [
      "roles/monitoring.admin",
    ]
  }

  gcp-monitoring-viewers = {
    description  = "Monitoring viewers have read-only access to view Cloud Monitoring"
    display_name = "Google Cloud Platform Monitoring Viewers"
    managers     = []
    members      = []
    owners       = ["brett@osinfra.io"]
    roles = [
      "roles/monitoring.viewer",
    ]
  }

  gcp-network-admins = {
    description  = "Network administrators are responsible for creating networks, subnets, firewall rules, and network devices such as cloud routers, Cloud VPN instances, and load balancers"
    display_name = "Google Cloud Platform Network Administrators"
    managers     = []
    members      = []
    owners       = ["brett@osinfra.io"]
    roles = [
      "roles/compute.networkAdmin",
      "roles/compute.securityAdmin",
      "roles/compute.xpnAdmin",
      "roles/resourcemanager.folderViewer"
    ]
  }

  gcp-organization-admins = {
    description  = "Organization administrators have access to administer all resources belonging to the organization"
    display_name = "Google Cloud Platform Organization Administrators"
    managers     = []
    members      = []
    owners       = ["brett@osinfra.io"]
    roles = [
      "roles/billing.user",
      "roles/cloudsupport.admin",
      "roles/iam.organizationRoleAdmin",
      "roles/orgpolicy.policyAdmin",
      "roles/resourcemanager.organizationAdmin",
      "roles/resourcemanager.folderAdmin",
      "roles/resourcemanager.projectCreator",
      "roles/securitycenter.admin"
    ]
  }

  gcp-security-admins = {
    description  = "Security administrators are responsible for establishing and managing security policies for the entire organization, including access management and organization constraint policies"
    display_name = "Google Cloud Platform Security Administrators"
    managers     = []
    members      = []
    owners       = ["brett@osinfra.io"]
    roles = [
      "roles/compute.viewer",
      "roles/container.viewer",
      "roles/iam.securityReviewer",
      "roles/iam.organizationRoleViewer",
      "roles/logging.configWriter",
      "roles/logging.privateLogViewer",
      "roles/orgpolicy.policyAdmin",
      "roles/resourcemanager.folderIamAdmin",
      "roles/securitycenter.admin"
    ]
  }

  github-sa = {
    description  = "Email enabled group for the GitHub Service Account"
    display_name = "GitHub Service Account"
    managers     = []
    members      = []
    owners       = ["brett@osinfra.io"]
    roles        = []
  }

  help = {
    description  = "Email enabled group for the help"
    display_name = "Help"
    managers     = []
    members      = []
    owners       = ["brett@osinfra.io"]
    roles        = []
  }

  shared-terraform-backend-nonprod = {
    description  = "Shared group for the Terraform backend in the Non-Production environment"
    display_name = "Shared Terraform Backend Non-Production"
    managers     = []

    members = [
      "audit-github-actions@shared-terraform-tfd9-nonprod.iam.gserviceaccount.com",
      "backend-github-actions@shared-terraform-tfd9-nonprod.iam.gserviceaccount.com",
      "identity-github-actions@shared-terraform-tfd9-nonprod.iam.gserviceaccount.com",
      "testing-github-actions@shared-terraform-tfd9-nonprod.iam.gserviceaccount.com",
      "observability-github-actions@shared-terraform-tfd9-nonprod.iam.gserviceaccount.com",
      "services-github-actions@shared-terraform-tfd9-nonprod.iam.gserviceaccount.com"
    ]

    owners = ["brett@osinfra.io"]
    roles  = []
  }

  shared-terraform-backend-prod = {
    description  = "Shared group for the Terraform backend in the Production environment"
    display_name = "Shared Terraform Backend Production"
    managers     = []

    members = [
      "audit-github-actions@shared-terraform-tfa8-prod.iam.gserviceaccount.com",
      "backend-github-actions@shared-terraform-tfa8-prod.iam.gserviceaccount.com",
      "identity-github-actions@shared-terraform-tfa8-prod.iam.gserviceaccount.com",
      "testing-github-actions@shared-terraform-tfa8-prod.iam.gserviceaccount.com",
      "observability-github-actions@shared-terraform-tfa8-prod.iam.gserviceaccount.com",
      "services-github-actions@shared-terraform-tfa8-prod.iam.gserviceaccount.com"
    ]

    owners = ["brett@osinfra.io"]
    roles  = []
  }

  shared-terraform-backend-sb = {
    description  = "Shared group for the Terraform backend in the Sandbox environment"
    display_name = "Shared Terraform Backend Sandbox"
    managers     = []

    members = [
      "audit-github-actions@shared-terraform-tf1e-sb.iam.gserviceaccount.com",
      "backend-github-actions@shared-terraform-tf1e-sb.iam.gserviceaccount.com",
      "identity-github-actions@shared-terraform-tf1e-sb.iam.gserviceaccount.com",
      "testing-github-actions@shared-terraform-tf1e-sb.iam.gserviceaccount.com",
      "observability-github-actions@shared-terraform-tf1e-sb.iam.gserviceaccount.com",
      "services-github-actions@shared-terraform-tf1e-sb.iam.gserviceaccount.com"
    ]

    owners = ["brett@osinfra.io"]
    roles  = []
  }

  social = {
    description  = "Email enabled group for social media accounts"
    display_name = "Social Media"
    managers     = []
    members      = []
    owners       = ["brett@osinfra.io"]
    roles        = []
  }
}
