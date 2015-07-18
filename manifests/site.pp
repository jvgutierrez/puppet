resources { 'firewall':
  purge => true,
}
Firewall {
  before  => Class['fw::post'],
  require => Class['fw::pre'],
}
hiera_include('classes')
