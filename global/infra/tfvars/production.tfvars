folder_iam_policies = {
  390812006260 = {
    team        = "Platform - Landing Zone"
    service     = "Audit Logging"
    environment = "Sandbox"
    bindings = [
      {
        members = [
          "group:terraform-backend-sb@osinfra.io"
        ]
        role = "roles/resourcemanager.folderIamAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-audit-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  988946273293 = {
    team        = "Platform - Landing Zone"
    service     = "Audit Logging"
    environment = "Non-Production"
    bindings = [
      {
        members = [
          "group:terraform-backend-nonprod@osinfra.io"
        ]
        role = "roles/resourcemanager.folderIamAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-audit-github@ptl-lz-terraform-tf05-nonprod.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  606239917687 = {
    team        = "Platform - Landing Zone"
    service     = "Audit Logging"
    environment = "Production"
    bindings = [
      {
        members = [
          "group:terraform-backend-prod@osinfra.io"
        ]
        role = "roles/resourcemanager.folderIamAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-audit-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  515753002772 = {
    team        = "Platform - Landing Zone"
    service     = "Terraform Backend"
    environment = "Sandbox"
    bindings = [
      {
        members = [
          "group:terraform-backend-sb@osinfra.io"
        ]
        role = "roles/resourcemanager.folderIamAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-backend-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }

    ]
  }

  574432336767 = {
    team        = "Platform - Landing Zone"
    service     = "Terraform Backend"
    environment = "Non-Production"
    bindings = [
      {
        members = [
          "group:terraform-backend-nonprod@osinfra.io"
        ]
        role = "roles/resourcemanager.folderIamAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-backend-github@ptl-lz-terraform-tf05-nonprod.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  131486843041 = {
    team        = "Platform - Landing Zone"
    service     = "Terraform Backend"
    environment = "Production"
    bindings = [
      {
        members = [
          "group:terraform-backend-prod@osinfra.io"
        ]
        role = "roles/resourcemanager.folderIamAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-backend-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  13103602325 = {
    team        = "Platform - Landing Zone"
    service     = "Networking"
    environment = "Sandbox"
    bindings = [
      {
        members = [
          "group:terraform-backend-sb@osinfra.io"
        ]
        role = "roles/resourcemanager.folderIamAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-networking-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com"
        ]
        role = "roles/compute.xpnAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-networking-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  345391277536 = {
    team        = "Platform - Landing Zone"
    service     = "Networking"
    environment = "Non-Production"
    bindings = [
      {
        members = [
          "group:terraform-backend-nonprod@osinfra.io"
        ]
        role = "roles/resourcemanager.folderIamAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-networking-github@ptl-lz-terraform-tf05-nonprod.iam.gserviceaccount.com"
        ]
        role = "roles/compute.xpnAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-networking-github@ptl-lz-terraform-tf05-nonprod.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  1033174574192 = {
    team        = "Platform - Landing Zone"
    service     = "Networking"
    environment = "Production"
    bindings = [
      {
        members = [
          "group:terraform-backend-prod@osinfra.io"
        ]
        role = "roles/resourcemanager.folderIamAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-networking-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com"
        ]
        role = "roles/compute.xpnAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-networking-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  1069400145815 = {
    team        = "Platform - Landing Zone"
    service     = "Testing"
    environment = "Sandbox"
    bindings = [
      {
        members = [
          "group:terraform-backend-sb@osinfra.io"
        ]
        role = "roles/resourcemanager.folderIamAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-testing-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com"
        ]
        role = "roles/compute.xpnAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-testing-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  1094321749831 = {
    team        = "Platform - Landing Zone"
    service     = "Testing"
    environment = "Non-Production"
    bindings = [
      {
        members = [
          "group:terraform-backend-nonprod@osinfra.io"
        ]
        role = "roles/resourcemanager.folderIamAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-testing-github@ptl-lz-terraform-tf05-nonprod.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  642644757390 = {
    team        = "Platform - Landing Zone"
    service     = "Testing"
    environment = "Production"
    bindings = [
      {
        members = [
          "group:terraform-backend-prod@osinfra.io"
        ]
        role = "roles/resourcemanager.folderIamAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-testing-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  267179923152 = {
    team        = "Platform - Landing Zone"
    service     = "Workload Identity Federation"
    environment = "Sandbox"
    bindings = [
      {
        members = [
          "group:terraform-backend-sb@osinfra.io"
        ]
        role = "roles/resourcemanager.folderIamAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-identity-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  8288220956 = {
    team        = "Platform - Landing Zone"
    service     = "Workload Identity Federation"
    environment = "Non-Production"
    bindings = [
      {
        members = [
          "group:terraform-backend-nonprod@osinfra.io"
        ]
        role = "roles/resourcemanager.folderIamAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-identity-github@ptl-lz-terraform-tf05-nonprod.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  679274494921 = {
    team        = "Platform - Landing Zone"
    service     = "Workload Identity Federation"
    environment = "Production"
    bindings = [
      {
        members = [
          "group:terraform-backend-prod@osinfra.io"
        ]
        role = "roles/resourcemanager.folderIamAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-identity-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }
}

folder_teams = {
  team-1 = {
    display_name = "Platform Teams"
  }

  team-2 = {
    display_name = "Stream Aligned Teams"
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
    environments = ["Sandbox", "Non-Production", "Production"]
    parent       = "team-1"
  }

  service-5 = {
    display_name = "Networking"
    environments = ["Sandbox", "Non-Production", "Production"]
    parent       = "team-1"
  }

  service-6 = {
    display_name = "HashiCorp Vault"
    environments = ["Sandbox", "Non-Production", "Production"]
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
      "roles/billing.costsManager",
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
      "roles/compute.xpnAdmin",
      "roles/iam.organizationRoleAdmin",
      "roles/logging.admin",
      "roles/orgpolicy.policyAdmin",
      "roles/owner",
      "roles/resourcemanager.organizationAdmin",
      "roles/resourcemanager.folderAdmin",
      "roles/resourcemanager.projectCreator",
      "roles/resourcemanager.projectDeleter",
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
      "plt-lz-networking-github@ptl-lz-terraform-tf05-nonprod.iam.gserviceaccount.com",
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
      "plt-lz-networking-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com",
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
      "plt-lz-networking-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com",
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
