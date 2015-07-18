# Manage users + ssh_authorized_keys
class users($users = undef)
{
  if $users
  {
    create_resources(users::user, $users)
  }
}
