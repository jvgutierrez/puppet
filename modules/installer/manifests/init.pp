# Pretty basic module to install unrelated packages
class installer(
  $packages       = undef,
  $epel_packages  = undef,
  $ruby_gems      = undef,
) {
  if $packages {
    package { $packages:
      ensure => installed,
    }
  }
  
  if $epel_packages {
    package { $packages:
      ensure  => installed,
      require => Yumrepo['epel'],
    }
  }

  if $ruby_gems {
    package { $ruby_gems:
      ensure   => latest,
      provider => 'gem',
    }
  }
}
