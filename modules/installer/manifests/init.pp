# Pretty basic module to install unrelated packages
class installer(
  $packages   = undef,
  $ruby_gems  = undef,
) {
  if $packages {
    package { $packages:
      ensure => installed,
    }
  }
  if $ruby_gems {
    package { $ruby_gems:
      ensure   => latest,
      provider => 'gem',
    }
  }
}
