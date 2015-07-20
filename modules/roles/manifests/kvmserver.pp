class roles::kvmserver
{
  include ::profiles::ssh
  include ::profiles::kvm
}
