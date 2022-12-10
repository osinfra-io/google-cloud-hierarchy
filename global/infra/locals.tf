# Local Values
# https://www.terraform.io/language/values/locals

locals {
  # Flatten Function
  # https://developer.hashicorp.com/terraform/language/functions/flatten

  # flatten ensures that this local value is a flat list of objects, rather
  # than a list of lists of objects.

  environments = flatten([

    # This will iterate over the object values of the folder_systems map and return a list of maps
    # based of the environments that includes the system key.

    for folder_system_key, system in local.folder_systems : [
      for environment in system.environments : {
        system      = folder_system_key
        environment = environment
      }
    ]
  ])

  managers = flatten([

    # This will iterate over the object values of the identity_groups map and return a list of maps
    # based of the managers that includes the group key.

    for identity_group_key, group in local.identity_groups : [
      for manager in group.managers : {
        group   = identity_group_key
        manager = manager
      }
    ]
  ])

  members = flatten([

    # This will iterate over the object values of the identity_groups map and return a list of maps
    # based of the members that includes the group key.

    for identity_group_key, group in local.identity_groups : [
      for member in group.members : {
        group  = identity_group_key
        member = member
      }
    ]
  ])

  owners = flatten([

    # This will iterate over the object values of the identity_groups map and return a list of maps
    # based of the owners that includes the group key.

    for identity_group_key, group in local.identity_groups : [
      for owner in group.owners : {
        group = identity_group_key
        owner = owner
      }
    ]
  ])

  roles = flatten([

    # This will iterate over the object values of the identity_groups map and return a list of maps
    # based of the roles that includes the group key.

    for identity_group_key, group in local.identity_groups : [
      for role in group.roles : {
        group = identity_group_key
        role  = role
      }
    ]
  ])

  folder_departments = {
    department-1 = {
      display_name = "Shared"
    }
  }

  folder_systems = {
    system-1 = {
      display_name = "Logging"
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
      display_name = "Kitchen Terraform"
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
      owners       = ["brett"]
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
      owners       = ["brett"]
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
      owners       = ["brett"]
      roles = [
        "roles/logging.admin",
      ]
    }

    gcp-logging-viewers = {
      description  = "Logging viewers have read-only access to a specific subset of logs ingested into Cloud Logging"
      display_name = "Google Cloud Platform Logging Viewers"
      managers     = []
      members      = []
      owners       = ["brett"]
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
      owners       = ["brett"]
      roles = [
        "roles/monitoring.admin",
      ]
    }

    gcp-monitoring-viewers = {
      description  = "Monitoring viewers have read-only access to view Cloud Monitoring"
      display_name = "Google Cloud Platform Monitoring Viewers"
      managers     = []
      members      = []
      owners       = ["brett"]
      roles = [
        "roles/monitoring.viewer",
      ]
    }

    gcp-network-admins = {
      description  = "Network administrators are responsible for creating networks, subnets, firewall rules, and network devices such as cloud routers, Cloud VPN instances, and load balancers"
      display_name = "Google Cloud Platform Network Administrators"
      managers     = []
      members      = []
      owners       = ["brett"]
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
      owners       = ["brett"]
      roles = [
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
    }

    gcp-security-admins = {
      description  = "Security administrators are responsible for establishing and managing security policies for the entire organization, including access management and organization constraint policies"
      display_name = "Google Cloud Platform Security Administrators"
      managers     = []
      members      = []
      owners       = ["brett"]
      roles = [
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
    }

    github-sa = {
      description  = "Email enabled group for the GitHub Service Account"
      display_name = "GitHub Service Account"
      managers     = []
      members      = []
      owners       = ["brett"]
      roles        = []
    }

    social = {
      description  = "Email enabled group for social media accounts"
      display_name = "Social Media"
      managers     = []
      members      = []
      owners       = ["brett"]
      roles        = []
    }
  }
}
