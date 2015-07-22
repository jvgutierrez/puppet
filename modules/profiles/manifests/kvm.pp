# KVM server profile
class profiles::kvm
{
  include ::libvirt
  $networks = hiera('libvirt_networks')
  create_resources(libvirt::network, $networks)
  $pools = hiera('libvirt_pools')
  create_resources(libvirt_pool, $pools)
}
