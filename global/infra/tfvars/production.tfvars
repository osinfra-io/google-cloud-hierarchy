folder_iam_policies = {
  390812006260 = {
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

  717171519290 = {
    service     = "Backstage"
    environment = "Sandbox"
    bindings = [
      {
        members = [
          "group:terraform-backend-sb@osinfra.io"
        ]
        role = "roles/compute.xpnAdmin"
      },
      {
        members = [
          "group:terraform-backend-sb@osinfra.io"
        ]
        role = "roles/resourcemanager.folderIamAdmin"
      },
      {
        members = [
          "serviceAccount:plt-backstage-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  38257772554 = {
    service     = "Backstage"
    environment = "Production"
    bindings = [
      {
        members = [
          "group:terraform-backend-prod@osinfra.io"
        ]
        role = "roles/compute.xpnAdmin"
      },
      {
        members = [
          "group:terraform-backend-prod@osinfra.io"
        ]
        role = "roles/resourcemanager.folderIamAdmin"
      },
      {
        members = [
          "serviceAccount:plt-backstage-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  589091281803 = {
    service     = "Kubernetes"
    environment = "Sandbox"
    bindings = [
      {
        members = [
          "group:terraform-backend-sb@osinfra.io"
        ]
        role = "roles/compute.xpnAdmin"
      },
      {
        members = [
          "group:terraform-backend-sb@osinfra.io"
        ]
        role = "roles/resourcemanager.folderIamAdmin"
      },
      {
        members = [
          "serviceAccount:plt-k8s-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  308872035878 = {
    service     = "Kubernetes"
    environment = "Non-Production"
    bindings = [
      {
        members = [
          "group:terraform-backend-nonprod@osinfra.io"
        ]
        role = "roles/compute.xpnAdmin"
      },
      {
        members = [
          "group:terraform-backend-nonprod@osinfra.io"
        ]
        role = "roles/resourcemanager.folderIamAdmin"
      },
      {
        members = [
          "serviceAccount:plt-k8s-github@ptl-lz-terraform-tf05-nonprod.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  450746270117 = {
    service     = "Kubernetes"
    environment = "Production"
    bindings = [
      {
        members = [
          "group:terraform-backend-prod@osinfra.io"
        ]
        role = "roles/compute.xpnAdmin"
      },
      {
        members = [
          "group:terraform-backend-prod@osinfra.io"
        ]
        role = "roles/resourcemanager.folderIamAdmin"
      },
      {
        members = [
          "serviceAccount:plt-k8s-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  13103602325 = {
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

  515753002772 = {
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

  1069400145815 = {
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
          "group:platform-contributors@osinfra.io",
          "serviceAccount:plt-lz-testing-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      },
      {
        members = [
          "group:platform-contributors@osinfra.io"
        ]
        role = "roles/owner"
      }
    ]
  }

  1094321749831 = {
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

  service-7 = {
    display_name = "Kubernetes"
    environments = ["Sandbox", "Non-Production", "Production"]
    parent       = "team-1"
  }

  service-8 = {
    display_name = "Backstage"
    environments = ["Sandbox", "Production"]
    parent       = "team-1"
  }
}

identity_groups = {
  backstage = {
    description  = "IAP group for Backstage"
    display_name = "Backstage"
    managers     = []
    members      = []
    owners = [
      "brett@osinfra.io",

      # This service account creates the IAP brand in the production environment.
      # It required to be an owner of the group for the Terraform resource google_iap_brand to work.

      "plt-backstage-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com"
    ]
    roles = []
  }

  backstage-sb = {
    description  = "IAP group for Backstage Sandbox"
    display_name = "Backstage Sandbox"
    managers     = []
    members      = []
    owners = [
      "brett@osinfra.io",

      # This service account creates the IAP brand in the sandbox environment.
      # It required to be an owner of the group for the Terraform resource google_iap_brand to work.

      "plt-backstage-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com"
    ]
    roles = []
  }

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
    members      = ["platform-contributors@osinfra.io"]
    owners       = ["brett@osinfra.io"]
    roles = [
      "roles/billing.costsManager",
      "roles/billing.user",
      "roles/resourcemanager.organizationViewer"
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

  # This Google Group is required to enable Kubernetes role-based access control (RBAC)
  # in your Google Kubernetes Engine (GKE) clusters. Add your groups as nested groups to this group.
  # Don't add individual users as members of gke-security-groups.

  gke-security-groups = {
    description  = "Security group for Kubernetes role-based access control (RBAC)"
    display_name = "Kubernetes Security Groups"
    managers     = []
    members      = ["testing-nested-gke-security-group@osinfra.io"]
    owners       = []
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

  platform-contributors = {
    description  = "Platform contributors are able to contribute to the platform"
    display_name = "Platform Contributors"
    managers     = []
    members      = []
    owners       = ["brett@osinfra.io"]
    roles        = []
  }

  security = {
    description  = "Email enabled group for the security enabling team"
    display_name = "Security"
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
      "plt-k8s-github@ptl-lz-terraform-tf05-nonprod.iam.gserviceaccount.com",
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
      # "plt-backstage-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com",
      "plt-gh-organization-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com",
      "plt-lz-audit-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com",
      "plt-lz-backend-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com",
      "plt-lz-hierarchy-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com",
      "plt-lz-identity-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com",
      "plt-k8s-github@ptl-lz-terraform-tf62-prod.iam.gserviceaccount.com",
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
      "plt-backstage-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com",
      "plt-gh-organization-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com",
      "plt-lz-audit-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com",
      "plt-lz-backend-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com",
      "plt-lz-hierarchy-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com",
      "plt-lz-identity-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com",
      "plt-k8s-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com",
      "plt-lz-networking-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com",
      "plt-lz-testing-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com"
    ]

    owners = ["brett@osinfra.io"]
    roles  = []
  }

  testing-nested-gke-security-group = {
    description  = "Testing nested group for Kubernetes role-based access control (RBAC)"
    display_name = "Testing Nested Kubernetes Security Groups"
    managers     = []
    members      = []
    owners       = ["plt-lz-testing-github@ptl-lz-terraform-tf91-sb.iam.gserviceaccount.com"]
    roles        = []
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

organization_custom_iam_roles = {
  container-deployer = {
    description = "Access to deploy Kubernetes resources"
    permissions = [
      "container.clusters.get",
      "container.clusters.list",
      "container.customResourceDefinitions.list",
      "resourcemanager.projects.get",
      "resourcemanager.projects.list"
    ]

    role_id = "container.deployer"
    title   = "Kubernetes Engine Deployer"
  }

  dns-records-admin = {
    description = "Allows for the management of DNS records"
    permissions = [
      "dns.changes.create",
      "dns.changes.get",
      "dns.resourceRecordSets.create",
      "dns.resourceRecordSets.delete",
      "dns.resourceRecordSets.get",
      "dns.resourceRecordSets.list",
      "dns.resourceRecordSets.update"
    ]

    # Align with Google's role naming convention

    role_id = "dns.recordsAdmin"
    title   = "DNS Records Admin"
  }

  k8s-host-firewall-management = {
    description = "Allows for a GKE cluster in a service project to create and manage the firewall resources in your host project"
    permissions = [
      "compute.firewalls.create",
      "compute.firewalls.delete",
      "compute.firewalls.get",
      "compute.firewalls.list",
      "compute.firewalls.update",
      "compute.networks.updatePolicy"
    ]

    # Align with Google's role naming convention

    role_id = "kubernetes.hostFirewallManagement"
    title   = "Kubernetes Host Firewall Management"
  }
}
