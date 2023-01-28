folder_teams = {
  team-1 = {
    display_name = "Platform - Landing Zone"
  }

  team-2 = {
    display_name = "Platform - Kubernetes Engine"
  }
}

folder_services = {
  service-1 = {
    display_name = "Audit Logging"
    environments = ["Sandbox", "Non-Production", "Production"]
    parent       = "team-1"
  }

  service-2 = {
    display_name = "Terraform Backend"
    environments = ["Sandbox", "Non-Production", "Production"]
    parent       = "team-1"
  }

  service-3 = {
    display_name = "Workload Identity Federation"
    environments = ["Sandbox", "Non-Production", "Production"]
    parent       = "team-1"
  }

  service-4 = {
    display_name = "Testing"
    environments = ["Sandbox"]
    parent       = "team-1"
  }
}

identity_groups = {
  billing-admins = {
    description  = "Billing administrators are responsible for setting up billing accounts and monitoring their usage"
    display_name = "Billing Administrators"
    managers     = []
    members      = []
    owners       = ["brett@osinfra.io"]
    roles = [
      "roles/billing.admin",
      "roles/billing.user",
      "roles/resourcemanager.organizationViewer"
    ]
  }

  billing-users = {
    description  = "Billing users are able to attach billing accounts to projects"
    display_name = "Billing Users"
    managers     = []
    members      = []
    owners       = ["brett@osinfra.io"]
    roles = [
      "roles/billing.user",
      "roles/resourcemanager.organizationViewer"
    ]
  }

  organization-admins = {
    description  = "Organization administrators have access to administer all resources belonging to the organization"
    display_name = "Organization Administrators"
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

  github-sa = {
    description  = "Email enabled group for the GitHub Service Account"
    display_name = "GitHub Service Account"
    managers     = []
    members      = []
    owners       = ["brett@osinfra.io"]
    roles        = []
  }

  help = {
    description  = "Email enabled group for contacting help"
    display_name = "Help"
    managers     = []
    members      = []
    owners       = ["brett@osinfra.io"]
    roles        = []
  }

  terraform-backend-nonprod = {
    description  = "Group for the Terraform backend in the Non-Production environment"
    display_name = "Terraform Backend Non-Production"
    managers     = []

    members = [
      "plt-gh-organization-github@ptl-lz-terraform-tf05-nonprod.iam.gserviceaccount.com",
      "plt-lz-audit-github@ptl-lz-terraform-tf05-nonprod.iam.gserviceaccount.com",
      "plt-lz-backend-github@ptl-lz-terraform-tf05-nonprod.iam.gserviceaccount.com",
      "plt-lz-hierarchy-github@ptl-lz-terraform-tf05-nonprod.iam.gserviceaccount.com",
      "plt-lz-identity-github@ptl-lz-terraform-tf05-nonprod.iam.gserviceaccount.com",
      "plt-lz-testing-github@ptl-lz-terraform-tf05-nonprod.iam.gserviceaccount.com"
    ]

    owners = ["brett@osinfra.io"]
    roles  = []
  }

  terraform-backend-prod = {
    description  = "Group for the Terraform backend in the Production environment"
    display_name = "Terraform Backend Production"
    managers     = []

    members = [
      "plt-gh-organization-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com",
      "plt-lz-audit-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com",
      "plt-lz-backend-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com",
      "plt-lz-hierarchy-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com",
      "plt-lz-identity-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com",
      "plt-lz-testing-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com"
    ]

    owners = ["brett@osinfra.io"]
    roles  = []
  }

  terraform-backend-sb = {
    description  = "Group for the Terraform backend in the Sandbox environment"
    display_name = "Terraform Backend Sandbox"
    managers     = []

    members = [
      "plt-gh-organization-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com",
      "plt-lz-audit-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com",
      "plt-lz-backend-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com",
      "plt-lz-hierarchy-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com",
      "plt-lz-identity-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com",
      "plt-lz-testing-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com"
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
