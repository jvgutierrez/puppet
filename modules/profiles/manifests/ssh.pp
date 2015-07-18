class profiles::ssh
{
  include ::ssh
  $ssh_options = hiera('ssh::server::options')
  firewall { '010 Allow inbound SSH':
    port   => $ssh_options[Port],
    proto  => tcp,
    action => accept,
  }
}
