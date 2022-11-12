# Input Variables
# https://www.terraform.io/language/values/variables

variable "billing_project" {
  description = "The quota project to send in `user_project_override`, used for all requests sent from the provider. If set on a resource that supports sending the resource project, this value will supersede the resource project. This field is ignored if `user_project_override` is set to false or unset"
  type        = string
}

variable "customer_id" {
  description = "The unique customer ID assigned to you when you signed up for Google Workspace or Cloud Identity. You can look up this ID in your Admin console"
  type        = string
  sensitive   = true
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
