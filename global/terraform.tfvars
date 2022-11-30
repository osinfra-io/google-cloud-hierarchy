folder_departments = {
  department_1 = {
    display_name = "Shared"
  }
}

folder_systems = {
  system_1 = {
    display_name = "Logging"
    environments = ["Sandbox", "Non-Production", "Production"]
    parent       = "department_1"
  },

  system_2 = {
    display_name = "Observability"
    environments = ["Sandbox", "Non-Production", "Production"]
    parent       = "department_1"
  },

  system_3 = {
    display_name = "Services"
    environments = ["Sandbox", "Non-Production", "Production"]
    parent       = "department_1"
  },

  system_4 = {
    display_name = "Terraform Backend"
    environments = ["Sandbox", "Non-Production", "Production"]
    parent       = "department_1"
  },

  system_5 = {
    display_name = "Kitchen Terraform"
    environments = ["Sandbox"]
    parent       = "department_1"
  },

  system_6 = {
    display_name = "Workload Identity Federation"
    environments = ["Sandbox", "Non-Production", "Production"]
    parent       = "department_1"
  }
}

identity_groups = {
  gcp-billing-admins = {
    description  = "Billing administrators are responsible for setting up billing accounts and monitoring their usage"
    display_name = "Google Cloud Platform Billing Administrators"
    managers     = []
    members      = []
    owners       = ["brett"]
  },

  gcp-billing-users = {
    description  = "Billing users are able to attach billing accounts to projects"
    display_name = "Google Cloud Platform Billing Users"
    managers     = []
    members      = []
    owners       = ["brett"]
  },

  gcp-developers = {
    description  = "Developers are responsible for designing, coding, and testing applications"
    display_name = "Google Cloud Platform Developers"
    managers     = []
    members      = []
    owners       = ["brett"]
  },

  gcp-devops = {
    description  = "DevOps practitioners create or manage end-to-end pipelines that support continuous integration and delivery, monitoring, and system provisioning"
    display_name = "Google Cloud Platform DevOps"
    managers     = []
    members      = []
    owners       = ["brett"]
  },

  gcp-logging-admins = {
    description  = "Logging administrators have access to all features of Cloud Logging"
    display_name = "Google Cloud Platform Logging Administrators"
    managers     = []
    members      = []
    owners       = ["brett"]
  },

  gcp-logging-viewers = {
    description  = "Logging viewers have read-only access to a specific subset of logs ingested into Cloud Logging"
    display_name = "Google Cloud Platform Logging Viewers"
    managers     = []
    members      = []
    owners       = ["brett"]
  },

  gcp-monitoring-admins = {
    description  = "Monitoring administrators have access to use and configure all features of Cloud Monitoring"
    display_name = "Google Cloud Platform Monitoring Administrators"
    managers     = []
    members      = []
    owners       = ["brett"]
  },

  gcp-monitoring-viewers = {
    description  = "Monitoring viewers have read-only access to view Cloud Monitoring"
    display_name = "Google Cloud Platform Monitoring Viewers"
    managers     = []
    members      = []
    owners       = ["brett"]
  },

  gcp-network-admins = {
    description  = "Network administrators are responsible for creating networks, subnets, firewall rules, and network devices such as cloud routers, Cloud VPN instances, and load balancers"
    display_name = "Google Cloud Platform Network Administrators"
    managers     = []
    members      = []
    owners       = ["brett"]
  },

  gcp-organization-admins = {
    description  = "Organization administrators have access to administer all resources belonging to the organization"
    display_name = "Google Cloud Platform Organization Administrators"
    managers     = []
    members      = []
    owners       = ["brett"]
  },

  gcp-security-admins = {
    description  = "Security administrators are responsible for establishing and managing security policies for the entire organization, including access management and organization constraint policies"
    display_name = "Google Cloud Platform Security Administrators"
    managers     = []
    members      = []
    owners       = ["brett"]
  },

  github-sa = {
    description  = "Email enabled group for the GitHub Service Account"
    display_name = "GitHub Service Account"
    managers     = []
    members      = []
    owners       = ["brett"]
  },

  social = {
    description  = "Email enabled group for social media accounts"
    display_name = "Social Media"
    managers     = []
    members      = []
    owners       = ["brett"]
  }
}
