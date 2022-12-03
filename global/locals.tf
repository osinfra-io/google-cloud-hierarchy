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

    for folder_system_key, system in var.folder_systems : [
      for environment in system.environments : {
        system      = folder_system_key
        environment = environment
      }
    ]
  ])

  managers = flatten([

    # This will iterate over the object values of the identity_groups map and return a list of maps
    # based of the managers that includes the group key.

    for identity_group_key, group in var.identity_groups : [
      for manager in group.managers : {
        group   = identity_group_key
        manager = manager
      }
    ]
  ])

  members = flatten([

    # This will iterate over the object values of the identity_groups map and return a list of maps
    # based of the members that includes the group key.

    for identity_group_key, group in var.identity_groups : [
      for member in group.members : {
        group  = identity_group_key
        member = member
      }
    ]
  ])

  owners = flatten([

    # This will iterate over the object values of the identity_groups map and return a list of maps
    # based of the owners that includes the group key.

    for identity_group_key, group in var.identity_groups : [
      for owner in group.owners : {
        group = identity_group_key
        owner = owner
      }
    ]
  ])

  roles = flatten([

    # This will iterate over the object values of the identity_groups map and return a list of maps
    # based of the roles that includes the group key.

    for identity_group_key, group in var.identity_groups : [
      for role in group.roles : {
        group = identity_group_key
        role  = role
      }
    ]
  ])
}
