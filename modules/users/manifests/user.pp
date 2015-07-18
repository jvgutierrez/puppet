# User + ssh_key resource
define users::user(
  $groups = undef,
  $ssh_key_type = 'ssh-rsa',
  $ssh_key = 'undef',
)
{
  ::user { $name:
    ensure         => present,
    purge_ssh_keys => true,
    groups         => $groups,
  }

  ::ssh_authorized_key { "${name}@${::fqdn}":
    user => $name,
    type => $ssh_key_type,
    key  => $ssh_key,
  }
}
