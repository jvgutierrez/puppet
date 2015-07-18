resources { 'firewall':
  purge => true,
}
resources { 'firewallchain':
  purge => true,
}
Firewall {
  before  => Class['fw::post'],
  require => Class['fw::pre'],
}
class { ['fw::pre', 'fw::post']: }
class { 'firewall': }
hiera_include('classes')
