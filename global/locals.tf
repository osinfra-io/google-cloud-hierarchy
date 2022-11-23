# Local Values
# https://www.terraform.io/language/values/locals


# Based off: https://developer.hashicorp.com/terraform/language/functions/flatten
locals {
  managers = flatten([
    for identity_group_key, group in var.identity_groups : [
      for manager in group.managers : {
        group   = identity_group_key
        manager = manager
      }
    ]
  ])

  members = flatten([
    for identity_group_key, group in var.identity_groups : [
      for member in group.members : {
        group  = identity_group_key
        member = member
      }
    ]
  ])

  owners = flatten([
    for identity_group_key, group in var.identity_groups : [
      for owner in group.owners : {
        group = identity_group_key
        owner = owner
      }
    ]
  ])
}
