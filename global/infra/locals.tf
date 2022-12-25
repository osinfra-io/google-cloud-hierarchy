# Local Values
# https://www.terraform.io/language/values/locals

locals {

  # Flatten Function
  # https://developer.hashicorp.com/terraform/language/functions/flatten

  # flatten ensures that this local value is a flat list of objects, rather
  # than a list of lists of objects.

  environments = { for environment in flatten([

    # This will iterate over the folder_systems map and return a list of maps based of the values of the environments
    # that includes the system key.

    for folder_system_key, system in var.folder_systems : [
      for environment in system.environments : {
        system      = folder_system_key
        environment = environment
      }
    ]
  ]) : "${environment.system}-${lower(environment.environment)}" => environment }

  managers = { for manager in flatten([

    # This will iterate over the identity_groups map and return a list of maps based of the values of the managers
    # that includes the group key.

    for identity_group_key, group in var.identity_groups : [
      for manager in group.managers : {
        group   = identity_group_key
        manager = manager
      }
    ]
  ]) : "${manager.group}-${manager.manager}" => manager }

  members = { for member in flatten([

    # This will iterate over the identity_groups map and return a list of maps based of the values of the members
    # that includes the group key.

    for identity_group_key, group in var.identity_groups : [
      for member in group.members : {
        group  = identity_group_key
        member = member
      }
    ]
  ]) : "${member.group}-${member.member}" => member }

  owners = { for owner in flatten([

    # This will iterate over the identity_groups map and return a list of maps based of the values of the owners
    # that includes the group key.

    for identity_group_key, group in var.identity_groups : [
      for owner in group.owners : {
        group = identity_group_key
        owner = owner

        # Split Function
        # https://developer.hashicorp.com/terraform/language/functions/split

        # This will split the owner string into a list of strings based on the @ symbol.
        # We do this because the owner string is an email address and we want to use the
        # the group plus the first part of the email address as resource name key.

        owner_split = split("@", owner)
      }
    ]
  ]) : "${owner.group}-${owner.owner_split[0]}" => owner }

  roles = { for role in flatten([

    # This will iterate over the identity_groups map and return a list of maps based of the values of the roles
    # that includes the group key.

    for identity_group_key, group in var.identity_groups : [
      for role in group.roles : {
        group = identity_group_key
        role  = role
      }
    ]
  ]) : "${role.group}-${lower(replace(role.role, "/([/.])/", "-"))}" => role }
}
