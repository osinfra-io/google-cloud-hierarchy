# Local Values
# https://www.terraform.io/language/values/locals

locals {
  # Flatten Function
  # https://developer.hashicorp.com/terraform/language/functions/flatten

  environments = flatten([

    # This will iterate over the object values of the folder_systems map and return a list of the environments

    for folder_system_key, system in var.folder_systems : [
      for folder in system.environments : {
        system      = folder_system_key
        environment = folder
      }
    ]
  ])

  managers = flatten([

    # This will iterate over the object values of the identity_groups map and return a list of the managers

    for identity_group_key, group in var.identity_groups : [
      for user in group.managers : {
        group   = identity_group_key
        manager = user
      }
    ]
  ])

  members = flatten([

    # This will iterate over the object values of the identity_groups map and return a list of the members

    for identity_group_key, group in var.identity_groups : [
      for user in group.members : {
        group  = identity_group_key
        member = user
      }
    ]
  ])

  owners = flatten([

    # This will iterate over the object values of the identity_groups map and return a list of the owners

    for identity_group_key, group in var.identity_groups : [
      for user in group.owners : {
        group = identity_group_key
        owner = user
      }
    ]
  ])
}
