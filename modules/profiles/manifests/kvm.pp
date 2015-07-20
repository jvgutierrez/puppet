# KVM server profile
class profiles::kvm
{
  include ::libvirt
  $networks = hiera('libvirt_networks')
  create_resources(libvirt::network, $networks)
}
