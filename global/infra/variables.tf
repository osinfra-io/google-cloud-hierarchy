# Input Variables
# https://www.terraform.io/language/values/variables

variable "billing_account" {
  description = "The alphanumeric ID of the billing account this project belongs to"
  type        = string
  sensitive   = true
}

# The google_cloud_identity_group resource requires this if you are using User ADCs (Application Default Credentials).
# This is only needed during bootstrapping.

# variable "billing_project" {
#   description = "The quota project to send in `user_project_override`, used for all requests sent from the provider. If set on a resource that supports sending the resource project, this value will supersede the resource project. This field is ignored if `user_project_override` is set to false or unset"
#   type        = string
# }

variable "customer_id" {
  description = "The unique customer ID assigned to you when you signed up for Google Workspace or Cloud Identity. You can look up this ID in your Admin console"
  type        = string
  sensitive   = true
}

variable "folder_iam_policies" {
  description = "A map of authoritative IAM policies for the folder, replaces any existing policy already attached"
  type = map(object({
    team        = string
    service     = string
    environment = string
    bindings = list(object({
      members = list(string)
      role    = string
    }))
  }))
}

variable "folder_teams" {
  description = "A map of folder teams to create"
  type = map(object({
    display_name = string
  }))
}

variable "folder_services" {
  description = "A map of folder services to create"
  type = map(object({
    display_name          = string
    environments          = list(string)
    monthly_budget_amount = optional(number, 10)
    parent                = string
  }))
}

variable "identity_groups" {
  description = "A map of identity groups to create"
  type = map(object({
    description  = string
    display_name = string
    managers     = list(string)
    members      = list(string)
    owners       = list(string)
    roles        = list(string)
  }))
}

variable "organization_custom_iam_roles" {
  description = "A map of organization custom IAM roles to create"
  type = map(object({
    description = optional(string, null)
    permissions = list(string)
    role_id     = string
    title       = string
  }))
}

variable "organization_monthly_budget_amount" {
  description = "The organization monthly budget amount in USD"
  type        = number
  default     = 50
}

variable "organization_id" {
  description = "The organization ID to create the hierarchy under"
  type        = string
  sensitive   = true
}

variable "primary_domain" {
  description = "The main domain associated with your Google Workspace account. By default, your users get a username at this domain"
  type        = string
  default     = "osinfra.io"
}
