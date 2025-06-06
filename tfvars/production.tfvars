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
          "serviceAccount:plt-lz-audit-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com"
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
          "serviceAccount:plt-lz-audit-github@plt-lz-terraform-tfe2-nonprod.iam.gserviceaccount.com"
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
          "serviceAccount:plt-lz-audit-github@plt-lz-terraform-tf56-prod.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  779017192334 = {
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
          "serviceAccount:plt-backstage-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  336085891445 = {
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
      # {
      #   members = [
      #     "serviceAccount:plt-backstage-github@plt-lz-terraform-tf56-prod.iam.gserviceaccount.com"
      #   ]
      #   role = "roles/resourcemanager.projectCreator"
      # }
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
          "serviceAccount:plt-k8s-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com"
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
          "serviceAccount:plt-k8s-github@plt-lz-terraform-tfe2-nonprod.iam.gserviceaccount.com"
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
          "serviceAccount:plt-k8s-github@plt-lz-terraform-tf56-prod.iam.gserviceaccount.com"
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
          "serviceAccount:plt-lz-networking-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com"
        ]
        role = "roles/compute.xpnAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-networking-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com"
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
          "serviceAccount:plt-lz-networking-github@plt-lz-terraform-tfe2-nonprod.iam.gserviceaccount.com"
        ]
        role = "roles/compute.xpnAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-networking-github@plt-lz-terraform-tfe2-nonprod.iam.gserviceaccount.com"
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
          "serviceAccount:plt-lz-networking-github@plt-lz-terraform-tf56-prod.iam.gserviceaccount.com"
        ]
        role = "roles/compute.xpnAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-networking-github@plt-lz-terraform-tf56-prod.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  44679921766 = {
    service     = "Services"
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
          "serviceAccount:plt-lz-services-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  306437988454 = {
    service     = "Services"
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
          "serviceAccount:plt-lz-services-github@plt-lz-terraform-tfe2-nonprod.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
      }
    ]
  }

  638543714452 = {
    service     = "Services"
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
          "serviceAccount:plt-lz-services-github@plt-lz-terraform-tf56-prod.iam.gserviceaccount.com"
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
          "serviceAccount:plt-lz-backend-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com"
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
          "serviceAccount:plt-lz-backend-github@plt-lz-terraform-tfe2-nonprod.iam.gserviceaccount.com"
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
          "serviceAccount:plt-lz-backend-github@plt-lz-terraform-tf56-prod.iam.gserviceaccount.com"
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
          "serviceAccount:plt-lz-testing-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com"
        ]
        role = "roles/compute.xpnAdmin"
      },
      {
        members = [
          "serviceAccount:plt-lz-testing-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com"
        ]
        role = "roles/resourcemanager.projectCreator"
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
          "serviceAccount:plt-lz-testing-github@plt-lz-terraform-tfe2-nonprod.iam.gserviceaccount.com"
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
          "serviceAccount:plt-lz-testing-github@plt-lz-terraform-tf56-prod.iam.gserviceaccount.com"
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
          "serviceAccount:plt-lz-identity-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com"
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
          "serviceAccount:plt-lz-identity-github@plt-lz-terraform-tfe2-nonprod.iam.gserviceaccount.com"
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
          "serviceAccount:plt-lz-identity-github@plt-lz-terraform-tf56-prod.iam.gserviceaccount.com"
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
    display_name          = "Kubernetes"
    environments          = ["Sandbox", "Non-Production", "Production"]
    monthly_budget_amount = 50
    parent                = "team-1"
  }

  service-9 = {
    display_name          = "Services"
    environments          = ["Sandbox", "Non-Production", "Production"]
    monthly_budget_amount = 25
    parent                = "team-1"
  }

  service-10 = {
    display_name          = "Backstage"
    environments          = ["Sandbox", "Production"]
    monthly_budget_amount = 10
    parent                = "team-1"
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
      "roles/resourcemanager.organizationViewer",
      "roles/serviceusage.serviceUsageConsumer"
    ]
  }

  iap = {
    description  = "Email enabled group for Identity-Aware Proxy (IAP)"
    display_name = "Identity-Aware Proxy"
    managers     = []
    members      = []
    owners = [
      "brett@osinfra.io",
      "plt-backstage-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com"
    ]
    roles = [
      "roles/iap.httpsResourceAccessor"
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
    members      = ["gke-testing-security-group@osinfra.io"]
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

  plt-registry-readers = {
    description  = "Group for reading from the platform artifact registry repository"
    display_name = "Platform Registry Readers"

    managers = [
      "plt-k8s-github@plt-lz-terraform-tfe2-nonprod.iam.gserviceaccount.com",
      "plt-k8s-github@plt-lz-terraform-tf56-prod.iam.gserviceaccount.com",
      "plt-k8s-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com"
    ]

    members = []
    owners  = ["brett@osinfra.io"]
    roles   = []
  }

  plt-registry-writers = {
    description  = "Group for writing to the platform artifact registry repository"
    display_name = "Platform Registry Writers"
    managers     = []
    members = [
      "plt-backstage-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com",
      "plt-istio-test-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com"
    ]
    owners = ["brett@osinfra.io"]
    roles  = []
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
      "plt-gh-organization-github@plt-lz-terraform-tfe2-nonprod.iam.gserviceaccount.com",
      "plt-lz-audit-github@plt-lz-terraform-tfe2-nonprod.iam.gserviceaccount.com",
      "plt-lz-backend-github@plt-lz-terraform-tfe2-nonprod.iam.gserviceaccount.com",
      "plt-lz-hierarchy-github@plt-lz-terraform-tfe2-nonprod.iam.gserviceaccount.com",
      "plt-lz-identity-github@plt-lz-terraform-tfe2-nonprod.iam.gserviceaccount.com",
      "plt-k8s-github@plt-lz-terraform-tfe2-nonprod.iam.gserviceaccount.com",
      "plt-lz-networking-github@plt-lz-terraform-tfe2-nonprod.iam.gserviceaccount.com",
      "plt-lz-testing-github@plt-lz-terraform-tfe2-nonprod.iam.gserviceaccount.com",
      "plt-lz-services-github@plt-lz-terraform-tfe2-nonprod.iam.gserviceaccount.com"
    ]

    owners = ["brett@osinfra.io"]
    roles  = []
  }

  terraform-backend-prod = {
    description  = "Group for the Terraform backend in the Production environment"
    display_name = "Terraform Backend Production"
    managers     = []

    members = [
      "plt-gh-organization-github@plt-lz-terraform-tf56-prod.iam.gserviceaccount.com",
      "plt-lz-audit-github@plt-lz-terraform-tf56-prod.iam.gserviceaccount.com",
      "plt-lz-backend-github@plt-lz-terraform-tf56-prod.iam.gserviceaccount.com",
      "plt-lz-hierarchy-github@plt-lz-terraform-tf56-prod.iam.gserviceaccount.com",
      "plt-lz-identity-github@plt-lz-terraform-tf56-prod.iam.gserviceaccount.com",
      "plt-k8s-github@plt-lz-terraform-tf56-prod.iam.gserviceaccount.com",
      "plt-lz-networking-github@plt-lz-terraform-tf56-prod.iam.gserviceaccount.com",
      "plt-lz-testing-github@plt-lz-terraform-tf56-prod.iam.gserviceaccount.com",
      "plt-lz-services-github@plt-lz-terraform-tf56-prod.iam.gserviceaccount.com"
    ]

    owners = ["brett@osinfra.io"]
    roles  = []
  }

  terraform-backend-sb = {
    description  = "Group for the Terraform backend in the Sandbox environment"
    display_name = "Terraform Backend Sandbox"
    managers     = []

    members = [
      "plt-backstage-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com",
      "plt-gh-organization-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com",
      "plt-lz-audit-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com",
      "plt-lz-backend-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com",
      "plt-lz-hierarchy-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com",
      "plt-lz-identity-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com",
      "plt-k8s-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com",
      "plt-lz-networking-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com",
      "plt-lz-testing-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com",
      "plt-lz-services-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com"
    ]

    owners = ["brett@osinfra.io"]
    roles  = []
  }

  # This is an example of a nested group. This group is added as a member of the gke-security-groups group.

  gke-testing-security-group = {
    description  = "GKE security group for the testing environment"
    display_name = "GKE Testing Security Group"
    managers     = []
    members      = []
    owners       = ["plt-lz-testing-github@plt-lz-terraform-tf00-sb.iam.gserviceaccount.com"]
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
    description = "Access to deploy to Kubernetes Engine"
    permissions = [
      "compute.instanceGroupManagers.get",
      "container.clusters.get",
      "container.clusters.list",
      "container.customResourceDefinitions.list",
      "resourcemanager.projects.get",
      "resourcemanager.projects.list"
    ]

    role_id = "container.deployer"
    title   = "Kubernetes Engine Deployer"
  }

  datadog_cloud_cost_management = {
    description = "Access to BigQuery jobs for Datadog Cloud Cost Management"
    permissions = [
      "bigquery.jobs.create",
      "bigquery.transfers.get",
      "bigquery.transfers.update"
    ]

    role_id = "datadog.cloudCostManagement"
    title   = "Datadog Cloud Cost Management"
  }

  dns-records-admin = {
    description = "Access to manage DNS records in Cloud DNS"
    permissions = [
      "dns.changes.create",
      "dns.changes.get",
      "dns.resourceRecordSets.create",
      "dns.resourceRecordSets.delete",
      "dns.resourceRecordSets.get",
      "dns.resourceRecordSets.list",
      "dns.resourceRecordSets.update"
    ]

    role_id = "dns.recordsAdmin"
    title   = "DNS Records Admin"
  }

  k8s-host-firewall-management = {
    description = "Access for a GKE cluster in a service project to create and manage the firewall resources in a host project"
    permissions = [
      "compute.firewalls.create",
      "compute.firewalls.delete",
      "compute.firewalls.get",
      "compute.firewalls.list",
      "compute.firewalls.update",
      "compute.networks.updatePolicy"
    ]

    role_id = "kubernetes.hostFirewallManagement"
    title   = "Kubernetes Host Firewall Management"
  }
}
