# Local Values
# https://www.terraform.io/language/values/locals


# Based off: https://developer.hashicorp.com/terraform/language/functions/flatten
locals {
  owners = flatten([
    for identity_group_key, group in var.identity_groups : [
      for owner in group.owners : {
        group = identity_group_key
        owner = owner
      }
    ]
  ])
}
