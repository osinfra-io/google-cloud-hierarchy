# Input Variables
# https://opentofu.org/docs/language/values/variables

variable "billing_account" {
  description = "The alphanumeric ID of the billing account this project belongs to"
  type        = string
  default     = "01C550-A2C86B-B8F16B"
}

# This is only needed during bootstrapping.

# variable "billing_project" {
#   description = "The quota project to send in `user_project_override`, used for all requests sent from the provider. If set on a resource that supports sending the resource project, this value will supersede the resource project. This field is ignored if `user_project_override` is set to false or unset"
#   type        = string
# }

variable "customer_id" {
  description = "The unique customer ID assigned to you when you signed up for Google Workspace or Cloud Identity. You can look up this ID in your Admin console"
  type        = string
  default     = "C01hd34v8"
}

variable "folder_iam_policies" {
  description = "A map of authoritative IAM policies for the folder, replaces any existing policy already attached"
  type = map(object({
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
  default     = 100
}

variable "organization_id" {
  description = "The organization ID to create the hierarchy under"
  type        = string
  default     = "163313809793"
}

variable "primary_domain" {
  description = "The main domain associated with your Google Workspace account. By default, your users get a username at this domain"
  type        = string
  default     = "osinfra.io"
}

# These three state_* variables are required for early variable evaluation for backend and provider configuration.
# They are defined in the GitHub Actions called workflows and should NOT be set in the OpenTofu configuration.

variable "state_bucket" {
  description = "The name of the GCS bucket to store state files"
  type        = string
}

variable "state_kms_encryption_key" {
  description = "The KMS encryption key for state and plan files"
  type        = string
}

variable "state_prefix" {
  description = "The prefix for state files in the GCS bucket"
  type        = string
}
